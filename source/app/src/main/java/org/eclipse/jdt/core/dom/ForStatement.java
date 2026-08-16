package org.eclipse.jdt.core.dom;

import android.provider.Telephony;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class ForStatement extends Statement {
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildListPropertyDescriptor INITIALIZERS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildListPropertyDescriptor UPDATERS_PROPERTY;
    private Statement body;
    private ASTNode.NodeList initializers;
    private Expression optionalConditionExpression;
    private ASTNode.NodeList updaters;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(ForStatement.class, "initializers", Expression.class, true);
        INITIALIZERS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ForStatement.class, "expression", Expression.class, false, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(ForStatement.class, "updaters", Expression.class, true);
        UPDATERS_PROPERTY = childListPropertyDescriptor2;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(ForStatement.class, Telephony.TextBasedSmsColumns.BODY, Statement.class, true, true);
        BODY_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(5);
        ASTNode.createPropertyList(ForStatement.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ForStatement(AST ast) {
        super(ast);
        this.initializers = new ASTNode.NodeList(INITIALIZERS_PROPERTY);
        this.optionalConditionExpression = null;
        this.updaters = new ASTNode.NodeList(UPDATERS_PROPERTY);
        this.body = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.initializers);
            acceptChild(aSTVisitor, getExpression());
            acceptChildren(aSTVisitor, this.updaters);
            acceptChild(aSTVisitor, getBody());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ForStatement forStatement = new ForStatement(ast);
        forStatement.setSourceRange(getStartPosition(), getLength());
        forStatement.copyLeadingComment(this);
        forStatement.initializers().addAll(ASTNode.copySubtrees(ast, initializers()));
        forStatement.setExpression((Expression) ASTNode.copySubtree(ast, getExpression()));
        forStatement.updaters().addAll(ASTNode.copySubtrees(ast, updaters()));
        forStatement.setBody((Statement) ASTNode.copySubtree(ast, getBody()));
        return forStatement;
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
        return this.optionalConditionExpression;
    }

    @Override
    public final int getNodeType0() {
        return 24;
    }

    public List initializers() {
        return this.initializers;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == INITIALIZERS_PROPERTY ? initializers() : childListPropertyDescriptor == UPDATERS_PROPERTY ? updaters() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        if (childPropertyDescriptor != BODY_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getBody();
        }
        setBody((Statement) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 16;
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
        Expression expression2 = this.optionalConditionExpression;
        ChildPropertyDescriptor childPropertyDescriptor = EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.optionalConditionExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + this.initializers.listSize() + this.updaters.listSize() + (this.optionalConditionExpression == null ? 0 : getExpression().treeSize()) + (this.body != null ? getBody().treeSize() : 0);
    }

    public List updaters() {
        return this.updaters;
    }
}
