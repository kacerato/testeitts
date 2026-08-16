package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class ArrayInitializer extends Expression {
    public static final ChildListPropertyDescriptor EXPRESSIONS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList expressions;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(ArrayInitializer.class, "expressions", Expression.class, true);
        EXPRESSIONS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(ArrayInitializer.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ArrayInitializer(AST ast) {
        super(ast);
        this.expressions = new ASTNode.NodeList(EXPRESSIONS_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.expressions);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ArrayInitializer arrayInitializer = new ArrayInitializer(ast);
        arrayInitializer.setSourceRange(getStartPosition(), getLength());
        arrayInitializer.expressions().addAll(ASTNode.copySubtrees(ast, expressions()));
        return arrayInitializer;
    }

    public List expressions() {
        return this.expressions;
    }

    @Override
    public final int getNodeType0() {
        return 4;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == EXPRESSIONS_PROPERTY ? expressions() : super.internalGetChildListProperty(childListPropertyDescriptor);
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
        return memSize() + this.expressions.listSize();
    }
}
