package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.internal.core.JavaElement;

public class MementoTokenizer {
    private int index = 0;
    private final int length;
    private final char[] memento;
    public static final String COUNT = Character.toString('!');
    public static final String JAVAPROJECT = Character.toString('=');
    public static final String PACKAGEFRAGMENTROOT = Character.toString('/');
    public static final String PACKAGEFRAGMENT = Character.toString('<');
    public static final String FIELD = Character.toString('^');
    public static final String METHOD = Character.toString(JavaElement.JEM_METHOD);
    public static final String INITIALIZER = Character.toString('|');
    public static final String COMPILATIONUNIT = Character.toString(JavaElement.JEM_COMPILATIONUNIT);
    public static final String CLASSFILE = Character.toString('(');
    public static final String MODULAR_CLASSFILE = Character.toString(JavaElement.JEM_MODULAR_CLASSFILE);
    public static final String TYPE = Character.toString('[');
    public static final String MODULE = Character.toString(JavaElement.JEM_MODULE);
    public static final String PACKAGEDECLARATION = Character.toString(JavaElement.JEM_PACKAGEDECLARATION);
    public static final String IMPORTDECLARATION = Character.toString(JavaElement.JEM_IMPORTDECLARATION);
    public static final String LOCALVARIABLE = Character.toString('@');
    public static final String TYPE_PARAMETER = Character.toString(JavaElement.JEM_TYPE_PARAMETER);
    public static final String ANNOTATION = Character.toString(JavaElement.JEM_ANNOTATION);
    public static final String LAMBDA_EXPRESSION = Character.toString(')');
    public static final String LAMBDA_METHOD = Character.toString('&');
    public static final String STRING = Character.toString('\"');

    public MementoTokenizer(String str) {
        char[] charArray = str.toCharArray();
        this.memento = charArray;
        this.length = charArray.length;
    }

    public boolean hasMoreTokens() {
        return this.index < this.length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ad, code lost:
    
        r1.append(r13.memento, r0, r2 - r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b7, code lost:
    
        return r1.toString();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x007d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:38:0x0080. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String nextToken() {
        StringBuffer stringBuffer;
        int i10;
        char c10;
        int i11 = this.index;
        char[] cArr = this.memento;
        int i12 = i11 + 1;
        this.index = i12;
        char c11 = cArr[i11];
        if (c11 == '!') {
            return COUNT;
        }
        if (c11 == '#') {
            return IMPORTDECLARATION;
        }
        if (c11 == '%') {
            return PACKAGEDECLARATION;
        }
        if (c11 == '/') {
            return PACKAGEFRAGMENTROOT;
        }
        if (c11 == '@') {
            return LOCALVARIABLE;
        }
        if (c11 == '`') {
            return MODULE;
        }
        if (c11 == '\'') {
            return MODULAR_CLASSFILE;
        }
        if (c11 == '(') {
            return CLASSFILE;
        }
        if (c11 == '<') {
            return PACKAGEFRAGMENT;
        }
        if (c11 == '=') {
            if (i12 < this.length) {
                this.index = i11 + 2;
                char c12 = cArr[i12];
                if (c12 == '\"') {
                    return STRING;
                }
                if (c12 == '&') {
                    return LAMBDA_METHOD;
                }
                if (c12 == ')') {
                    return LAMBDA_EXPRESSION;
                }
                this.index = i11 + 1;
            }
            return JAVAPROJECT;
        }
        switch (c11) {
            case '[':
                return TYPE;
            case '\\':
                stringBuffer = new StringBuffer();
                stringBuffer.append(this.memento[this.index]);
                i11 = this.index + 1;
                this.index = i11;
                break;
            case ']':
                return TYPE_PARAMETER;
            case '^':
                return FIELD;
            default:
                switch (c11) {
                    case '{':
                        return COMPILATIONUNIT;
                    case '|':
                        return INITIALIZER;
                    case '}':
                        return ANNOTATION;
                    case '~':
                        return METHOD;
                    default:
                        stringBuffer = null;
                        break;
                }
        }
        while (true) {
            i10 = this.index;
            if (i10 < this.length && (c10 = this.memento[i10]) != '!' && c10 != '#' && c10 != '%' && c10 != '(' && c10 != '/' && c10 != '@' && c10 != '`' && c10 != '<' && c10 != '=') {
                switch (c10) {
                    case '[':
                    case ']':
                    case '^':
                        break;
                    case '\\':
                        if (stringBuffer == null) {
                            stringBuffer = new StringBuffer();
                        }
                        stringBuffer.append(this.memento, i11, this.index - i11);
                        i11 = this.index + 1;
                        this.index = i11;
                        if (this.memento[i11] == '`') {
                            return stringBuffer.toString();
                        }
                        this.index++;
                    default:
                        switch (c10) {
                            case '{':
                            case '|':
                            case '}':
                            case '~':
                                break;
                            default:
                                this.index++;
                        }
                }
            }
        }
        return new String(this.memento, i11, i10 - i11);
    }
}
