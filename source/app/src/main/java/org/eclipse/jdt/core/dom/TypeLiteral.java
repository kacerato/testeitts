package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class TypeLiteral extends Expression {
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private Type type;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(TypeLiteral.class, "type", Type.class, true, true);
        TYPE_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(TypeLiteral.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public TypeLiteral(AST ast) {
        super(ast);
        this.type = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getType());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        TypeLiteral typeLiteral = new TypeLiteral(ast);
        typeLiteral.setSourceRange(getStartPosition(), getLength());
        typeLiteral.setType((Type) getType().clone(ast));
        return typeLiteral;
    }

    @Override
    public final int getNodeType0() {
        return 57;
    }

    public Type getType() {
        if (this.type == null) {
            synchronized (this) {
                try {
                    if (this.type == null) {
                        preLazyInit();
                        PrimitiveType newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.INT);
                        this.type = newPrimitiveType;
                        postLazyInit(newPrimitiveType, TYPE_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.type;
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
        return 44;
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
        return memSize() + (this.type == null ? 0 : getType().treeSize());
    }
}
