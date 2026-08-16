package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class InstanceofExpression extends Expression {
    public static final ChildPropertyDescriptor LEFT_OPERAND_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor RIGHT_OPERAND_PROPERTY;
    private Expression leftOperand;
    private Type rightOperand;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(InstanceofExpression.class, "leftOperand", Expression.class, true, true);
        LEFT_OPERAND_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(InstanceofExpression.class, "rightOperand", Type.class, true, true);
        RIGHT_OPERAND_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(InstanceofExpression.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public InstanceofExpression(AST ast) {
        super(ast);
        this.leftOperand = null;
        this.rightOperand = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getLeftOperand());
            acceptChild(aSTVisitor, getRightOperand());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        InstanceofExpression instanceofExpression = new InstanceofExpression(ast);
        instanceofExpression.setSourceRange(getStartPosition(), getLength());
        instanceofExpression.setLeftOperand((Expression) getLeftOperand().clone(ast));
        instanceofExpression.setRightOperand((Type) getRightOperand().clone(ast));
        return instanceofExpression;
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
        return 62;
    }

    public Type getRightOperand() {
        if (this.rightOperand == null) {
            synchronized (this) {
                try {
                    if (this.rightOperand == null) {
                        preLazyInit();
                        SimpleType simpleType = new SimpleType(this.ast);
                        this.rightOperand = simpleType;
                        postLazyInit(simpleType, RIGHT_OPERAND_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.rightOperand;
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
        setRightOperand((Type) aSTNode);
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

    public void setRightOperand(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.rightOperand;
        ChildPropertyDescriptor childPropertyDescriptor = RIGHT_OPERAND_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.rightOperand = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.leftOperand == null ? 0 : getLeftOperand().treeSize()) + (this.rightOperand != null ? getRightOperand().treeSize() : 0);
    }
}
