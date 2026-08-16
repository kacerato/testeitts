package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class FieldAccess extends Expression {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression expression;
    private SimpleName fieldName;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(FieldAccess.class, "expression", Expression.class, true, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(FieldAccess.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(FieldAccess.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public FieldAccess(AST ast) {
        super(ast);
        this.expression = null;
        this.fieldName = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getExpression());
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        FieldAccess fieldAccess = new FieldAccess(ast);
        fieldAccess.setSourceRange(getStartPosition(), getLength());
        fieldAccess.setExpression((Expression) getExpression().clone(ast));
        fieldAccess.setName((SimpleName) getName().clone(ast));
        return fieldAccess;
    }

    public Expression getExpression() {
        if (this.expression == null) {
            synchronized (this) {
                try {
                    if (this.expression == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.expression = simpleName;
                        postLazyInit(simpleName, EXPRESSION_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.expression;
    }

    public SimpleName getName() {
        if (this.fieldName == null) {
            synchronized (this) {
                try {
                    if (this.fieldName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.fieldName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.fieldName;
    }

    @Override
    public final int getNodeType0() {
        return 22;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == EXPRESSION_PROPERTY) {
            if (z10) {
                return getExpression();
            }
            setExpression((Expression) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != NAME_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getName();
        }
        setName((SimpleName) aSTNode);
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

    public IVariableBinding resolveFieldBinding() {
        return this.ast.getBindingResolver().resolveField(this);
    }

    public void setExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.expression;
        ChildPropertyDescriptor childPropertyDescriptor = EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.expression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.fieldName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.fieldName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.expression == null ? 0 : getExpression().treeSize()) + (this.fieldName != null ? getName().treeSize() : 0);
    }
}
