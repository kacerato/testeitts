package org.openjdk.tools.javah;

import java.lang.constant.ConstantDescs;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.lang.model.util.Types;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javah.TypeSignature;

public class Mangle {
    private Elements elems;
    private Types types;

    public static class Type {
        public static final int CLASS = 1;
        public static final int FIELD = 3;
        public static final int FIELDSTUB = 2;
        public static final int JNI = 4;
        public static final int METHOD_JDK_1 = 6;
        public static final int METHOD_JNI_LONG = 8;
        public static final int METHOD_JNI_SHORT = 7;
        public static final int SIGNATURE = 5;
    }

    public Mangle(Elements elements, Types types) {
        this.elems = elements;
        this.types = types;
    }

    private String getInnerQualifiedName(TypeElement typeElement) {
        return this.elems.getBinaryName(typeElement).toString();
    }

    private static boolean isalnum(char c10) {
        return c10 <= '\u007f' && ((c10 >= 'A' && c10 <= 'Z') || ((c10 >= 'a' && c10 <= 'z') || (c10 >= '0' && c10 <= '9')));
    }

    private static boolean isprint(char c10) {
        return c10 >= ' ' && c10 <= '~';
    }

    private String signature(ExecutableElement executableElement) {
        StringBuilder sb2 = new StringBuilder();
        String str = "(";
        for (VariableElement variableElement : executableElement.getParameters()) {
            sb2.append(str);
            sb2.append(this.types.erasure(variableElement.asType()).toString());
            str = DocLint.SEPARATOR;
        }
        sb2.append(")");
        return sb2.toString();
    }

    public final String mangle(CharSequence charSequence, int i10) {
        StringBuilder sb2 = new StringBuilder(100);
        int length = charSequence.length();
        for (int i11 = 0; i11 < length; i11++) {
            char charAt = charSequence.charAt(i11);
            if (isalnum(charAt)) {
                sb2.append(charAt);
            } else if (charAt == '.' && i10 == 1) {
                sb2.append('_');
            } else if (charAt == '$' && i10 == 1) {
                sb2.append('_');
                sb2.append('_');
            } else if (charAt == '_' && i10 == 2) {
                sb2.append('_');
            } else if (charAt == '_' && i10 == 1) {
                sb2.append('_');
            } else if (i10 == 4) {
                String str = charAt == '_' ? "_1" : charAt == '.' ? ConstantDescs.DEFAULT_NAME : charAt == ';' ? "_2" : charAt == '[' ? "_3" : null;
                if (str != null) {
                    sb2.append(str);
                } else {
                    sb2.append(mangleChar(charAt));
                }
            } else if (i10 != 5) {
                sb2.append(mangleChar(charAt));
            } else if (isprint(charAt)) {
                sb2.append(charAt);
            } else {
                sb2.append(mangleChar(charAt));
            }
        }
        return sb2.toString();
    }

    public final String mangleChar(char c10) {
        String hexString = Integer.toHexString(c10);
        int length = hexString.length();
        int i10 = 5 - length;
        char[] cArr = new char[6];
        int i11 = 0;
        cArr[0] = '_';
        for (int i12 = 1; i12 <= i10; i12++) {
            cArr[i12] = '0';
        }
        int i13 = 6 - length;
        while (i13 < 6) {
            cArr[i13] = hexString.charAt(i11);
            i13++;
            i11++;
        }
        return new String(cArr);
    }

    public String mangleMethod(ExecutableElement executableElement, TypeElement typeElement, int i10) throws TypeSignature.SignatureException {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append("Java_");
        if (i10 == 6) {
            sb2.append(mangle(typeElement.getQualifiedName(), 1));
            sb2.append('_');
            sb2.append(mangle(executableElement.getSimpleName(), 3));
            sb2.append("_stub");
            return sb2.toString();
        }
        sb2.append(mangle(getInnerQualifiedName(typeElement), 4));
        sb2.append('_');
        sb2.append(mangle(executableElement.getSimpleName(), 4));
        if (i10 == 8) {
            sb2.append("__");
            String substring = new TypeSignature(this.elems).getTypeSignature(signature(executableElement), executableElement.getReturnType()).substring(1);
            sb2.append(mangle(substring.substring(0, substring.lastIndexOf(41)).replace('/', '.'), 4));
        }
        return sb2.toString();
    }
}
