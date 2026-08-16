package org.eclipse.jdt.core.dom;

public abstract class Type extends ASTNode {
    public Type(AST ast) {
        super(ast);
    }

    public boolean isAnnotatable() {
        return this instanceof AnnotatableType;
    }

    public final boolean isArrayType() {
        return this instanceof ArrayType;
    }

    public final boolean isIntersectionType() {
        return this instanceof IntersectionType;
    }

    public final boolean isNameQualifiedType() {
        return this instanceof NameQualifiedType;
    }

    public final boolean isParameterizedType() {
        return this instanceof ParameterizedType;
    }

    public final boolean isPrimitiveType() {
        return this instanceof PrimitiveType;
    }

    public final boolean isQualifiedType() {
        return this instanceof QualifiedType;
    }

    public final boolean isSimpleType() {
        return this instanceof SimpleType;
    }

    public final boolean isUnionType() {
        return this instanceof UnionType;
    }

    public boolean isVar() {
        return false;
    }

    public final boolean isWildcardType() {
        return this instanceof WildcardType;
    }

    public final ITypeBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }
}
