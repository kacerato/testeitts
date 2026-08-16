package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.dom.ASTNode;

public class SuperMethodInvocation extends Expression {
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    private ASTNode.NodeList arguments;
    private SimpleName methodName;
    private Name optionalQualifier;
    private ASTNode.NodeList typeArguments;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(SuperMethodInvocation.class, "qualifier", Name.class, false, false);
        QUALIFIER_PROPERTY = childPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(SuperMethodInvocation.class, "typeArguments", Type.class, false);
        TYPE_ARGUMENTS_PROPERTY = childListPropertyDescriptor;
        ChildPropertyDescriptor childPropertyDescriptor2 = new ChildPropertyDescriptor(SuperMethodInvocation.class, "name", SimpleName.class, true, false);
        NAME_PROPERTY = childPropertyDescriptor2;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(SuperMethodInvocation.class, IJavaModelMarker.ARGUMENTS, Expression.class, true);
        ARGUMENTS_PROPERTY = childListPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(4);
        ASTNode.createPropertyList(SuperMethodInvocation.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(5);
        ASTNode.createPropertyList(SuperMethodInvocation.class, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childPropertyDescriptor2, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public SuperMethodInvocation(AST ast) {
        super(ast);
        this.optionalQualifier = null;
        this.typeArguments = null;
        this.methodName = null;
        this.arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
        if (ast.apiLevel >= 3) {
            this.typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
        }
    }

    public static List propertyDescriptors(int i10) {
        return i10 == 2 ? PROPERTY_DESCRIPTORS_2_0 : PROPERTY_DESCRIPTORS_3_0;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getQualifier());
            if (this.ast.apiLevel >= 3) {
                acceptChildren(aSTVisitor, this.typeArguments);
            }
            acceptChild(aSTVisitor, getName());
            acceptChildren(aSTVisitor, this.arguments);
        }
        aSTVisitor.endVisit(this);
    }

    public List arguments() {
        return this.arguments;
    }

    @Override
    public ASTNode clone0(AST ast) {
        SuperMethodInvocation superMethodInvocation = new SuperMethodInvocation(ast);
        superMethodInvocation.setSourceRange(getStartPosition(), getLength());
        superMethodInvocation.setName((SimpleName) getName().clone(ast));
        superMethodInvocation.setQualifier((Name) ASTNode.copySubtree(ast, getQualifier()));
        if (this.ast.apiLevel >= 3) {
            superMethodInvocation.typeArguments().addAll(ASTNode.copySubtrees(ast, typeArguments()));
        }
        superMethodInvocation.arguments().addAll(ASTNode.copySubtrees(ast, arguments()));
        return superMethodInvocation;
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
        return 48;
    }

    public Name getQualifier() {
        return this.optionalQualifier;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ARGUMENTS_PROPERTY ? arguments() : childListPropertyDescriptor == TYPE_ARGUMENTS_PROPERTY ? typeArguments() : super.internalGetChildListProperty(childListPropertyDescriptor);
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

    public boolean isResolvedTypeInferredFromExpectedType() {
        return this.ast.getBindingResolver().isResolvedTypeInferredFromExpectedType(this);
    }

    @Override
    public int memSize() {
        return 56;
    }

    public IMethodBinding resolveMethodBinding() {
        return this.ast.getBindingResolver().resolveMethod(this);
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
        int listSize = memSize + (nodeList == null ? 0 : nodeList.listSize()) + (this.methodName == null ? 0 : getName().treeSize());
        ASTNode.NodeList nodeList2 = this.arguments;
        return listSize + (nodeList2 != null ? nodeList2.listSize() : 0);
    }

    public List typeArguments() {
        if (this.typeArguments == null) {
            unsupportedIn2();
        }
        return this.typeArguments;
    }
}
