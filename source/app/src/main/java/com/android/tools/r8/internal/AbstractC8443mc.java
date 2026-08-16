package com.android.tools.r8.internal;

import android.bluetooth.BluetoothClass;
import com.android.dx.rop.code.AccessFlags;
import java.lang.constant.ConstantDescs;
import java.util.HashMap;

public abstract class AbstractC8443mc extends AbstractC7449ge {

    public final boolean f50340c;

    public int f50341d;

    public boolean f50342e;

    public boolean f50343f;

    public boolean f50344g;

    public boolean f50345h;

    public boolean f50346i;

    public String f50347j;

    public boolean f50348k;

    public final HashMap f50349l;

    public AbstractC8443mc(C4971Cd c4971Cd) {
        super(c4971Cd);
        this.f50349l = new HashMap();
        this.f50340c = true;
    }

    public static void d(String str) {
        int b10 = b(0, str);
        if (b10 == str.length()) {
            return;
        }
        throw new IllegalArgumentException(str + ": error at index " + b10);
    }

    public static char e(int i10, String str) {
        if (i10 < str.length()) {
            return str.charAt(i10);
        }
        return (char) 0;
    }

    @Override
    public final void a(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        int i12;
        if (!this.f50342e) {
            this.f50342e = true;
            b();
            a(i11, 259633);
            if (str != null) {
                if (!str.endsWith("package-info") && !str.endsWith("module-info")) {
                    C9444sc.b(i10, str, "class name");
                }
                if ("java/lang/Object".equals(str)) {
                    if (str3 != null) {
                        throw new IllegalArgumentException("The super class name of the Object class must be 'null'");
                    }
                } else if (!str.endsWith("module-info")) {
                    C9444sc.b(i10, str3, "super class name");
                } else if (str3 != null) {
                    throw new IllegalArgumentException("The super class name of a module-info class must be 'null'");
                }
                if (str2 != null) {
                    if ((str2.length() > 0 ? str2.charAt(0) : (char) 0) == '<') {
                        int d10 = d(a(str2, '<', 0), str2);
                        while (true) {
                            if ((d10 < str2.length() ? str2.charAt(d10) : (char) 0) == '>') {
                                break;
                            } else {
                                d10 = d(d10, str2);
                            }
                        }
                        i12 = d10 + 1;
                    } else {
                        i12 = 0;
                    }
                    int a10 = a(i12, str2);
                    while (true) {
                        if ((a10 < str2.length() ? str2.charAt(a10) : (char) 0) != 'L') {
                            break;
                        } else {
                            a10 = a(a10, str2);
                        }
                    }
                    if (a10 != str2.length()) {
                        throw new IllegalArgumentException(str2 + ": error at index " + a10);
                    }
                }
                if ((i11 & 512) != 0 && !"java/lang/Object".equals(str3)) {
                    throw new IllegalArgumentException("The super class name of interfaces must be 'java/lang/Object'");
                }
                for (int i13 = 0; i13 < strArr.length; i13++) {
                    C9444sc.b(i10, strArr[i13], "interface name at index " + i13);
                }
                this.f50341d = i10;
                super.a(i10, i11, str, str2, str3, strArr);
                return;
            }
            throw new IllegalArgumentException("Illegal class name (null)");
        }
        throw new IllegalStateException("visit must be called only once");
    }

    @Override
    public final void b(String str) {
        String substring;
        b();
        C9444sc.b(this.f50341d, str, "nestMember");
        if (!this.f50346i) {
            int lastIndexOf = str.lastIndexOf(47);
            if (lastIndexOf == -1) {
                substring = "";
            } else {
                substring = str.substring(0, lastIndexOf);
            }
            String str2 = this.f50347j;
            if (str2 == null) {
                this.f50347j = substring;
            } else if (!str2.equals(substring)) {
                throw new IllegalStateException("nest member " + str + " should be in the package " + this.f50347j);
            }
            super.b(str);
            return;
        }
        throw new IllegalStateException("visitMemberOfNest and visitNestHost are mutually exclusive.");
    }

    @Override
    public final void c(String str) {
        b();
        C9444sc.b(this.f50341d, str, "permittedSubclass");
        super.c(str);
    }

