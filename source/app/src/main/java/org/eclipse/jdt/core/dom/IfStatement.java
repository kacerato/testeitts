package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class IfStatement extends Statement {
    public static final ChildPropertyDescriptor ELSE_STATEMENT_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor THEN_STATEMENT_PROPERTY;
    private Expression expression;
    private Statement optionalElseStatement;
    private Statement thenStatement;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(IfStatement.class, "expression", Expression.class, true, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(IfStatement.class, "thenStatement", Statement.class, true, true);
        THEN_STATEMENT_PROPERTY = childPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor3 = new ChildPropertyDescriptor(IfStatement.class, "elseStatement", Statement.class, false, true);
        ELSE_STATEMENT_PROPERTY = childPropertyDescriptor3;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(IfStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childPropertyDescriptor3, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public IfStatement(AST ast) {
        super(ast);
        this.expression = null;
        this.thenStatement = null;
        this.optionalElseStatement = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getExpression());
            acceptChild(aSTVisitor, getThenStatement());
            acceptChild(aSTVisitor, getElseStatement());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        IfStatement ifStatement = new IfStatement(ast);
        ifStatement.setSourceRange(getStartPosition(), getLength());
        ifStatement.copyLeadingComment(this);
        ifStatement.setExpression((Expression) getExpression().clone(ast));
        ifStatement.setThenStatement((Statement) getThenStatement().clone(ast));
        ifStatement.setElseStatement((Statement) ASTNode.copySubtree(ast, getElseStatement()));
        return ifStatement;
    }

    public Statement getElseStatement() {
        return this.optionalElseStatement;
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
        return 25;
    }

    public Statement getThenStatement() {
        if (this.thenStatement == null) {
            synchronized (this) {
                try {
                    if (this.thenStatement == null) {
                        preLazyInit();
                        Block block = new Block(this.ast);
                        this.thenStatement = block;
                        postLazyInit(block, THEN_STATEMENT_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.thenStatement;
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
        if (childPropertyDescriptor == THEN_STATEMENT_PROPERTY) {
            if (z10) {
                return getThenStatement();
            }
            setThenStatement((Statement) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != ELSE_STATEMENT_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getElseStatement();
        }
        setElseStatement((Statement) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 12;
    }

    public void setElseStatement(Statement statement) {
        Statement statement2 = this.optionalElseStatement;
        ChildPropertyDescriptor childPropertyDescriptor = ELSE_STATEMENT_PROPERTY;
        preReplaceChild(statement2, statement, childPropertyDescriptor);
        this.optionalElseStatement = statement;
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

    public void setThenStatement(Statement statement) {
        if (statement == null) {
            throw new IllegalArgumentException();
        }
        Statement statement2 = this.thenStatement;
        ChildPropertyDescriptor childPropertyDescriptor = THEN_STATEMENT_PROPERTY;
        preReplaceChild(statement2, statement, childPropertyDescriptor);
        this.thenStatement = statement;
        postReplaceChild(statement2, statement, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.expression == null ? 0 : getExpression().treeSize()) + (this.thenStatement == null ? 0 : getThenStatement().treeSize()) + (this.optionalElseStatement != null ? getElseStatement().treeSize() : 0);
    }
}
