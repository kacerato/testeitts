package org.luaj.vm2.parser;

import org.eclipse.jdt.internal.core.JavadocConstants;

public class TokenMgrError extends Error {
    static final int INVALID_LEXICAL_STATE = 2;
    static final int LEXICAL_ERROR = 0;
    static final int LOOP_DETECTED = 3;
    static final int STATIC_LEXER_ERROR = 1;
    private static final long serialVersionUID = 1;
    int errorCode;

    public TokenMgrError() {
    }

    public static String LexicalError(boolean z10, int i10, int i11, int i12, String str, char c10) {
        String stringBuffer;
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Lexical error at line ");
        stringBuffer2.append(i11);
        stringBuffer2.append(", column ");
        stringBuffer2.append(i12);
        stringBuffer2.append(".  Encountered: ");
        if (z10) {
            stringBuffer = "<EOF> ";
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(JavadocConstants.ANCHOR_PREFIX_END);
            stringBuffer3.append(addEscapes(String.valueOf(c10)));
            stringBuffer3.append(JavadocConstants.ANCHOR_PREFIX_END);
            stringBuffer3.append(" (");
            stringBuffer3.append((int) c10);
            stringBuffer3.append("), ");
            stringBuffer = stringBuffer3.toString();
        }
        stringBuffer2.append(stringBuffer);
        stringBuffer2.append("after : \"");
        stringBuffer2.append(addEscapes(str));
        stringBuffer2.append(JavadocConstants.ANCHOR_PREFIX_END);
        return stringBuffer2.toString();
    }

    public static final String addEscapes(String str) {
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

    @Override
    public String getMessage() {
        return super.getMessage();
    }

    public TokenMgrError(String str, int i10) {
        super(str);
        this.errorCode = i10;
    }

    public TokenMgrError(boolean z10, int i10, int i11, int i12, String str, char c10, int i13) {
        this(LexicalError(z10, i10, i11, i12, str, c10), i13);
    }
}
