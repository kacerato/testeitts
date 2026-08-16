package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class StringLiteral extends Expression {
    public static final SimplePropertyDescriptor ESCAPED_VALUE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private String escapedValue;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(StringLiteral.class, "escapedValue", String.class, true);
        ESCAPED_VALUE_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(StringLiteral.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public StringLiteral(AST ast) {
        super(ast);
        this.escapedValue = "\"\"";
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
        StringLiteral stringLiteral = new StringLiteral(ast);
        stringLiteral.setSourceRange(getStartPosition(), getLength());
        stringLiteral.setEscapedValue(getEscapedValue());
        return stringLiteral;
    }

    public String getEscapedValue() {
        return this.escapedValue;
    }

    public String getLiteralValue() {
        String escapedValue = getEscapedValue();
        int length = escapedValue.length();
        if (length < 2 || escapedValue.charAt(0) != '\"' || escapedValue.charAt(length - 1) != '\"') {
            throw new IllegalArgumentException();
        }
        Scanner scanner = this.ast.scanner;
        char[] charArray = escapedValue.toCharArray();
        scanner.setSource(charArray);
        scanner.resetTo(0, charArray.length);
        try {
            if (scanner.getNextToken() == 46) {
                return scanner.getCurrentStringLiteral();
            }
            throw new IllegalArgumentException();
        } catch (InvalidInputException unused) {
            throw new IllegalArgumentException();
        }
    }

    @Override
    public final int getNodeType0() {
        return 45;
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != ESCAPED_VALUE_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getEscapedValue();
        }
        setEscapedValue((String) obj);
        return null;
    }

    public void internalSetEscapedValue(String str) {
        SimplePropertyDescriptor simplePropertyDescriptor = ESCAPED_VALUE_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.escapedValue = str;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return ASTNode.stringSize(this.escapedValue) + 44;
    }

    public void setEscapedValue(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Token cannot be null");
        }
        Scanner scanner = this.ast.scanner;
        char[] charArray = str.toCharArray();
        scanner.setSource(charArray);
        scanner.resetTo(0, charArray.length);
        try {
            if (scanner.getNextToken() != 46) {
                throw new IllegalArgumentException("Invalid string literal : >" + str + "<");
            }
            SimplePropertyDescriptor simplePropertyDescriptor = ESCAPED_VALUE_PROPERTY;
            preValueChange(simplePropertyDescriptor);
            this.escapedValue = str;
            postValueChange(simplePropertyDescriptor);
        } catch (InvalidInputException unused) {
            throw new IllegalArgumentException("Invalid string literal : >" + str + "<");
        }
    }

    public void setLiteralValue(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 2);
        stringBuffer.append(JavadocConstants.ANCHOR_PREFIX_END);
        for (int i10 = 0; i10 < length; i10++) {
            Util.appendEscapedChar(stringBuffer, str.charAt(i10), true);
        }
        stringBuffer.append(JavadocConstants.ANCHOR_PREFIX_END);
        setEscapedValue(stringBuffer.toString());
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
