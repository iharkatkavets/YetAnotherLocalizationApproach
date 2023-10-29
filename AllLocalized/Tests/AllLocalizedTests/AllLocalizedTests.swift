import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(AllLocalizedMacros)
import AllLocalizedMacros
import Localized

let testMacros: [String: Macro.Type] = [
    "AllLocalized": AllLocalizedMacro.self,
]
#endif

func testMacro() throws {
#if canImport(AllLocalizedMacros)
    assertMacroExpansion(
            """
            @AllLocalized
            struct LocalizableStrings {
                static var ButtonLoginTitle = "Login.Button.Login.Title"
                static var TextFieldUsernamePlaceholder = "Login.TextField.Username.Placeholder"
                static var TextFieldPasswordPlaceholder = "Login.TextField.Password.Placeholder"
            }
            """,
            expandedSource: """
            struct LocalizableStrings {
                @Localized
                static var ButtonLoginTitle = "Login.Button.Login.Title"
                @Localized
                static var TextFieldUsernamePlaceholder = "Login.TextField.Username.Placeholder"
                @Localized
                static var TextFieldPasswordPlaceholder = "Login.TextField.Password.Placeholder"
            }
            """,
            macros: testMacros
    )
#else
    throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
}
