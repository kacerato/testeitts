package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class CreationReference extends MethodReference {
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private Type type;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(CreationReference.class, "type", Type.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor internalTypeArgumentsFactory = MethodReference.internalTypeArgumentsFactory(CreationReference.class);
        TYPE_ARGUMENTS_PROPERTY = internalTypeArgumentsFactory;
        ArrayList arrayList = new ArrayList(3);
        ASTNode.createPropertyList(CreationReference.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(internalTypeArgumentsFactory, arrayList);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList);
    }

    public CreationReference(AST ast) {
        super(ast);
        this.type = null;
        unsupportedIn2_3_4();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_8_0;
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
        CreationReference creationReference = new CreationReference(ast);
        creationReference.setSourceRange(getStartPosition(), getLength());
        creationReference.setType((Type) ASTNode.copySubtree(ast, getType()));
        creationReference.typeArguments().addAll(ASTNode.copySubtrees(ast, typeArguments()));
        return creationReference;
    }

    @Override
    public final int getNodeType0() {
        return 89;
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
    public final ChildListPropertyDescriptor internalTypeArgumentsProperty() {
        return TYPE_ARGUMENTS_PROPERTY;
    }

    @Override
    public int memSize() {
        return 48;
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
        int memSize = memSize() + (this.type == null ? 0 : getType().treeSize());
        ASTNode.NodeList nodeList = this.typeArguments;
        return memSize + (nodeList != null ? nodeList.listSize() : 0);
    }

    @Override
    public List typeArguments() {
        return this.typeArguments;
    }
}
