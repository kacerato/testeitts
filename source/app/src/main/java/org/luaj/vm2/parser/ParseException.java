package org.luaj.vm2.parser;

import ei.C13155a;
import w2.C15883c;

public class ParseException extends Exception {
    private static final long serialVersionUID = 1;
    public Token currentToken;
    protected String eol;
    public int[][] expectedTokenSequences;
    public String[] tokenImage;

    public ParseException() {
        this.eol = System.getProperty("line.separator", "\n");
    }

    public static String add_escapes(String str) {
        String str2;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt != 0) {
                if (charAt == '\"') {
                    str2 = "\\\"";
                } else if (charAt == '\'') {
                    str2 = "\\'";
                } else if (charAt == '\\') {
                    str2 = "\\\\";
                } else if (charAt == '\f') {
                    str2 = "\\f";
                } else if (charAt != '\r') {
                    switch (charAt) {
                        case '\b':
                            str2 = "\\b";
                            break;
                        case '\t':
                            str2 = "\\t";
                            break;
                        case '\n':
                            str2 = "\\n";
                            break;
                        default:
                            char charAt2 = str.charAt(i10);
                            if (charAt2 < ' ' || charAt2 > '~') {
                                StringBuffer stringBuffer2 = new StringBuffer();
                                stringBuffer2.append("0000");
                                stringBuffer2.append(Integer.toString(charAt2, 16));
                                String stringBuffer3 = stringBuffer2.toString();
                                StringBuffer stringBuffer4 = new StringBuffer();
                                stringBuffer4.append("\\u");
                                stringBuffer4.append(stringBuffer3.substring(stringBuffer3.length() - 4, stringBuffer3.length()));
                                str2 = stringBuffer4.toString();
                                break;
                            } else {
                                stringBuffer.append(charAt2);
                                break;
                            }
                    }
                } else {
                    str2 = "\\r";
                }
                stringBuffer.append(str2);
            }
        }
        return stringBuffer.toString();
    }

    private static String initialise(Token token, int[][] iArr, String[] strArr) {
        StringBuffer stringBuffer;
        String str;
        int[] iArr2;
        String property = System.getProperty("line.separator", "\n");
        StringBuffer stringBuffer2 = new StringBuffer();
        int i10 = 0;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            int[] iArr3 = iArr[i11];
            if (i10 < iArr3.length) {
                i10 = iArr3.length;
            }
            int i12 = 0;
            while (true) {
                iArr2 = iArr[i11];
                if (i12 >= iArr2.length) {
                    break;
                }
                stringBuffer2.append(strArr[iArr2[i12]]);
                stringBuffer2.append(C15883c.f126249O);
                i12++;
            }
            if (iArr2[iArr2.length - 1] != 0) {
                stringBuffer2.append("...");
            }
            stringBuffer2.append(property);
            stringBuffer2.append(C13155a.f85806a);
        }
        Token token2 = token.next;
        String str2 = "Encountered \"";
        int i13 = 0;
        while (true) {
            if (i13 >= i10) {
                break;
            }
            if (i13 != 0) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(str2);
                stringBuffer3.append(" ");
                str2 = stringBuffer3.toString();
            }
            if (token2.kind == 0) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append(str2);
                stringBuffer4.append(strArr[0]);
                str2 = stringBuffer4.toString();
                break;
            }
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append(str2);
            stringBuffer5.append(" ");
            stringBuffer5.append(strArr[token2.kind]);
            String stringBuffer6 = stringBuffer5.toString();
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append(stringBuffer6);
            stringBuffer7.append(" \"");
            String stringBuffer8 = stringBuffer7.toString();
            StringBuffer stringBuffer9 = new StringBuffer();
            stringBuffer9.append(stringBuffer8);
            stringBuffer9.append(add_escapes(token2.image));
            String stringBuffer10 = stringBuffer9.toString();
            StringBuffer stringBuffer11 = new StringBuffer();
            stringBuffer11.append(stringBuffer10);
            stringBuffer11.append(" \"");
            str2 = stringBuffer11.toString();
            token2 = token2.next;
            i13++;
        }
        StringBuffer stringBuffer12 = new StringBuffer();
        stringBuffer12.append(str2);
        stringBuffer12.append("\" at line ");
        stringBuffer12.append(token.next.beginLine);
        stringBuffer12.append(", column ");
        stringBuffer12.append(token.next.beginColumn);
        String stringBuffer13 = stringBuffer12.toString();
        StringBuffer stringBuffer14 = new StringBuffer();
        stringBuffer14.append(stringBuffer13);
        stringBuffer14.append(".");
        stringBuffer14.append(property);
        String stringBuffer15 = stringBuffer14.toString();
        if (iArr.length == 1) {
            stringBuffer = new StringBuffer();
            stringBuffer.append(stringBuffer15);
            str = "Was expecting:";
        } else {
            stringBuffer = new StringBuffer();
            stringBuffer.append(stringBuffer15);
            str = "Was expecting one of:";
        }
        stringBuffer.append(str);
        stringBuffer.append(property);
        stringBuffer.append(C13155a.f85806a);
        String stringBuffer16 = stringBuffer.toString();
        StringBuffer stringBuffer17 = new StringBuffer();
        stringBuffer17.append(stringBuffer16);
        stringBuffer17.append(stringBuffer2.toString());
        return stringBuffer17.toString();
    }

    public ParseException(String str) {
        super(str);
        this.eol = System.getProperty("line.separator", "\n");
    }

    public ParseException(Token token, int[][] iArr, String[] strArr) {
        super(initialise(token, iArr, strArr));
        this.eol = System.getProperty("line.separator", "\n");
        this.currentToken = token;
        this.expectedTokenSequences = iArr;
        this.tokenImage = strArr;
    }
}
