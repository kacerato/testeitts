package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public final class MarkerAnnotation extends Annotation {
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor TYPE_NAME_PROPERTY;

    static {
        ChildPropertyDescriptor internalTypeNamePropertyFactory = Annotation.internalTypeNamePropertyFactory(MarkerAnnotation.class);
        TYPE_NAME_PROPERTY = internalTypeNamePropertyFactory;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(MarkerAnnotation.class, arrayList);
        ASTNode.addProperty(internalTypeNamePropertyFactory, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public MarkerAnnotation(AST ast) {
        super(ast);
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getTypeName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        MarkerAnnotation markerAnnotation = new MarkerAnnotation(ast);
        markerAnnotation.setSourceRange(getStartPosition(), getLength());
        markerAnnotation.setTypeName((Name) ASTNode.copySubtree(ast, getTypeName()));
        return markerAnnotation;
    }

    @Override
    public final int getNodeType0() {
        return 78;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != TYPE_NAME_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getTypeName();
        }
        setTypeName((Name) aSTNode);
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
        return super.memSize();
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.typeName == null ? 0 : getTypeName().treeSize());
    }
}
