import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct AllLocalizedMacro: MemberAttributeMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingAttributesFor member: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [AttributeSyntax] {
        [AttributeSyntax(attributeName: IdentifierTypeSyntax(name: .identifier("Localized")))]
    }
}

@main
struct AllLocalizedPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        AllLocalizedMacro.self
    ]
}





