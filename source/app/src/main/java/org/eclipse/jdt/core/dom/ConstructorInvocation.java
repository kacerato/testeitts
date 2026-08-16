package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.dom.ASTNode;

public class ConstructorInvocation extends Statement {
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    private ASTNode.NodeList arguments;
    private ASTNode.NodeList typeArguments;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(ConstructorInvocation.class, "typeArguments", Type.class, false);
        TYPE_ARGUMENTS_PROPERTY = childListPropertyDescriptor;
        ChildListPropertyDescriptor childListPropertyDescriptor2 = new ChildListPropertyDescriptor(ConstructorInvocation.class, IJavaModelMarker.ARGUMENTS, Expression.class, true);
        ARGUMENTS_PROPERTY = childListPropertyDescriptor2;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(ConstructorInvocation.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList);
        PROPERTY_DESCRIPTORS_2_0 = ASTNode.reapPropertyList(arrayList);
        ArrayList arrayList2 = new ArrayList(3);
        ASTNode.createPropertyList(ConstructorInvocation.class, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList2);
        ASTNode.addProperty(childListPropertyDescriptor2, arrayList2);
        PROPERTY_DESCRIPTORS_3_0 = ASTNode.reapPropertyList(arrayList2);
    }

    public ConstructorInvocation(AST ast) {
        super(ast);
        this.typeArguments = null;
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
            if (this.ast.apiLevel >= 3) {
                acceptChildren(aSTVisitor, this.typeArguments);
            }
            acceptChildren(aSTVisitor, this.arguments);
        }
        aSTVisitor.endVisit(this);
    }

    public List arguments() {
        return this.arguments;
    }

    @Override
    public ASTNode clone0(AST ast) {
        ConstructorInvocation constructorInvocation = new ConstructorInvocation(ast);
        constructorInvocation.setSourceRange(getStartPosition(), getLength());
        constructorInvocation.copyLeadingComment(this);
        if (this.ast.apiLevel >= 3) {
            constructorInvocation.typeArguments().addAll(ASTNode.copySubtrees(ast, typeArguments()));
        }
        constructorInvocation.arguments().addAll(ASTNode.copySubtrees(ast, arguments()));
        return constructorInvocation;
    }

    @Override
    public final int getNodeType0() {
        return 17;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == ARGUMENTS_PROPERTY ? arguments() : childListPropertyDescriptor == TYPE_ARGUMENTS_PROPERTY ? typeArguments() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 48;
    }

    public IMethodBinding resolveConstructorBinding() {
        return this.ast.getBindingResolver().resolveConstructor(this);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        int memSize = memSize();
        ASTNode.NodeList nodeList = this.typeArguments;
        int listSize = memSize + (nodeList == null ? 0 : nodeList.listSize());
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
