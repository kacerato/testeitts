package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class ArrayType extends Type {
    public static final ChildPropertyDescriptor COMPONENT_TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor DIMENSIONS_PROPERTY;
    public static final ChildPropertyDescriptor ELEMENT_TYPE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    private ASTNode.NodeList dimensions;
    private Type type;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ArrayType.class, "componentType", Type.class, true, true);
        COMPONENT_TYPE_PROPERTY = childPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(ArrayType.class, "elementType", Type.class, true, true);
        ELEMENT_TYPE_PROPERTY = childPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(ArrayType.class, "dimensions", Dimension.class, true);
        DIMENSIONS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(ArrayType.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(3);
        ASTNode.createPropertyList(ArrayType.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public ArrayType(AST ast) {
        super(ast);
        this.type = null;
        this.dimensions = null;
        if (ast.apiLevel >= 8) {
            this.dimensions = new ASTNode.NodeList(DIMENSIONS_PROPERTY);
            dimensions().add(this.ast.newDimension());
        }
    }

    private Type internalGetType(ChildPropertyDescriptor childPropertyDescriptor) {
        if (this.type == null) {
            synchronized (this) {
                try {
                    if (this.type == null) {
                        preLazyInit();
                        SimpleType simpleType = new SimpleType(this.ast);
                        this.type = simpleType;
                        postLazyInit(simpleType, childPropertyDescriptor);
                    }
                } finally {
                }
            }
        }
        return this.type;
    }

    private void internalSetType(Type type, ChildPropertyDescriptor childPropertyDescriptor) {
        Type type2 = this.type;
        preReplaceChild(type2, type, childPropertyDescriptor);
        this.type = type;
        postReplaceChild(type2, type, childPropertyDescriptor);
    }

    public static List propertyDescriptors(int i10) {
        return (i10 == 2 || i10 == 3 || i10 == 4) ? PROPERTY_DESCRIPTORS : PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            if (this.ast.apiLevel < 8) {
                acceptChild(aSTVisitor, getComponentType());
            } else {
                acceptChild(aSTVisitor, getElementType());
                acceptChildren(aSTVisitor, this.dimensions);
            }
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ArrayType arrayType;
        if (this.ast.apiLevel < 8) {
            arrayType = new ArrayType(ast);
            arrayType.setComponentType((Type) getComponentType().clone(ast));
        } else {
            arrayType = new ArrayType(ast, 0);
            arrayType.setElementType((Type) getElementType().clone(ast));
            arrayType.dimensions().addAll(ASTNode.copySubtrees(ast, dimensions()));
        }
        arrayType.setSourceRange(getStartPosition(), getLength());
        return arrayType;
    }

    public List dimensions() {
        if (this.dimensions == null) {
            unsupportedIn2_3_4();
        }
        return this.dimensions;
    }

    public Type getComponentType() {
        supportedOnlyIn2_3_4();
        return internalGetType(COMPONENT_TYPE_PROPERTY);
    }

    public int getDimensions() {
        if (this.ast.apiLevel() >= 8) {
            return dimensions().size();
        }
        int i10 = 1;
        for (Type componentType = getComponentType(); componentType.isArrayType(); componentType = ((ArrayType) componentType).getComponentType()) {
            i10++;
        }
        return i10;
    }

    public Type getElementType() {
        if (this.ast.apiLevel() >= 8) {
            return internalGetType(ELEMENT_TYPE_PROPERTY);
        }
        Type componentType = getComponentType();
        while (componentType.isArrayType()) {
            componentType = ((ArrayType) componentType).getComponentType();
        }
        return componentType;
    }

    @Override
    public final int getNodeType0() {
        return 5;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == DIMENSIONS_PROPERTY ? dimensions() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == COMPONENT_TYPE_PROPERTY) {
            if (z10) {
                return getComponentType();
            }
            setComponentType((Type) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != ELEMENT_TYPE_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getElementType();
        }
        setElementType((Type) aSTNode);
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

    public void setComponentType(Type type) {
        supportedOnlyIn2_3_4();
        if (type == null) {
            throw new IllegalArgumentException();
        }
        internalSetType(type, COMPONENT_TYPE_PROPERTY);
    }

    public void setElementType(Type type) {
        unsupportedIn2_3_4();
        if (type == null || (type instanceof ArrayType)) {
            throw new IllegalArgumentException();
        }
        internalSetType(type, ELEMENT_TYPE_PROPERTY);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        if (this.type != null) {
            int treeSize = (this.ast.apiLevel() < 8 ? getComponentType() : getElementType()).treeSize();
            ASTNode.NodeList nodeList = this.dimensions;
            r2 = (nodeList != null ? nodeList.listSize() : 0) + treeSize;
        }
        return memSize + r2;
    }

    public ArrayType(AST ast, int i10) {
        super(ast);
        this.type = null;
        this.dimensions = null;
        unsupportedIn2_3_4();
        this.dimensions = new ASTNode.NodeList(DIMENSIONS_PROPERTY);
        for (int i11 = 0; i11 < i10; i11++) {
            dimensions().add(this.ast.newDimension());
        }
    }
}
