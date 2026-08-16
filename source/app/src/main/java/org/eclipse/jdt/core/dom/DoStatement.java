package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;

public class DoStatement extends Statement {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Statement body;
    private Expression expression;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(DoStatement.class, Telephony.TextBasedSmsColumns.BODY, Statement.class, true, true);
        BODY_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(DoStatement.class, "expression", Expression.class, true, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(DoStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public DoStatement(AST ast) {
        super(ast);
        this.body = null;
        this.expression = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getBody());
            acceptChild(aSTVisitor, getExpression());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        DoStatement doStatement = new DoStatement(ast);
        doStatement.setSourceRange(getStartPosition(), getLength());
        doStatement.copyLeadingComment(this);
        doStatement.setBody((Statement) getBody().clone(ast));
        doStatement.setExpression((Expression) getExpression().clone(ast));
        return doStatement;
    }

    public Statement getBody() {
        if (this.body == null) {
            synchronized (this) {
                try {
                    if (this.body == null) {
                        preLazyInit();
                        Block block = new Block(this.ast);
                        this.body = block;
                        postLazyInit(block, BODY_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.body;
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

    @Override
    public final int getNodeType0() {
        return 19;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == BODY_PROPERTY) {
            if (z10) {
                return getBody();
            }
            setBody((Statement) aSTNode);
            return null;
        }
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
        return super.memSize() + 8;
    }

    public void setBody(Statement statement) {
        if (statement == null) {
            throw new IllegalArgumentException();
        }
        Statement statement2 = this.body;
        ChildPropertyDescriptor childPropertyDescriptor = BODY_PROPERTY;
        preReplaceChild(statement2, statement, childPropertyDescriptor);
        this.body = statement;
        postReplaceChild(statement2, statement, childPropertyDescriptor);
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
        return memSize() + (this.expression == null ? 0 : getExpression().treeSize()) + (this.body != null ? getBody().treeSize() : 0);
    }
}
