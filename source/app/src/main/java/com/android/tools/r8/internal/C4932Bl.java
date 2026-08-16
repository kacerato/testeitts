package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.naming.C10912b;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.nio.file.Path;
import java.util.List;
import java.util.function.Function;
import org.eclipse.jdt.core.Signature;

public class C4932Bl {

    public static final AbstractC8552nC f39005a = new C8051kC(4).a("void", "V").a(TypedValues.Custom.S_BOOLEAN, Signature.SIG_BOOLEAN).a("byte", Signature.SIG_BYTE).a("short", "S").a("char", Signature.SIG_CHAR).a("int", Signature.SIG_INT).a("long", Signature.SIG_LONG).a(TypedValues.Custom.S_FLOAT, Signature.SIG_FLOAT).a("double", Signature.SIG_DOUBLE).a();

    public static final boolean f39006b = true;

    public static boolean A(String str) {
        List<String> a10 = C10656zq0.a(u(str), '$');
        if (a10.size() < 2) {
            return false;
        }
        return Character.isLowerCase(a10.get(a10.size() - 1).charAt(0)) && a10.get(a10.size() - 2).equals("R");
    }

    public static boolean B(String str) {
        if (str.length() < 3 || str.charAt(0) != 'L' || str.charAt(str.length() - 1) != ';' || str.charAt(1) == '/' || str.charAt(str.length() - 2) == '/') {
            return false;
        }
        int i10 = 1;
        while (i10 < str.length() - 1) {
            int codePointAt = str.codePointAt(i10);
            if (codePointAt != 47 && !AbstractC10552zB.a(codePointAt) && !AbstractC10552zB.b(codePointAt)) {
                return false;
            }
            i10 += Character.charCount(codePointAt);
        }
        return true;
    }

    public static boolean C(String str) {
        boolean z10;
        int i10;
        if (str.isEmpty() || str.charAt(0) != '[') {
            z10 = false;
        } else {
            int i11 = -1;
            while (true) {
                i10 = i11 + 1;
                if (i10 >= str.length() || str.charAt(i10) != '[') {
                    break;
                }
                i11 = i10;
            }
            z10 = C(i11 >= 0 ? str.substring(i10) : str);
        }
        if (!z10 && !B(str)) {
            if (!(str.length() != 1 ? false : a(str.charAt(0))) && !G(str)) {
                return false;
            }
        }
        return true;
    }

    public static boolean D(String str) {
        int i10;
        if (str.isEmpty()) {
            return false;
        }
        int length = str.length();
        if (str.charAt(0) != '<') {
            i10 = 0;
        } else {
            if (str.charAt(length - 1) != '>') {
                return false;
            }
            length--;
            i10 = 1;
        }
        while (i10 < length) {
            int codePointAt = str.codePointAt(i10);
            if (!AbstractC10552zB.a(codePointAt) && !AbstractC10552zB.b(codePointAt)) {
                return false;
            }
            i10 += Character.charCount(codePointAt);
        }
        return true;
    }

