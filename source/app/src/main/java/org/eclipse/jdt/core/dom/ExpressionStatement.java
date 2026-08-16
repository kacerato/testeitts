package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class ExpressionStatement extends Statement {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression expression;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ExpressionStatement.class, "expression", Expression.class, true, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(ExpressionStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ExpressionStatement(AST ast) {
        super(ast);
        this.expression = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getExpression());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ExpressionStatement expressionStatement = new ExpressionStatement(ast);
        expressionStatement.setSourceRange(getStartPosition(), getLength());
        expressionStatement.copyLeadingComment(this);
        expressionStatement.setExpression((Expression) getExpression().clone(ast));
        return expressionStatement;
    }

    public Expression getExpression() {
        if (this.expression == null) {
            synchronized (this) {
                try {
                    if (this.expression == null) {
                        preLazyInit();
                        MethodInvocation methodInvocation = new MethodInvocation(this.ast);
                        this.expression = methodInvocation;
                        postLazyInit(methodInvocation, EXPRESSION_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.expression;
    }

    @Override
    public final int getNodeType0() {
        return 21;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != EXPRESSION_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getExpression();
        }
        setExpression((Expression) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 4;
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

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.expression == null ? 0 : getExpression().treeSize());
    }
}
