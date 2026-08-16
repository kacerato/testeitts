package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class C9444sc extends DX {

    public static final int[] f52392q = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 0, 0, 0, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 0, 0, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 6, 6, 6, 6, 0, 4, 2, 4, 1, 1, 4, 4, 1, 1, 0, 0, 7, 7};

    public int f52393c;

    public int f52394d;

    public int f52395e;

    public int f52396f;

    public boolean f52397g;

    public boolean f52398h;

    public boolean f52399i;

    public int f52400j;

    public final HashMap f52401k;

    public final HashSet f52402l;

    public int f52403m;

    public int f52404n;

    public int f52405o;

    public final ArrayList f52406p;

    public C9444sc(int i10, DX dx, HashMap hashMap) {
        super(i10, dx);
        this.f52403m = -1;
        this.f52401k = hashMap;
        this.f52402l = new HashSet();
        this.f52406p = new ArrayList();
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        e();
        d(this.f52393c, str);
        return new C7610hc(super.a(str, z10));
    }

    @Override
    public final void b(int i10, String str) {
        if (str != null) {
            a(this.f52393c, str, 0, -1, "name");
        }
        AbstractC8443mc.a(i10, 36880);
        super.b(i10, str);
    }

    @Override
    public final Q2 c(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        e();
        int i11 = i10 >>> 24;
        if (i11 != 1 && i11 != 18 && i11 != 20 && i11 != 21 && i11 != 22 && i11 != 23) {
            throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference sort 0x", Integer.toHexString(i11)));
        }
        AbstractC8443mc.a(i10);
        d(this.f52393c, str);
        return new C7610hc(super.c(i10, c9666tu0, str, z10));
    }

    @Override
    public final void d(int i10, int i11) {
        d();
        f();
        e(i10, 3);
        f(i11, "Invalid local variable index");
        DX dx = this.f39547b;
        if (dx != null) {
            dx.d(i10, i11);
        }
        this.f52400j++;
    }

    public final void e() {
        if (this.f52399i) {
            throw new IllegalStateException("Cannot visit elements after visitEnd has been called.");
        }
    }

    public final void f() {
        if (this.f52398h) {
            throw new IllegalStateException("Cannot visit instructions after visitMaxs has been called.");
        }
    }

    public static void e(int i10, int i11) {
        String str;
        if (i10 >= 0 && i10 <= 199) {
            if (f52392q[i10] == i11) {
                return;
            }
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Invalid combination of opcode and method: ", ", ");
            switch (i11) {
                case 1:
                    str = "VISIT_INSN";
                    break;
                case 2:
                    str = "VISIT_INT_INSN";
                    break;
                case 3:
                    str = "VISIT_VAR_INSN";
                    break;
                case 4:
                    str = "VISIT_TYPE_INSN";
                    break;
                case 5:
                    str = "VISIT_FIELD_INSN";
                    break;
                case 6:
                    str = "VISIT_METHOD_INSN";
                    break;
                case 7:
                    str = "VISIT_JUMP_INSN";
                    break;
                default:
                    str = "null";
                    break;
            }
            a10.append(str);
            throw new IllegalArgumentException(a10.toString());
        }
        throw new IllegalArgumentException(T60.a(i10, "Invalid opcode: "));
    }

    public static void f(int i10, String str) {
        if (i10 < 0 || i10 > 65535) {
            throw new IllegalArgumentException(str + " (must be an unsigned short): " + i10);
        }
    }

    @Override
    public final Q2 a() {
        e();
        return new C7610hc(super.a(), 0);
    }

    @Override
    public final void b() {
        if ((this.f52394d & 1024) == 0) {
            this.f52397g = true;
            super.b();
            return;
        }
        throw new UnsupportedOperationException("Abstract methods cannot have code");
    }

    @Override
    public final void a(int i10, boolean z10) {
        e();
        if (z10) {
            this.f52395e = i10;
        } else {
            this.f52396f = i10;
        }
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, z10);
        }
    }

    public final void d() {
        if (!this.f52397g) {
            throw new IllegalStateException("Cannot visit instructions before visitCode has been called.");
        }
    }

    @Override
    public final void b(int i10, int i11) {
        d();
        f();
        e(i10, 2);
        if (i10 != 16) {
            if (i10 != 17) {
                if (i10 != 188) {
                    throw new AssertionError();
                }
                if (i11 < 4 || i11 > 11) {
                    throw new IllegalArgumentException(T60.a(i11, "Invalid operand (must be an array type code T_...): "));
                }
            } else if (i11 < -32768 || i11 > 32767) {
                throw new IllegalArgumentException(T60.a(i11, "Invalid operand (must be a signed short): "));
            }
        } else if (i11 < -128 || i11 > 127) {
            throw new IllegalArgumentException(T60.a(i11, "Invalid operand (must be a signed byte): "));
        }
        DX dx = this.f39547b;
        if (dx != null) {
            dx.b(i10, i11);
        }
        this.f52400j++;
    }

    @Override
    public final void c(int i10, String str) {
        d();
        f();
        e(i10, 4);
        b(this.f52393c, str, "type");
        if (i10 == 187 && str.charAt(0) == '[') {
            throw new IllegalArgumentException("NEW cannot be used to create arrays: ".concat(str));
        }
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c(i10, str);
        }
        this.f52400j++;
    }

    public static void d(int i10, String str) {
        if (a(i10, str, 0, false) != str.length()) {
            throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
        }
    }

    public static void e(int i10, String str) {
        int i11;
        if (str != null && str.length() != 0) {
            if (str.charAt(0) == '(' && str.length() >= 3) {
                if (str.charAt(1) != ')') {
                    i11 = 1;
                    while (str.charAt(i11) != 'V') {
                        i11 = a(i10, str, i11, false);
                        if (i11 < str.length() && str.charAt(i11) != ')') {
                        }
                    }
                    throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
                }
                i11 = 1;
                if (a(i10, str, i11 + 1, true) != str.length()) {
                    throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
                }
                return;
            }
            throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
        }
        throw new IllegalArgumentException("Invalid method descriptor (must not be null or empty)");
    }

    @Override
    public final Q2 a(int i10, String str, boolean z10) {
        int i11;
        int i12;
        e();
        if ((z10 && (i12 = this.f52395e) > 0 && i10 >= i12) || (!z10 && (i11 = this.f52396f) > 0 && i10 >= i11)) {
            throw new IllegalArgumentException("Invalid parameter index");
        }
        d(this.f52393c, str);
        return new C7610hc(super.a(i10, str, z10));
    }

    @Override
    public final void a(K4 k42) {
        e();
        if (k42 != null) {
            super.a(k42);
            return;
        }
        throw new IllegalArgumentException("Invalid attribute (must not be null)");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        int i13;
        int i14;
        int i15 = this.f52400j;
        if (i15 != this.f52403m) {
            this.f52403m = i15;
            if (i10 != -1 && i10 != 0) {
                i13 = 3;
                if (i10 == 1 || i10 == 2) {
                    i14 = 0;
                } else if (i10 == 3) {
                    i13 = 0;
                } else {
                    if (i10 != 4) {
                        throw new IllegalArgumentException(T60.a(i10, "Invalid frame type "));
                    }
                    i13 = 0;
                    i14 = 1;
                }
                if (i11 <= i13) {
                    throw new IllegalArgumentException("Invalid numLocal=" + i11 + " for frame type " + i10);
                }
                if (i12 <= i14) {
                    if (i10 != 2) {
                        if (i11 > 0 && (objArr == null || objArr.length < i11)) {
                            throw new IllegalArgumentException("Array local[] is shorter than numLocal");
                        }
                        for (int i16 = 0; i16 < i11; i16++) {
                            b(objArr[i16]);
                        }
                    }
                    if (i12 > 0 && (objArr2 == null || objArr2.length < i12)) {
                        throw new IllegalArgumentException("Array stack[] is shorter than numStack");
                    }
                    for (int i17 = 0; i17 < i12; i17++) {
                        b(objArr2[i17]);
                    }
                    if (i10 == -1) {
                        this.f52404n++;
                    } else {
                        this.f52405o++;
                    }
                    if (this.f52404n > 0 && this.f52405o > 0) {
                        throw new IllegalArgumentException("Expanded and compressed frames must not be mixed.");
                    }
                    super.a(i10, i11, objArr, i12, objArr2);
                    return;
                }
                throw new IllegalArgumentException("Invalid numStack=" + i12 + " for frame type " + i10);
            }
            i13 = Integer.MAX_VALUE;
            i14 = i13;
            if (i11 <= i13) {
            }
        } else {
            throw new IllegalStateException("At most one frame can be visited at a given code location.");
        }
    }

    @Override
    public final void c(int i10, int i11) {
        d();
        f();
        this.f52398h = true;
        Iterator it = this.f52402l.iterator();
        while (it.hasNext()) {
            if (this.f52401k.get((XQ) it.next()) == null) {
                throw new IllegalStateException("Undefined label used");
            }
        }
        for (int i12 = 0; i12 < this.f52406p.size(); i12 += 2) {
            if (((Integer) this.f52401k.get(this.f52406p.get(i12 + 1))).intValue() <= ((Integer) this.f52401k.get(this.f52406p.get(i12))).intValue()) {
                throw new IllegalStateException("Empty try catch block handler range");
            }
        }
        f(i10, "Invalid max stack");
        f(i11, "Invalid max locals");
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c(i10, i11);
        }
    }

    @Override
    public final Q2 b(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        d();
        f();
        int i11 = i10 >>> 24;
        if (i11 == 66) {
            AbstractC8443mc.a(i10);
            d(this.f52393c, str);
            return new C7610hc(super.b(i10, c9666tu0, str, z10));
        }
        throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference sort 0x", Integer.toHexString(i11)));
    }

    @Override
    public final void b(int i10, XQ xq) {
        d();
        f();
        f(i10, "Invalid line number");
        a(xq, true, "start label");
        super.b(i10, xq);
    }

    @Override
    public final void c() {
        e();
        this.f52399i = true;
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c();
        }
    }

    public final void b(Object obj) {
        if (obj == 0 || obj == 1 || obj == 2 || obj == 4 || obj == 3 || obj == 5 || obj == 6) {
            return;
        }
        if (obj instanceof String) {
            b(this.f52393c, (String) obj, "Invalid stack frame value");
        } else if (obj instanceof XQ) {
            a((XQ) obj, false, "label");
        } else {
            throw new IllegalArgumentException("Invalid stack frame value: " + obj);
        }
    }

    public final void c(Object obj) {
        if (obj instanceof C9663tt0) {
            int c10 = ((C9663tt0) obj).c();
            if (c10 != 10 && c10 != 9 && c10 != 11) {
                throw new IllegalArgumentException("Illegal LDC constant value");
            }
            if (c10 != 11 && (this.f52393c & 65535) < 49) {
                throw new IllegalArgumentException("ldc of a constant class requires at least version 1.5");
            }
            if (c10 == 11 && (this.f52393c & 65535) < 51) {
                throw new IllegalArgumentException("ldc of a method type requires at least version 1.7");
            }
            return;
        }
        if (obj instanceof C5829Qz) {
            int i10 = this.f52393c;
            if ((65535 & i10) >= 51) {
                C5829Qz c5829Qz = (C5829Qz) obj;
                int i11 = c5829Qz.f43768a;
                if (i11 >= 1 && i11 <= 9) {
                    b(i10, c5829Qz.f43769b, "handle owner");
                    if (i11 <= 4) {
                        d(this.f52393c, c5829Qz.f43771d);
                    } else {
                        e(this.f52393c, c5829Qz.f43771d);
                    }
                    String str = c5829Qz.f43770c;
                    if (ConstantDescs.INIT_NAME.equals(str) && i11 == 8) {
                        return;
                    }
                    c(this.f52393c, str, "handle name");
                    return;
                }
                throw new IllegalArgumentException(T60.a(i11, "invalid handle tag "));
            }
            throw new IllegalArgumentException("ldc of a Handle requires at least version 1.7");
        }
        if (obj instanceof C10127wh) {
            int i12 = this.f52393c;
            if ((i12 & 65535) >= 55) {
                C10127wh c10127wh = (C10127wh) obj;
                c(i12, c10127wh.f53557a, "constant dynamic name");
                d(this.f52393c, c10127wh.f53558b);
                c(c10127wh.f53559c);
                int length = c10127wh.f53560d.length;
                for (int i13 = 0; i13 < length; i13++) {
                    c(c10127wh.f53560d[i13]);
                }
                return;
            }
            throw new IllegalArgumentException("ldc of a ConstantDynamic requires at least version 11");
        }
        if ((obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String)) {
            return;
        }
        throw new IllegalArgumentException("Invalid constant: " + obj);
    }

    @Override
    public final void a(int i10) {
        d();
        f();
        e(i10, 1);
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10);
        }
        this.f52400j++;
    }

    public static void b(int i10, String str, String str2) {
        if (str != null && str.length() != 0) {
            if (str.charAt(0) == '[') {
                d(i10, str);
                return;
            } else {
                a(i10, str, str2);
                return;
            }
        }
        throw new IllegalArgumentException(AbstractC4917Be0.a("Invalid ", str2, " (must not be null or empty)"));
    }

    @Override
    public final void a(int i10, String str, String str2, String str3) {
        d();
        f();
        e(i10, 5);
        b(this.f52393c, str, "owner");
        a(this.f52393c, str2, 0, -1, "name");
        d(this.f52393c, str3);
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, str, str2, str3);
        }
        this.f52400j++;
    }

    @Override
    public final void a(int i10, String str, String str2, String str3, boolean z10) {
        if (this.f39546a < 327680 && (i10 & 256) == 0) {
            super.a(i10, str, str2, str3, z10);
            return;
        }
        int i11 = i10 & (-257);
        d();
        f();
        e(i11, 6);
        if (i11 != 183 || !ConstantDescs.INIT_NAME.equals(str2)) {
            c(this.f52393c, str2, "name");
        }
        b(this.f52393c, str, "owner");
        e(this.f52393c, str3);
        if (i11 == 182 && z10) {
            throw new IllegalArgumentException("INVOKEVIRTUAL can't be used with interfaces");
        }
        if (i11 == 185 && !z10) {
            throw new IllegalArgumentException("INVOKEINTERFACE can't be used with classes");
        }
        if (i11 == 183 && z10 && (this.f52393c & 65535) < 52) {
            throw new IllegalArgumentException("INVOKESPECIAL can't be used with interfaces prior to Java 8");
        }
        super.a(i10, str, str2, str3, z10);
        this.f52400j++;
    }

    @Override
    public final void a(String str, String str2, C5829Qz c5829Qz, Object... objArr) {
        d();
        f();
        c(this.f52393c, str, "name");
        e(this.f52393c, str2);
        int i10 = c5829Qz.f43768a;
        if (i10 != 6 && i10 != 8) {
            throw new IllegalArgumentException(T60.a(c5829Qz.f43768a, "invalid handle tag "));
        }
        for (Object obj : objArr) {
            c(obj);
        }
        super.a(str, str2, c5829Qz, objArr);
        this.f52400j++;
    }

    public static void c(int i10, String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(AbstractC4917Be0.a("Invalid ", str2, " (must not be null or empty)"));
        }
        int i11 = 0;
        if ((i10 & 65535) >= 49) {
            while (i11 < str.length()) {
                if (".;[/<>".indexOf(str.codePointAt(i11)) == -1) {
                    i11 = str.offsetByCodePoints(i11, 1);
                } else {
                    throw new IllegalArgumentException("Invalid " + str2 + " (must be a valid unqualified name): " + str);
                }
            }
            return;
        }
        while (i11 < str.length()) {
            if (i11 == 0) {
                if (Character.isJavaIdentifierStart(str.codePointAt(i11))) {
                    i11 = str.offsetByCodePoints(i11, 1);
                } else {
                    throw new IllegalArgumentException("Invalid " + str2 + " (must be a '<init>', '<clinit>' or a valid Java identifier): " + str);
                }
            } else if (Character.isJavaIdentifierPart(str.codePointAt(i11))) {
                i11 = str.offsetByCodePoints(i11, 1);
            } else {
                throw new IllegalArgumentException("Invalid " + str2 + " (must be a '<init>', '<clinit>' or a valid Java identifier): " + str);
            }
        }
    }

    @Override
    public final void a(int i10, XQ xq) {
        d();
        f();
        e(i10, 7);
        a(xq, false, "label");
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, xq);
        }
        this.f52400j++;
    }

    @Override
    public final void a(XQ xq) {
        d();
        f();
        a(xq, false, "label");
        if (this.f52401k.get(xq) == null) {
            this.f52401k.put(xq, Integer.valueOf(this.f52400j));
            DX dx = this.f39547b;
            if (dx != null) {
                dx.a(xq);
                return;
            }
            return;
        }
        throw new IllegalStateException("Already visited label");
    }

    @Override
    public final void a(Object obj) {
        d();
        f();
        c(obj);
        super.a(obj);
        this.f52400j++;
    }

    @Override
    public final void a(int i10, int i11) {
        d();
        f();
        f(i10, "Invalid local variable index");
        if (i11 >= -32768 && i11 <= 32767) {
            DX dx = this.f39547b;
            if (dx != null) {
                dx.a(i10, i11);
            }
            this.f52400j++;
            return;
        }
        throw new IllegalArgumentException(T60.a(i11, "Invalid increment (must be a signed short): "));
    }

    @Override
    public final void a(int i10, int i11, XQ xq, XQ... xqArr) {
        d();
        f();
        if (i11 >= i10) {
            a(xq, false, "default label");
            if (xqArr.length == (i11 - i10) + 1) {
                for (int i12 = 0; i12 < xqArr.length; i12++) {
                    a(xqArr[i12], false, "label at index " + i12);
                }
                DX dx = this.f39547b;
                if (dx != null) {
                    dx.a(i10, i11, xq, xqArr);
                }
                this.f52400j++;
                return;
            }
            throw new IllegalArgumentException("There must be max - min + 1 labels");
        }
        throw new IllegalArgumentException("Max = " + i11 + " must be greater than or equal to min = " + i10);
    }

    @Override
    public final void a(XQ xq, int[] iArr, XQ[] xqArr) {
        f();
        d();
        a(xq, false, "default label");
        if (iArr != null && iArr.length == xqArr.length) {
            for (int i10 = 0; i10 < xqArr.length; i10++) {
                a(xqArr[i10], false, "label at index " + i10);
            }
            DX dx = this.f39547b;
            if (dx != null) {
                dx.a(xq, iArr, xqArr);
            }
            this.f52400j++;
            return;
        }
        throw new IllegalArgumentException("There must be the same number of keys and labels");
    }

    @Override
    public final void a(int i10, String str) {
        d();
        f();
        d(this.f52393c, str);
        if (str.charAt(0) != '[') {
            throw new IllegalArgumentException("Invalid descriptor (must be an array type descriptor): ".concat(str));
        }
        if (i10 >= 1) {
            if (i10 <= str.lastIndexOf(91) + 1) {
                DX dx = this.f39547b;
                if (dx != null) {
                    dx.a(i10, str);
                }
                this.f52400j++;
                return;
            }
            throw new IllegalArgumentException(T60.a(i10, "Invalid dimensions (must not be greater than numDimensions(descriptor)): "));
        }
        throw new IllegalArgumentException(T60.a(i10, "Invalid dimensions (must be greater than 0): "));
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        d();
        f();
        int i11 = i10 >>> 24;
        if (i11 != 67 && i11 != 68 && i11 != 69 && i11 != 70 && i11 != 71 && i11 != 72 && i11 != 73 && i11 != 74 && i11 != 75) {
            throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference sort 0x", Integer.toHexString(i11)));
        }
        AbstractC8443mc.a(i10);
        d(this.f52393c, str);
        return new C7610hc(super.a(i10, c9666tu0, str, z10));
    }

    @Override
    public final void a(XQ xq, XQ xq2, XQ xq3, String str) {
        d();
        f();
        a(xq, false, "start label");
        a(xq2, false, "end label");
        a(xq3, false, "handler label");
        if (this.f52401k.get(xq) == null && this.f52401k.get(xq2) == null && this.f52401k.get(xq3) == null) {
            if (str != null) {
                b(this.f52393c, str, "type");
            }
            DX dx = this.f39547b;
            if (dx != null) {
                dx.a(xq, xq2, xq3, str);
            }
            this.f52406p.add(xq);
            this.f52406p.add(xq2);
            return;
        }
        throw new IllegalStateException("Try catch blocks must be visited before their labels");
    }

    @Override
    public final void a(String str, String str2, String str3, XQ xq, XQ xq2, int i10) {
        d();
        f();
        a(this.f52393c, str, 0, -1, "name");
        d(this.f52393c, str2);
        if (str3 != null) {
            AbstractC8443mc.d(str3);
        }
        a(xq, true, "start label");
        a(xq2, true, "end label");
        f(i10, "Invalid local variable index");
        if (((Integer) this.f52401k.get(xq2)).intValue() >= ((Integer) this.f52401k.get(xq)).intValue()) {
            DX dx = this.f39547b;
            if (dx != null) {
                dx.a(str, str2, str3, xq, xq2, i10);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid start and end labels (end must be greater than start)");
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, XQ[] xqArr, XQ[] xqArr2, int[] iArr, String str, boolean z10) {
        d();
        f();
        int i11 = i10 >>> 24;
        if (i11 != 64 && i11 != 65) {
            throw new IllegalArgumentException(AbstractC5091Ee0.a("Invalid type reference sort 0x", Integer.toHexString(i11)));
        }
        AbstractC8443mc.a(i10);
        d(this.f52393c, str);
        if (xqArr != null && xqArr2 != null && iArr != null && xqArr2.length == xqArr.length && iArr.length == xqArr.length) {
            for (int i12 = 0; i12 < xqArr.length; i12++) {
                a(xqArr[i12], true, "start label");
                a(xqArr2[i12], true, "end label");
                f(iArr[i12], "Invalid local variable index");
                if (((Integer) this.f52401k.get(xqArr2[i12])).intValue() < ((Integer) this.f52401k.get(xqArr[i12])).intValue()) {
                    throw new IllegalArgumentException("Invalid start and end labels (end must be greater than start)");
                }
            }
            return super.a(i10, c9666tu0, xqArr, xqArr2, iArr, str, z10);
        }
        throw new IllegalArgumentException("Invalid start, end and index arrays (must be non null and of identical length");
    }

    public static void a(int i10, String str, int i11, int i12, String str2) {
        if (str == null || (i12 != -1 ? i12 <= i11 : str.length() <= i11)) {
            throw new IllegalArgumentException(AbstractC4917Be0.a("Invalid ", str2, " (must not be null or empty)"));
        }
        if (i12 == -1) {
            i12 = str.length();
        }
        if ((i10 & 65535) >= 49) {
            while (i11 < i12) {
                if (".;[/".indexOf(str.codePointAt(i11)) == -1) {
                    i11 = str.offsetByCodePoints(i11, 1);
                } else {
                    throw new IllegalArgumentException("Invalid " + str2 + " (must not contain . ; [ or /): " + str);
                }
            }
            return;
        }
        int i13 = i11;
        while (i13 < i12) {
            if (i13 == i11) {
                if (Character.isJavaIdentifierStart(str.codePointAt(i13))) {
                    i13 = str.offsetByCodePoints(i13, 1);
                } else {
                    throw new IllegalArgumentException("Invalid " + str2 + " (must be a valid Java identifier): " + str);
                }
            } else if (Character.isJavaIdentifierPart(str.codePointAt(i13))) {
                i13 = str.offsetByCodePoints(i13, 1);
            } else {
                throw new IllegalArgumentException("Invalid " + str2 + " (must be a valid Java identifier): " + str);
            }
        }
    }

    public static void a(int i10, String str, String str2) {
        int i11 = 0;
        while (true) {
            try {
                int indexOf = str.indexOf(47, i11 + 1);
                if (indexOf != -1) {
                    a(i10, str, i11, indexOf, (String) null);
                    i11 = indexOf + 1;
                } else {
                    a(i10, str, i11, str.length(), (String) null);
                    return;
                }
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid " + str2 + " (must be an internal class name): " + str, e10);
            }
        }
    }

    public static int a(int i10, String str, int i11, boolean z10) {
        if (str != null && i11 < str.length()) {
            char charAt = str.charAt(i11);
            if (charAt != 'F') {
                if (charAt == 'L') {
                    int indexOf = str.indexOf(59, i11);
                    if (i11 != -1 && indexOf - i11 >= 2) {
                        try {
                            a(i10, str.substring(i11 + 1, indexOf), (String) null);
                            return indexOf + 1;
                        } catch (IllegalArgumentException e10) {
                            throw new IllegalArgumentException("Invalid descriptor: ".concat(str), e10);
                        }
                    }
                    throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
                }
                if (charAt != 'S') {
                    if (charAt == 'V') {
                        if (z10) {
                            return i11 + 1;
                        }
                        throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
                    }
                    if (charAt != 'I' && charAt != 'J' && charAt != 'Z') {
                        if (charAt != '[') {
                            switch (charAt) {
                                case 'B':
                                case 'C':
                                case 'D':
                                    break;
                                default:
                                    throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
                            }
                        }
                        do {
                            i11++;
                            if (i11 >= str.length()) {
                                break;
                            }
                        } while (str.charAt(i11) == '[');
                        if (i11 < str.length()) {
                            return a(i10, str, i11, false);
                        }
                        throw new IllegalArgumentException("Invalid descriptor: ".concat(str));
                    }
                }
            }
            return i11 + 1;
        }
        throw new IllegalArgumentException("Invalid type descriptor (must not be null or empty)");
    }

    public final void a(XQ xq, boolean z10, String str) {
        if (xq != null) {
            if (z10 && this.f52401k.get(xq) == null) {
                throw new IllegalArgumentException(AbstractC4917Be0.a("Invalid ", str, " (must be visited first)"));
            }
            this.f52402l.add(xq);
            return;
        }
        throw new IllegalArgumentException(AbstractC4917Be0.a("Invalid ", str, " (must not be null)"));
    }
}
