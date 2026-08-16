package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.linear.ConjugateGradient;

public class Assignment extends Expression {
    public static final ChildPropertyDescriptor LEFT_HAND_SIDE_PROPERTY;
    public static final SimplePropertyDescriptor OPERATOR_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor RIGHT_HAND_SIDE_PROPERTY;
    private Operator assignmentOperator;
    private Expression leftHandSide;
    private Expression rightHandSide;

    public static class Operator {
        public static final Operator ASSIGN;
        public static final Operator BIT_AND_ASSIGN;
        public static final Operator BIT_OR_ASSIGN;
        public static final Operator BIT_XOR_ASSIGN;
        private static final Map CODES;
        public static final Operator DIVIDE_ASSIGN;
        public static final Operator LEFT_SHIFT_ASSIGN;
        public static final Operator MINUS_ASSIGN;
        public static final Operator PLUS_ASSIGN;
        public static final Operator REMAINDER_ASSIGN;
        public static final Operator RIGHT_SHIFT_SIGNED_ASSIGN;
        public static final Operator RIGHT_SHIFT_UNSIGNED_ASSIGN;
        public static final Operator TIMES_ASSIGN;
        private String op;

        static {
            Operator operator = new Operator("=");
            ASSIGN = operator;
            Operator operator2 = new Operator("+=");
            PLUS_ASSIGN = operator2;
            Operator operator3 = new Operator("-=");
            MINUS_ASSIGN = operator3;
            Operator operator4 = new Operator("*=");
            TIMES_ASSIGN = operator4;
            Operator operator5 = new Operator("/=");
            DIVIDE_ASSIGN = operator5;
            Operator operator6 = new Operator("&=");
            BIT_AND_ASSIGN = operator6;
            Operator operator7 = new Operator("|=");
            BIT_OR_ASSIGN = operator7;
            Operator operator8 = new Operator("^=");
            BIT_XOR_ASSIGN = operator8;
            Operator operator9 = new Operator("%=");
            REMAINDER_ASSIGN = operator9;
            Operator operator10 = new Operator("<<=");
            LEFT_SHIFT_ASSIGN = operator10;
            Operator operator11 = new Operator(">>=");
            RIGHT_SHIFT_SIGNED_ASSIGN = operator11;
            Operator operator12 = new Operator(">>>=");
            RIGHT_SHIFT_UNSIGNED_ASSIGN = operator12;
            CODES = new HashMap(20);
            Operator[] operatorArr = {operator, operator2, operator3, operator4, operator5, operator6, operator7, operator8, operator9, operator10, operator11, operator12};
            for (int i10 = 0; i10 < 12; i10++) {
                CODES.put(operatorArr[i10].toString(), operatorArr[i10]);
            }
        }

        private Operator(String str) {
            this.op = str;
        }

        public static Operator toOperator(String str) {
            return (Operator) CODES.get(str);
        }

        public String toString() {
            return this.op;
        }
    }

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(Assignment.class, "leftHandSide", Expression.class, true, true);
        LEFT_HAND_SIDE_PROPERTY = childPropertyDescriptor;
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(Assignment.class, ConjugateGradient.OPERATOR, Operator.class, true);
        OPERATOR_PROPERTY = simplePropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(Assignment.class, "rightHandSide", Expression.class, true, true);
        RIGHT_HAND_SIDE_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(Assignment.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public Assignment(AST ast) {
        super(ast);
        this.assignmentOperator = Operator.ASSIGN;
        this.leftHandSide = null;
        this.rightHandSide = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getLeftHandSide());
            acceptChild(aSTVisitor, getRightHandSide());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        Assignment assignment = new Assignment(ast);
        assignment.setSourceRange(getStartPosition(), getLength());
        assignment.setOperator(getOperator());
        assignment.setLeftHandSide((Expression) getLeftHandSide().clone(ast));
        assignment.setRightHandSide((Expression) getRightHandSide().clone(ast));
        return assignment;
    }

    public Expression getLeftHandSide() {
        if (this.leftHandSide == null) {
            synchronized (this) {
                try {
                    if (this.leftHandSide == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.leftHandSide = simpleName;
                        postLazyInit(simpleName, LEFT_HAND_SIDE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.leftHandSide;
    }

    @Override
    public final int getNodeType0() {
        return 7;
    }

    public Operator getOperator() {
        return this.assignmentOperator;
    }

    public Expression getRightHandSide() {
        if (this.rightHandSide == null) {
            synchronized (this) {
                try {
                    if (this.rightHandSide == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.rightHandSide = simpleName;
                        postLazyInit(simpleName, RIGHT_HAND_SIDE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.rightHandSide;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == LEFT_HAND_SIDE_PROPERTY) {
            if (z10) {
                return getLeftHandSide();
            }
            setLeftHandSide((Expression) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != RIGHT_HAND_SIDE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getRightHandSide();
        }
        setRightHandSide((Expression) aSTNode);
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
        return 52;
    }

    public void setLeftHandSide(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.leftHandSide;
        ChildPropertyDescriptor childPropertyDescriptor = LEFT_HAND_SIDE_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.leftHandSide = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    public void setOperator(Operator operator) {
        if (operator == null) {
            throw new IllegalArgumentException();
        }
        SimplePropertyDescriptor simplePropertyDescriptor = OPERATOR_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.assignmentOperator = operator;
        postValueChange(simplePropertyDescriptor);
    }

    public void setRightHandSide(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.rightHandSide;
        ChildPropertyDescriptor childPropertyDescriptor = RIGHT_HAND_SIDE_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.rightHandSide = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.leftHandSide == null ? 0 : getLeftHandSide().treeSize()) + (this.rightHandSide != null ? getRightHandSide().treeSize() : 0);
    }
}
