package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public final class NormalAnnotation extends Annotation {
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor TYPE_NAME_PROPERTY;
    public static final ChildListPropertyDescriptor VALUES_PROPERTY;
    private ASTNode.NodeList values;

    static {
        ChildPropertyDescriptor internalTypeNamePropertyFactory = Annotation.internalTypeNamePropertyFactory(NormalAnnotation.class);
        TYPE_NAME_PROPERTY = internalTypeNamePropertyFactory;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(NormalAnnotation.class, "values", MemberValuePair.class, true);
        VALUES_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(NormalAnnotation.class, arrayList);
        ASTNode.addProperty(internalTypeNamePropertyFactory, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public NormalAnnotation(AST ast) {
        super(ast);
        this.values = new ASTNode.NodeList(VALUES_PROPERTY);
        unsupportedIn2();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getTypeName());
            acceptChildren(aSTVisitor, this.values);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        NormalAnnotation normalAnnotation = new NormalAnnotation(ast);
        normalAnnotation.setSourceRange(getStartPosition(), getLength());
        normalAnnotation.setTypeName((Name) ASTNode.copySubtree(ast, getTypeName()));
        normalAnnotation.values().addAll(ASTNode.copySubtrees(ast, values()));
        return normalAnnotation;
    }

    @Override
    public final int getNodeType0() {
        return 77;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == VALUES_PROPERTY ? values() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        return super.memSize() + 4;
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.typeName == null ? 0 : getTypeName().treeSize()) + this.values.listSize();
    }

    public List values() {
        return this.values;
    }
}