    public static String e(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf == -1) {
            return str;
        }
        int length = str.length();
        if (str.charAt(length - 1) == ';') {
            length--;
        }
        int lastIndexOf2 = str.lastIndexOf(91);
        if (lastIndexOf2 == -1) {
            return str.substring(lastIndexOf + 1, length);
        }
        return AbstractC9349s.a(str.substring(0, lastIndexOf2 + 1), str.substring(lastIndexOf + 1, length));
    }

    public static int c(int i10, String str) {
        int i11 = i10;
        while (i11 < str.length() && ".;[/<>:".indexOf(str.codePointAt(i11)) == -1) {
            i11 = str.offsetByCodePoints(i11, 1);
        }
        if (i11 != i10) {
            return i11;
        }
        throw new IllegalArgumentException(str + ": identifier expected at index " + i10);
    }

    public static int d(int i10, String str) {
        int a10 = a(str, ':', c(i10, str));
        if ("L[T".indexOf(a10 < str.length() ? str.charAt(a10) : (char) 0) != -1) {
            a10 = b(a10, str);
        }
        while (true) {
            if ((a10 < str.length() ? str.charAt(a10) : (char) 0) != ':') {
                return a10;
            }
            a10 = b(a10 + 1, str);
        }
    }

    @Override
    public final AbstractC7611hc0 b(String str, String str2, String str3) {
        b();
        C9444sc.a(this.f50341d, str, 0, -1, "record component name");
        C9444sc.d(this.f50341d, str2);
        if (str3 != null) {
            d(str3);
        }
        return new C10446yc(this.f48323a, super.b(str, str2, str3));
    }

    public final void b() {
        if (this.f50342e) {
            if (this.f50348k) {
                throw new IllegalStateException("Cannot visit member after visitEnd has been called.");
            }
            return;
        }
        throw new IllegalStateException("Cannot visit member before visit has been called.");
    }

    public static void b(int i10, String str, String str2) {
        int i11 = 0;
        while (true) {
            try {
                int indexOf = str.indexOf(46, i11 + 1);
                if (indexOf != -1) {
                    C9444sc.a(i10, str, i11, indexOf, (String) null);
                    i11 = indexOf + 1;
                } else {
                    C9444sc.a(i10, str, i11, str.length(), (String) null);
                    return;
                }
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid " + str2 + " (must be a fully qualified name): " + str, e10);
            }
        }
    }

    public static int b(int i10, String str) {
        char e10 = e(i10, str);
        if (e10 == 'L') {
            return a(i10, str);
        }
        if (e10 != '[') {
            return a(str, ';', c(a(str, 'T', i10), str));
        }
        int i11 = i10 + 1;
        char e11 = e(i11, str);
        if (e11 != 'F' && e11 != 'S' && e11 != 'Z' && e11 != 'I' && e11 != 'J') {
            switch (e11) {
                case 'B':
                case 'C':
                case 'D':
                    break;
                default:
                    return b(i11, str);
            }
        }
        return i10 + 2;
    }

    @Override
    public final void a(String str, String str2) {
        b();
        if (!this.f50344g) {
            this.f50344g = true;
            return;
        }
        throw new IllegalStateException("visitSource can be called only once.");
    }

    @Override
    public final TX a(int i10, String str, String str2) {
        b();
        if (!this.f50343f) {
            this.f50343f = true;
            b(this.f50341d, str, "module name");
            a(i10, 36896);
            C9778uc c9778uc = new C9778uc(this.f48323a, super.a(i10, str, str2), (i10 & 32) != 0);
            c9778uc.f52894h = this.f50341d;
            return c9778uc;
        }
        throw new IllegalStateException("visitModule can be called only once.");
    }

    @Override
    public final void a(String str) {
        b();
        C9444sc.b(this.f50341d, str, "nestHost");
        if (!this.f50346i) {
            if (this.f50347j == null) {
                this.f50346i = true;
                super.a(str);
                return;
            }
            throw new IllegalStateException("visitNestHost and visitNestMember are mutually exclusive.");
        }
        throw new IllegalStateException("visitNestHost can be called only once.");
    }

    @Override
    public final void a(String str, String str2, String str3) {
        b();
        if (!this.f50345h) {
            this.f50345h = true;
            if (str == null) {
                throw new IllegalArgumentException("Illegal outer class owner");
            }
            if (str3 != null) {
                C9444sc.e(this.f50341d, str3);
                return;
            }
            return;
        }
        throw new IllegalStateException("visitOuterClass can be called only once.");
    }

    @Override
    public final void a(int i10, String str, String str2, String str3) {
        b();
        C9444sc.b(this.f50341d, str, "class name");
        if (str2 != null) {
            C9444sc.b(this.f50341d, str2, "outer class name");
        }
        if (str3 != null) {
            int i11 = 0;
            while (i11 < str3.length() && Character.isDigit(str3.charAt(i11))) {
                i11++;
            }
            if (i11 == 0 || i11 < str3.length()) {
                C9444sc.a(this.f50341d, str3, i11, -1, "inner class name");
            }
        }
        a(i10, AccessFlags.INNER_CLASS_FLAGS);
        super.a(i10, str, str2, str3);
    }

    @Override
    public final AbstractC6055Uw a(int i10, String str, String str2, String str3, Object obj) {
        b();
        a(i10, 184543);
        C9444sc.a(this.f50341d, str, 0, -1, "field name");
        C9444sc.d(this.f50341d, str2);
        if (str3 != null) {
            d(str3);
        }
        if (obj != null && !(obj instanceof Integer) && !(obj instanceof Float) && !(obj instanceof Long) && !(obj instanceof Double) && !(obj instanceof String)) {
            throw new IllegalArgumentException("Invalid constant: " + obj);
        }
        return new C8610nc(this.f48323a, super.a(i10, str, str2, str3, obj));
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x012c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00ff  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final DX a(int i10, String str, String str2, String str3, String[] strArr) {
        C9444sc c9444sc;
        int i11;
        int i12;
        b();
        int i13 = this.f50341d;
        a(i10, 171519);
        if ((i13 & 65535) < 61 && Integer.bitCount(i10 & 3072) > 1) {
            throw new IllegalArgumentException(T60.a(i10, "strictfp and abstract are mutually exclusive: "));
        }
        if (!ConstantDescs.INIT_NAME.equals(str) && !ConstantDescs.CLASS_INIT_NAME.equals(str)) {
            C9444sc.c(this.f50341d, str, "method name");
        }
        C9444sc.e(this.f50341d, str2);
        if (str3 != null) {
            if ((str3.length() > 0 ? str3.charAt(0) : (char) 0) == '<') {
                int d10 = d(a(str3, '<', 0), str3);
                while (true) {
                    if ((d10 < str3.length() ? str3.charAt(d10) : (char) 0) == '>') {
                        break;
                    }
                    d10 = d(d10, str3);
                }
                i11 = d10 + 1;
            } else {
                i11 = 0;
            }
            int a10 = a(str3, '(', i11);
            while (true) {
                if ("ZCBSIFJDL[T".indexOf(a10 < str3.length() ? str3.charAt(a10) : (char) 0) != -1) {
                    char charAt = a10 < str3.length() ? str3.charAt(a10) : (char) 0;
                    if (charAt != 'F' && charAt != 'S' && charAt != 'Z' && charAt != 'I' && charAt != 'J') {
                        switch (charAt) {
                            case 'B':
                            case 'C':
                            case 'D':
                                break;
                            default:
                                a10 = b(a10, str3);
                                continue;
                        }
                    }
                    a10++;
                } else {
                    int a11 = a(str3, ')', a10);
                    if ((a11 < str3.length() ? str3.charAt(a11) : (char) 0) != 'V') {
                        char charAt2 = a11 < str3.length() ? str3.charAt(a11) : (char) 0;
                        if (charAt2 != 'F' && charAt2 != 'S' && charAt2 != 'Z' && charAt2 != 'I' && charAt2 != 'J') {
                            switch (charAt2) {
                                case 'B':
                                case 'C':
                                case 'D':
                                    break;
                                default:
                                    i12 = b(a11, str3);
                                    break;
                            }
                            while (true) {
                                if ((i12 >= str3.length() ? str3.charAt(i12) : (char) 0) != '^') {
                                    int i14 = i12 + 1;
                                    if ((i14 < str3.length() ? str3.charAt(i14) : (char) 0) == 'L') {
                                        i12 = a(i14, str3);
                                    } else {
                                        i12 = a(str3, ';', c(a(str3, 'T', i14), str3));
                                    }
                                } else if (i12 != str3.length()) {
                                    throw new IllegalArgumentException(str3 + ": error at index " + i12);
                                }
                            }
                        }
                    }
                    i12 = a11 + 1;
                    while (true) {
                        if ((i12 >= str3.length() ? str3.charAt(i12) : (char) 0) != '^') {
                        }
                    }
                }
            }
        }
        if (strArr != null) {
            for (int i15 = 0; i15 < strArr.length; i15++) {
                C9444sc.b(this.f50341d, strArr[i15], "exception name at index " + i15);
            }
        }
        DX a12 = super.a(i10, str, str2, str3, strArr);
        if (this.f50340c) {
            int i16 = this.f48323a;
            c9444sc = new C9444sc(i16, new C8944pc(i16, i10, str, str2, a12), this.f50349l);
            c9444sc.f52394d = i10;
        } else {
            c9444sc = new C9444sc(this.f48323a, a12, this.f50349l);
        }
        c9444sc.f52393c = this.f50341d;
        return c9444sc;
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        b();
        C9444sc.d(this.f50341d, str);
        return new C7610hc(super.a(str, z10));
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        b();
        int i11 = i10 >>> 24;
        if (i11 != 0 && i11 != 17 && i11 != 16) {
            throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference sort 0x", Integer.toHexString(i11)));
        }
        a(i10);
        C9444sc.d(this.f50341d, str);
        return new C7610hc(super.a(i10, c9666tu0, str, z10));
    }

    @Override
    public final void a(K4 k42) {
        b();
        C4971Cd c4971Cd = this.f48324b;
        if (c4971Cd != null) {
            c4971Cd.a(k42);
        }
    }

    @Override
    public final void a() {
        b();
        this.f50348k = true;
    }

    public static void a(int i10, int i11) {
        if (((~i11) & i10) == 0) {
            if (Integer.bitCount(i10 & 7) <= 1) {
                if (Integer.bitCount(i10 & BluetoothClass.Device.AUDIO_VIDEO_MICROPHONE) > 1) {
                    throw new IllegalArgumentException(T60.a(i10, "final and abstract are mutually exclusive: "));
                }
                return;
            }
            throw new IllegalArgumentException(T60.a(i10, "public, protected and private are mutually exclusive: "));
        }
        throw new IllegalArgumentException(T60.a(i10, "Invalid access flags: "));
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x004f, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00aa, code lost:
    
        r8 = r8 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(int i10, String str) {
        int i11;
        int i12;
        int c10 = c(a(str, 'L', i10), str);
        while (true) {
            if ((c10 < str.length() ? str.charAt(c10) : (char) 0) != '/') {
                break;
            }
            c10 = c(c10 + 1, str);
        }
        if ((c10 < str.length() ? str.charAt(c10) : (char) 0) == '<') {
            int a10 = a(str, '<', c10);
            char e10 = e(a10, str);
            if (e10 != '*') {
                if (e10 == '+' || e10 == '-') {
                    a10++;
                }
                i12 = b(a10, str);
                while (true) {
                    if ((i12 < str.length() ? str.charAt(i12) : (char) 0) == '>') {
                        break;
                    }
                    char e11 = e(i12, str);
                    if (e11 != '*') {
                        if (e11 == '+' || e11 == '-') {
                            i12++;
                        }
                        i12 = b(i12, str);
                    }
                }
                c10 = i12 + 1;
            }
            i12++;
        }
        while (true) {
            if ((c10 < str.length() ? str.charAt(c10) : (char) 0) == '.') {
                c10 = c(c10 + 1, str);
                if ((c10 < str.length() ? str.charAt(c10) : (char) 0) == '<') {
                    int a11 = a(str, '<', c10);
                    char e12 = e(a11, str);
                    if (e12 != '*') {
                        if (e12 == '+' || e12 == '-') {
                            a11++;
                        }
                        i11 = b(a11, str);
                        while (true) {
                            if ((i11 < str.length() ? str.charAt(i11) : (char) 0) == '>') {
                                c10 = i11 + 1;
                                break;
                            }
                            char e13 = e(i11, str);
                            if (e13 != '*') {
                                if (e13 == '+' || e13 == '-') {
                                    i11++;
                                }
                                i11 = b(i11, str);
                            }
                        }
                    }
                    i11++;
                }
            } else {
                return a(str, ';', c10);
            }
        }
    }

    public static int a(String str, char c10, int i10) {
        if (e(i10, str) == c10) {
            return i10 + 1;
        }
        throw new IllegalArgumentException(str + ": '" + c10 + "' expected at index " + i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(int i10) {
        int i11;
        int i12 = i10 >>> 24;
        if (i12 != 0 && i12 != 1) {
            switch (i12) {
                case 16:
                case 17:
                case 18:
                case 23:
                    i11 = -256;
                    break;
                case 19:
                case 20:
                case 21:
                    i11 = -16777216;
                    break;
                case 22:
                    break;
                default:
                    switch (i12) {
                        case 64:
                        case 65:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            break;
                        case 66:
                            break;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            i11 = -16776961;
                            break;
                        default:
                            i11 = 0;
                            break;
                    }
            }
            if (i11 != 0 || ((~i11) & i10) != 0) {
                throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference 0x", Integer.toHexString(i10)));
            }
            return;
        }
        i11 = -65536;
        if (i11 != 0) {
        }
        throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference 0x", Integer.toHexString(i10)));
    }
}
