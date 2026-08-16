package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class UnionType extends Type {
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildListPropertyDescriptor TYPES_PROPERTY;
    private ASTNode.NodeList types;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(UnionType.class, "types", Type.class, true);
        TYPES_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(UnionType.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public UnionType(AST ast) {
        super(ast);
        this.types = new ASTNode.NodeList(TYPES_PROPERTY);
        unsupportedIn2_3();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
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
        UnionType unionType = new UnionType(ast);
        unionType.setSourceRange(getStartPosition(), getLength());
        unionType.types().addAll(ASTNode.copySubtrees(ast, types()));
        return unionType;
    }

    @Override
    public final int getNodeType0() {
        return 84;
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
