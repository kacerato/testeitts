package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class Dimension extends ASTNode {
    public static final ChildListPropertyDescriptor ANNOTATIONS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    private ASTNode.NodeList annotations;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(Dimension.class, "annotations", Annotation.class, false);
        ANNOTATIONS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(Dimension.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList);
    }

    public Dimension(AST ast) {
        super(ast);
        this.annotations = new ASTNode.NodeList(ANNOTATIONS_PROPERTY);
        unsupportedIn2_3_4();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.annotations);
        }
        aSTVisitor.endVisit(this);
    }

    public List annotations() {
        return this.annotations;
    }

    @Override
    public ASTNode clone0(AST ast) {
        Dimension dimension = new Dimension(ast);
        dimension.annotations().addAll(ASTNode.copySubtrees(ast, annotations()));
        return dimension;
    }

    @Override
    public final int getNodeType0() {
        return 85;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ANNOTATIONS_PROPERTY ? annotations() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 44;
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + this.annotations.listSize();
    }
}
