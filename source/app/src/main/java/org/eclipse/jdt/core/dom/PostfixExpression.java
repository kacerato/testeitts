package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.linear.ConjugateGradient;

public class PostfixExpression extends Expression {
    public static final ChildPropertyDescriptor OPERAND_PROPERTY;
    public static final SimplePropertyDescriptor OPERATOR_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression operand;
    private Operator operator;

    public static class Operator {
        private static final Map CODES;
        public static final Operator DECREMENT;
        public static final Operator INCREMENT;
        private String token;

        static {
            Operator operator = new Operator("++");
            INCREMENT = operator;
            Operator operator2 = new Operator("--");
            DECREMENT = operator2;
            CODES = new HashMap(20);
            Operator[] operatorArr = {operator, operator2};
            for (int i10 = 0; i10 < 2; i10++) {
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
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(PostfixExpression.class, ConjugateGradient.OPERATOR, Operator.class, true);
        OPERATOR_PROPERTY = simplePropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(PostfixExpression.class, "operand", Expression.class, true, true);
        OPERAND_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(PostfixExpression.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public PostfixExpression(AST ast) {
        super(ast);
        this.operator = Operator.INCREMENT;
        this.operand = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getOperand());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        PostfixExpression postfixExpression = new PostfixExpression(ast);
        postfixExpression.setSourceRange(getStartPosition(), getLength());
        postfixExpression.setOperator(getOperator());
        postfixExpression.setOperand((Expression) getOperand().clone(ast));
        return postfixExpression;
    }

    @Override
    public final int getNodeType0() {
        return 37;
    }

    public Expression getOperand() {
        if (this.operand == null) {
            synchronized (this) {
                try {
                    if (this.operand == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.operand = simpleName;
                        postLazyInit(simpleName, OPERAND_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.operand;
    }

    public Operator getOperator() {
        return this.operator;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != OPERAND_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getOperand();
        }
        setOperand((Expression) aSTNode);
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
        return 48;
    }

    public void setOperand(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.operand;
        ChildPropertyDescriptor childPropertyDescriptor = OPERAND_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.operand = expression;
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

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.operand == null ? 0 : getOperand().treeSize());
    }
}
