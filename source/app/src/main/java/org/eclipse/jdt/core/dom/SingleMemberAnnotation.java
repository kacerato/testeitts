package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public final class SingleMemberAnnotation extends Annotation {
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor TYPE_NAME_PROPERTY;
    public static final ChildPropertyDescriptor VALUE_PROPERTY;
    private Expression value;

    static {
        ChildPropertyDescriptor internalTypeNamePropertyFactory = Annotation.internalTypeNamePropertyFactory(SingleMemberAnnotation.class);
        TYPE_NAME_PROPERTY = internalTypeNamePropertyFactory;
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(SingleMemberAnnotation.class, "value", Expression.class, true, true);
        VALUE_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(SingleMemberAnnotation.class, arrayList);
        ASTNode.addProperty(internalTypeNamePropertyFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public SingleMemberAnnotation(AST ast) {
        super(ast);
        this.value = null;
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getTypeName());
            acceptChild(aSTVisitor, getValue());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        SingleMemberAnnotation singleMemberAnnotation = new SingleMemberAnnotation(ast);
        singleMemberAnnotation.setSourceRange(getStartPosition(), getLength());
        singleMemberAnnotation.setTypeName((Name) ASTNode.copySubtree(ast, getTypeName()));
        singleMemberAnnotation.setValue((Expression) ASTNode.copySubtree(ast, getValue()));
        return singleMemberAnnotation;
    }

    @Override
    public final int getNodeType0() {
        return 79;
    }

    public Expression getValue() {
        if (this.value == null) {
            synchronized (this) {
                try {
                    if (this.value == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.value = simpleName;
                        postLazyInit(simpleName, VALUE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.value;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == TYPE_NAME_PROPERTY) {
            if (z10) {
                return getTypeName();
            }
            setTypeName((Name) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != VALUE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getValue();
        }
        setValue((Expression) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public final ChildPropertyDescriptor internalTypeNameProperty() {
        return TYPE_NAME_PROPERTY;
    }

    @Override
    public int memSize() {
        return super.memSize() + 4;
    }

    public void setValue(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression expression2 = this.value;
        ChildPropertyDescriptor childPropertyDescriptor = VALUE_PROPERTY;
        preReplaceChild(expression2, expression, childPropertyDescriptor);
        this.value = expression;
        postReplaceChild(expression2, expression, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.typeName == null ? 0 : getTypeName().treeSize()) + (this.value != null ? getValue().treeSize() : 0);
    }
}
