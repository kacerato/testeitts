package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class AssertStatement extends Statement {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor MESSAGE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression expression;
    private Expression optionalMessageExpression;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(AssertStatement.class, "expression", Expression.class, true, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(AssertStatement.class, "message", Expression.class, false, true);
        MESSAGE_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(AssertStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public AssertStatement(AST ast) {
        super(ast);
        this.expression = null;
        this.optionalMessageExpression = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getExpression());
            acceptChild(aSTVisitor, getMessage());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        AssertStatement assertStatement = new AssertStatement(ast);
        assertStatement.setSourceRange(getStartPosition(), getLength());
        assertStatement.copyLeadingComment(this);
        assertStatement.setExpression((Expression) ASTNode.copySubtree(ast, getExpression()));
        assertStatement.setMessage((Expression) ASTNode.copySubtree(ast, getMessage()));
        return assertStatement;
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

    public Expression getMessage() {
        return this.optionalMessageExpression;
    }

    @Override
    public final int getNodeType0() {
        return 6;
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
        if (childPropertyDescriptor != MESSAGE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getMessage();
        }
        setMessage((Expression) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 8;
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

    public void setMessage(Expression expression) {
        Expression expression2 = this.optionalMessageExpression;
        ChildPropertyDescriptor childPropertyDescriptor = MESSAGE_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.optionalMessageExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.expression == null ? 0 : getExpression().treeSize()) + (this.optionalMessageExpression != null ? getMessage().treeSize() : 0);
    }
}
