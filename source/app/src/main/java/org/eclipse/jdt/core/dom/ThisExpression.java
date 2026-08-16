package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class ThisExpression extends Expression {
    private static final List PROPERTY_DESCRIPTORS;
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    private Name optionalQualifier;

    static {
        ChildPropertyDescriptor childPropertyDescriptor = new ChildPropertyDescriptor(ThisExpression.class, "qualifier", Name.class, false, false);
        QUALIFIER_PROPERTY = childPropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(ThisExpression.class, arrayList);
        ASTNode.addProperty(childPropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public ThisExpression(AST ast) {
        super(ast);
        this.optionalQualifier = null;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        if (aSTVisitor.visit(this)) {
            acceptChild(aSTVisitor, getQualifier());
        }
        aSTVisitor.endVisit(this);
    }

    @Override
    public ASTNode clone0(AST ast) {
        ThisExpression thisExpression = new ThisExpression(ast);
        thisExpression.setSourceRange(getStartPosition(), getLength());
        thisExpression.setQualifier((Name) ASTNode.copySubtree(ast, getQualifier()));
        return thisExpression;
    }

    @Override
    public final int getNodeType0() {
        return 52;
    }

    public Name getQualifier() {
        return this.optionalQualifier;
    }

    @Override
    public final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor childPropertyDescriptor, boolean z10, ASTNode aSTNode) {
        if (childPropertyDescriptor != QUALIFIER_PROPERTY) {
            return super.internalGetSetChildProperty(childPropertyDescriptor, z10, aSTNode);
        }
        if (z10) {
            return getQualifier();
        }
        setQualifier((Name) aSTNode);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 44;
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
        return memSize() + (this.optionalQualifier == null ? 0 : getQualifier().treeSize());
    }
}
