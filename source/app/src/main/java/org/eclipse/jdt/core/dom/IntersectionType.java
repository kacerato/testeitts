package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class IntersectionType extends Type {
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final ChildListPropertyDescriptor TYPES_PROPERTY;
    private ASTNode.NodeList types;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(IntersectionType.class, "types", Type.class, true);
        TYPES_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(IntersectionType.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList);
    }

    public IntersectionType(AST ast) {
        super(ast);
        this.types = new ASTNode.NodeList(TYPES_PROPERTY);
        unsupportedIn2_3_4();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.types);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        IntersectionType intersectionType = new IntersectionType(ast);
        intersectionType.setSourceRange(getStartPosition(), getLength());
        intersectionType.types().addAll(ASTNode.copySubtrees(ast, types()));
        return intersectionType;
    }

    @Override
    public final int getNodeType0() {
        return 87;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == TYPES_PROPERTY ? types() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        return memSize() + this.types.listSize();
    }

    public List types() {
        return this.types;
    }
}
