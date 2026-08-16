package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class SwitchCase extends Statement {
    public static final ChildListPropertyDescriptor EXPRESSIONS2_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_12;
    public static final SimplePropertyDescriptor SWITCH_LABELED_RULE_PROPERTY;
    private boolean expressionInitialized;
    private ASTNode.NodeList expressions;
    private Expression optionalExpression;
    private boolean switchLabeledRule;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(SwitchCase.class, "expression", Expression.class, false, true);
        EXPRESSION_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(SwitchCase.class, "expression", Expression.class, true);
        EXPRESSIONS2_PROPERTY = childListPropertyDescriptor;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(SwitchCase.class, "switchLabeledRule", Boolean.TYPE, true);
        SWITCH_LABELED_RULE_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(SwitchCase.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(2);
        ASTNode.createPropertyList(SwitchCase.class, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_12 = ASTNode.reapPropertyList(arrayList2);
    }

    public SwitchCase(AST ast) {
        super(ast);
        this.optionalExpression = null;
        this.switchLabeledRule = false;
        this.expressions = null;
        this.expressionInitialized = false;
        if (ast.apiLevel >= 12) {
            this.expressions = new ASTNode.NodeList(EXPRESSIONS2_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 >= 12 ? PROPERTY_DESCRIPTORS_12 : PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel >= 12) {
                acceptChildren(aSTVisitor, this.expressions);
            } else {
                acceptChild(aSTVisitor, getExpression());
            }
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        SwitchCase switchCase = new SwitchCase(ast);
        switchCase.setSourceRange(getStartPosition(), getLength());
        switchCase.copyLeadingComment(this);
        if (this.ast.apiLevel >= 12) {
            switchCase.expressions().addAll(ASTNode.copySubtrees(ast, expressions()));
        } else {
            switchCase.setExpression((Expression) ASTNode.copySubtree(ast, getExpression()));
        }
        return switchCase;
    }

    public List expressions() {
        if (this.expressions == null) {
            unsupportedBelow12();
        }
        return this.expressions;
    }

    public Expression getExpression() {
        if (!this.expressionInitialized) {
            synchronized (this) {
                try {
                    if (!this.expressionInitialized) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.optionalExpression = simpleName;
                        this.expressionInitialized = true;
                        postLazyInit(simpleName, EXPRESSION_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.optionalExpression;
    }

    @Override
    public final int getNodeType0() {
        return 49;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == EXPRESSIONS2_PROPERTY ? expressions() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != SWITCH_LABELED_RULE_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return isSwitchLabeledRule();
        }
        setSwitchLabeledRule(z11);
        return false;
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

    public boolean isDefault() {
        return this.ast.apiLevel >= 12 ? expressions().isEmpty() : getExpression() == null;
    }

    public boolean isSwitchLabeledRule() {
        unsupportedBelow12();
        return this.switchLabeledRule;
    }

    @Override
    public int memSize() {
        return super.memSize() + 8;
    }

    public void setExpression(Expression expression) {
        Expression expression2 = this.optionalExpression;
        ChildPropertyDescriptor childPropertyDescriptor = EXPRESSION_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.optionalExpression = expression;
        this.expressionInitialized = true;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setSwitchLabeledRule(boolean z10) {
        unsupportedBelow12();
        SimplePropertyDescriptor simplePropertyDescriptor = SWITCH_LABELED_RULE_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.switchLabeledRule = z10;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        Expression expression = this.optionalExpression;
        return memSize + (expression == null ? 0 : expression.treeSize());
    }
}
