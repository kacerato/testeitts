package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.compiler.util.Util;

public final class TextElement extends ASTNode implements IDocElement {
    private static final List PROPERTY_DESCRIPTORS;
    public static final SimplePropertyDescriptor TEXT_PROPERTY;
    private String text;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(TextElement.class, "text", String.class, true);
        TEXT_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(TextElement.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public TextElement(AST ast) {
        super(ast);
        this.text = Util.EMPTY_STRING;
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
        TextElement textElement = new TextElement(ast);
        textElement.setSourceRange(getStartPosition(), getLength());
        textElement.setText(getText());
        return textElement;
    }

    @Override
    public final int getNodeType0() {
        return 66;
    }

    public String getText() {
        return this.text;
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != TEXT_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getText();
        }
        setText((String) obj);
        return null;
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        String str = this.text;
        if (str != Util.EMPTY_STRING) {
            return 44 + ASTNode.stringSize(str);
        }
        return 44;
    }

    public void setText(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (str.indexOf("*/") > 0) {
            throw new IllegalArgumentException();
        }
        SimplePropertyDescriptor simplePropertyDescriptor = TEXT_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.text = str;
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
