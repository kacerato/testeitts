package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public final class LineComment extends Comment {
    private static final List PROPERTY_DESCRIPTORS;

    static {
        ArrayList arrayList = new ArrayList(1);
        ASTNode.createPropertyList(LineComment.class, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public LineComment(AST ast) {
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
        LineComment lineComment = new LineComment(ast);
        lineComment.setSourceRange(getStartPosition(), getLength());
        return lineComment;
    }

    @Override
    public final int getNodeType0() {
        return 63;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize();
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
