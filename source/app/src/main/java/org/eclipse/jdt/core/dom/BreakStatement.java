package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class BreakStatement extends Statement {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor LABEL_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_12;
    private boolean isImplicit;
    private Expression optionalExpression;
    private SimpleName optionalLabel;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(BreakStatement.class, "label", SimpleName.class, false, false);
        LABEL_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(BreakStatement.class, "expression", Expression.class, false, false);
        EXPRESSION_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(BreakStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(2);
        ASTNode.createPropertyList(BreakStatement.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_12 = ASTNode.reapPropertyList(arrayList2);
    }

    public BreakStatement(AST ast) {
        super(ast);
        this.isImplicit = false;
        this.optionalLabel = null;
        this.optionalExpression = null;
    }

    public static List propertyDescriptors(int i10) {
        return i10 >= 12 ? PROPERTY_DESCRIPTORS_12 : PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel >= 12) {
                acceptChild(aSTVisitor, getExpression());
            }
            acceptChild(aSTVisitor, getLabel());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        BreakStatement breakStatement = new BreakStatement(ast);
        breakStatement.setSourceRange(getStartPosition(), getLength());
        breakStatement.copyLeadingComment(this);
        breakStatement.setLabel((SimpleName) ASTNode.copySubtree(ast, getLabel()));
        if (this.ast.apiLevel >= 12) {
            breakStatement.setExpression((Expression) ASTNode.copySubtree(ast, getLabel()));
        }
        return breakStatement;
    }

    public Expression getExpression() {
        unsupportedBelow12();
        return this.optionalExpression;
    }

    public SimpleName getLabel() {
        return this.optionalLabel;
    }

    @Override
    public final int getNodeType0() {
        return 10;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == LABEL_PROPERTY) {
            if (z10) {
                return getLabel();
            }
            setLabel((SimpleName) aSTNode);
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

    public boolean isImplicit() {
        unsupportedBelow12();
        return this.isImplicit;
    }

    @Override
    public int memSize() {
        return super.memSize() + 8;
    }

    public void setExpression(Expression expression) {
        unsupportedBelow12();
        Expression expression2 = this.optionalExpression;
        ChildPropertyDescriptor childPropertyDescriptor = EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.optionalExpression = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setImplicit(boolean z10) {
        unsupportedBelow12();
        this.isImplicit = z10;
    }

    public void setLabel(SimpleName simpleName) {
        SimpleName simpleName2 = this.optionalLabel;
        ChildPropertyDescriptor childPropertyDescriptor = LABEL_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.optionalLabel = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.optionalLabel == null ? 0 : getLabel().treeSize()) + (this.optionalExpression != null ? getExpression().treeSize() : 0);
    }
}
