package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class SuperMethodReference extends MethodReference {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_8_0;
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    private SimpleName methodName;
    private Name optionalQualifier;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(SuperMethodReference.class, "qualifier", Name.class, false, false);
        QUALIFIER_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor internalTypeArgumentsFactory = MethodReference.internalTypeArgumentsFactory(SuperMethodReference.class);
        TYPE_ARGUMENTS_PROPERTY = internalTypeArgumentsFactory;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(SuperMethodReference.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(SuperMethodReference.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(internalTypeArgumentsFactory, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_8_0 = ASTNode.reapPropertyList(arrayList);
    }

    public SuperMethodReference(AST ast) {
        super(ast);
        this.optionalQualifier = null;
        this.methodName = null;
        unsupportedIn2_3_4();
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS_8_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getQualifier());
            acceptChildren(aSTVisitor, this.typeArguments);
            acceptChild(aSTVisitor, getName());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        SuperMethodReference superMethodReference = new SuperMethodReference(ast);
        superMethodReference.setSourceRange(getStartPosition(), getLength());
        superMethodReference.setName((SimpleName) getName().clone(ast));
        superMethodReference.setQualifier((Name) ASTNode.copySubtree(ast, getQualifier()));
        superMethodReference.typeArguments().addAll(ASTNode.copySubtrees(ast, typeArguments()));
        return superMethodReference;
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
        return 91;
    }

    public Name getQualifier() {
        return this.optionalQualifier;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == TYPE_ARGUMENTS_PROPERTY ? typeArguments() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor == QUALIFIER_PROPERTY) {
            if (z10) {
                return getQualifier();
            }
            setQualifier((Name) aSTNode);
            return null;
        }
        if (childPropertyDescriptor != NAME_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getName();
        }
        setName((SimpleName) aSTNode);
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

    public void setQualifier(Name name) {
        Name name2 = this.optionalQualifier;
        ChildPropertyDescriptor childPropertyDescriptor = QUALIFIER_PROPERTY;
        preReplaceChild(name2, name, childPropertyDescriptor);
        this.optionalQualifier = name;
        postReplaceChild(name2, name, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize() + (this.optionalQualifier == null ? 0 : getQualifier().treeSize());
        ASTNode.NodeList nodeList = this.typeArguments;
        return memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.methodName != null ? getName().treeSize() : 0);
    }

    @Override
    public List typeArguments() {
        return this.typeArguments;
    }
}
