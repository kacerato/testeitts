package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class AnonymousClassDeclaration extends ASTNode {
    public static final ChildListPropertyDescriptor BODY_DECLARATIONS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList bodyDeclarations;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(AnonymousClassDeclaration.class, "bodyDeclarations", BodyDeclaration.class, true);
        BODY_DECLARATIONS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(AnonymousClassDeclaration.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public AnonymousClassDeclaration(AST ast) {
        super(ast);
        this.bodyDeclarations = new ASTNode.NodeList(BODY_DECLARATIONS_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.bodyDeclarations);
        }
        aSTVisitor.endVisit(this);
    }

    public List bodyDeclarations() {
        return this.bodyDeclarations;
    }

    @Override
    public ASTNode clone0(AST ast) {
        AnonymousClassDeclaration anonymousClassDeclaration = new AnonymousClassDeclaration(ast);
        anonymousClassDeclaration.setSourceRange(getStartPosition(), getLength());
        anonymousClassDeclaration.bodyDeclarations().addAll(ASTNode.copySubtrees(ast, bodyDeclarations()));
        return anonymousClassDeclaration;
    }

    @Override
    public final int getNodeType0() {
        return 1;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == BODY_DECLARATIONS_PROPERTY ? bodyDeclarations() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 44;
    }

    public ITypeBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + this.bodyDeclarations.listSize();
    }
}
