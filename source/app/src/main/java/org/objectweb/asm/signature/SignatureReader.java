package org.objectweb.asm.signature;

public class SignatureReader {
    private final String signatureValue;

    public SignatureReader(String str) {
        this.signatureValue = str;
    }

    private static int parseType(String str, int i10, SignatureVisitor signatureVisitor) {
        int i11;
        char charAt;
        int i12 = i10 + 1;
        char charAt2 = str.charAt(i10);
        if (charAt2 != 'F') {
            if (charAt2 == 'L') {
                boolean z10 = false;
                boolean z11 = false;
                while (true) {
                    int i13 = i12;
                    while (true) {
                        i11 = i12 + 1;
                        charAt = str.charAt(i12);
                        if (charAt == '.' || charAt == ';') {
                            break;
                        }
                        if (charAt == '<') {
                            String substring = str.substring(i13, i12);
                            if (z11) {
                                signatureVisitor.visitInnerClassType(substring);
                            } else {
                                signatureVisitor.visitClassType(substring);
                            }
                            i12 = i11;
                            while (true) {
                                char charAt3 = str.charAt(i12);
                                if (charAt3 == '>') {
                                    break;
                                }
                                if (charAt3 != '*') {
                                    i12 = (charAt3 == '+' || charAt3 == '-') ? parseType(str, i12 + 1, signatureVisitor.visitTypeArgument(charAt3)) : parseType(str, i12, signatureVisitor.visitTypeArgument('='));
                                } else {
                                    i12++;
                                    signatureVisitor.visitTypeArgument();
                                }
                            }
                            z10 = true;
                        } else {
                            i12 = i11;
                        }
                    }
                    if (!z10) {
                        String substring2 = str.substring(i13, i12);
                        if (z11) {
                            signatureVisitor.visitInnerClassType(substring2);
                        } else {
                            signatureVisitor.visitClassType(substring2);
                        }
                    }
                    if (charAt == ';') {
                        signatureVisitor.visitEnd();
                        return i11;
                    }
                    z10 = false;
                    z11 = true;
                    i12 = i11;
                }
            } else if (charAt2 != 'V' && charAt2 != 'I' && charAt2 != 'J' && charAt2 != 'S') {
                if (charAt2 == 'T') {
                    int indexOf = str.indexOf(59, i12);
                    signatureVisitor.visitTypeVariable(str.substring(i12, indexOf));
                    return indexOf + 1;
                }
                if (charAt2 != 'Z') {
                    if (charAt2 == '[') {
                        return parseType(str, i12, signatureVisitor.visitArrayType());
                    }
                    switch (charAt2) {
                        case 'B':
                        case 'C':
                        case 'D':
                            break;
                        default:
                            throw new IllegalArgumentException();
                    }
                }
            }
        }
        signatureVisitor.visitBaseType(charAt2);
        return i12;
    }

    public void accept(SignatureVisitor signatureVisitor) {
        char charAt;
        String str = this.signatureValue;
        int length = str.length();
        int i10 = 0;
        if (str.charAt(0) == '<') {
            i10 = 2;
            do {
                int indexOf = str.indexOf(58, i10);
                signatureVisitor.visitFormalTypeParameter(str.substring(i10 - 1, indexOf));
                int i11 = indexOf + 1;
                char charAt2 = str.charAt(i11);
                if (charAt2 == 'L' || charAt2 == '[' || charAt2 == 'T') {
                    i11 = parseType(str, i11, signatureVisitor.visitClassBound());
                }
                while (true) {
                    i10 = i11 + 1;
                    charAt = str.charAt(i11);
                    if (charAt != ':') {
                        break;
                    } else {
                        i11 = parseType(str, i10, signatureVisitor.visitInterfaceBound());
                    }
                }
            } while (charAt != '>');
        }
        if (str.charAt(i10) != '(') {
            int parseType = parseType(str, i10, signatureVisitor.visitSuperclass());
            while (parseType < length) {
                parseType = parseType(str, parseType, signatureVisitor.visitInterface());
            }
        } else {
            int i12 = i10 + 1;
            while (str.charAt(i12) != ')') {
                i12 = parseType(str, i12, signatureVisitor.visitParameterType());
            }
            int parseType2 = parseType(str, i12 + 1, signatureVisitor.visitReturnType());
            while (parseType2 < length) {
                parseType2 = parseType(str, parseType2 + 1, signatureVisitor.visitExceptionType());
            }
        }
    }

    public void acceptType(SignatureVisitor signatureVisitor) {
        parseType(this.signatureValue, 0, signatureVisitor);
    }
}
