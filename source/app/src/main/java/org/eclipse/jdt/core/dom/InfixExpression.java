package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.linear.ConjugateGradient;
import org.eclipse.jdt.core.dom.ASTNode;

public class InfixExpression extends Expression {
    public static final ChildListPropertyDescriptor EXTENDED_OPERANDS_PROPERTY;
    public static final ChildPropertyDescriptor LEFT_OPERAND_PROPERTY;
    public static final SimplePropertyDescriptor OPERATOR_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor RIGHT_OPERAND_PROPERTY;
    private ASTNode.NodeList extendedOperands;
    private Expression leftOperand;
    private Operator operator;
    private Expression rightOperand;

    public static class Operator {
        public static final Operator AND;
        private static final Map CODES;
        public static final Operator CONDITIONAL_AND;
        public static final Operator CONDITIONAL_OR;
        public static final Operator DIVIDE;
        public static final Operator EQUALS;
        public static final Operator GREATER;
        public static final Operator GREATER_EQUALS;
        public static final Operator LEFT_SHIFT;
        public static final Operator LESS;
        public static final Operator LESS_EQUALS;
        public static final Operator MINUS;
        public static final Operator NOT_EQUALS;
        public static final Operator OR;
        public static final Operator PLUS;
        public static final Operator REMAINDER;
        public static final Operator RIGHT_SHIFT_SIGNED;
        public static final Operator RIGHT_SHIFT_UNSIGNED;
        public static final Operator TIMES;
        public static final Operator XOR;
        private String token;

        static {
            Operator operator = new Operator("*");
            TIMES = operator;
            Operator operator2 = new Operator("/");
            DIVIDE = operator2;
            Operator operator3 = new Operator(ve.j.f121589a);
            REMAINDER = operator3;
            Operator operator4 = new Operator("+");
            PLUS = operator4;
            Operator operator5 = new Operator("-");
            MINUS = operator5;
            Operator operator6 = new Operator("<<");
            LEFT_SHIFT = operator6;
            Operator operator7 = new Operator(">>");
            RIGHT_SHIFT_SIGNED = operator7;
            Operator operator8 = new Operator(">>>");
            RIGHT_SHIFT_UNSIGNED = operator8;
            Operator operator9 = new Operator("<");
            LESS = operator9;
            Operator operator10 = new Operator(">");
            GREATER = operator10;
            Operator operator11 = new Operator("<=");
            LESS_EQUALS = operator11;
            Operator operator12 = new Operator(">=");
            GREATER_EQUALS = operator12;
            Operator operator13 = new Operator("==");
            EQUALS = operator13;
            Operator operator14 = new Operator("!=");
            NOT_EQUALS = operator14;
            Operator operator15 = new Operator("^");
            XOR = operator15;
            Operator operator16 = new Operator("|");
            OR = operator16;
            Operator operator17 = new Operator("&");
            AND = operator17;
            Operator operator18 = new Operator("||");
            CONDITIONAL_OR = operator18;
            Operator operator19 = new Operator("&&");
            CONDITIONAL_AND = operator19;
            CODES = new HashMap(20);
            Operator[] operatorArr = {operator, operator2, operator3, operator4, operator5, operator6, operator7, operator8, operator9, operator10, operator11, operator12, operator13, operator14, operator15, operator16, operator17, operator18, operator19};
            for (int i10 = 0; i10 < 19; i10++) {
                CODES.put(operatorArr[i10].toString(), operatorArr[i10]);
            }
        }

        private Operator(String str) {
            this.token = str;
        }

        public static Operator toOperator(String str) {
            return (Operator) CODES.get(str);
        }

        public String toString() {
            return this.token;
        }
    }

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(InfixExpression.class, "leftOperand", Expression.class, true, true);
        LEFT_OPERAND_PROPERTY = childPropertyDescriptor;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(InfixExpression.class, ConjugateGradient.OPERATOR, Operator.class, true);
        OPERATOR_PROPERTY = simplePropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(InfixExpression.class, "rightOperand", Expression.class, true, true);
        RIGHT_OPERAND_PROPERTY = childPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(InfixExpression.class, "extendedOperands", Expression.class, true);
        EXTENDED_OPERANDS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(5);
        ASTNode.createPropertyList(InfixExpression.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public InfixExpression(AST ast) {
        super(ast);
        this.operator = Operator.PLUS;
        this.leftOperand = null;
        this.rightOperand = null;
        this.extendedOperands = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getLeftOperand());
            acceptChild(aSTVisitor, getRightOperand());
            ASTNode.NodeList nodeList = this.extendedOperands;
            if (nodeList != null) {
                acceptChildren(aSTVisitor, nodeList);
            }
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        InfixExpression infixExpression = new InfixExpression(ast);
        infixExpression.setSourceRange(getStartPosition(), getLength());
        infixExpression.setOperator(getOperator());
        infixExpression.setLeftOperand((Expression) getLeftOperand().clone(ast));
        infixExpression.setRightOperand((Expression) getRightOperand().clone(ast));
        if (this.extendedOperands != null) {
            infixExpression.extendedOperands().addAll(ASTNode.copySubtrees(ast, extendedOperands()));
        }
        return infixExpression;
    }

    public List extendedOperands() {
        if (this.extendedOperands == null) {
            this.extendedOperands = new ASTNode.NodeList(EXTENDED_OPERANDS_PROPERTY);
        }
        return this.extendedOperands;
    }

    public Expression getLeftOperand() {
        if (this.leftOperand == null) {
            synchronized (this) {
                try {
                    if (this.leftOperand == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.leftOperand = simpleName;
                        postLazyInit(simpleName, LEFT_OPERAND_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.leftOperand;
    }

    @Override
    public final int getNodeType0() {
        return 27;
    }

    public Operator getOperator() {
        return this.operator;
    }

    public Expression getRightOperand() {
        if (this.rightOperand == null) {
            synchronized (this) {
                try {
                    if (this.rightOperand == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.rightOperand = simpleName;
                        postLazyInit(simpleName, RIGHT_OPERAND_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.rightOperand;
    }

    public boolean hasExtendedOperands() {
        ASTNode.NodeList nodeList = this.extendedOperands;
        return nodeList != null && nodeList.size() > 0;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == EXTENDED_OPERANDS_PROPERTY ? extendedOperands() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == LEFT_OPERAND_PROPERTY) {
            if (z10) {
                return getLeftOperand();
            }
            setLeftOperand((Expression) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != RIGHT_OPERAND_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getRightOperand();
        }
        setRightOperand((Expression) aSTNode);
        return null;
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != OPERATOR_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getOperator();
        }
        setOperator((Operator) obj);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 56;
    }

    public void setLeftOperand(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.leftOperand;
        ChildPropertyDescriptor childPropertyDescriptor = LEFT_OPERAND_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.leftOperand = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setOperator(Operator operator) {
        if (operator == null) {
            throw new IllegalArgumentException();
        }
        SimplePropertyDescriptor simplePropertyDescriptor = OPERATOR_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.operator = operator;
        postValueChange(simplePropertyDescriptor);
    }

    public void setRightOperand(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.rightOperand;
        ChildPropertyDescriptor childPropertyDescriptor = RIGHT_OPERAND_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.rightOperand = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.leftOperand == null ? 0 : getLeftOperand().treeSize()) + (this.rightOperand == null ? 0 : getRightOperand().treeSize());
        ASTNode.NodeList nodeList = this.extendedOperands;
        return memSize + (nodeList != null ? nodeList.listSize() : 0);
    }
}
