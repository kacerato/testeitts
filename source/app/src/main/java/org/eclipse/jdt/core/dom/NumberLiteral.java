package org.eclipse.jdt.core.dom;

import f3.C13183b;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class NumberLiteral extends Expression {
    private static final List PROPERTY_DESCRIPTORS;
    public static final SimplePropertyDescriptor TOKEN_PROPERTY;
    private String tokenValue;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(NumberLiteral.class, C13183b.f85996h, String.class, true);
        TOKEN_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(NumberLiteral.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public NumberLiteral(AST ast) {
        super(ast);
        this.tokenValue = "0";
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
        NumberLiteral numberLiteral = new NumberLiteral(ast);
        numberLiteral.setSourceRange(getStartPosition(), getLength());
        numberLiteral.setToken(getToken());
        return numberLiteral;
    }

    @Override
    public final int getNodeType0() {
        return 34;
    }

    public String getToken() {
        return this.tokenValue;
    }

    @Override
    public final Object internalGetSetObjectProperty(SimplePropertyDescriptor simplePropertyDescriptor, boolean z10, Object obj) {
        if (simplePropertyDescriptor != TOKEN_PROPERTY) {
            return super.internalGetSetObjectProperty(simplePropertyDescriptor, z10, obj);
        }
        if (z10) {
            return getToken();
        }
        setToken((String) obj);
        return null;
    }

    public void internalSetToken(String str) {
        SimplePropertyDescriptor simplePropertyDescriptor = TOKEN_PROPERTY;
        preValueChange(simplePropertyDescriptor);
        this.tokenValue = str;
        postValueChange(simplePropertyDescriptor);
    }

    @Override
    public final List internalStructuralPropertiesForType(int i10) {
        return propertyDescriptors(i10);
    }

    @Override
    public int memSize() {
        return ASTNode.stringSize(this.tokenValue) + 44;
    }

    public void setToken(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException();
        }
        Scanner scanner = this.ast.scanner;
        char[] charArray = str.toCharArray();
        scanner.setSource(charArray);
        scanner.resetTo(0, charArray.length);
        scanner.tokenizeComments = false;
        scanner.tokenizeWhiteSpace = false;
        try {
            try {
                int nextToken = scanner.getNextToken();
                if (nextToken != 5) {
                    switch (nextToken) {
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid number literal : >" + str + "<");
                    }
                } else {
                    switch (scanner.getNextToken()) {
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid number literal : >" + str + "<");
                    }
                }
                scanner.tokenizeComments = true;
                scanner.tokenizeWhiteSpace = true;
                SimplePropertyDescriptor simplePropertyDescriptor = TOKEN_PROPERTY;
                preValueChange(simplePropertyDescriptor);
                this.tokenValue = str;
                postValueChange(simplePropertyDescriptor);
            } catch (InvalidInputException unused) {
                throw new IllegalArgumentException();
            }
        } catch (Throwable th2) {
            scanner.tokenizeComments = true;
            scanner.tokenizeWhiteSpace = true;
            throw th2;
        }
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
