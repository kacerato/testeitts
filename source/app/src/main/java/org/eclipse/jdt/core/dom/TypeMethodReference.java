package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class TypeMethodReference extends MethodReference {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private SimpleName methodName;
    private Type type;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(TypeMethodReference.class, "type", Type.class, true, false);
        TYPE_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor internalTypeArgumentsFactory = MethodReference.internalTypeArgumentsFactory(TypeMethodReference.class);
        TYPE_ARGUMENTS_PROPERTY = internalTypeArgumentsFactory;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(TypeMethodReference.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(TypeMethodReference.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(internalTypeArgumentsFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList);
    }

    public TypeMethodReference(AST ast) {
        super(ast);
        this.type = null;
        this.methodName = null;
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
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        TypeMethodReference typeMethodReference = new TypeMethodReference(ast);
        typeMethodReference.setSourceRange(getStartPosition(), getLength());
        typeMethodReference.setType((Type) ASTNode.copySubtree(ast, getType()));
        typeMethodReference.typeArguments().addAll(ASTNode.copySubtrees(ast, typeArguments()));
        typeMethodReference.setName((SimpleName) getName().clone(ast));
        return typeMethodReference;
    }

    public SimpleName getName() {
        if (this.methodName == null) {
            synchronized (this) {
                try {
                    if (this.methodName == null) {
                        preLazyInit();
                        SimpleName simpleName = new SimpleName(this.ast);
                        this.methodName = simpleName;
                        postLazyInit(simpleName, NAME_PROPERTY);
                    }
                } finally {
                }
            }
        }
        return this.methodName;
    }

    @Override
    public final int getNodeType0() {
        return 92;
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
        if (childPropertyDescriptor == NAME_PROPERTY) {
            if (z10) {
                return getName();
            }
            setName((SimpleName) aSTNode);
            return null;
        }
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
        return 52;
    }

    public void setName(SimpleName simpleName) {
        if (simpleName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName simpleName2 = this.methodName;
        ChildPropertyDescriptor childPropertyDescriptor = NAME_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.methodName = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
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
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.methodName != null ? getName().treeSize() : 0);
    }

    @Override
    public List typeArguments() {
        return this.typeArguments;
    }
}
