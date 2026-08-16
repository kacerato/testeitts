package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class ContinueStatement extends Statement {
    public static final ChildPropertyDescriptor LABEL_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private SimpleName optionalLabel;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ContinueStatement.class, "label", SimpleName.class, false, false);
        LABEL_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(ContinueStatement.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ContinueStatement(AST ast) {
        super(ast);
        this.optionalLabel = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getLabel());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ContinueStatement continueStatement = new ContinueStatement(ast);
        continueStatement.setSourceRange(getStartPosition(), getLength());
        continueStatement.copyLeadingComment(this);
        continueStatement.setLabel((SimpleName) ASTNode.copySubtree(ast, getLabel()));
        return continueStatement;
    }

    public SimpleName getLabel() {
        return this.optionalLabel;
    }

    @Override
    public final int getNodeType0() {
        return 18;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != LABEL_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getLabel();
        }
        setLabel((SimpleName) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return super.memSize() + 4;
    }

    public void setLabel(SimpleName simpleName) {
        SimpleName simpleName2 = this.optionalLabel;
        ChildPropertyDescriptor childPropertyDescriptor = LABEL_PROPERTY;
        preReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
        this.optionalLabel = simpleName;
        postReplaceChild(simpleName2, simpleName, childPropertyDescriptor);
    }

    @Override
    public final boolean subtreeMatch0(ASTMatcher aSTMatcher, Object obj) {
        return aSTMatcher.match(this, obj);
    }

    @Override
    public int treeSize() {
        return memSize() + (this.optionalLabel == null ? 0 : getLabel().treeSize());
    }
}
