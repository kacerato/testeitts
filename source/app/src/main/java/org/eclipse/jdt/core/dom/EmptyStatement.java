package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class EmptyStatement extends Statement {
    private static final List PROPERTY_DESCRIPTORS;

    static {
        ArrayList arrayList = new ArrayList(1);
        ASTNode.createPropertyList(EmptyStatement.class, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public EmptyStatement(AST ast) {
        super(ast);
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        aSTVisitor.visit(this);
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        EmptyStatement emptyStatement = new EmptyStatement(ast);
        emptyStatement.setSourceRange(getStartPosition(), getLength());
        emptyStatement.copyLeadingComment(this);
        return emptyStatement;
    }

    @Override
    public final int getNodeType0() {
        return 20;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize();
    }
}
