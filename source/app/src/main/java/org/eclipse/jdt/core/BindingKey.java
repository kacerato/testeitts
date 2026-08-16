package org.eclipse.jdt.core;

import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.util.KeyKind;
import org.eclipse.jdt.internal.core.util.KeyToSignature;

public final class BindingKey {
    private String key;

    public BindingKey(String str) {
        this.key = str;
    }

    public static String createArrayTypeBindingKey(String str, int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                stringBuffer.append(str);
                return stringBuffer.toString();
            }
            stringBuffer.append('[');
            i10 = i11;
        }
    }

    public static String createParameterizedTypeBindingKey(String str, String[] strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Signature.getTypeErasure(str));
        stringBuffer.insert(stringBuffer.length() - 1, '<');
        for (String str2 : strArr) {
            stringBuffer.insert(stringBuffer.length() - 1, str2);
        }
        stringBuffer.insert(stringBuffer.length() - 1, '>');
        return stringBuffer.toString();
    }

    public static String createTypeBindingKey(String str) {
        return Signature.createTypeSignature(str.replace('.', '/'), true);
    }

    public static String createTypeVariableBindingKey(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2);
        stringBuffer.append(':');
        stringBuffer.append('T');
        stringBuffer.append(str);
        stringBuffer.append(';');
        return stringBuffer.toString();
    }

    public static String createWilcardTypeBindingKey(String str, char c10) {
        if (c10 == '*') {
            return "*";
        }
        if (c10 == '+') {
            return String.valueOf('+') + str;
        }
        if (c10 != '-') {
            return null;
        }
        return String.valueOf('-') + str;
    }

    public static String createWildcardTypeBindingKey(String str, char c10, String str2, int i10) {
        String str3;
        if (c10 == '*') {
            str3 = new String(TypeConstants.WILDCARD_STAR);
        } else if (c10 == '+') {
            str3 = new String(TypeConstants.WILDCARD_PLUS) + str2;
        } else {
            if (c10 != '-') {
                return null;
            }
            str3 = new String(TypeConstants.WILDCARD_MINUS) + str2;
        }
        return String.valueOf(str) + JavaElement.JEM_COMPILATIONUNIT + i10 + JavaElement.JEM_ANNOTATION + str3;
    }

    public BindingKey getDeclaringType() {
        int lastIndexOf = this.key.lastIndexOf(46);
        if (lastIndexOf == -1 && (lastIndexOf = this.key.lastIndexOf(36)) == -1) {
            return null;
        }
        KeyKind keyKind = new KeyKind(this.key);
        keyKind.parse();
        if ((keyKind.flags & 16) != 0) {
            return null;
        }
        String substring = this.key.substring(0, lastIndexOf);
        if (substring.charAt(substring.length() - 1) != ';') {
            substring = substring + ';';
        }
        return new BindingKey(substring);
    }

    public String[] getThrownExceptions() {
        KeyToSignature keyToSignature = new KeyToSignature(this.key, 3);
        keyToSignature.parse();
        return keyToSignature.getThrownExceptions();
    }

    public String[] getTypeArguments() {
        KeyToSignature keyToSignature = new KeyToSignature(this.key, 1);
        keyToSignature.parse();
        return keyToSignature.getTypeArguments();
    }

    public boolean isParameterizedMethod() {
        KeyKind keyKind = new KeyKind(this.key);
        keyKind.parse();
        return (keyKind.flags & 1024) != 0;
    }

    public boolean isParameterizedType() {
        KeyKind keyKind = new KeyKind(this.key);
        keyKind.parse();
        return (keyKind.flags & 128) != 0;
    }

    public boolean isRawType() {
        KeyKind keyKind = new KeyKind(this.key);
        keyKind.parse();
        return (keyKind.flags & 256) != 0;
    }

    public String toSignature() {
        KeyToSignature keyToSignature = new KeyToSignature(this.key, 0);
        keyToSignature.parse();
        return keyToSignature.signature.toString();
    }

    public String toString() {
        return this.key;
    }
}
