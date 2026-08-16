package org.eclipse.jdt.core.dom;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;

public class ArrayAccess extends Expression {
    public static final ChildPropertyDescriptor ARRAY_PROPERTY;
    public static final ChildPropertyDescriptor INDEX_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression arrayExpression;
    private Expression indexExpression;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ArrayAccess.class, "array", Expression.class, true, true);
        ARRAY_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(ArrayAccess.class, FirebaseAnalytics.d.f67690b0, Expression.class, true, true);
        INDEX_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(ArrayAccess.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ArrayAccess(AST ast) {
        super(ast);
        this.arrayExpression = null;
        this.indexExpression = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getArray());
            acceptChild(aSTVisitor, getIndex());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ArrayAccess arrayAccess = new ArrayAccess(ast);
        arrayAccess.setSourceRange(getStartPosition(), getLength());
        arrayAccess.setArray((Expression) getArray().clone(ast));
        arrayAccess.setIndex((Expression) getIndex().clone(ast));
        return arrayAccess;
    }

    public Expression getArray() {
        if (this.arrayExpression == null) {
            synchronized (this) {
                try {
                    if (this.arrayExpression == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.arrayExpression = simpleName;
                        postLazyInit(simpleName, ARRAY_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.arrayExpression;
    }

    public Expression getIndex() {
        if (this.indexExpression == null) {
            synchronized (this) {
                try {
                    if (this.indexExpression == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.indexExpression = simpleName;
                        postLazyInit(simpleName, INDEX_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.indexExpression;
    }

    @Override
    public final int getNodeType0() {
        return 2;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == ARRAY_PROPERTY) {
            if (z10) {
                return getArray();
            }
            setArray((Expression) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != INDEX_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getIndex();
        }
        setIndex((Expression) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 48;
    }

    public void setArray(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.arrayExpression;
        ChildPropertyDescriptor childPropertyDescriptor = ARRAY_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.arrayExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setIndex(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.indexExpression;
        ChildPropertyDescriptor childPropertyDescriptor = INDEX_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.indexExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.arrayExpression == null ? 0 : getArray().treeSize()) + (this.indexExpression != null ? getIndex().treeSize() : 0);
    }
}
