package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;

public class BooleanLiteral extends Expression {
    public static final SimplePropertyDescriptor BOOLEAN_VALUE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private boolean value;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(BooleanLiteral.class, "booleanValue", Boolean.TYPE, true);
        BOOLEAN_VALUE_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(BooleanLiteral.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public BooleanLiteral(AST ast) {
        super(ast);
        this.value = false;
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        aSTVisitor.visit(this);
        aSTVisitor.endVisit(this);
    }

    public boolean booleanValue() {
        return this.value;
    }

    @Override
    public ASTNode clone0(AST ast) {
        BooleanLiteral booleanLiteral = new BooleanLiteral(ast);
        booleanLiteral.setSourceRange(getStartPosition(), getLength());
        booleanLiteral.setBooleanValue(booleanValue());
        return booleanLiteral;
    }

    @Override
    public final int getNodeType0() {
        return 9;
    }

    @Override
    public final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, boolean z11) {
        if (simplePropertyDescriptor != BOOLEAN_VALUE_PROPERTY) {
            return super.internalGetSetBooleanProperty(simplePropertyDescriptor, z10, z11);
        }
        if (z10) {
            return booleanValue();
        }
        setBooleanValue(z11);
        return false;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return 44;
    }

    public void setBooleanValue(boolean z10) {
        SimplePropertyDescriptor simplePropertyDescriptor = BOOLEAN_VALUE_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.value = z10;
        postValueChange(simplePropertyDescriptor);
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
