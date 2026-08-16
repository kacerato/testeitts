package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class SwitchStatement extends Statement {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildListPropertyDescriptor STATEMENTS_PROPERTY;
    private Expression expression;
    private ASTNode.NodeList statements;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(SwitchStatement.class, "expression", Expression.class, true, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(SwitchStatement.class, "statements", Statement.class, true);
        STATEMENTS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(SwitchStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public SwitchStatement(AST ast) {
        super(ast);
        this.expression = null;
        this.statements = new ASTNode.NodeList(STATEMENTS_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getExpression());
            acceptChildren(aSTVisitor, this.statements);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        SwitchStatement switchStatement = new SwitchStatement(ast);
        switchStatement.setSourceRange(getStartPosition(), getLength());
        switchStatement.copyLeadingComment(this);
        switchStatement.setExpression((Expression) getExpression().clone(ast));
        switchStatement.statements().addAll(ASTNode.copySubtrees(ast, statements()));
        return switchStatement;
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
        return 50;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == STATEMENTS_PROPERTY ? statements() : super.internalGetChildListProperty(childListPropertyDescriptor);
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

    public List statements() {
        return this.statements;
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.expression == null ? 0 : getExpression().treeSize()) + this.statements.listSize();
    }
}
