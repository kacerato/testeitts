package org.eclipse.jdt.core.dom;

public abstract class Comment extends ASTNode {
    private ASTNode alternateRoot;

    public Comment(AST ast) {
        super(ast);
        this.alternateRoot = null;
    }

    public final ASTNode getAlternateRoot() {
        return this.alternateRoot;
    }

    public final boolean isBlockComment() {
        return this instanceof BlockComment;
    }

    public final boolean isDocComment() {
        return this instanceof Javadoc;
    }

    public final boolean isLineComment() {
        return this instanceof LineComment;
    }

    @Override
    public int memSize() {
        return 44;
    }

    public final void setAlternateRoot(ASTNode aSTNode) {
        checkModifiable();
        this.alternateRoot = aSTNode;
    }
}
