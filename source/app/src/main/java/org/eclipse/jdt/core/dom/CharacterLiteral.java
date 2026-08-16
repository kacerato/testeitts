package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class CharacterLiteral extends Expression {
    public static final SimplePropertyDescriptor ESCAPED_VALUE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private String escapedValue;

    static {
        SimplePropertyDescriptor simplePropertyDescriptor = new SimplePropertyDescriptor(CharacterLiteral.class, "escapedValue", String.class, true);
        ESCAPED_VALUE_PROPERTY = simplePropertyDescriptor;
        ArrayList arrayList = new ArrayList(2);
        ASTNode.createPropertyList(CharacterLiteral.class, arrayList);
        ASTNode.addProperty(simplePropertyDescriptor, arrayList);
        PROPERTY_DESCRIPTORS = ASTNode.reapPropertyList(arrayList);
    }

    public CharacterLiteral(AST ast) {
        super(ast);
        this.escapedValue = "'X'";
    }

    public static List propertyDescriptors(int i10) {
        return PROPERTY_DESCRIPTORS;
    }

    @Override
    public void accept0(ASTVisitor aSTVisitor) {
        aSTVisitor.visit(this);
        aSTVisitor.endVisit(this);
    }

    public char charValue() {
        Scanner scanner = this.ast.scanner;
        char[] charArray = this.escapedValue.toCharArray();
        scanner.setSource(charArray);
        scanner.resetTo(0, charArray.length);
        int nextChar = scanner.getNextChar();
        int nextChar2 = scanner.getNextChar();
        if (nextChar == -1 || nextChar != 39) {
            throw new IllegalArgumentException("illegal character literal");
        }
        char c10 = (char) nextChar2;
        int nextChar3 = scanner.getNextChar();
        if (nextChar2 == 92) {
            if (nextChar3 == -1) {
                throw new IllegalArgumentException("illegal character literal");
            }
            c10 = '\"';
            if (nextChar3 != 34) {
                if (nextChar3 == 39) {
                    c10 = '\'';
                } else if (nextChar3 == 92) {
                    c10 = '\\';
                } else if (nextChar3 == 98) {
                    c10 = '\b';
                } else if (nextChar3 == 102) {
                    c10 = '\f';
                } else if (nextChar3 == 110) {
                    c10 = '\n';
                } else if (nextChar3 == 114) {
                    c10 = CharUtils.CR;
                } else {
                    if (nextChar3 != 116) {
                        char c11 = (char) nextChar3;
                        try {
                            if (!ScannerHelper.isDigit(c11)) {
                                throw new IllegalArgumentException("illegal character literal");
                            }
                            int numericValue = ScannerHelper.getNumericValue(c11);
                            int nextChar4 = scanner.getNextChar();
                            if (nextChar4 == -1) {
                                throw new IllegalArgumentException("illegal character literal");
                            }
                            if (nextChar4 != 39) {
                                char c12 = (char) nextChar4;
                                if (!ScannerHelper.isDigit(c12)) {
                                    throw new IllegalArgumentException("illegal character literal");
                                }
                                numericValue = (numericValue * 8) + ScannerHelper.getNumericValue(c12);
                                int nextChar5 = scanner.getNextChar();
                                if (nextChar5 == -1) {
                                    throw new IllegalArgumentException("illegal character literal");
                                }
                                if (nextChar5 != 39) {
                                    char c13 = (char) nextChar5;
                                    if (!ScannerHelper.isDigit(c13)) {
                                        throw new IllegalArgumentException("illegal character literal");
                                    }
                                    numericValue = (numericValue * 8) + ScannerHelper.getNumericValue(c13);
                                }
                            }
                            return (char) numericValue;
                        } catch (InvalidInputException e10) {
                            throw new IllegalArgumentException("illegal character literal", e10);
                        }
                    }
                    c10 = '\t';
                }
            }
            nextChar3 = scanner.getNextChar();
            if (nextChar3 == -1) {
                throw new IllegalArgumentException("illegal character literal");
            }
        }
        if (nextChar3 == -1 || nextChar3 != 39) {
            throw new IllegalArgumentException("illegal character literal");
        }
        return c10;
    }

    @Override
    public ASTNode clone0(AST ast) {
        CharacterLiteral characterLiteral = new CharacterLiteral(ast);
        characterLiteral.setSourceRange(getStartPosition(), getLength());
        characterLiteral.setEscapedValue(getEscapedValue());
        return characterLiteral;
    }

    public String getEscapedValue() {
        return this.escapedValue;
    }

    @Override
    public final int getNodeType0() {
        return 13;
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

    public void setCharValue(char c10) {
        StringBuffer stringBuffer = new StringBuffer(3);
        stringBuffer.append(JavaElement.JEM_MODULAR_CLASSFILE);
        Util.appendEscapedChar(stringBuffer, c10, false);
        stringBuffer.append(JavaElement.JEM_MODULAR_CLASSFILE);
        setEscapedValue(stringBuffer.toString());
    }

    public void setEscapedValue(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        Scanner scanner = this.ast.scanner;
        char[] charArray = str.toCharArray();
        scanner.setSource(charArray);
        scanner.resetTo(0, charArray.length);
        try {
            if (scanner.getNextToken() != 45) {
                throw new IllegalArgumentException();
            }
            SimplePropertyDescriptor simplePropertyDescriptor = ESCAPED_VALUE_PROPERTY;
            preValueChange(simplePropertyDescriptor);
            this.escapedValue = str;
            postValueChange(simplePropertyDescriptor);
        } catch (InvalidInputException unused) {
            throw new IllegalArgumentException();
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
