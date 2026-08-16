package org.eclipse.jdt.core.dom;

public abstract class ModuleDirective extends ASTNode {
    public ModuleDirective(AST ast) {
        super(ast);
        unsupportedBelow9();
    }
}
