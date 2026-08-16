package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.ASTNode;

public class Block extends Statement {
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildListPropertyDescriptor STATEMENTS_PROPERTY;
    private ASTNode.NodeList statements;

    static {
        ChildListPropertyDescriptor childListPropertyDescriptor = new ChildListPropertyDescriptor(Block.class, "statements", Statement.class, true);
        STATEMENTS_PROPERTY = childListPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(Block.class, arrayList);
        ASTNode.addProperty(childListPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public Block(AST ast) {
        super(ast);
        this.statements = new ASTNode.NodeList(STATEMENTS_PROPERTY);
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChildren(aSTVisitor, this.statements);
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        Block block = new Block(ast);
        block.setSourceRange(getStartPosition(), getLength());
        block.copyLeadingComment(this);
        block.statements().addAll(ASTNode.copySubtrees(ast, statements()));
        return block;
    }

    @Override
    public final int getNodeType0() {
        return 8;
    }

    @Override
    public final List internalGetChildListProperty(ChildListPropertyDescriptor childListPropertyDescriptor) {
        return childListPropertyDescriptor == STATEMENTS_PROPERTY ? statements() : super.internalGetChildListProperty(childListPropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 4;
    }

    public List statements() {
        return this.statements;
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + this.statements.listSize();
    }
}
