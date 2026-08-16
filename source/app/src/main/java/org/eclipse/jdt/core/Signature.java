package org.eclipse.jdt.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public final class Signature {
    public static final int ARRAY_TYPE_SIGNATURE = 4;
    public static final int BASE_TYPE_SIGNATURE = 2;
    public static final int CAPTURE_TYPE_SIGNATURE = 6;
    public static final int CLASS_TYPE_SIGNATURE = 1;
    public static final char C_ARRAY = '[';
    public static final char C_BOOLEAN = 'Z';
    public static final char C_BYTE = 'B';
    public static final char C_CAPTURE = '!';
    public static final char C_CHAR = 'C';
    public static final char C_COLON = ':';
    public static final char C_DOLLAR = '$';
    public static final char C_DOT = '.';
    public static final char C_DOUBLE = 'D';
    public static final char C_EXCEPTION_START = '^';
    public static final char C_EXTENDS = '+';
    public static final char C_FLOAT = 'F';
    public static final char C_GENERIC_END = '>';
    public static final char C_GENERIC_START = '<';
    public static final char C_INT = 'I';
    public static final char C_INTERSECTION = '|';
    public static final char C_LONG = 'J';
    public static final char C_NAME_END = ';';
    public static final char C_PARAM_END = ')';
    public static final char C_PARAM_START = '(';
    public static final char C_RESOLVED = 'L';
    public static final char C_SEMICOLON = ';';
    public static final char C_SHORT = 'S';
    public static final char C_STAR = '*';
    public static final char C_SUPER = '-';
    public static final char C_TYPE_VARIABLE = 'T';
    public static final char C_UNION = '&';
    public static final char C_UNRESOLVED = 'Q';
    public static final char C_VOID = 'V';
    public static final int INTERSECTION_TYPE_SIGNATURE = 7;
    public static final String SIG_BOOLEAN = "Z";
    public static final String SIG_BYTE = "B";
    public static final String SIG_CHAR = "C";
    public static final String SIG_DOUBLE = "D";
    public static final String SIG_FLOAT = "F";
    public static final String SIG_INT = "I";
    public static final String SIG_LONG = "J";
    public static final String SIG_SHORT = "S";
    public static final String SIG_VOID = "V";
    public static final int TYPE_VARIABLE_SIGNATURE = 3;
    public static final int UNION_TYPE_SIGNATURE = 8;
    public static final int WILDCARD_TYPE_SIGNATURE = 5;
    private static final char[] BOOLEAN = TypedValues.Custom.S_BOOLEAN.toCharArray();
    private static final char[] BYTE = "byte".toCharArray();
    private static final char[] CAPTURE = "capture-of".toCharArray();
    private static final char[] CHAR = "char".toCharArray();
    private static final char[] DOUBLE = "double".toCharArray();
    private static final char[] EXTENDS = "extends".toCharArray();
    private static final char[] FLOAT = TypedValues.Custom.S_FLOAT.toCharArray();
    private static final char[] INT = "int".toCharArray();
    private static final char[] LONG = "long".toCharArray();
    private static final char[] SHORT = "short".toCharArray();
    private static final char[] SUPER = "super".toCharArray();
    private static final char[] VOID = "void".toCharArray();

    private Signature() {
    }

    private static void appendArgumentSimpleNames(char[] cArr, int i10, int i11, StringBuffer stringBuffer) {
        stringBuffer.append('<');
        int i12 = 0;
        int i13 = -1;
        int i14 = 0;
        while (i10 <= i11) {
            char c10 = cArr[i10];
            if (c10 != ',') {
                if (c10 == '<') {
                    i12++;
                    if (i12 != 1) {
                    }
                    i13 = i10 + 1;
                } else if (c10 == '>') {
                    if (i12 == 1) {
                        if (i14 > 0) {
                            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                        }
                        appendSimpleName(cArr, i13, i10 - 1, stringBuffer);
                        i14++;
                    }
                    i12--;
                }
            } else if (i12 == 1) {
                if (i14 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                appendSimpleName(cArr, i13, i10 - 1, stringBuffer);
                i14++;
                i13 = i10 + 1;
            }
            i10++;
        }
        stringBuffer.append('>');
    }

    private static int appendArrayTypeSignature(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer) {
        return appendArrayTypeSignature(cArr, i10, z10, stringBuffer, false);
    }

    private static int appendCaptureTypeSignature(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer) {
        if (i10 >= cArr.length - 1) {
            throw new IllegalArgumentException();
        }
        if (cArr[i10] != '!') {
            throw new IllegalArgumentException();
        }
        stringBuffer.append(CAPTURE);
        stringBuffer.append(C15883c.f126249O);
        return appendTypeArgumentSignature(cArr, i10 + 1, z10, stringBuffer);
    }

    private static int appendClassTypeSignature(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer) {
        if (i10 >= cArr.length - 2) {
            throw new IllegalArgumentException();
        }
        char c10 = cArr[i10];
        if (c10 != 'L' && c10 != 'Q') {
            throw new IllegalArgumentException();
        }
        boolean z11 = c10 == 'L';
        boolean z12 = !z10;
        if (!z11) {
            z12 = false;
        }
        int i11 = i10 + 1;
        int length = stringBuffer.length();
        boolean z13 = false;
        int i12 = -1;
        while (i11 < cArr.length) {
            char c11 = cArr[i11];
            if (c11 == '$') {
                i12 = stringBuffer.length();
                if (z11) {
                    stringBuffer.append('.');
                    z12 = false;
                    z13 = false;
                } else {
                    z13 = false;
                }
            } else if (c11 != '.') {
                if (c11 != '/') {
                    if (c11 == ';') {
                        return i11;
                    }
                    if (c11 != '<') {
                        if (i12 != -1 && !z13 && Character.isDigit(c11)) {
                            stringBuffer.setLength(i12);
                            stringBuffer.insert(length, "new ");
                            stringBuffer.append("(){}");
                            z13 = true;
                        }
                        if (!z13) {
                            stringBuffer.append(c11);
                        }
                        i12 = -1;
                    } else {
                        i11 = appendTypeArgumentSignatures(cArr, i11, z10, stringBuffer);
                        z12 = false;
                    }
                } else if (z12) {
                    stringBuffer.setLength(length);
                } else {
                    stringBuffer.append('/');
                }
            } else if (z12) {
                stringBuffer.setLength(length);
            } else {
                stringBuffer.append('.');
            }
            i11++;
        }
        throw new IllegalArgumentException();
    }

    private static int appendIntersectionTypeSignature(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer) {
        if (i10 >= cArr.length - 1) {
            throw new IllegalArgumentException();
        }
        if (cArr[i10] != '|') {
            throw new IllegalArgumentException();
        }
        int appendClassTypeSignature = appendClassTypeSignature(cArr, i10 + 1, z10, stringBuffer);
        if (appendClassTypeSignature < cArr.length - 1) {
            appendClassTypeSignature++;
            if (cArr[appendClassTypeSignature] != ':') {
                throw new IllegalArgumentException("should be a colon at this location");
            }
            while (cArr[appendClassTypeSignature] == ':') {
                stringBuffer.append(" | ");
                int appendClassTypeSignature2 = appendClassTypeSignature(cArr, appendClassTypeSignature + 1, z10, stringBuffer);
                if (appendClassTypeSignature2 == cArr.length - 1) {
                    return appendClassTypeSignature2;
                }
                if (appendClassTypeSignature2 > cArr.length - 1) {
                    throw new IllegalArgumentException("Should be at the end");
                }
                appendClassTypeSignature = appendClassTypeSignature2 + 1;
            }
        }
        return appendClassTypeSignature;
    }

    private static void appendSimpleName(char[] cArr, int i10, int i11, StringBuffer stringBuffer) {
        char[] cArr2;
        int checkName;
        if (cArr[i10] == '?') {
            stringBuffer.append("?");
            int i12 = i11 + 1;
            i10 = consumeWhitespace(cArr, i10 + 1, i12);
            char c10 = cArr[i10];
            if (c10 == 'e') {
                char[] cArr3 = EXTENDS;
                int checkName2 = checkName(cArr3, cArr, i10, i11);
                if (checkName2 > 0) {
                    stringBuffer.append(C15883c.f126249O);
                    stringBuffer.append(cArr3);
                    stringBuffer.append(C15883c.f126249O);
                    i10 = consumeWhitespace(cArr, checkName2, i12);
                }
            } else if (c10 == 's' && (checkName = checkName((cArr2 = SUPER), cArr, i10, i12)) > 0) {
                stringBuffer.append(C15883c.f126249O);
                stringBuffer.append(cArr2);
                stringBuffer.append(C15883c.f126249O);
                i10 = consumeWhitespace(cArr, checkName, i12);
            }
        }
        int i13 = -1;
        int i14 = 0;
        int i15 = i11;
        int i16 = -1;
        int i17 = -1;
        while (true) {
            if (i15 < i10) {
                break;
            }
            char c11 = cArr[i15];
            if (c11 != '.') {
                if (c11 == '<') {
                    i14--;
                    if (i14 == 0) {
                        i16 = i15;
                    }
                } else if (c11 == '>') {
                    if (i14 == 0) {
                        i17 = i15;
                    }
                    i14++;
                }
            } else if (i14 == 0) {
                char c12 = cArr[i10];
                if (c12 == '+' || c12 == '-') {
                    stringBuffer.append(c12);
                }
                i13 = i15;
            }
            i15--;
        }
        if (i13 >= 0) {
            i10 = i13 + 1;
        }
        stringBuffer.append(cArr, i10, (i16 < 0 ? i11 + 1 : i16) - i10);
        if (i16 >= 0) {
            appendArgumentSimpleNames(cArr, i16, i17, stringBuffer);
            stringBuffer.append(cArr, i17 + 1, i11 - i17);
        }
    }

    private static int appendTypeArgumentSignature(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer) {
        if (i10 >= cArr.length) {
            throw new IllegalArgumentException();
        }
        char c10 = cArr[i10];
        if (c10 == '*') {
            stringBuffer.append('?');
            return i10;
        }
        if (c10 == '+') {
            stringBuffer.append("? extends ");
            return appendTypeSignature(cArr, i10 + 1, z10, stringBuffer);
        }
        if (c10 != '-') {
            return appendTypeSignature(cArr, i10, z10, stringBuffer);
        }
        stringBuffer.append("? super ");
        return appendTypeSignature(cArr, i10 + 1, z10, stringBuffer);
    }

    private static int appendTypeArgumentSignatures(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer) {
        if (i10 >= cArr.length - 1) {
            throw new IllegalArgumentException();
        }
        if (cArr[i10] != '<') {
            throw new IllegalArgumentException();
        }
        stringBuffer.append('<');
        int i11 = i10 + 1;
        int i12 = 0;
        while (i11 < cArr.length) {
            if (cArr[i11] == '>') {
                stringBuffer.append('>');
                return i11;
            }
            if (i12 != 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            i12++;
            i11 = appendTypeArgumentSignature(cArr, i11, z10, stringBuffer) + 1;
        }
        throw new IllegalArgumentException();
    }

    private static int appendTypeSignature(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer) {
        return appendTypeSignature(cArr, i10, z10, stringBuffer, false);
    }

    private static int checkArrayDimension(char[] cArr, int i10, int i11) {
        int i12 = 0;
        while (i10 < i11) {
            char c10 = cArr[i10];
            if (c10 != ',') {
                if (c10 == '<') {
                    i12++;
                } else if (c10 != '>') {
                    if (c10 == '[' && i12 == 0) {
                        return i10;
                    }
                } else {
                    if (i12 == 0) {
                        return -1;
                    }
                    i12--;
                }
            } else if (i12 == 0) {
                return -1;
            }
            i10++;
        }
        return -1;
    }

    private static int checkName(char[] cArr, char[] cArr2, int i10, int i11) {
        char c10;
        if (!CharOperation.fragmentEquals(cArr, cArr2, i10, true)) {
            return -1;
        }
        int length = i10 + cArr.length;
        if (length == i11 || (c10 = cArr2[length]) == ' ' || c10 == ',' || c10 == '.' || c10 == '<' || c10 == '>' || c10 == '[' || ScannerHelper.isWhitespace(c10)) {
            return length;
        }
        return -1;
    }

    private static int checkNextChar(char[] cArr, char c10, int i10, int i11, boolean z10) {
        int consumeWhitespace = consumeWhitespace(cArr, i10, i11);
        if (consumeWhitespace < i11 && cArr[consumeWhitespace] == c10) {
            return consumeWhitespace + 1;
        }
        if (z10) {
            return -1;
        }
        throw new IllegalArgumentException(new String(cArr));
    }

    private static int consumeWhitespace(char[] cArr, int i10, int i11) {
        while (i10 < i11) {
            char c10 = cArr[i10];
            if (c10 != ' ' && !ScannerHelper.isWhitespace(c10)) {
                break;
            }
            i10++;
        }
        return i10;
    }

    public static char[] createArraySignature(char[] cArr, int i10) {
        if (i10 == 0) {
            return cArr;
        }
        int length = cArr.length;
        char[] cArr2 = new char[i10 + length];
        for (int i11 = 0; i11 < i10; i11++) {
            cArr2[i11] = '[';
        }
        System.arraycopy(cArr, 0, cArr2, i10, length);
        return cArr2;
    }

    public static char[] createCharArrayTypeSignature(char[] cArr, boolean z10) {
        if (cArr == null) {
            throw new IllegalArgumentException("null");
        }
        int length = cArr.length;
        if (length == 0) {
            throw new IllegalArgumentException(new String(cArr));
        }
        StringBuffer stringBuffer = new StringBuffer(5);
        if (consumeWhitespace(cArr, encodeTypeSignature(cArr, 0, z10, length, stringBuffer), length) < length) {
            throw new IllegalArgumentException(new String(cArr));
        }
        int length2 = stringBuffer.length();
        char[] cArr2 = new char[length2];
        stringBuffer.getChars(0, length2, cArr2, 0);
        return cArr2;
    }

    public static String createIntersectionTypeSignature(char[][] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('|');
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(':');
            }
            stringBuffer.append(cArr[i10]);
        }
        return String.valueOf(stringBuffer);
    }

    public static char[] createMethodSignature(char[][] cArr, char[] cArr2) {
        int i10 = 0;
        for (char[] cArr3 : cArr) {
            i10 += cArr3.length;
        }
        int length = cArr2.length;
        char[] cArr4 = new char[i10 + 2 + length];
        cArr4[0] = '(';
        int i11 = 1;
        for (char[] cArr5 : cArr) {
            int length2 = cArr5.length;
            System.arraycopy(cArr5, 0, cArr4, i11, length2);
            i11 += length2;
        }
        cArr4[i11] = ')';
        System.arraycopy(cArr2, 0, cArr4, i11 + 1, length);
        return cArr4;
    }

    public static char[] createTypeParameterSignature(char[] cArr, char[][] cArr2) {
        if (cArr2.length == 0) {
            return CharOperation.append(cArr, ':');
        }
        int i10 = 0;
        for (char[] cArr3 : cArr2) {
            i10 += cArr3.length + 1;
        }
        int length = cArr.length;
        char[] cArr4 = new char[i10 + length];
        System.arraycopy(cArr, 0, cArr4, 0, length);
        for (char[] cArr5 : cArr2) {
            int i11 = length + 1;
            cArr4[length] = ':';
            int length2 = cArr5.length;
            System.arraycopy(cArr5, 0, cArr4, i11, length2);
            length = i11 + length2;
        }
        return cArr4;
    }

    public static String createTypeSignature(char[] cArr, boolean z10) {
        return new String(createCharArrayTypeSignature(cArr, z10));
    }

    private static String createUnionTypeSignature(char[][] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('&');
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(':');
            }
            stringBuffer.append(cArr[i10]);
        }
        return String.valueOf(stringBuffer);
    }

    private static int encodeArrayDimension(char[] cArr, int i10, int i11, StringBuffer stringBuffer) {
        while (i10 < i11) {
            int checkNextChar = checkNextChar(cArr, '[', i10, i11, true);
            if (checkNextChar <= 0) {
                break;
            }
            i10 = checkNextChar(cArr, JavaElement.JEM_TYPE_PARAMETER, checkNextChar, i11, false);
            stringBuffer.append('[');
        }
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x004e, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int encodeQualifiedName(char[] cArr, int i10, int i11, StringBuffer stringBuffer) {
        int i12 = 0;
        char c10 = 0;
        while (i10 < i11) {
            char c11 = cArr[i10];
            if (c11 == ',') {
                break;
            }
            if (c11 == '.') {
                stringBuffer.append('.');
                i12++;
            } else {
                if (c11 == '<' || c11 == '>' || c11 == '[') {
                    break;
                }
                if (c11 != ' ' && !ScannerHelper.isWhitespace(c11)) {
                    stringBuffer.append(c11);
                    i12++;
                    c10 = c11;
                } else if (c10 != '.') {
                    int checkNextChar = checkNextChar(cArr, '.', i10, i11, true);
                    if (checkNextChar <= 0) {
                        break;
                    }
                    stringBuffer.append('.');
                    i12++;
                    i10 = checkNextChar;
                } else {
                    i10 = consumeWhitespace(cArr, i10, i11) - 1;
                }
                i10++;
            }
            c10 = '.';
            i10++;
        }
        throw new IllegalArgumentException(new String(cArr));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0021. Please report as an issue. */
    private static int encodeTypeSignature(char[] cArr, int i10, boolean z10, int i11, StringBuffer stringBuffer) {
        int consumeWhitespace = consumeWhitespace(cArr, i10, i11);
        if (consumeWhitespace >= i11) {
            throw new IllegalArgumentException(new String(cArr));
        }
        char c10 = cArr[consumeWhitespace];
        if (c10 != '?') {
            if (c10 == 'f') {
                int checkName = checkName(FLOAT, cArr, consumeWhitespace, i11);
                if (checkName > 0) {
                    int encodeArrayDimension = encodeArrayDimension(cArr, checkName, i11, stringBuffer);
                    stringBuffer.append('F');
                    return encodeArrayDimension;
                }
            } else if (c10 == 'i') {
                int checkName2 = checkName(INT, cArr, consumeWhitespace, i11);
                if (checkName2 > 0) {
                    int encodeArrayDimension2 = encodeArrayDimension(cArr, checkName2, i11, stringBuffer);
                    stringBuffer.append('I');
                    return encodeArrayDimension2;
                }
            } else if (c10 == 'l') {
                int checkName3 = checkName(LONG, cArr, consumeWhitespace, i11);
                if (checkName3 > 0) {
                    int encodeArrayDimension3 = encodeArrayDimension(cArr, checkName3, i11, stringBuffer);
                    stringBuffer.append('J');
                    return encodeArrayDimension3;
                }
            } else if (c10 == 's') {
                int checkName4 = checkName(SHORT, cArr, consumeWhitespace, i11);
                if (checkName4 > 0) {
                    int encodeArrayDimension4 = encodeArrayDimension(cArr, checkName4, i11, stringBuffer);
                    stringBuffer.append('S');
                    return encodeArrayDimension4;
                }
            } else if (c10 != 'v') {
                switch (c10) {
                    case 'b':
                        int checkName5 = checkName(BOOLEAN, cArr, consumeWhitespace, i11);
                        if (checkName5 > 0) {
                            int encodeArrayDimension5 = encodeArrayDimension(cArr, checkName5, i11, stringBuffer);
                            stringBuffer.append('Z');
                            return encodeArrayDimension5;
                        }
                        int checkName6 = checkName(BYTE, cArr, consumeWhitespace, i11);
                        if (checkName6 > 0) {
                            int encodeArrayDimension6 = encodeArrayDimension(cArr, checkName6, i11, stringBuffer);
                            stringBuffer.append('B');
                            return encodeArrayDimension6;
                        }
                        break;
                    case 'c':
                        int checkName7 = checkName(CHAR, cArr, consumeWhitespace, i11);
                        if (checkName7 <= 0) {
                            int checkName8 = checkName(CAPTURE, cArr, consumeWhitespace, i11);
                            if (checkName8 > 0) {
                                consumeWhitespace = consumeWhitespace(cArr, checkName8, i11);
                                if (cArr[consumeWhitespace] == '?') {
                                    stringBuffer.append('!');
                                    break;
                                }
                            }
                        } else {
                            int encodeArrayDimension7 = encodeArrayDimension(cArr, checkName7, i11, stringBuffer);
                            stringBuffer.append('C');
                            return encodeArrayDimension7;
                        }
                        break;
                    case 'd':
                        int checkName9 = checkName(DOUBLE, cArr, consumeWhitespace, i11);
                        if (checkName9 > 0) {
                            int encodeArrayDimension8 = encodeArrayDimension(cArr, checkName9, i11, stringBuffer);
                            stringBuffer.append('D');
                            return encodeArrayDimension8;
                        }
                        break;
                }
            } else {
                int checkName10 = checkName(VOID, cArr, consumeWhitespace, i11);
                if (checkName10 > 0) {
                    int encodeArrayDimension9 = encodeArrayDimension(cArr, checkName10, i11, stringBuffer);
                    stringBuffer.append('V');
                    return encodeArrayDimension9;
                }
            }
            int checkArrayDimension = checkArrayDimension(cArr, consumeWhitespace, i11);
            int encodeArrayDimension10 = checkArrayDimension > 0 ? encodeArrayDimension(cArr, checkArrayDimension, i11, stringBuffer) : -1;
            stringBuffer.append(z10 ? 'L' : 'Q');
            while (true) {
                int encodeQualifiedName = encodeQualifiedName(cArr, consumeWhitespace, i11, stringBuffer);
                int checkNextChar = checkNextChar(cArr, '<', encodeQualifiedName, i11, true);
                if (checkNextChar > 0) {
                    stringBuffer.append('<');
                    encodeQualifiedName = checkNextChar(cArr, '>', checkNextChar, i11, true);
                    if (encodeQualifiedName > 0) {
                        stringBuffer.append('>');
                    } else {
                        int encodeTypeSignature = encodeTypeSignature(cArr, checkNextChar, z10, i11, stringBuffer);
                        while (true) {
                            int checkNextChar2 = checkNextChar(cArr, IIndexConstants.PARAMETER_SEPARATOR, encodeTypeSignature, i11, true);
                            if (checkNextChar2 <= 0) {
                                encodeQualifiedName = checkNextChar(cArr, '>', encodeTypeSignature, i11, false);
                                stringBuffer.append('>');
                            } else {
                                encodeTypeSignature = encodeTypeSignature(cArr, checkNextChar2, z10, i11, stringBuffer);
                            }
                        }
                    }
                }
                int checkNextChar3 = checkNextChar(cArr, '.', encodeQualifiedName, i11, true);
                if (checkNextChar3 <= 0) {
                    stringBuffer.append(';');
                    return encodeArrayDimension10 > 0 ? encodeArrayDimension10 : encodeQualifiedName;
                }
                stringBuffer.append('.');
                consumeWhitespace = checkNextChar3;
            }
        }
        int consumeWhitespace2 = consumeWhitespace(cArr, consumeWhitespace + 1, i11);
        int checkName11 = checkName(EXTENDS, cArr, consumeWhitespace2, i11);
        if (checkName11 > 0) {
            stringBuffer.append('+');
            return encodeTypeSignature(cArr, checkName11, z10, i11, stringBuffer);
        }
        int checkName12 = checkName(SUPER, cArr, consumeWhitespace2, i11);
        if (checkName12 > 0) {
            stringBuffer.append('-');
            return encodeTypeSignature(cArr, checkName12, z10, i11, stringBuffer);
        }
        stringBuffer.append('*');
        return consumeWhitespace2;
    }

    public static int getArrayCount(char[] cArr) throws IllegalArgumentException {
        int i10 = 0;
        while (cArr[i10] == '[') {
            try {
                i10++;
            } catch (ArrayIndexOutOfBoundsException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        return i10;
    }

    public static char[] getElementType(char[] cArr) throws IllegalArgumentException {
        int arrayCount = getArrayCount(cArr);
        if (arrayCount == 0) {
            return cArr;
        }
        int length = cArr.length - arrayCount;
        char[] cArr2 = new char[length];
        System.arraycopy(cArr, arrayCount, cArr2, 0, length);
        return cArr2;
    }

    public static char[][] getIntersectionTypeBounds(char[] cArr) throws IllegalArgumentException {
        if (getTypeSignatureKind(cArr) != 7) {
            return CharOperation.NO_CHAR_CHAR;
        }
        ArrayList arrayList = new ArrayList();
        int length = cArr.length;
        int i10 = 1;
        while (true) {
            int scanClassTypeSignature = Util.scanClassTypeSignature(cArr, i10);
            if (scanClassTypeSignature >= 0) {
                int i11 = scanClassTypeSignature + 1;
                arrayList.add(CharOperation.subarray(cArr, i10, i11));
                if (scanClassTypeSignature == length - 1) {
                    char[][] cArr2 = new char[arrayList.size()];
                    arrayList.toArray(cArr2);
                    return cArr2;
                }
                if (cArr[i11] != ':') {
                    throw new IllegalArgumentException("Invalid format");
                }
                i10 = scanClassTypeSignature + 2;
            } else {
                throw new IllegalArgumentException("Invalid format");
            }
        }
    }

    public static int getParameterCount(char[] cArr) throws IllegalArgumentException {
        try {
            int indexOf = CharOperation.indexOf('(', cArr);
            if (indexOf >= 0) {
                int i10 = indexOf + 1;
                int i11 = 0;
                while (cArr[i10] != ')') {
                    int scanTypeSignature = Util.scanTypeSignature(cArr, i10);
                    if (scanTypeSignature < 0) {
                        throw new IllegalArgumentException();
                    }
                    i10 = scanTypeSignature + 1;
                    i11++;
                }
                return i11;
            }
            throw new IllegalArgumentException();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static char[][] getParameterTypes(char[] cArr) throws IllegalArgumentException {
        try {
            int parameterCount = getParameterCount(cArr);
            char[][] cArr2 = new char[parameterCount];
            if (parameterCount == 0) {
                return cArr2;
            }
            int indexOf = CharOperation.indexOf('(', cArr);
            if (indexOf >= 0) {
                int i10 = indexOf + 1;
                int i11 = 0;
                while (cArr[i10] != ')') {
                    int scanTypeSignature = Util.scanTypeSignature(cArr, i10);
                    if (scanTypeSignature >= 0) {
                        int i12 = scanTypeSignature + 1;
                        cArr2[i11] = CharOperation.subarray(cArr, i10, i12);
                        i11++;
                        i10 = i12;
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                return cArr2;
            }
            throw new IllegalArgumentException();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static char[] getQualifier(char[] cArr) {
        int indexOf = CharOperation.indexOf('<', cArr);
        if (indexOf == -1) {
            indexOf = cArr.length - 1;
        }
        int lastIndexOf = CharOperation.lastIndexOf('.', cArr, 0, indexOf);
        if (lastIndexOf == -1) {
            return CharOperation.NO_CHAR;
        }
        return CharOperation.subarray(cArr, 0, lastIndexOf);
    }

    public static char[] getReturnType(char[] cArr) throws IllegalArgumentException {
        int lastIndexOf = CharOperation.lastIndexOf(')', cArr);
        if (lastIndexOf != -1) {
            int i10 = lastIndexOf + 1;
            return CharOperation.subarray(cArr, i10, Util.scanTypeSignature(cArr, i10) + 1);
        }
        throw new IllegalArgumentException();
    }

    public static char[] getSignatureQualifier(char[] cArr) {
        char c10;
        if (cArr == null) {
            return CharOperation.NO_CHAR;
        }
        char[] charArray = toCharArray(cArr);
        int i10 = 0;
        for (int i11 = 0; i11 < cArr.length && (c10 = cArr[i11]) != '$'; i11++) {
            if (c10 != '.') {
                if (c10 == '<') {
                    break;
                }
            } else {
                i10++;
            }
        }
        if (i10 > 0) {
            for (int i12 = 0; i12 < charArray.length; i12++) {
                if (charArray[i12] == '.') {
                    i10--;
                }
                if (i10 <= 0) {
                    return CharOperation.subarray(charArray, 0, i12);
                }
            }
        }
        return CharOperation.NO_CHAR;
    }

    public static char[] getSignatureSimpleName(char[] cArr) {
        char c10;
        if (cArr == null) {
            return CharOperation.NO_CHAR;
        }
        char[] charArray = toCharArray(cArr);
        int i10 = 0;
        for (int i11 = 0; i11 < cArr.length && (c10 = cArr[i11]) != '$'; i11++) {
            if (c10 != '.') {
                if (c10 == '<') {
                    break;
                }
            } else {
                i10++;
            }
        }
        if (i10 > 0) {
            int i12 = 0;
            for (int i13 = 0; i13 < charArray.length; i13++) {
                char c11 = charArray[i13];
                if (c11 == ' ') {
                    i12 = i13 + 1;
                } else if (c11 == '.') {
                    i10--;
                }
                if (i10 <= 0) {
                    char[] subarray = CharOperation.subarray(charArray, i13 + 1, charArray.length);
                    return (i12 <= 0 || i12 >= charArray.length) ? subarray : CharOperation.concat(CharOperation.subarray(charArray, 0, i12), subarray);
                }
            }
        }
        return charArray;
    }

    public static char[] getSimpleName(char[] cArr) {
        int length = cArr.length;
        int i10 = length - 1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = 0;
        while (true) {
            if (i10 < 0) {
                break;
            }
            char c10 = cArr[i10];
            if (c10 != '.') {
                if (c10 == '<') {
                    i14--;
                    if (i14 == 0) {
                        i12 = i10;
                    }
                } else if (c10 == '>') {
                    if (i14 == 0) {
                        i13 = i10;
                    }
                    i14++;
                }
            } else if (i14 == 0) {
                i11 = i10;
                break;
            }
            i10--;
        }
        if (i12 < 0) {
            return i11 < 0 ? cArr : CharOperation.subarray(cArr, i11 + 1, length);
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        int i15 = i11 < 0 ? 0 : i11 + 1;
        stringBuffer.append(cArr, i15, i12 - i15);
        appendArgumentSimpleNames(cArr, i12, i13, stringBuffer);
        stringBuffer.append(cArr, i13 + 1, (length - i13) - 1);
        int length2 = stringBuffer.length();
        char[] cArr2 = new char[length2];
        stringBuffer.getChars(0, length2, cArr2, 0);
        return cArr2;
    }

    public static char[][] getSimpleNames(char[] cArr) {
        int length = cArr == null ? 0 : cArr.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int i10 = 1;
        for (int i11 = 0; i11 < length; i11++) {
            char c10 = cArr[i11];
            if (c10 != '.') {
                if (c10 == '<') {
                    break;
                }
            } else {
                i10++;
            }
        }
        char[][] cArr2 = new char[i10];
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < length; i14++) {
            char c11 = cArr[i14];
            if (c11 == '<') {
                break;
            }
            if (c11 == '.') {
                int i15 = i14 - i12;
                char[] cArr3 = new char[i15];
                cArr2[i13] = cArr3;
                i13++;
                System.arraycopy(cArr, i12, cArr3, 0, i15);
                i12 = i14 + 1;
            }
        }
        int i16 = length - i12;
        char[] cArr4 = new char[i16];
        cArr2[i13] = cArr4;
        System.arraycopy(cArr, i12, cArr4, 0, i16);
        return cArr2;
    }

    public static char[][] getThrownExceptionTypes(char[] cArr) throws IllegalArgumentException {
        int indexOf = CharOperation.indexOf('^', cArr);
        if (indexOf == -1) {
            int lastIndexOf = CharOperation.lastIndexOf(')', cArr);
            if (lastIndexOf != -1) {
                if (Util.scanTypeSignature(cArr, lastIndexOf + 1) + 1 == cArr.length) {
                    return CharOperation.NO_CHAR_CHAR;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException();
        }
        int length = cArr.length;
        ArrayList arrayList = new ArrayList(1);
        while (indexOf < length) {
            if (cArr[indexOf] == '^') {
                int i10 = indexOf + 1;
                int scanTypeSignature = Util.scanTypeSignature(cArr, i10) + 1;
                arrayList.add(CharOperation.subarray(cArr, i10, scanTypeSignature));
                indexOf = scanTypeSignature;
            } else {
                throw new IllegalArgumentException();
            }
        }
        char[][] cArr2 = new char[arrayList.size()];
        arrayList.toArray(cArr2);
        return cArr2;
    }

    public static char[][] getTypeArguments(char[] cArr) throws IllegalArgumentException {
        int length = cArr.length;
        if (length >= 2) {
            int i10 = length - 2;
            if (cArr[i10] == '>') {
                int i11 = 1;
                while (i10 >= 0 && i11 > 0) {
                    i10--;
                    char c10 = cArr[i10];
                    if (c10 == '<') {
                        i11--;
                    } else if (c10 == '>') {
                        i11++;
                    }
                }
                if (i10 >= 0) {
                    ArrayList arrayList = new ArrayList();
                    int i12 = i10 + 1;
                    while (i12 < cArr.length) {
                        if (cArr[i12] == '>') {
                            char[][] cArr2 = new char[arrayList.size()];
                            arrayList.toArray(cArr2);
                            return cArr2;
                        }
                        int scanTypeArgumentSignature = Util.scanTypeArgumentSignature(cArr, i12) + 1;
                        arrayList.add(CharOperation.subarray(cArr, i12, scanTypeArgumentSignature));
                        i12 = scanTypeArgumentSignature;
                    }
                    throw new IllegalArgumentException();
                }
                throw new IllegalArgumentException();
            }
        }
        return CharOperation.NO_CHAR_CHAR;
    }

    public static char[] getTypeErasure(char[] cArr) throws IllegalArgumentException {
        int indexOf = CharOperation.indexOf('<', cArr);
        if (indexOf == -1) {
            return cArr;
        }
        int length = cArr.length;
        char[] cArr2 = new char[length];
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (indexOf < length) {
            char c10 = cArr[indexOf];
            if (c10 == '<') {
                if (i10 == 0) {
                    int i13 = indexOf - i12;
                    System.arraycopy(cArr, i12, cArr2, i11, i13);
                    i11 += i13;
                }
                i10++;
            } else if (c10 == '>') {
                i10--;
                if (i10 < 0) {
                    throw new IllegalArgumentException();
                }
                if (i10 == 0) {
                    i12 = indexOf + 1;
                }
            } else {
                continue;
            }
            indexOf++;
        }
        if (i10 <= 0) {
            char[] cArr3 = new char[(i11 + length) - i12];
            System.arraycopy(cArr2, 0, cArr3, 0, i11);
            System.arraycopy(cArr, i12, cArr3, i11, length - i12);
            return cArr3;
        }
        throw new IllegalArgumentException();
    }

    public static char[][] getTypeParameterBounds(char[] cArr) throws IllegalArgumentException {
        int indexOf = CharOperation.indexOf(':', cArr);
        if (indexOf >= 0) {
            if (indexOf == cArr.length - 1) {
                return CharOperation.NO_CHAR_CHAR;
            }
            int i10 = indexOf + 1;
            int indexOf2 = CharOperation.indexOf(':', cArr, i10);
            if (indexOf2 < 0) {
                return new char[][]{CharOperation.subarray(cArr, i10, cArr.length)};
            }
            char[] subarray = indexOf2 == i10 ? null : CharOperation.subarray(cArr, i10, indexOf2);
            char[][] splitOn = CharOperation.splitOn(':', cArr, indexOf2 + 1, cArr.length);
            if (subarray == null) {
                return splitOn;
            }
            char[][] cArr2 = new char[splitOn.length + 1];
            cArr2[0] = subarray;
            System.arraycopy(splitOn, 0, cArr2, 1, splitOn.length);
            return cArr2;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[Catch: ArrayIndexOutOfBoundsException -> 0x0078, TRY_LEAVE, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0078, blocks: (B:2:0x0000, B:4:0x0003, B:7:0x0006, B:9:0x000d, B:11:0x0010, B:14:0x001a, B:47:0x0020, B:49:0x0026, B:51:0x002c, B:52:0x0031, B:16:0x0032, B:19:0x003c, B:41:0x0040, B:21:0x0048, B:31:0x005d, B:32:0x0061, B:37:0x0063, B:38:0x0068, B:39:0x006d, B:43:0x0072, B:44:0x0077), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static char[][] getTypeParameters(char[] cArr) throws IllegalArgumentException {
        int scanCaptureTypeSignature;
        try {
            int length = cArr.length;
            if (length == 0) {
                return CharOperation.NO_CHAR_CHAR;
            }
            if (cArr[0] != '<') {
                return CharOperation.NO_CHAR_CHAR;
            }
            ArrayList arrayList = new ArrayList(1);
            int i10 = 1;
            while (true) {
                int i11 = i10;
                if (i10 >= length) {
                    break;
                }
                if (cArr[i10] == '>') {
                    int size = arrayList.size();
                    if (size != 0) {
                        char[][] cArr2 = new char[size];
                        arrayList.toArray(cArr2);
                        return cArr2;
                    }
                    throw new IllegalArgumentException();
                }
                i10 = CharOperation.indexOf(':', cArr, i10);
                if (i10 < 0 || i10 >= length) {
                    break;
                }
                while (cArr[i10] == ':') {
                    i10++;
                    char c10 = cArr[i10];
                    if (c10 == '!') {
                        scanCaptureTypeSignature = Util.scanCaptureTypeSignature(cArr, i10);
                    } else if (c10 == 'L') {
                        scanCaptureTypeSignature = Util.scanClassTypeSignature(cArr, i10);
                    } else if (c10 != 'T') {
                        if (c10 == '[') {
                            try {
                                scanCaptureTypeSignature = Util.scanArrayTypeSignature(cArr, i10);
                            } catch (IllegalArgumentException unused) {
                            }
                        }
                        while (cArr[i10] == ':') {
                        }
                    } else {
                        scanCaptureTypeSignature = Util.scanTypeVariableSignature(cArr, i10);
                    }
                    i10 = scanCaptureTypeSignature + 1;
                }
                arrayList.add(CharOperation.subarray(cArr, i11, i10));
            }
            throw new IllegalArgumentException();
        } catch (ArrayIndexOutOfBoundsException unused2) {
        }
        throw new IllegalArgumentException();
    }

    public static int getTypeSignatureKind(char[] cArr) {
        if (cArr.length >= 1) {
            char c10 = cArr[0];
            if (c10 == '<') {
                int length = cArr.length;
                int i10 = 1;
                int i11 = 1;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    char c11 = cArr[i10];
                    if (c11 == '<') {
                        i11++;
                    } else if (c11 == '>') {
                        i11--;
                    }
                    if (i11 == 0) {
                        int i12 = i10 + 1;
                        if (i12 < length) {
                            c10 = cArr[i12];
                        }
                    } else {
                        i10++;
                    }
                }
            }
            if (c10 == '!') {
                return 6;
            }
            if (c10 == '&') {
                return 8;
            }
            if (c10 == '-') {
                return 5;
            }
            if (c10 == 'F') {
                return 2;
            }
            if (c10 == 'L' || c10 == 'Q') {
                return 1;
            }
            if (c10 == 'V') {
                return 2;
            }
            if (c10 == '|') {
                return 7;
            }
            if (c10 == '*' || c10 == '+') {
                return 5;
            }
            if (c10 == 'I' || c10 == 'J' || c10 == 'S') {
                return 2;
            }
            if (c10 == 'T') {
                return 3;
            }
            if (c10 == 'Z') {
                return 2;
            }
            if (c10 == '[') {
                return 4;
            }
            switch (c10) {
                case 'B':
                case 'C':
                case 'D':
                    return 2;
                default:
                    throw new IllegalArgumentException();
            }
        }
        throw new IllegalArgumentException();
    }

    public static char[] getTypeVariable(char[] cArr) throws IllegalArgumentException {
        int indexOf = CharOperation.indexOf(':', cArr);
        if (indexOf >= 0) {
            return CharOperation.subarray(cArr, 0, indexOf);
        }
        throw new IllegalArgumentException();
    }

    private static char[][] getUnionTypeBounds(char[] cArr) throws IllegalArgumentException {
        if (getTypeSignatureKind(cArr) != 8) {
            return CharOperation.NO_CHAR_CHAR;
        }
        ArrayList arrayList = new ArrayList();
        int length = cArr.length;
        int i10 = 1;
        while (true) {
            int scanClassTypeSignature = Util.scanClassTypeSignature(cArr, i10);
            if (scanClassTypeSignature >= 0) {
                int i11 = scanClassTypeSignature + 1;
                arrayList.add(CharOperation.subarray(cArr, i10, i11));
                if (scanClassTypeSignature == length - 1) {
                    char[][] cArr2 = new char[arrayList.size()];
                    arrayList.toArray(cArr2);
                    return cArr2;
                }
                if (cArr[i11] != ':') {
                    throw new IllegalArgumentException("Invalid format");
                }
                i10 = scanClassTypeSignature + 2;
            } else {
                throw new IllegalArgumentException("Invalid format");
            }
        }
    }

    public static char[] removeCapture(char[] cArr) {
        return CharOperation.remove(cArr, '!');
    }

    public static char[] toCharArray(char[] cArr) throws IllegalArgumentException {
        if (cArr.length != 0) {
            char c10 = cArr[0];
            if (c10 != '(' && c10 != '<') {
                StringBuffer stringBuffer = new StringBuffer(cArr.length + 10);
                appendTypeSignature(cArr, 0, true, stringBuffer);
                char[] cArr2 = new char[stringBuffer.length()];
                stringBuffer.getChars(0, stringBuffer.length(), cArr2, 0);
                return cArr2;
            }
            return toCharArray(cArr, CharOperation.NO_CHAR, null, true, true);
        }
        throw new IllegalArgumentException();
    }

    public static char[] toQualifiedName(char[][] cArr) {
        int length = cArr.length;
        if (length == 0) {
            return CharOperation.NO_CHAR;
        }
        if (length == 1) {
            return cArr[0];
        }
        int i10 = 0;
        for (char[] cArr2 : cArr) {
            i10 += cArr2.length + 1;
        }
        char[] cArr3 = new char[i10 - 1];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            char[] cArr4 = cArr[i12];
            int length2 = cArr4.length;
            System.arraycopy(cArr4, 0, cArr3, i11, length2);
            i11 += length2;
            if (i12 != length - 1) {
                cArr3[i11] = '.';
                i11++;
            }
        }
        return cArr3;
    }

    public static String toString(String str) throws IllegalArgumentException {
        return new String(toCharArray(str.toCharArray()));
    }

    private static int appendArrayTypeSignature(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer, boolean z11) {
        int length = cArr.length - 1;
        if (i10 < length) {
            if (cArr[i10] == '[') {
                int i11 = i10 + 1;
                char c10 = cArr[i11];
                while (c10 == '[') {
                    if (i11 < length) {
                        i11++;
                        c10 = cArr[i11];
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                int appendTypeSignature = appendTypeSignature(cArr, i11, z10, stringBuffer);
                int i12 = i11 - i10;
                for (int i13 = 1; i13 < i12; i13++) {
                    stringBuffer.append('[');
                    stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
                }
                if (z11) {
                    stringBuffer.append('.');
                    stringBuffer.append('.');
                    stringBuffer.append('.');
                } else {
                    stringBuffer.append('[');
                    stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
                }
                return appendTypeSignature;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    private static int appendTypeSignature(char[] cArr, int i10, boolean z10, StringBuffer stringBuffer, boolean z11) {
        if (i10 < cArr.length) {
            char c10 = cArr[i10];
            if (z11) {
                if (c10 == '[') {
                    return appendArrayTypeSignature(cArr, i10, z10, stringBuffer, true);
                }
                throw new IllegalArgumentException();
            }
            if (c10 != '!') {
                if (c10 != '-') {
                    if (c10 == 'F') {
                        stringBuffer.append(FLOAT);
                        return i10;
                    }
                    if (c10 == 'L' || c10 == 'Q') {
                        return appendClassTypeSignature(cArr, i10, z10, stringBuffer);
                    }
                    if (c10 == 'V') {
                        stringBuffer.append(VOID);
                        return i10;
                    }
                    if (c10 == '|') {
                        return appendIntersectionTypeSignature(cArr, i10, z10, stringBuffer);
                    }
                    if (c10 != '*' && c10 != '+') {
                        if (c10 == 'I') {
                            stringBuffer.append(INT);
                            return i10;
                        }
                        if (c10 == 'J') {
                            stringBuffer.append(LONG);
                            return i10;
                        }
                        if (c10 == 'S') {
                            stringBuffer.append(SHORT);
                            return i10;
                        }
                        if (c10 == 'T') {
                            int scanTypeVariableSignature = Util.scanTypeVariableSignature(cArr, i10);
                            stringBuffer.append(cArr, i10 + 1, (scanTypeVariableSignature - i10) - 1);
                            return scanTypeVariableSignature;
                        }
                        if (c10 == 'Z') {
                            stringBuffer.append(BOOLEAN);
                            return i10;
                        }
                        if (c10 != '[') {
                            switch (c10) {
                                case 'B':
                                    stringBuffer.append(BYTE);
                                    return i10;
                                case 'C':
                                    stringBuffer.append(CHAR);
                                    return i10;
                                case 'D':
                                    stringBuffer.append(DOUBLE);
                                    return i10;
                                default:
                                    throw new IllegalArgumentException();
                            }
                        }
                        return appendArrayTypeSignature(cArr, i10, z10, stringBuffer);
                    }
                }
                return appendTypeArgumentSignature(cArr, i10, z10, stringBuffer);
            }
            return appendCaptureTypeSignature(cArr, i10, z10, stringBuffer);
        }
        throw new IllegalArgumentException();
    }

    public static String createTypeSignature(String str, boolean z10) {
        return createTypeSignature(str == null ? null : str.toCharArray(), z10);
    }

    public static String removeCapture(String str) {
        char[] charArray = str.toCharArray();
        char[] removeCapture = removeCapture(charArray);
        return charArray == removeCapture ? str : new String(removeCapture);
    }

    public static String toString(String str, String str2, String[] strArr, boolean z10, boolean z11) {
        return toString(str, str2, strArr, z10, z11, false);
    }

    public static int getArrayCount(String str) throws IllegalArgumentException {
        return getArrayCount(str.toCharArray());
    }

    public static String toString(String str, String str2, String[] strArr, boolean z10, boolean z11, boolean z12) {
        char[][] cArr;
        if (strArr == null) {
            cArr = null;
        } else {
            int length = strArr.length;
            char[][] cArr2 = new char[length];
            for (int i10 = 0; i10 < length; i10++) {
                cArr2[i10] = strArr[i10].toCharArray();
            }
            cArr = cArr2;
        }
        return new String(toCharArray(str.toCharArray(), str2 != null ? str2.toCharArray() : null, cArr, z10, z11, z12));
    }

    public static String getTypeVariable(String str) throws IllegalArgumentException {
        return new String(getTypeVariable(str.toCharArray()));
    }

    public static String createArraySignature(String str, int i10) {
        return new String(createArraySignature(str.toCharArray(), i10));
    }

    public static String getElementType(String str) throws IllegalArgumentException {
        char[] charArray = str.toCharArray();
        char[] elementType = getElementType(charArray);
        return charArray == elementType ? str : new String(elementType);
    }

    public static String getQualifier(String str) {
        char[] qualifier = getQualifier(str.toCharArray());
        return qualifier.length == 0 ? Util.EMPTY_STRING : new String(qualifier);
    }

    public static String getReturnType(String str) throws IllegalArgumentException {
        return new String(getReturnType(str.toCharArray()));
    }

    public static String createIntersectionTypeSignature(String[] strArr) {
        int length = strArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        return createIntersectionTypeSignature(cArr);
    }

    public static String createUnionTypeSignature(String[] strArr) {
        int length = strArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        return createUnionTypeSignature(cArr);
    }

    public static int getParameterCount(String str) throws IllegalArgumentException {
        return getParameterCount(str.toCharArray());
    }

    public static int getTypeSignatureKind(String str) {
        return getTypeSignatureKind(str.toCharArray());
    }

    public static String getSignatureQualifier(String str) {
        return new String(getSignatureQualifier(str == null ? null : str.toCharArray()));
    }

    public static char[] toCharArray(char[] cArr, char[] cArr2, char[][] cArr3, boolean z10, boolean z11) {
        return toCharArray(cArr, cArr2, cArr3, z10, z11, false);
    }

    public static String createTypeParameterSignature(String str, String[] strArr) {
        int length = strArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        return new String(createTypeParameterSignature(str.toCharArray(), cArr));
    }

    public static String[] getParameterTypes(String str) throws IllegalArgumentException {
        return CharOperation.toStrings(getParameterTypes(str.toCharArray()));
    }

    public static String getSignatureSimpleName(String str) {
        return new String(getSignatureSimpleName(str == null ? null : str.toCharArray()));
    }

    public static String getSimpleName(String str) {
        int length = str.length();
        int i10 = length - 1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = 0;
        while (true) {
            if (i10 < 0) {
                break;
            }
            char charAt = str.charAt(i10);
            if (charAt != '.') {
                if (charAt == '<') {
                    i14--;
                    if (i14 == 0) {
                        i12 = i10;
                    }
                } else if (charAt == '>') {
                    if (i14 == 0) {
                        i13 = i10;
                    }
                    i14++;
                }
            } else if (i14 == 0) {
                i11 = i10;
                break;
            }
            i10--;
        }
        if (i12 < 0) {
            return i11 < 0 ? str : str.substring(i11 + 1, length);
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        char[] charArray = str.toCharArray();
        int i15 = i11 >= 0 ? i11 + 1 : 0;
        stringBuffer.append(charArray, i15, i12 - i15);
        appendArgumentSimpleNames(charArray, i12, i13, stringBuffer);
        stringBuffer.append(charArray, i13 + 1, (length - i13) - 1);
        return stringBuffer.toString();
    }

    public static String[] getSimpleNames(String str) {
        return CharOperation.toStrings(getSimpleNames(str.toCharArray()));
    }

    public static char[] toCharArray(char[] cArr, char[] cArr2, char[][] cArr3, boolean z10, boolean z11, boolean z12) {
        if (CharOperation.indexOf('(', cArr) != -1) {
            StringBuffer stringBuffer = new StringBuffer(cArr.length + 10);
            if (z11) {
                appendTypeSignature(getReturnType(cArr), 0, z10, stringBuffer);
                stringBuffer.append(C15883c.f126249O);
            }
            if (cArr2 != null) {
                stringBuffer.append(cArr2);
            }
            stringBuffer.append('(');
            char[][] parameterTypes = getParameterTypes(cArr);
            int length = parameterTypes.length;
            int i10 = length - 1;
            int i11 = i10;
            while (i10 >= 0 && parameterTypes[i10][0] != '[') {
                i11--;
                i10--;
            }
            for (int i12 = 0; i12 < length; i12++) {
                if (i12 == i11) {
                    appendTypeSignature(parameterTypes[i12], 0, z10, stringBuffer, z12);
                } else {
                    appendTypeSignature(parameterTypes[i12], 0, z10, stringBuffer);
                }
                if (cArr3 != null) {
                    stringBuffer.append(C15883c.f126249O);
                    stringBuffer.append(cArr3[i12]);
                }
                if (i12 != parameterTypes.length - 1) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    stringBuffer.append(C15883c.f126249O);
                }
            }
            stringBuffer.append(')');
            char[] cArr4 = new char[stringBuffer.length()];
            stringBuffer.getChars(0, stringBuffer.length(), cArr4, 0);
            return cArr4;
        }
        throw new IllegalArgumentException();
    }

    public static String toQualifiedName(String[] strArr) {
        int length = strArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        return new String(toQualifiedName(cArr));
    }

    public static String createMethodSignature(String[] strArr, String str) {
        int length = strArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        return new String(createMethodSignature(cArr, str.toCharArray()));
    }

    public static String getTypeErasure(String str) throws IllegalArgumentException {
        char[] charArray = str.toCharArray();
        char[] typeErasure = getTypeErasure(charArray);
        return charArray == typeErasure ? str : new String(typeErasure);
    }

    public static String[] getIntersectionTypeBounds(String str) throws IllegalArgumentException {
        return CharOperation.toStrings(getIntersectionTypeBounds(str.toCharArray()));
    }

    public static String[] getTypeParameterBounds(String str) throws IllegalArgumentException {
        return CharOperation.toStrings(getTypeParameterBounds(str.toCharArray()));
    }

    public static String[] getUnionTypeBounds(String str) throws IllegalArgumentException {
        return CharOperation.toStrings(getUnionTypeBounds(str.toCharArray()));
    }

    public static String[] getThrownExceptionTypes(String str) throws IllegalArgumentException {
        return CharOperation.toStrings(getThrownExceptionTypes(str.toCharArray()));
    }

    public static String[] getTypeArguments(String str) throws IllegalArgumentException {
        return CharOperation.toStrings(getTypeArguments(str.toCharArray()));
    }

    public static String[] getTypeParameters(String str) throws IllegalArgumentException {
        return CharOperation.toStrings(getTypeParameters(str.toCharArray()));
    }
}
