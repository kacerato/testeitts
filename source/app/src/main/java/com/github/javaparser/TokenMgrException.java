package com.github.javaparser;

import org.eclipse.jdt.internal.core.JavadocConstants;

public class TokenMgrException extends RuntimeException {
    public static final int INVALID_LEXICAL_STATE = 2;
    public static final int LEXICAL_ERROR = 0;
    public static final int LOOP_DETECTED = 3;
    public static final int STATIC_LEXER_ERROR = 1;
    private static final long serialVersionUID = 1;
    int errorCode;

    public TokenMgrException() {
    }

    public static String LexicalErr(boolean EOFSeen, int lexState, int errorLine, int errorColumn, String errorAfter, int curChar) {
        String str;
        char c10 = (char) curChar;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Lexical error at line ");
        sb2.append(errorLine);
        sb2.append(", column ");
        sb2.append(errorColumn);
        sb2.append(".  Encountered: ");
        if (EOFSeen) {
            str = "<EOF> ";
        } else {
            str = JavadocConstants.ANCHOR_PREFIX_END + addEscapes(String.valueOf(c10)) + JavadocConstants.ANCHOR_PREFIX_END + " (" + curChar + "), ";
        }
        sb2.append(str);
        sb2.append("after : \"");
        sb2.append(addEscapes(errorAfter));
        sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
        return sb2.toString();
    }

    public static final String addEscapes(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\f') {
                sb2.append("\\f");
            } else if (charAt == '\r') {
                sb2.append("\\r");
            } else if (charAt == '\"') {
                sb2.append("\\\"");
            } else if (charAt == '\'') {
                sb2.append("\\'");
            } else if (charAt != '\\') {
                switch (charAt) {
                    case '\b':
                        sb2.append("\\b");
                        break;
                    case '\t':
                        sb2.append("\\t");
                        break;
                    case '\n':
                        sb2.append("\\n");
                        break;
                    default:
                        if (charAt < ' ' || charAt > '~') {
                            String str2 = "0000" + Integer.toString(charAt, 16);
                            sb2.append("\\u");
                            sb2.append(str2.substring(str2.length() - 4, str2.length()));
                            break;
                        } else {
                            sb2.append(charAt);
                            break;
                        }
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }

    @Override
    public String getMessage() {
        return super.getMessage();
    }

    public TokenMgrException(String message, int reason) {
        super(message);
        this.errorCode = reason;
    }

    public TokenMgrException(boolean EOFSeen, int lexState, int errorLine, int errorColumn, String errorAfter, int curChar, int reason) {
        this(LexicalErr(EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar), reason);
    }
}
