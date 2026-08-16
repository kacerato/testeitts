package com.github.javaparser;

import java.util.Iterator;
import java.util.TreeSet;
import org.eclipse.jdt.internal.core.JavadocConstants;
import w2.C15883c;

public class ParseException extends Exception {
    protected static final String EOL = "\n";
    private static final String INDENT = "    ";
    public Token currentToken;
    public int[][] expectedTokenSequences;
    public String[] tokenImage;

    public ParseException(final Token currentTokenVal, final int[][] expectedTokenSequencesVal, final String[] tokenImageVal) {
        this(currentTokenVal, expectedTokenSequencesVal, tokenImageVal, null);
    }

    private static String _initialise(final Token currentToken, final int[][] expectedTokenSequences, final String[] tokenImage, final String lexicalStateName) {
        StringBuilder sb2 = new StringBuilder();
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        for (int i11 = 0; i11 < expectedTokenSequences.length; i11++) {
            int[] iArr = expectedTokenSequences[i11];
            if (i10 < iArr.length) {
                i10 = iArr.length;
            }
            int i12 = 0;
            while (true) {
                int[] iArr2 = expectedTokenSequences[i11];
                if (i12 < iArr2.length) {
                    treeSet.add(tokenImage[iArr2[i12]]);
                    i12++;
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            sb2.append("    ");
            sb2.append(str);
            sb2.append("\n");
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Encountered unexpected token:");
        Token token = currentToken.next;
        int i13 = 0;
        while (true) {
            if (i13 >= i10) {
                break;
            }
            String add_escapes = add_escapes(token.image);
            if (i13 != 0) {
                sb3.append(C15883c.f126249O);
            }
            if (token.kind == 0) {
                sb3.append(tokenImage[0]);
                break;
            }
            sb3.append(" \"");
            sb3.append(add_escapes);
            sb3.append(JavadocConstants.ANCHOR_PREFIX_END);
            sb3.append(" " + tokenImage[token.kind]);
            token = token.next;
            i13++;
        }
        sb3.append("\n");
        sb3.append("    ");
        sb3.append("at line ");
        sb3.append(currentToken.next.beginLine);
        sb3.append(", column ");
        sb3.append(currentToken.next.beginColumn);
        sb3.append(".");
        sb3.append("\n");
        if (expectedTokenSequences.length != 0) {
            sb3.append("\n");
            sb3.append("Was expecting");
            sb3.append(expectedTokenSequences.length == 1 ? b3.s.f32937c : " one of:");
            sb3.append("\n");
            sb3.append("\n");
            sb3.append((CharSequence) sb2);
        }
        return sb3.toString();
    }

    public static String add_escapes(String str) {
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
                            sb2.append("\\u" + str2.substring(str2.length() - 4, str2.length()));
                            break;
                        } else {
                            sb2.append(charAt);
                            break;
                        }
                        break;
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }

    public ParseException(final Token currentTokenVal, final int[][] expectedTokenSequencesVal, final String[] tokenImageVal, final String lexicalStateName) {
        super(_initialise(currentTokenVal, expectedTokenSequencesVal, tokenImageVal, lexicalStateName));
        this.currentToken = currentTokenVal;
        this.expectedTokenSequences = expectedTokenSequencesVal;
        this.tokenImage = tokenImageVal;
    }

    public ParseException() {
    }

    public ParseException(String message) {
        super(message);
    }
}