    public static boolean E(String str) {
        if (str.length() == 0) {
            return false;
        }
        int i10 = 0;
        char c10 = 0;
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            if (charAt == ';' || charAt == '[' || charAt == '/') {
                return false;
            }
            if (charAt == '.' && (i10 == 0 || c10 == '.')) {
                return false;
            }
            i10++;
            c10 = charAt;
        }
        return true;
    }

    public static boolean F(String str) {
        if (str.isEmpty()) {
            return false;
        }
        if (str.charAt(0) == '<' && (str.equals(ConstantDescs.INIT_NAME) || str.equals(ConstantDescs.CLASS_INIT_NAME))) {
            return true;
        }
        int i10 = 0;
        while (i10 < str.length()) {
            int codePointAt = str.codePointAt(i10);
            if (!AbstractC10552zB.a(codePointAt) && !AbstractC10552zB.b(codePointAt)) {
                return false;
            }
            i10 += Character.charCount(codePointAt);
        }
        return true;
    }

    public static boolean G(String str) {
        return str.length() == 1 && str.charAt(0) == 'V';
    }

    public static String H(String str) {
        if (f39006b || str.indexOf(47) == -1) {
            return a(str, false, false);
        }
        throw new AssertionError();
    }

    public static String I(String str) {
        if (f39006b || str.indexOf(47) == -1) {
            return a(str, false, true);
        }
        throw new AssertionError();
    }

    public static String J(String str) {
        return a(str, true, false);
    }

    public static boolean a(char c10) {
        return c10 == 'Z' || c10 == 'B' || c10 == 'S' || c10 == 'C' || c10 == 'I' || c10 == 'F' || c10 == 'J' || c10 == 'D';
    }

    public static String b(String str) {
        return a(str, (C10912b) null);
    }

    public static String c(Class<?> cls) {
        return H(cls.getTypeName());
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0043, code lost:
    
        if (r3 >= r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004a, code lost:
    
        if (r6.charAt(r3 - 1) != ')') goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004c, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0052, code lost:
    
        throw new com.android.tools.r8.internal.JJ(r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int d(String str) {
        int i10;
        int length = str.length();
        int i11 = 0;
        int i12 = 1;
        while (true) {
            if (i12 >= length) {
                break;
            }
            int i13 = i12 + 1;
            char charAt = str.charAt(i12);
            if (charAt == ')') {
                i12 = i13;
                break;
            }
            if (charAt == 'L') {
                while (true) {
                    if (i13 >= length) {
                        i10 = i13;
                        break;
                    }
                    i10 = i13 + 1;
                    if (str.charAt(i13) == ';') {
                        break;
                    }
                    i13 = i10;
                }
                if (i10 >= length || str.charAt(i10 - 1) != ';') {
                    break;
                }
                i11++;
                i12 = i10;
            } else {
                if (charAt != '[') {
                    i11++;
                }
                i12 = i13;
            }
        }
        throw new JJ(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0049, code lost:
    
        if (r9.charAt(r4) == 'L') goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004b, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
    
        if (r9.charAt(r4) == ';') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
    
        r5 = r2 + 1;
        r0[r2] = r9.substring(r3, r4 + 1);
        r3 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] e(String str) {
        String[] strArr = new String[d(str)];
        int i10 = 0;
        int i11 = 1;
        while (true) {
            char charAt = str.charAt(i11);
            if (charAt == ')') {
                return strArr;
            }
            if (charAt != 'F') {
                if (charAt == 'L') {
                    int i12 = i11;
                    while (true) {
                        int i13 = i12 + 1;
                        if (str.charAt(i13) != ';') {
                            i12 = i13;
                        } else {
                            strArr[i10] = str.substring(i11, i12 + 2);
                            i10++;
                            i11 = i13;
                            i11++;
                        }
                    }
                } else if (charAt != 'S') {
                    if (charAt == 'V') {
                        throw new JJ(str);
                    }
                    if (charAt != 'I' && charAt != 'J' && charAt != 'Z') {
                        if (charAt != '[') {
                            switch (charAt) {
                                case 'B':
                                case 'C':
                                case 'D':
                                    break;
                                default:
                                    throw new JJ(str);
                            }
                            i10 = r5;
                            i11++;
                        } else {
                            int i14 = i11;
                            do {
                                i14++;
                            } while (str.charAt(i14) == '[');
                        }
                    }
                }
            }
            int i15 = i10 + 1;
            strArr[i10] = Character.toString(charAt);
            i10 = i15;
            i11++;
        }
    }

    public static String f(String str) {
        if (f39006b || y(str)) {
            return AbstractC4281a.a(str, 1, 1);
        }
        throw new AssertionError();
    }

    public static String g(String str) {
        return str.replace('.', '/');
    }

    public static String h(String str) {
        if (f39006b || y(str)) {
            return AbstractC4281a.a(str, 1, 1);
        }
        throw new AssertionError((Object) ("Invalid class descriptor " + str));
    }

    public static String i(String str) {
        if (!f39006b && (str == null || !y(str))) {
            throw new AssertionError();
        }
        return h(str) + ".class";
    }

    public static String j(String str) {
        return h(str).replace('/', '.');
    }

    public static String k(String str) {
        if (!f39006b && str == null) {
            throw new AssertionError();
        }
        return "L" + str + ";";
    }

    public static String l(String str) {
        boolean z10 = f39006b;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && str.contains("[")) {
            throw new AssertionError((Object) str);
        }
        return "L" + str.replace('.', '$') + ";";
    }

    public static String m(String str) {
        return str.replace('/', '.');
    }

    public static String n(String str) {
        return str.replace('.', '/');
    }

    public static String o(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        return lastIndexOf < 0 ? "" : str.substring(0, lastIndexOf).replace('/', '.');
    }

    public static String p(String str) {
        return o(h(str));
    }

    public static String q(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? "" : str.substring(0, lastIndexOf);
    }

    public static String r(String str) {
        boolean z10 = f39006b;
        if (!z10 && !str.startsWith("L")) {
            throw new AssertionError();
        }
        if (!z10 && !str.endsWith(";")) {
            throw new AssertionError();
        }
        return AbstractC4281a.a(str, 1, 1) + ".class";
    }

    public static String s(String str) {
        if (!f39006b && !E(str)) {
            throw new AssertionError();
        }
        return str.replace('.', '/') + ".class";
    }

    public static String t(String str) {
        if (f39006b || str.indexOf(41) != -1) {
            return str.substring(str.indexOf(41) + 1);
        }
        throw new AssertionError();
    }

    public static String u(String str) {
        return AbstractC4281a.a(str, 1, Integer.max(str.lastIndexOf("/"), 0) + 1);
    }

    public static String v(String str) {
        String h10 = h(str);
        int lastIndexOf = h10.lastIndexOf(47);
        return lastIndexOf < 0 ? h10 : h10.substring(lastIndexOf + 1);
    }

    public static C4874Al w(String str) {
        boolean z10 = f39006b;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && !str.endsWith(".class")) {
            throw new AssertionError((Object) ("Name " + str + " must have .class suffix"));
        }
        if (!z10 && !str.startsWith("/modules")) {
            throw new AssertionError((Object) ("Name " + str + " must have /modules prefix"));
        }
        if (!z10 && str.charAt(8) != '/') {
            throw new AssertionError();
        }
        int indexOf = str.indexOf(47, 9);
        String substring = str.substring(9, indexOf);
        String a10 = AbstractC4281a.a(str, 6, indexOf + 1);
        if (a10.indexOf(46) != -1) {
            throw new C5325If("Unexpected class file name: " + str);
        }
        return new C4874Al(substring, "L" + a10 + ";");
    }

    public static String x(String str) {
        boolean z10 = f39006b;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && !str.endsWith(".class")) {
            throw new AssertionError((Object) ("Name " + str + " must have .class suffix"));
        }
        String a10 = AbstractC4281a.a(str, 6, 0);
        if (a10.indexOf(46) != -1) {
            throw new C5325If("Unexpected class file name: " + str);
        }
        return "L" + a10 + ";";
    }

    public static boolean y(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        if (length >= 3 && charArray[0] == 'L') {
            int i10 = 1;
            while (i10 < length) {
                int i11 = i10 + 1;
                char c10 = charArray[i10];
                if (c10 != '.' && c10 != '[' && c10 != '/' && c10 != ';') {
                    while (i11 < length) {
                        i10 = i11 + 1;
                        char c11 = charArray[i11];
                        if (c11 != '.' && c11 != '[') {
                            if (c11 != '/' && c11 != ';') {
                                i11 = i10;
                            } else if (c11 == ';') {
                                if (i10 == length) {
                                    return true;
                                }
                            }
                        }
                    }
                    return false;
                }
            }
            return false;
        }
        return false;
    }

    public static boolean z(String str) {
        if (!y(str)) {
            if (!(str.length() != 1 ? false : a(str.charAt(0)))) {
                if (!((str.length() >= 2 && str.charAt(0) == '[') ? z(str.substring(1)) : false)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String a(String str, boolean z10, boolean z11) {
        String str2 = !z11 ? (String) f39005a.get(str) : null;
        if (str2 != null) {
            return str2;
        }
        if (z10) {
            return "L";
        }
        if (str.endsWith(okhttp3.v.f99450n)) {
            return "[" + a(str.substring(0, str.length() - 2), z10, z11);
        }
        return "L" + str.replace('.', '/') + ";";
    }

    public static String b(char c10) {
        if (c10 == 'F') {
            return "java/lang/Float";
        }
        if (c10 == 'S') {
            return "java/lang/Short";
        }
        if (c10 == 'V') {
            return "java/lang/Void";
        }
        if (c10 == 'Z') {
            return "java/lang/Boolean";
        }
        if (c10 == 'I') {
            return "java/lang/Integer";
        }
        if (c10 != 'J') {
            switch (c10) {
                case 'B':
                    return "java/lang/Byte";
                case 'C':
                    return "java/lang/Character";
                case 'D':
                    return "java/lang/Double";
                default:
                    throw new C5417Jv0("Unknown type " + c10);
            }
        }
        return "java/lang/Long";
    }

    public static String c(String str) {
        String replace = f(str).replace('$', '.');
        if (!str.startsWith("Lj$/")) {
            return replace;
        }
        if (!f39006b && !replace.startsWith("j./")) {
            throw new AssertionError();
        }
        return "j$/" + replace.substring(3);
    }

    public static String a(Function function, String str) {
        int i10 = 0;
        for (int length = str.length() - 2; length > 0; length -= 2) {
            if (str.charAt(length) == '[' && str.charAt(length + 1) == ']') {
                i10++;
            }
        }
        if (i10 > 0) {
            str = str.substring(0, str.length() - (i10 * 2));
        }
        String str2 = (String) function.apply(str);
        if (i10 == 0) {
            return str2;
        }
        StringBuilder sb2 = new StringBuilder(str2);
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(okhttp3.v.f99450n);
        }
        return sb2.toString();
    }

    public static String c(char c10) {
        if (c10 == 'F') {
            return TypedValues.Custom.S_FLOAT;
        }
        if (c10 == 'S') {
            return "short";
        }
        if (c10 == 'V') {
            return "void";
        }
        if (c10 == 'Z') {
            return TypedValues.Custom.S_BOOLEAN;
        }
        if (c10 == 'I') {
            return "int";
        }
        if (c10 != 'J') {
            switch (c10) {
                case 'B':
                    return "byte";
                case 'C':
                    return "char";
                case 'D':
                    return "double";
                default:
                    throw new C5417Jv0("Unknown type " + c10);
            }
        }
        return "long";
    }

    public static String b(String str, String str2) {
        if (str2.length() <= str.length()) {
            return null;
        }
        String str3 = str + "$";
        if (str2.startsWith(str3)) {
            return str2.substring(str3.length());
        }
        return null;
    }

    public static String a(String str) {
        char charAt = str.charAt(0);
        if (charAt == 'L') {
            return AbstractC4281a.a(str, 1, 1);
        }
        if (charAt == '[') {
            return str;
        }
        throw new C5417Jv0("Not array or class type");
    }

    public static String b(Class<?> cls) {
        return s(cls.getTypeName());
    }

    public static String a(String str, C10912b c10912b) {
        char charAt = str.charAt(0);
        if (charAt == 'L') {
            if (!f39006b && str.charAt(str.length() - 1) != ';') {
                throw new AssertionError();
            }
            String replace = str.substring(1, str.length() - 1).replace('/', '.');
            return c10912b == null ? replace : c10912b.a(replace);
        }
        if (charAt != '[') {
            return c(charAt);
        }
        return a(str.substring(1), c10912b) + okhttp3.v.f99450n;
    }

    public static String c(String str, String str2) {
        return "L" + str.substring(1, Integer.max(str.lastIndexOf("/"), 0) + 1) + str2 + ";";
    }

    public static String a(Class<?> cls) {
        return g(cls.getTypeName());
    }

    public static String a(String str, String str2, String str3) {
        if (!f39006b && (str3 == null || str3.isEmpty())) {
            throw new AssertionError();
        }
        if (str3.length() + str.length() > str2.length()) {
            return null;
        }
        String substring = str2.substring(str.length(), str2.length() - str3.length());
        if (substring.startsWith(String.valueOf('$'))) {
            return substring;
        }
        return null;
    }

    public static String a(Path path) {
        String path2 = path.toString();
        char c10 = File.separatorChar;
        if (c10 != '/') {
            path2 = path2.replace(c10, '/');
        }
        return x(path2);
    }

    public static String a(String str, String str2) {
        if (str2.length() <= str.length()) {
            return null;
        }
        String str3 = AbstractC4281a.a(str, 1, 0) + "$";
        if (str2.startsWith(str3)) {
            return AbstractC4281a.a(str2, 1, str3.length());
        }
        return null;
    }
}
