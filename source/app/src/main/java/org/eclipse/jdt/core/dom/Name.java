package org.eclipse.jdt.core.dom;

public abstract class Name extends Expression implements IDocElement {
    static final int BASE_NAME_NODE_SIZE = 44;
    int index;

    public Name(AST ast) {
        super(ast);
    }

    public abstract void appendName(StringBuffer stringBuffer);

    public final String getFullyQualifiedName() {
        if (isSimpleName()) {
            return ((SimpleName) this).getIdentifier();
        }
        StringBuffer stringBuffer = new StringBuffer(50);
        appendName(stringBuffer);
        return new String(stringBuffer);
    }

    public final boolean isQualifiedName() {
        return this instanceof QualifiedName;
    }

    public final boolean isSimpleName() {
        return this instanceof SimpleName;
    }

    public final IBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveName(this);
    }
}
