package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class ParameterizedType extends Type {
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    int index;
    private Type type;
    private ASTNode.NodeList typeArguments;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ParameterizedType.class, "type", Type.class, true, true);
        TYPE_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(ParameterizedType.class, "typeArguments", Type.class, true);
        TYPE_ARGUMENTS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(ParameterizedType.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ParameterizedType(AST ast) {
        super(ast);
        this.type = null;
        this.typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getType());
            acceptChildren(aSTVisitor, this.typeArguments);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ParameterizedType parameterizedType = new ParameterizedType(ast);
        parameterizedType.setSourceRange(getStartPosition(), getLength());
        parameterizedType.setType((Type) getType().clone(ast));
        parameterizedType.typeArguments().addAll(ASTNode.copySubtrees(ast, typeArguments()));
        return parameterizedType;
    }

    @Override
    public final int getNodeType0() {
        return 74;
    }

    public Type getType() {
        if (this.type == null) {
            synchronized (this) {
                try {
                    if (this.type == null) {
                        preLazyInit();
                        SimpleType simpleType = new SimpleType(this.ast);
                        this.type = simpleType;
                        postLazyInit(simpleType, TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.type;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == TYPE_ARGUMENTS_PROPERTY ? typeArguments() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != TYPE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getType();
        }
        setType((Type) aSTNode);
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

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type type2 = this.type;
        ChildPropertyDescriptor childPropertyDescriptor = TYPE_PROPERTY;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.type = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.type == null ? 0 : getType().treeSize()) + this.typeArguments.listSize();
    }

    public List typeArguments() {
        return this.typeArguments;
    }
}
