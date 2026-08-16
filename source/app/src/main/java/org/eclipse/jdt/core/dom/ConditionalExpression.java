package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class ConditionalExpression extends Expression {
    public static final ChildPropertyDescriptor ELSE_EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor THEN_EXPRESSION_PROPERTY;
    private Expression conditionExpression;
    private Expression elseExpression;
    private Expression thenExpression;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ConditionalExpression.class, "expression", Expression.class, true, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(ConditionalExpression.class, "thenExpression", Expression.class, true, true);
        THEN_EXPRESSION_PROPERTY = childPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor3 = new ChildPropertyDescriptor(ConditionalExpression.class, "elseExpression", Expression.class, true, true);
        ELSE_EXPRESSION_PROPERTY = childPropertyDescriptor3;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(ConditionalExpression.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childPropertyDescriptor3, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ConditionalExpression(AST ast) {
        super(ast);
        this.conditionExpression = null;
        this.thenExpression = null;
        this.elseExpression = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getExpression());
            acceptChild(aSTVisitor, getThenExpression());
            acceptChild(aSTVisitor, getElseExpression());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ConditionalExpression conditionalExpression = new ConditionalExpression(ast);
        conditionalExpression.setSourceRange(getStartPosition(), getLength());
        conditionalExpression.setExpression((Expression) getExpression().clone(ast));
        conditionalExpression.setThenExpression((Expression) getThenExpression().clone(ast));
        conditionalExpression.setElseExpression((Expression) getElseExpression().clone(ast));
        return conditionalExpression;
    }

    public Expression getElseExpression() {
        if (this.elseExpression == null) {
            synchronized (this) {
                try {
                    if (this.elseExpression == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.elseExpression = simpleName;
                        postLazyInit(simpleName, ELSE_EXPRESSION_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.elseExpression;
    }

    public Expression getExpression() {
        if (this.conditionExpression == null) {
            synchronized (this) {
                try {
                    if (this.conditionExpression == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.conditionExpression = simpleName;
                        postLazyInit(simpleName, EXPRESSION_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.conditionExpression;
    }

    @Override
    public final int getNodeType0() {
        return 16;
    }

    public Expression getThenExpression() {
        if (this.thenExpression == null) {
            synchronized (this) {
                try {
                    if (this.thenExpression == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.thenExpression = simpleName;
                        postLazyInit(simpleName, THEN_EXPRESSION_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.thenExpression;
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
        if (childPropertyDescriptor == THEN_EXPRESSION_PROPERTY) {
            if (z10) {
                return getThenExpression();
            }
            setThenExpression((Expression) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != ELSE_EXPRESSION_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getElseExpression();
        }
        setElseExpression((Expression) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 52;
    }

    public void setElseExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.elseExpression;
        ChildPropertyDescriptor childPropertyDescriptor = ELSE_EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.elseExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.conditionExpression;
        ChildPropertyDescriptor childPropertyDescriptor = EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.conditionExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setThenExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.thenExpression;
        ChildPropertyDescriptor childPropertyDescriptor = THEN_EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.thenExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.conditionExpression == null ? 0 : getExpression().treeSize()) + (this.thenExpression == null ? 0 : getThenExpression().treeSize()) + (this.elseExpression != null ? getElseExpression().treeSize() : 0);
    }
}
