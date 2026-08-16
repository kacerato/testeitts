package com.google.android.gms.internal.auth;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import sun.misc.Unsafe;

public final class C11941h2<T> implements InterfaceC11973p2<T> {

    public static final int[] f61755n = new int[0];

    public static final Unsafe f61756o = Q2.g();

    public final int[] f61757a;

    public final Object[] f61758b;

    public final int f61759c;

    public final int f61760d;

    public final InterfaceC11925d2 f61761e;

    public final int[] f61762f;

    public final int f61763g;

    public final int f61764h;

    public final R1 f61765i;

    public final F2 f61766j;

    public final AbstractC11983s1 f61767k;

    public final C11949j2 f61768l;

    public final Y1 f61769m;

    public C11941h2(int[] iArr, Object[] objArr, int i10, int i11, InterfaceC11925d2 interfaceC11925d2, int i12, boolean z10, int[] iArr2, int i13, int i14, C11949j2 c11949j2, R1 r12, F2 f22, AbstractC11983s1 abstractC11983s1, Y1 y12) {
        this.f61757a = iArr;
        this.f61758b = objArr;
        this.f61759c = i10;
        this.f61760d = i11;
        this.f61762f = iArr2;
        this.f61763g = i13;
        this.f61764h = i14;
        this.f61768l = c11949j2;
        this.f61765i = r12;
        this.f61766j = f22;
        this.f61767k = abstractC11983s1;
        this.f61761e = interfaceC11925d2;
        this.f61769m = y12;
    }

    public static Field D(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    public static void E(Object obj) {
        if (!n(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    public static boolean m(Object obj, int i10, InterfaceC11973p2 interfaceC11973p2) {
        return interfaceC11973p2.f(Q2.f(obj, i10 & 1048575));
    }

    public static boolean n(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof B1) {
            return ((B1) obj).l();
        }
        return true;
    }

    public static H2 q(Object obj) {
        B1 b12 = (B1) obj;
        H2 h22 = b12.zzc;
        if (h22 != H2.a()) {
            return h22;
        }
        H2 d10 = H2.d();
        b12.zzc = d10;
        return d10;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0256  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C11941h2 r(Class cls, InterfaceC11913a2 interfaceC11913a2, C11949j2 c11949j2, R1 r12, F2 f22, AbstractC11983s1 abstractC11983s1, Y1 y12) {
        int i10;
        int charAt;
        int charAt2;
        int i11;
        int[] iArr;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        char charAt3;
        int i17;
        char charAt4;
        int i18;
        char charAt5;
        int i19;
        char charAt6;
        int i20;
        char charAt7;
        int i21;
        char charAt8;
        int i22;
        char charAt9;
        int i23;
        char charAt10;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        String str;
        int i30;
        int i31;
        int i32;
        int i33;
        Field D10;
        char charAt11;
        int i34;
        int i35;
        Object obj;
        Field D11;
        Object obj2;
        Field D12;
        int i36;
        char charAt12;
        int i37;
        char charAt13;
        int i38;
        char charAt14;
        int i39;
        char charAt15;
        if (!(interfaceC11913a2 instanceof C11969o2)) {
            throw null;
        }
        C11969o2 c11969o2 = (C11969o2) interfaceC11913a2;
        String a10 = c11969o2.a();
        int length = a10.length();
        char c10 = '\ud800';
        if (a10.charAt(0) >= '\ud800') {
            int i40 = 1;
            while (true) {
                i10 = i40 + 1;
                if (a10.charAt(i40) < '\ud800') {
                    break;
                }
                i40 = i10;
            }
        } else {
            i10 = 1;
        }
        int i41 = i10 + 1;
        int charAt16 = a10.charAt(i10);
        if (charAt16 >= 55296) {
            int i42 = charAt16 & 8191;
            int i43 = 13;
            while (true) {
                i39 = i41 + 1;
                charAt15 = a10.charAt(i41);
                if (charAt15 < '\ud800') {
                    break;
                }
                i42 |= (charAt15 & '\u1fff') << i43;
                i43 += 13;
                i41 = i39;
            }
            charAt16 = i42 | (charAt15 << i43);
            i41 = i39;
        }
        if (charAt16 == 0) {
            charAt = 0;
            charAt2 = 0;
            i12 = 0;
            i15 = 0;
            i11 = 0;
            i13 = 0;
            iArr = f61755n;
            i14 = 0;
        } else {
            int i44 = i41 + 1;
            int charAt17 = a10.charAt(i41);
            if (charAt17 >= 55296) {
                int i45 = charAt17 & 8191;
                int i46 = 13;
                while (true) {
                    i23 = i44 + 1;
                    charAt10 = a10.charAt(i44);
                    if (charAt10 < '\ud800') {
                        break;
                    }
                    i45 |= (charAt10 & '\u1fff') << i46;
                    i46 += 13;
                    i44 = i23;
                }
                charAt17 = i45 | (charAt10 << i46);
                i44 = i23;
            }
            int i47 = i44 + 1;
            int charAt18 = a10.charAt(i44);
            if (charAt18 >= 55296) {
                int i48 = charAt18 & 8191;
                int i49 = 13;
                while (true) {
                    i22 = i47 + 1;
                    charAt9 = a10.charAt(i47);
                    if (charAt9 < '\ud800') {
                        break;
                    }
                    i48 |= (charAt9 & '\u1fff') << i49;
                    i49 += 13;
                    i47 = i22;
                }
                charAt18 = i48 | (charAt9 << i49);
                i47 = i22;
            }
            int i50 = i47 + 1;
            int charAt19 = a10.charAt(i47);
            if (charAt19 >= 55296) {
                int i51 = charAt19 & 8191;
                int i52 = 13;
                while (true) {
                    i21 = i50 + 1;
                    charAt8 = a10.charAt(i50);
                    if (charAt8 < '\ud800') {
                        break;
                    }
                    i51 |= (charAt8 & '\u1fff') << i52;
                    i52 += 13;
                    i50 = i21;
                }
                charAt19 = i51 | (charAt8 << i52);
                i50 = i21;
            }
            int i53 = i50 + 1;
            int charAt20 = a10.charAt(i50);
            if (charAt20 >= 55296) {
                int i54 = charAt20 & 8191;
                int i55 = 13;
                while (true) {
                    i20 = i53 + 1;
                    charAt7 = a10.charAt(i53);
                    if (charAt7 < '\ud800') {
                        break;
                    }
                    i54 |= (charAt7 & '\u1fff') << i55;
                    i55 += 13;
                    i53 = i20;
                }
                charAt20 = i54 | (charAt7 << i55);
                i53 = i20;
            }
            int i56 = i53 + 1;
            charAt = a10.charAt(i53);
            if (charAt >= 55296) {
                int i57 = charAt & 8191;
                int i58 = 13;
                while (true) {
                    i19 = i56 + 1;
                    charAt6 = a10.charAt(i56);
                    if (charAt6 < '\ud800') {
                        break;
                    }
                    i57 |= (charAt6 & '\u1fff') << i58;
                    i58 += 13;
                    i56 = i19;
                }
                charAt = i57 | (charAt6 << i58);
                i56 = i19;
            }
            int i59 = i56 + 1;
            charAt2 = a10.charAt(i56);
            if (charAt2 >= 55296) {
                int i60 = charAt2 & 8191;
                int i61 = 13;
                while (true) {
                    i18 = i59 + 1;
                    charAt5 = a10.charAt(i59);
                    if (charAt5 < '\ud800') {
                        break;
                    }
                    i60 |= (charAt5 & '\u1fff') << i61;
                    i61 += 13;
                    i59 = i18;
                }
                charAt2 = i60 | (charAt5 << i61);
                i59 = i18;
            }
            int i62 = i59 + 1;
            int charAt21 = a10.charAt(i59);
            if (charAt21 >= 55296) {
                int i63 = charAt21 & 8191;
                int i64 = 13;
                while (true) {
                    i17 = i62 + 1;
                    charAt4 = a10.charAt(i62);
                    if (charAt4 < '\ud800') {
                        break;
                    }
                    i63 |= (charAt4 & '\u1fff') << i64;
                    i64 += 13;
                    i62 = i17;
                }
                charAt21 = i63 | (charAt4 << i64);
                i62 = i17;
            }
            int i65 = i62 + 1;
            int charAt22 = a10.charAt(i62);
            if (charAt22 >= 55296) {
                int i66 = charAt22 & 8191;
                int i67 = 13;
                while (true) {
                    i16 = i65 + 1;
                    charAt3 = a10.charAt(i65);
                    if (charAt3 < '\ud800') {
                        break;
                    }
                    i66 |= (charAt3 & '\u1fff') << i67;
                    i67 += 13;
                    i65 = i16;
                }
                charAt22 = i66 | (charAt3 << i67);
                i65 = i16;
            }
            i11 = charAt17 + charAt17 + charAt18;
            iArr = new int[charAt22 + charAt2 + charAt21];
            i12 = charAt19;
            i13 = charAt22;
            i14 = charAt17;
            i15 = charAt20;
            i41 = i65;
        }
        Unsafe unsafe = f61756o;
        Object[] b10 = c11969o2.b();
        Class<?> cls2 = c11969o2.N1().getClass();
        int i68 = i13 + charAt2;
        int i69 = charAt + charAt;
        int[] iArr2 = new int[charAt * 3];
        Object[] objArr = new Object[i69];
        int i70 = 0;
        int i71 = 0;
        int i72 = i13;
        int i73 = i68;
        while (i41 < length) {
            int i74 = i41 + 1;
            int charAt23 = a10.charAt(i41);
            if (charAt23 >= c10) {
                int i75 = charAt23 & 8191;
                int i76 = i74;
                int i77 = 13;
                while (true) {
                    i38 = i76 + 1;
                    charAt14 = a10.charAt(i76);
                    if (charAt14 < c10) {
                        break;
                    }
                    i75 |= (charAt14 & '\u1fff') << i77;
                    i77 += 13;
                    i76 = i38;
                }
                charAt23 = i75 | (charAt14 << i77);
                i24 = i38;
            } else {
                i24 = i74;
            }
            int i78 = i24 + 1;
            int charAt24 = a10.charAt(i24);
            if (charAt24 >= c10) {
                int i79 = charAt24 & 8191;
                int i80 = i78;
                int i81 = 13;
                while (true) {
                    i37 = i80 + 1;
                    charAt13 = a10.charAt(i80);
                    if (charAt13 < c10) {
                        break;
                    }
                    i79 |= (charAt13 & '\u1fff') << i81;
                    i81 += 13;
                    i80 = i37;
                }
                charAt24 = i79 | (charAt13 << i81);
                i25 = i37;
            } else {
                i25 = i78;
            }
            if ((charAt24 & 1024) != 0) {
                iArr[i70] = i71;
                i70++;
            }
            int i82 = charAt24 & 255;
            if (i82 >= 51) {
                int i83 = i25 + 1;
                int charAt25 = a10.charAt(i25);
                i26 = length;
                char c11 = '\ud800';
                if (charAt25 >= 55296) {
                    int i84 = charAt25 & 8191;
                    int i85 = 13;
                    while (true) {
                        i36 = i83 + 1;
                        charAt12 = a10.charAt(i83);
                        if (charAt12 < c11) {
                            break;
                        }
                        i84 |= (charAt12 & '\u1fff') << i85;
                        i85 += 13;
                        i83 = i36;
                        c11 = '\ud800';
                    }
                    charAt25 = i84 | (charAt12 << i85);
                    i83 = i36;
                }
                int i86 = i82 - 51;
                int i87 = i83;
                if (i86 == 9 || i86 == 17) {
                    int i88 = i71 / 3;
                    i35 = i11 + 1;
                    objArr[i88 + i88 + 1] = b10[i11];
                } else {
                    if (i86 == 12 && (c11969o2.P1() == 1 || (charAt24 & 2048) != 0)) {
                        int i89 = i71 / 3;
                        i35 = i11 + 1;
                        objArr[i89 + i89 + 1] = b10[i11];
                    }
                    int i90 = charAt25 + charAt25;
                    obj = b10[i90];
                    if (obj instanceof Field) {
                        D11 = D(cls2, (String) obj);
                        b10[i90] = D11;
                    } else {
                        D11 = (Field) obj;
                    }
                    int i91 = i12;
                    i27 = i15;
                    i33 = (int) unsafe.objectFieldOffset(D11);
                    int i92 = i90 + 1;
                    obj2 = b10[i92];
                    if (obj2 instanceof Field) {
                        D12 = D(cls2, (String) obj2);
                        b10[i92] = D12;
                    } else {
                        D12 = (Field) obj2;
                    }
                    str = a10;
                    i28 = i91;
                    i30 = i11;
                    i31 = i87;
                    i29 = (int) unsafe.objectFieldOffset(D12);
                    i32 = 0;
                }
                i11 = i35;
                int i902 = charAt25 + charAt25;
                obj = b10[i902];
                if (obj instanceof Field) {
                }
                int i912 = i12;
                i27 = i15;
                i33 = (int) unsafe.objectFieldOffset(D11);
                int i922 = i902 + 1;
                obj2 = b10[i922];
                if (obj2 instanceof Field) {
                }
                str = a10;
                i28 = i912;
                i30 = i11;
                i31 = i87;
                i29 = (int) unsafe.objectFieldOffset(D12);
                i32 = 0;
            } else {
                i26 = length;
                int i93 = i12;
                i27 = i15;
                int i94 = i11 + 1;
                Field D13 = D(cls2, (String) b10[i11]);
                if (i82 == 9 || i82 == 17) {
                    i28 = i93;
                    int i95 = i71 / 3;
                    objArr[i95 + i95 + 1] = D13.getType();
                } else {
                    if (i82 == 27 || i82 == 49) {
                        i28 = i93;
                        int i96 = i71 / 3;
                        i34 = i11 + 2;
                        objArr[i96 + i96 + 1] = b10[i94];
                    } else if (i82 == 12 || i82 == 30 || i82 == 44) {
                        i28 = i93;
                        if (c11969o2.P1() == 1 || (charAt24 & 2048) != 0) {
                            int i97 = i71 / 3;
                            i34 = i11 + 2;
                            objArr[i97 + i97 + 1] = b10[i94];
                        }
                    } else {
                        if (i82 == 50) {
                            int i98 = i72 + 1;
                            iArr[i72] = i71;
                            int i99 = i71 / 3;
                            int i100 = i11 + 2;
                            int i101 = i99 + i99;
                            objArr[i101] = b10[i94];
                            if ((charAt24 & 2048) != 0) {
                                i94 = i11 + 3;
                                objArr[i101 + 1] = b10[i100];
                                i28 = i93;
                                i72 = i98;
                            } else {
                                i72 = i98;
                                i94 = i100;
                            }
                        }
                        i28 = i93;
                    }
                    i94 = i34;
                }
                int objectFieldOffset = (int) unsafe.objectFieldOffset(D13);
                i29 = 1048575;
                if ((charAt24 & 4096) == 0 || i82 > 17) {
                    str = a10;
                    i30 = i94;
                    i31 = i25;
                    i32 = 0;
                } else {
                    int i102 = i25 + 1;
                    int charAt26 = a10.charAt(i25);
                    if (charAt26 >= 55296) {
                        int i103 = charAt26 & 8191;
                        int i104 = 13;
                        while (true) {
                            i31 = i102 + 1;
                            charAt11 = a10.charAt(i102);
                            if (charAt11 < '\ud800') {
                                break;
                            }
                            i103 |= (charAt11 & '\u1fff') << i104;
                            i104 += 13;
                            i102 = i31;
                        }
                        charAt26 = i103 | (charAt11 << i104);
                    } else {
                        i31 = i102;
                    }
                    int i105 = i14 + i14 + (charAt26 / 32);
                    Object obj3 = b10[i105];
                    str = a10;
                    if (obj3 instanceof Field) {
                        D10 = (Field) obj3;
                    } else {
                        D10 = D(cls2, (String) obj3);
                        b10[i105] = D10;
                    }
                    i30 = i94;
                    i32 = charAt26 % 32;
                    i29 = (int) unsafe.objectFieldOffset(D10);
                }
                if (i82 >= 18 && i82 <= 49) {
                    iArr[i73] = objectFieldOffset;
                    i73++;
                }
                i33 = objectFieldOffset;
            }
            int i106 = i71 + 1;
            iArr2[i71] = charAt23;
            int i107 = i71 + 2;
            iArr2[i106] = i33 | ((charAt24 & 2048) != 0 ? Integer.MIN_VALUE : 0) | ((charAt24 & 512) != 0 ? 536870912 : 0) | ((charAt24 & 256) != 0 ? 268435456 : 0) | (i82 << 20);
            i71 += 3;
            iArr2[i107] = (i32 << 20) | i29;
            i11 = i30;
            i41 = i31;
            length = i26;
            i12 = i28;
            a10 = str;
            i15 = i27;
            c10 = '\ud800';
        }
        return new C11941h2(iArr2, objArr, i12, i15, c11969o2.N1(), c11969o2.P1(), false, iArr, i13, i68, c11949j2, r12, f22, abstractC11983s1, y12);
    }

    public static int s(Object obj, long j10) {
        return ((Integer) Q2.f(obj, j10)).intValue();
    }

    public static int v(int i10) {
        return (i10 >>> 20) & 255;
    }

    public static long x(Object obj, long j10) {
        return ((Long) Q2.f(obj, j10)).longValue();
    }

    public final Object A(int i10) {
        int i11 = i10 / 3;
        return this.f61758b[i11 + i11];
    }

    public final Object B(Object obj, int i10) {
        InterfaceC11973p2 z10 = z(i10);
        int w10 = w(i10) & 1048575;
        if (!k(obj, i10)) {
            return z10.Q1();
        }
        Object object = f61756o.getObject(obj, w10);
        if (n(object)) {
            return object;
        }
        Object Q12 = z10.Q1();
        if (object != null) {
            z10.e(Q12, object);
        }
        return Q12;
    }

    public final Object C(Object obj, int i10, int i11) {
        InterfaceC11973p2 z10 = z(i11);
        if (!o(obj, i10, i11)) {
            return z10.Q1();
        }
        Object object = f61756o.getObject(obj, w(i11) & 1048575);
        if (n(object)) {
            return object;
        }
        Object Q12 = z10.Q1();
        if (object != null) {
            z10.e(Q12, object);
        }
        return Q12;
    }

    public final void F(Object obj, Object obj2, int i10) {
        if (k(obj2, i10)) {
            int w10 = w(i10) & 1048575;
            Unsafe unsafe = f61756o;
            long j10 = w10;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f61757a[i10] + " is present but null: " + obj2.toString());
            }
            InterfaceC11973p2 z10 = z(i10);
            if (!k(obj, i10)) {
                if (n(object)) {
                    Object Q12 = z10.Q1();
                    z10.e(Q12, object);
                    unsafe.putObject(obj, j10, Q12);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                H(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!n(object2)) {
                Object Q13 = z10.Q1();
                z10.e(Q13, object2);
                unsafe.putObject(obj, j10, Q13);
                object2 = Q13;
            }
            z10.e(object2, object);
        }
    }

    public final void G(Object obj, Object obj2, int i10) {
        int i11 = this.f61757a[i10];
        if (o(obj2, i11, i10)) {
            int w10 = w(i10) & 1048575;
            Unsafe unsafe = f61756o;
            long j10 = w10;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f61757a[i10] + " is present but null: " + obj2.toString());
            }
            InterfaceC11973p2 z10 = z(i10);
            if (!o(obj, i11, i10)) {
                if (n(object)) {
                    Object Q12 = z10.Q1();
                    z10.e(Q12, object);
                    unsafe.putObject(obj, j10, Q12);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                g(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!n(object2)) {
                Object Q13 = z10.Q1();
                z10.e(Q13, object2);
                unsafe.putObject(obj, j10, Q13);
                object2 = Q13;
            }
            z10.e(object2, object);
        }
    }

    public final void H(Object obj, int i10) {
        int t10 = t(i10);
        long j10 = 1048575 & t10;
        if (j10 == 1048575) {
            return;
        }
        Q2.n(obj, j10, (1 << (t10 >>> 20)) | Q2.c(obj, j10));
    }

    @Override
    public final Object Q1() {
        return ((B1) this.f61761e).c();
    }

    @Override
    public final void a(Object obj) {
        if (n(obj)) {
            if (obj instanceof B1) {
                B1 b12 = (B1) obj;
                b12.k(Integer.MAX_VALUE);
                b12.zza = 0;
                b12.i();
            }
            int length = this.f61757a.length;
            for (int i10 = 0; i10 < length; i10 += 3) {
                int w10 = w(i10);
                int i11 = 1048575 & w10;
                int v10 = v(w10);
                long j10 = i11;
                if (v10 != 9) {
                    if (v10 != 60 && v10 != 68) {
                        switch (v10) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.f61765i.a(obj, j10);
                                break;
                            case 50:
                                Unsafe unsafe = f61756o;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((X1) object).j();
                                    unsafe.putObject(obj, j10, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (o(obj, this.f61757a[i10], i10)) {
                        z(i10).a(f61756o.getObject(obj, j10));
                    }
                }
                if (k(obj, i10)) {
                    z(i10).a(f61756o.getObject(obj, j10));
                }
            }
            this.f61766j.e(obj);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001c. Please report as an issue. */
    @Override
    public final int b(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int length = this.f61757a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int w10 = w(i12);
            int i13 = this.f61757a[i12];
            long j10 = 1048575 & w10;
            int i14 = 37;
            switch (v(w10)) {
                case 0:
                    i10 = i11 * 53;
                    doubleToLongBits = Double.doubleToLongBits(Q2.a(obj, j10));
                    byte[] bArr = H1.f61617d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 1:
                    i10 = i11 * 53;
                    floatToIntBits = Float.floatToIntBits(Q2.b(obj, j10));
                    i11 = i10 + floatToIntBits;
                    break;
                case 2:
                    i10 = i11 * 53;
                    doubleToLongBits = Q2.d(obj, j10);
                    byte[] bArr2 = H1.f61617d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 3:
                    i10 = i11 * 53;
                    doubleToLongBits = Q2.d(obj, j10);
                    byte[] bArr3 = H1.f61617d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 4:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 5:
                    i10 = i11 * 53;
                    doubleToLongBits = Q2.d(obj, j10);
                    byte[] bArr4 = H1.f61617d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 6:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 7:
                    i10 = i11 * 53;
                    floatToIntBits = H1.a(Q2.t(obj, j10));
                    i11 = i10 + floatToIntBits;
                    break;
                case 8:
                    i10 = i11 * 53;
                    floatToIntBits = ((String) Q2.f(obj, j10)).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 9:
                    Object f10 = Q2.f(obj, j10);
                    if (f10 != null) {
                        i14 = f10.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
                    break;
                case 10:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.f(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 11:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 12:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 13:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 14:
                    i10 = i11 * 53;
                    doubleToLongBits = Q2.d(obj, j10);
                    byte[] bArr5 = H1.f61617d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 15:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.c(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 16:
                    i10 = i11 * 53;
                    doubleToLongBits = Q2.d(obj, j10);
                    byte[] bArr6 = H1.f61617d;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 17:
                    Object f11 = Q2.f(obj, j10);
                    if (f11 != null) {
                        i14 = f11.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.f(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 50:
                    i10 = i11 * 53;
                    floatToIntBits = Q2.f(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 51:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = Double.doubleToLongBits(((Double) Q2.f(obj, j10)).doubleValue());
                        byte[] bArr7 = H1.f61617d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = Float.floatToIntBits(((Float) Q2.f(obj, j10)).floatValue());
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = x(obj, j10);
                        byte[] bArr8 = H1.f61617d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = x(obj, j10);
                        byte[] bArr9 = H1.f61617d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = s(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = x(obj, j10);
                        byte[] bArr10 = H1.f61617d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = s(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = H1.a(((Boolean) Q2.f(obj, j10)).booleanValue());
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = ((String) Q2.f(obj, j10)).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = Q2.f(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = Q2.f(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = s(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = s(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = s(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = x(obj, j10);
                        byte[] bArr11 = H1.f61617d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = s(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = x(obj, j10);
                        byte[] bArr12 = H1.f61617d;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (o(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = Q2.f(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
            }
        }
        return (i11 * 53) + this.f61766j.b(obj).hashCode();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c0 A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(Object obj, Object obj2) {
        int i10;
        boolean f10;
        int length = this.f61757a.length;
        for (0; i10 < length; i10 + 3) {
            int w10 = w(i10);
            long j10 = w10 & 1048575;
            switch (v(w10)) {
                case 0:
                    i10 = (j(obj, obj2, i10) && Double.doubleToLongBits(Q2.a(obj, j10)) == Double.doubleToLongBits(Q2.a(obj2, j10))) ? i10 + 3 : 0;
                    return false;
                case 1:
                    if (j(obj, obj2, i10) && Float.floatToIntBits(Q2.b(obj, j10)) == Float.floatToIntBits(Q2.b(obj2, j10))) {
                    }
                    return false;
                case 2:
                    if (j(obj, obj2, i10) && Q2.d(obj, j10) == Q2.d(obj2, j10)) {
                    }
                    return false;
                case 3:
                    if (j(obj, obj2, i10) && Q2.d(obj, j10) == Q2.d(obj2, j10)) {
                    }
                    return false;
                case 4:
                    if (j(obj, obj2, i10) && Q2.c(obj, j10) == Q2.c(obj2, j10)) {
                    }
                    return false;
                case 5:
                    if (j(obj, obj2, i10) && Q2.d(obj, j10) == Q2.d(obj2, j10)) {
                    }
                    return false;
                case 6:
                    if (j(obj, obj2, i10) && Q2.c(obj, j10) == Q2.c(obj2, j10)) {
                    }
                    return false;
                case 7:
                    if (j(obj, obj2, i10) && Q2.t(obj, j10) == Q2.t(obj2, j10)) {
                    }
                    return false;
                case 8:
                    if (j(obj, obj2, i10) && C11980r2.f(Q2.f(obj, j10), Q2.f(obj2, j10))) {
                    }
                    return false;
                case 9:
                    if (j(obj, obj2, i10) && C11980r2.f(Q2.f(obj, j10), Q2.f(obj2, j10))) {
                    }
                    return false;
                case 10:
                    if (j(obj, obj2, i10) && C11980r2.f(Q2.f(obj, j10), Q2.f(obj2, j10))) {
                    }
                    return false;
                case 11:
                    if (j(obj, obj2, i10) && Q2.c(obj, j10) == Q2.c(obj2, j10)) {
                    }
                    return false;
                case 12:
                    if (j(obj, obj2, i10) && Q2.c(obj, j10) == Q2.c(obj2, j10)) {
                    }
                    return false;
                case 13:
                    if (j(obj, obj2, i10) && Q2.c(obj, j10) == Q2.c(obj2, j10)) {
                    }
                    return false;
                case 14:
                    if (j(obj, obj2, i10) && Q2.d(obj, j10) == Q2.d(obj2, j10)) {
                    }
                    return false;
                case 15:
                    if (j(obj, obj2, i10) && Q2.c(obj, j10) == Q2.c(obj2, j10)) {
                    }
                    return false;
                case 16:
                    if (j(obj, obj2, i10) && Q2.d(obj, j10) == Q2.d(obj2, j10)) {
                    }
                    return false;
                case 17:
                    if (j(obj, obj2, i10) && C11980r2.f(Q2.f(obj, j10), Q2.f(obj2, j10))) {
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    f10 = C11980r2.f(Q2.f(obj, j10), Q2.f(obj2, j10));
                    if (f10) {
                        return false;
                    }
                case 50:
                    f10 = C11980r2.f(Q2.f(obj, j10), Q2.f(obj2, j10));
                    if (f10) {
                    }
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long t10 = t(i10) & 1048575;
                    if (Q2.c(obj, t10) == Q2.c(obj2, t10) && C11980r2.f(Q2.f(obj, j10), Q2.f(obj2, j10))) {
                    }
                    return false;
                default:
            }
        }
        return this.f61766j.b(obj).equals(this.f61766j.b(obj2));
    }

    @Override
    public final void d(Object obj, byte[] bArr, int i10, int i11, Y0 y02) throws IOException {
        p(obj, bArr, i10, i11, 0, y02);
    }

    @Override
    public final void e(Object obj, Object obj2) {
        E(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.f61757a.length; i10 += 3) {
            int w10 = w(i10);
            int i11 = this.f61757a[i10];
            long j10 = 1048575 & w10;
            switch (v(w10)) {
                case 0:
                    if (k(obj2, i10)) {
                        Q2.l(obj, j10, Q2.a(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (k(obj2, i10)) {
                        Q2.m(obj, j10, Q2.b(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (k(obj2, i10)) {
                        Q2.o(obj, j10, Q2.d(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (k(obj2, i10)) {
                        Q2.o(obj, j10, Q2.d(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (k(obj2, i10)) {
                        Q2.n(obj, j10, Q2.c(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (k(obj2, i10)) {
                        Q2.o(obj, j10, Q2.d(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (k(obj2, i10)) {
                        Q2.n(obj, j10, Q2.c(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (k(obj2, i10)) {
                        Q2.k(obj, j10, Q2.t(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (k(obj2, i10)) {
                        Q2.p(obj, j10, Q2.f(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    F(obj, obj2, i10);
                    break;
                case 10:
                    if (k(obj2, i10)) {
                        Q2.p(obj, j10, Q2.f(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (k(obj2, i10)) {
                        Q2.n(obj, j10, Q2.c(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (k(obj2, i10)) {
                        Q2.n(obj, j10, Q2.c(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (k(obj2, i10)) {
                        Q2.n(obj, j10, Q2.c(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (k(obj2, i10)) {
                        Q2.o(obj, j10, Q2.d(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (k(obj2, i10)) {
                        Q2.n(obj, j10, Q2.c(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (k(obj2, i10)) {
                        Q2.o(obj, j10, Q2.d(obj2, j10));
                        H(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    F(obj, obj2, i10);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f61765i.b(obj, obj2, j10);
                    break;
                case 50:
                    int i12 = C11980r2.f61833d;
                    Q2.p(obj, j10, Y1.a(Q2.f(obj, j10), Q2.f(obj2, j10)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (o(obj2, i11, i10)) {
                        Q2.p(obj, j10, Q2.f(obj2, j10));
                        g(obj, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    G(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (o(obj2, i11, i10)) {
                        Q2.p(obj, j10, Q2.f(obj2, j10));
                        g(obj, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    G(obj, obj2, i10);
                    break;
            }
        }
        C11980r2.d(this.f61766j, obj, obj2);
    }

    @Override
    public final boolean f(Object obj) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i13 < this.f61763g) {
            int i15 = this.f61762f[i13];
            int i16 = this.f61757a[i15];
            int w10 = w(i15);
            int i17 = this.f61757a[i15 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i14) {
                if (i18 != 1048575) {
                    i12 = f61756o.getInt(obj, i18);
                }
                i11 = i12;
                i10 = i18;
            } else {
                i10 = i14;
                i11 = i12;
            }
            if ((268435456 & w10) != 0 && !l(obj, i15, i10, i11, i19)) {
                return false;
            }
            int v10 = v(w10);
            if (v10 != 9 && v10 != 17) {
                if (v10 != 27) {
                    if (v10 == 60 || v10 == 68) {
                        if (o(obj, i16, i15) && !m(obj, w10, z(i15))) {
                            return false;
                        }
                    } else if (v10 != 49) {
                        if (v10 == 50 && !((X1) Q2.f(obj, w10 & 1048575)).isEmpty()) {
                            throw null;
                        }
                    }
                }
                List list = (List) Q2.f(obj, w10 & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    InterfaceC11973p2 z10 = z(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!z10.f(list.get(i20))) {
                            return false;
                        }
                    }
                }
            } else if (l(obj, i15, i10, i11, i19) && !m(obj, w10, z(i15))) {
                return false;
            }
            i13++;
            i14 = i10;
            i12 = i11;
        }
        return true;
    }

    public final void g(Object obj, int i10, int i11) {
        Q2.n(obj, t(i11) & 1048575, i10);
    }

    public final void h(Object obj, int i10, Object obj2) {
        f61756o.putObject(obj, w(i10) & 1048575, obj2);
        H(obj, i10);
    }

    public final void i(Object obj, int i10, int i11, Object obj2) {
        f61756o.putObject(obj, w(i11) & 1048575, obj2);
        g(obj, i10, i11);
    }

    public final boolean j(Object obj, Object obj2, int i10) {
        return k(obj, i10) == k(obj2, i10);
    }

    public final boolean k(Object obj, int i10) {
        int t10 = t(i10);
        long j10 = t10 & 1048575;
        if (j10 != 1048575) {
            return (Q2.c(obj, j10) & (1 << (t10 >>> 20))) != 0;
        }
        int w10 = w(i10);
        long j11 = w10 & 1048575;
        switch (v(w10)) {
            case 0:
                return Double.doubleToRawLongBits(Q2.a(obj, j11)) != 0;
            case 1:
                return Float.floatToRawIntBits(Q2.b(obj, j11)) != 0;
            case 2:
                return Q2.d(obj, j11) != 0;
            case 3:
                return Q2.d(obj, j11) != 0;
            case 4:
                return Q2.c(obj, j11) != 0;
            case 5:
                return Q2.d(obj, j11) != 0;
            case 6:
                return Q2.c(obj, j11) != 0;
            case 7:
                return Q2.t(obj, j11);
            case 8:
                Object f10 = Q2.f(obj, j11);
                if (f10 instanceof String) {
                    return !((String) f10).isEmpty();
                }
                if (f10 instanceof AbstractC11956l1) {
                    return !AbstractC11956l1.f61792c.equals(f10);
                }
                throw new IllegalArgumentException();
            case 9:
                return Q2.f(obj, j11) != null;
            case 10:
                return !AbstractC11956l1.f61792c.equals(Q2.f(obj, j11));
            case 11:
                return Q2.c(obj, j11) != 0;
            case 12:
                return Q2.c(obj, j11) != 0;
            case 13:
                return Q2.c(obj, j11) != 0;
            case 14:
                return Q2.d(obj, j11) != 0;
            case 15:
                return Q2.c(obj, j11) != 0;
            case 16:
                return Q2.d(obj, j11) != 0;
            case 17:
                return Q2.f(obj, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean l(Object obj, int i10, int i11, int i12, int i13) {
        return i11 == 1048575 ? k(obj, i10) : (i12 & i13) != 0;
    }

    public final boolean o(Object obj, int i10, int i11) {
        return Q2.c(obj, (long) (t(i11) & 1048575)) == i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0db4, code lost:
    
        if (r13 == r1) goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0db6, code lost:
    
        r19.putInt(r7, r13, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0dbc, code lost:
    
        r1 = r0.f61763g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0dc0, code lost:
    
        if (r1 >= r0.f61764h) goto L673;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0dc2, code lost:
    
        r2 = r0.f61762f[r1];
        r3 = r0.f61757a[r2];
        r3 = com.google.android.gms.internal.auth.Q2.f(r7, r0.w(r2) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0dd7, code lost:
    
        if (r3 != null) goto L566;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0dde, code lost:
    
        if (r0.y(r2) != null) goto L674;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0de3, code lost:
    
        r3 = (com.google.android.gms.internal.auth.X1) r3;
        r1 = (com.google.android.gms.internal.auth.W1) r0.A(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0deb, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0de0, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0dec, code lost:
    
        if (r9 != 0) goto L577;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0df0, code lost:
    
        if (r8 != r40) goto L575;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0df7, code lost:
    
        throw com.google.android.gms.internal.auth.zzfb.zzd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0dfe, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0dfa, code lost:
    
        if (r8 > r40) goto L581;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0dfc, code lost:
    
        if (r11 != r9) goto L581;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0e03, code lost:
    
        throw com.google.android.gms.internal.auth.zzfb.zzd();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:161:0x054e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0b0f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:536:0x00b5. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0a95  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0aa8  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0d64 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0d79 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:610:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:730:0x0059 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int p(Object obj, byte[] bArr, int i10, int i11, int i12, Y0 y02) throws IOException {
        Unsafe unsafe;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int u10;
        int i19;
        int i20;
        Y0 y03;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        Unsafe unsafe2;
        int i27;
        byte[] bArr2;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int k10;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        Object obj2;
        int i42;
        byte[] bArr3;
        Unsafe unsafe3;
        int i43;
        int i44;
        int i45;
        int i46;
        int i47;
        int i48;
        int f10;
        int i49;
        Object obj3;
        int i50;
        int j10;
        int i51;
        int i52;
        int i53;
        int i54;
        int i55;
        int i56;
        int i57;
        int i58;
        int k11;
        int i59;
        Unsafe unsafe4;
        int i60;
        C11941h2<T> c11941h2 = this;
        Object obj4 = obj;
        byte[] bArr4 = bArr;
        int i61 = i11;
        int i62 = i12;
        Y0 y04 = y02;
        E(obj);
        Unsafe unsafe5 = f61756o;
        int i63 = 0;
        int i64 = i10;
        int i65 = 0;
        int i66 = 0;
        int i67 = 0;
        int i68 = -1;
        int i69 = 1048575;
        while (true) {
            if (i64 < i61) {
                int i70 = i64 + 1;
                byte b10 = bArr4[i64];
                if (b10 < 0) {
                    i16 = Z0.i(b10, bArr4, i70, y04);
                    i15 = y04.f61684a;
                } else {
                    i15 = b10;
                    i16 = i70;
                }
                int i71 = i15 >>> 3;
                if (i71 > i68) {
                    u10 = (i71 < c11941h2.f61759c || i71 > c11941h2.f61760d) ? -1 : c11941h2.u(i71, i65 / 3);
                } else if (i71 < c11941h2.f61759c || i71 > c11941h2.f61760d) {
                    i17 = -1;
                    i18 = -1;
                    if (i18 != i17) {
                        i65 = i63;
                        i19 = i65;
                        unsafe = unsafe5;
                        i20 = i71;
                        i13 = i62;
                        y03 = y04;
                        i21 = i16;
                        i22 = i15;
                    } else {
                        int i72 = i15 & 7;
                        int[] iArr = c11941h2.f61757a;
                        int i73 = iArr[i18 + 1];
                        int v10 = v(i73);
                        int i74 = i71;
                        long j11 = i73 & 1048575;
                        int i75 = i16;
                        if (v10 <= 17) {
                            int i76 = iArr[i18 + 2];
                            int i77 = 1 << (i76 >>> 20);
                            int i78 = 1048575;
                            int i79 = i76 & 1048575;
                            int i80 = i18;
                            if (i79 != i69) {
                                if (i69 != 1048575) {
                                    unsafe5.putInt(obj4, i69, i67);
                                    i78 = 1048575;
                                }
                                i25 = i79;
                                i24 = i79 == i78 ? 0 : unsafe5.getInt(obj4, i79);
                            } else {
                                i24 = i67;
                                i25 = i69;
                            }
                            switch (v10) {
                                case 0:
                                    i28 = i11;
                                    i65 = i80;
                                    i26 = i75;
                                    i19 = 0;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    i29 = i12;
                                    if (i72 != 1) {
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        Q2.l(obj4, j11, Double.longBitsToDouble(Z0.n(bArr2, i26)));
                                        i64 = i26 + 8;
                                        i67 = i24 | i77;
                                        i62 = i29;
                                        i61 = i28;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i63 = i19;
                                        i68 = i74;
                                        i69 = i25;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 1:
                                    i28 = i11;
                                    i65 = i80;
                                    i26 = i75;
                                    i19 = 0;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    i29 = i12;
                                    if (i72 != 5) {
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        Q2.m(obj4, j11, Float.intBitsToFloat(Z0.b(bArr2, i26)));
                                        i64 = i26 + 4;
                                        i67 = i24 | i77;
                                        i62 = i29;
                                        i61 = i28;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i63 = i19;
                                        i68 = i74;
                                        i69 = i25;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 2:
                                case 3:
                                    i30 = i12;
                                    i65 = i80;
                                    i26 = i75;
                                    i19 = 0;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    if (i72 != 0) {
                                        i29 = i30;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        int k12 = Z0.k(bArr2, i26, y03);
                                        unsafe2.putLong(obj, j11, y03.f61685b);
                                        i62 = i30;
                                        i64 = k12;
                                        i61 = i11;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i63 = 0;
                                        i68 = i74;
                                        i69 = i25;
                                        i67 = i24 | i77;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 4:
                                case 11:
                                    i28 = i11;
                                    i30 = i12;
                                    i65 = i80;
                                    i26 = i75;
                                    i19 = 0;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    if (i72 != 0) {
                                        i29 = i30;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        int h10 = Z0.h(bArr2, i26, y03);
                                        unsafe2.putInt(obj4, j11, y03.f61684a);
                                        i67 = i24 | i77;
                                        i64 = h10;
                                        i62 = i30;
                                        i61 = i28;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i63 = i19;
                                        i68 = i74;
                                        i69 = i25;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 5:
                                case 14:
                                    i65 = i80;
                                    i26 = i75;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    if (i72 != 1) {
                                        i19 = 0;
                                        i29 = i12;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        unsafe2.putLong(obj, j11, Z0.n(bArr2, i26));
                                        int i81 = i26 + 8;
                                        i67 = i24 | i77;
                                        i62 = i12;
                                        i61 = i11;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i63 = 0;
                                        i68 = i74;
                                        i69 = i25;
                                        i64 = i81;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 6:
                                case 13:
                                    i31 = i11;
                                    i65 = i80;
                                    i26 = i75;
                                    i32 = 0;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    if (i72 != 5) {
                                        i29 = i12;
                                        i19 = i32;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        unsafe2.putInt(obj4, j11, Z0.b(bArr2, i26));
                                        i64 = i26 + 4;
                                        i67 = i24 | i77;
                                        i62 = i12;
                                        i63 = i32;
                                        i61 = i31;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i68 = i74;
                                        i69 = i25;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 7:
                                    i31 = i11;
                                    i65 = i80;
                                    i26 = i75;
                                    i32 = 0;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    if (i72 != 0) {
                                        i29 = i12;
                                        i19 = i32;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        k10 = Z0.k(bArr2, i26, y03);
                                        Q2.k(obj4, j11, y03.f61685b != 0);
                                        i67 = i24 | i77;
                                        i62 = i12;
                                        i64 = k10;
                                        i63 = i32;
                                        i61 = i31;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i68 = i74;
                                        i69 = i25;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 8:
                                    i31 = i11;
                                    i65 = i80;
                                    i26 = i75;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    if (i72 != 2) {
                                        i29 = i12;
                                        i19 = 0;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        if ((i73 & 536870912) != 0) {
                                            k10 = Z0.h(bArr2, i26, y03);
                                            int i82 = y03.f61684a;
                                            if (i82 < 0) {
                                                throw zzfb.zzc();
                                            }
                                            if (i82 == 0) {
                                                y03.f61686c = "";
                                                i32 = 0;
                                            } else {
                                                int i83 = U2.f61672b;
                                                int length = bArr2.length;
                                                if ((((length - k10) - i82) | k10 | i82) < 0) {
                                                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(k10), Integer.valueOf(i82)));
                                                }
                                                int i84 = k10 + i82;
                                                char[] cArr = new char[i82];
                                                int i85 = 0;
                                                while (k10 < i84) {
                                                    byte b11 = bArr2[k10];
                                                    if (R2.d(b11)) {
                                                        k10++;
                                                        cArr[i85] = (char) b11;
                                                        i85++;
                                                    } else {
                                                        while (k10 < i84) {
                                                            int i86 = k10 + 1;
                                                            byte b12 = bArr2[k10];
                                                            if (R2.d(b12)) {
                                                                cArr[i85] = (char) b12;
                                                                i85++;
                                                                k10 = i86;
                                                                while (k10 < i84) {
                                                                    byte b13 = bArr2[k10];
                                                                    if (R2.d(b13)) {
                                                                        k10++;
                                                                        cArr[i85] = (char) b13;
                                                                        i85++;
                                                                    }
                                                                }
                                                            } else if (b12 < -32) {
                                                                if (i86 >= i84) {
                                                                    throw zzfb.zzb();
                                                                }
                                                                k10 += 2;
                                                                R2.c(b12, bArr2[i86], cArr, i85);
                                                                i85++;
                                                            } else if (b12 < -16) {
                                                                if (i86 >= i84 - 1) {
                                                                    throw zzfb.zzb();
                                                                }
                                                                int i87 = k10 + 2;
                                                                k10 += 3;
                                                                R2.b(b12, bArr2[i86], bArr2[i87], cArr, i85);
                                                                i85++;
                                                            } else {
                                                                if (i86 >= i84 - 2) {
                                                                    throw zzfb.zzb();
                                                                }
                                                                byte b14 = bArr2[i86];
                                                                int i88 = k10 + 3;
                                                                byte b15 = bArr2[k10 + 2];
                                                                k10 += 4;
                                                                R2.a(b12, b14, b15, bArr2[i88], cArr, i85);
                                                                i85 += 2;
                                                            }
                                                        }
                                                        i32 = 0;
                                                        y03.f61686c = new String(cArr, 0, i85);
                                                        k10 = i84;
                                                    }
                                                }
                                                while (k10 < i84) {
                                                }
                                                i32 = 0;
                                                y03.f61686c = new String(cArr, 0, i85);
                                                k10 = i84;
                                            }
                                        } else {
                                            i32 = 0;
                                            k10 = Z0.h(bArr2, i26, y03);
                                            int i89 = y03.f61684a;
                                            if (i89 < 0) {
                                                throw zzfb.zzc();
                                            }
                                            if (i89 == 0) {
                                                y03.f61686c = "";
                                            } else {
                                                y03.f61686c = new String(bArr2, k10, i89, H1.f61615b);
                                                k10 += i89;
                                            }
                                        }
                                        unsafe2.putObject(obj4, j11, y03.f61686c);
                                        i67 = i24 | i77;
                                        i62 = i12;
                                        i64 = k10;
                                        i63 = i32;
                                        i61 = i31;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i68 = i74;
                                        i69 = i25;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                    break;
                                case 9:
                                    i33 = i11;
                                    i62 = i12;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i34 = i15;
                                    i65 = i80;
                                    i26 = i75;
                                    bArr2 = bArr;
                                    if (i72 != 2) {
                                        i27 = i34;
                                        i29 = i62;
                                        i19 = 0;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        Object B10 = c11941h2.B(obj4, i65);
                                        i27 = i34;
                                        int m10 = Z0.m(B10, c11941h2.z(i65), bArr, i26, i11, y02);
                                        c11941h2.h(obj4, i65, B10);
                                        i67 = i24 | i77;
                                        i64 = m10;
                                        i62 = i62;
                                        i61 = i33;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i68 = i74;
                                        i69 = i25;
                                        i63 = 0;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 10:
                                    i35 = i11;
                                    i62 = i12;
                                    i34 = i15;
                                    i65 = i80;
                                    i26 = i75;
                                    bArr2 = bArr;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    if (i72 != 2) {
                                        i27 = i34;
                                        i29 = i62;
                                        i19 = 0;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        int a10 = Z0.a(bArr2, i26, y03);
                                        unsafe2.putObject(obj4, j11, y03.f61686c);
                                        i67 = i24 | i77;
                                        i64 = a10;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i68 = i74;
                                        i63 = 0;
                                        bArr4 = bArr2;
                                        i66 = i34;
                                        i61 = i35;
                                        i69 = i25;
                                        break;
                                    }
                                case 12:
                                    i35 = i11;
                                    i62 = i12;
                                    i65 = i80;
                                    i26 = i75;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    if (i72 != 0) {
                                        i29 = i62;
                                        i19 = 0;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        int h11 = Z0.h(bArr2, i26, y03);
                                        int i90 = y03.f61684a;
                                        E1 y10 = c11941h2.y(i65);
                                        if ((i73 & Integer.MIN_VALUE) == 0 || y10 == null || y10.N1()) {
                                            i34 = i27;
                                            unsafe2.putInt(obj4, j11, i90);
                                            i67 = i24 | i77;
                                            i64 = h11;
                                            unsafe5 = unsafe2;
                                            y04 = y03;
                                            i68 = i74;
                                            i63 = 0;
                                            bArr4 = bArr2;
                                            i66 = i34;
                                            i61 = i35;
                                            i69 = i25;
                                            break;
                                        } else {
                                            i34 = i27;
                                            q(obj).h(i34, Long.valueOf(i90));
                                            i64 = h11;
                                            unsafe5 = unsafe2;
                                            y04 = y03;
                                            i68 = i74;
                                            i67 = i24;
                                            i63 = 0;
                                            bArr4 = bArr2;
                                            i66 = i34;
                                            i61 = i35;
                                            i69 = i25;
                                        }
                                    }
                                case 15:
                                    i33 = i11;
                                    i62 = i12;
                                    i65 = i80;
                                    i26 = i75;
                                    y03 = y04;
                                    unsafe2 = unsafe5;
                                    i27 = i15;
                                    bArr2 = bArr;
                                    if (i72 != 0) {
                                        i29 = i62;
                                        i19 = 0;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        int h12 = Z0.h(bArr2, i26, y03);
                                        unsafe2.putInt(obj4, j11, C11972p1.a(y03.f61684a));
                                        i67 = i24 | i77;
                                        i64 = h12;
                                        i61 = i33;
                                        unsafe5 = unsafe2;
                                        y04 = y03;
                                        i68 = i74;
                                        i69 = i25;
                                        i63 = 0;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                case 16:
                                    int i91 = i15;
                                    i26 = i75;
                                    bArr2 = bArr;
                                    if (i72 != 0) {
                                        y03 = y04;
                                        i65 = i80;
                                        i74 = i74;
                                        unsafe2 = unsafe5;
                                        i29 = i12;
                                        i27 = i91;
                                        i19 = 0;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        int k13 = Z0.k(bArr2, i26, y04);
                                        i74 = i74;
                                        i27 = i91;
                                        i65 = i80;
                                        unsafe5.putLong(obj, j11, C11972p1.b(y04.f61685b));
                                        i67 = i24 | i77;
                                        i61 = i11;
                                        i62 = i12;
                                        unsafe5 = unsafe5;
                                        y04 = y04;
                                        i64 = k13;
                                        i68 = i74;
                                        i69 = i25;
                                        i63 = 0;
                                        bArr4 = bArr2;
                                        i66 = i27;
                                        break;
                                    }
                                default:
                                    if (i72 != 3) {
                                        i26 = i75;
                                        y03 = y04;
                                        unsafe2 = unsafe5;
                                        i27 = i15;
                                        i65 = i80;
                                        i19 = 0;
                                        bArr2 = bArr;
                                        i29 = i12;
                                        i13 = i29;
                                        i21 = i26;
                                        i20 = i74;
                                        i67 = i24;
                                        i22 = i27;
                                        i69 = i25;
                                        unsafe = unsafe2;
                                        break;
                                    } else {
                                        Object B11 = c11941h2.B(obj4, i80);
                                        i64 = Z0.l(B11, c11941h2.z(i80), bArr, i75, i11, (i74 << 3) | 4, y02);
                                        c11941h2.h(obj4, i80, B11);
                                        i67 = i24 | i77;
                                        bArr4 = bArr;
                                        i62 = i12;
                                        i66 = i15;
                                        i65 = i80;
                                        i68 = i74;
                                        i69 = i25;
                                        i63 = 0;
                                        i61 = i11;
                                        break;
                                    }
                            }
                        } else {
                            i19 = 0;
                            int i92 = i15;
                            y03 = y04;
                            Unsafe unsafe6 = unsafe5;
                            if (v10 != 27) {
                                int i93 = i18;
                                i36 = i69;
                                i41 = i75;
                                i37 = i67;
                                i40 = i92;
                                if (v10 > 49) {
                                    i38 = i93;
                                    i39 = i74;
                                    unsafe6 = unsafe6;
                                    if (v10 != 50) {
                                        byte[] bArr5 = bArr;
                                        obj4 = obj;
                                        Unsafe unsafe7 = f61756o;
                                        long j12 = iArr[i38 + 2] & 1048575;
                                        switch (v10) {
                                            case 51:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                if (i72 == 1) {
                                                    unsafe7.putObject(obj4, j11, Double.valueOf(Double.longBitsToDouble(Z0.n(bArr5, i57))));
                                                    i58 = i57 + 8;
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    if (i58 != i57) {
                                                        i13 = i12;
                                                        i21 = i58;
                                                        i65 = i56;
                                                        i67 = i37;
                                                        i69 = i36;
                                                        break;
                                                    } else {
                                                        i68 = i20;
                                                        i66 = i22;
                                                        y04 = y03;
                                                        i63 = 0;
                                                        unsafe5 = unsafe;
                                                        i65 = i56;
                                                        i67 = i37;
                                                        i69 = i36;
                                                        i61 = i11;
                                                        i64 = i58;
                                                        bArr4 = bArr5;
                                                        i62 = i12;
                                                        break;
                                                    }
                                                }
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                            case 52:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                if (i72 == 5) {
                                                    unsafe7.putObject(obj4, j11, Float.valueOf(Float.intBitsToFloat(Z0.b(bArr5, i57))));
                                                    i58 = i57 + 4;
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 53:
                                            case 54:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                if (i72 == 0) {
                                                    k11 = Z0.k(bArr5, i57, y03);
                                                    unsafe7.putObject(obj4, j11, Long.valueOf(y03.f61685b));
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    i58 = k11;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 55:
                                            case 62:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                if (i72 == 0) {
                                                    i58 = Z0.h(bArr5, i57, y03);
                                                    unsafe7.putObject(obj4, j11, Integer.valueOf(y03.f61684a));
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 56:
                                            case 65:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                if (i72 == 1) {
                                                    unsafe7.putObject(obj4, j11, Long.valueOf(Z0.n(bArr5, i57)));
                                                    i58 = i57 + 8;
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 57:
                                            case 64:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                if (i72 == 5) {
                                                    unsafe7.putObject(obj4, j11, Integer.valueOf(Z0.b(bArr5, i57)));
                                                    i58 = i57 + 4;
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 58:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                if (i72 == 0) {
                                                    k11 = Z0.k(bArr5, i57, y03);
                                                    unsafe7.putObject(obj4, j11, Boolean.valueOf(y03.f61685b != 0));
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    i58 = k11;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 59:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                if (i72 == 2) {
                                                    int h13 = Z0.h(bArr5, i57, y03);
                                                    int i94 = y03.f61684a;
                                                    if (i94 == 0) {
                                                        unsafe7.putObject(obj4, j11, "");
                                                    } else {
                                                        if ((i73 & 536870912) != 0 && !U2.c(bArr5, h13, h13 + i94)) {
                                                            throw zzfb.zzb();
                                                        }
                                                        unsafe7.putObject(obj4, j11, new String(bArr5, h13, i94, H1.f61615b));
                                                        h13 += i94;
                                                    }
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    i58 = h13;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 60:
                                                i20 = i39;
                                                i22 = i40;
                                                i57 = i41;
                                                if (i72 == 2) {
                                                    Object C10 = c11941h2.C(obj4, i20, i38);
                                                    unsafe = unsafe6;
                                                    i58 = Z0.m(C10, c11941h2.z(i38), bArr, i57, i11, y02);
                                                    c11941h2.i(obj4, i20, i38, C10);
                                                    i57 = i57;
                                                    i56 = i38;
                                                    i20 = i20;
                                                    bArr5 = bArr5;
                                                    if (i58 != i57) {
                                                    }
                                                } else {
                                                    unsafe = unsafe6;
                                                    i56 = i38;
                                                    i58 = i57;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                break;
                                            case 61:
                                                i20 = i39;
                                                i22 = i40;
                                                if (i72 == 2) {
                                                    i57 = i41;
                                                    i58 = Z0.a(bArr5, i57, y03);
                                                    unsafe7.putObject(obj4, j11, y03.f61686c);
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    i56 = i38;
                                                    unsafe = unsafe6;
                                                    if (i58 != i57) {
                                                    }
                                                } else {
                                                    i56 = i38;
                                                    unsafe = unsafe6;
                                                    i57 = i41;
                                                    i58 = i57;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                break;
                                            case 63:
                                                i20 = i39;
                                                i22 = i40;
                                                i59 = i38;
                                                unsafe4 = unsafe6;
                                                i60 = i41;
                                                if (i72 == 0) {
                                                    int h14 = Z0.h(bArr5, i60, y03);
                                                    int i95 = y03.f61684a;
                                                    c11941h2 = this;
                                                    E1 y11 = c11941h2.y(i59);
                                                    if (y11 == null || y11.N1()) {
                                                        unsafe7.putObject(obj4, j11, Integer.valueOf(i95));
                                                        unsafe7.putInt(obj4, j12, i20);
                                                    } else {
                                                        q(obj).h(i22, Long.valueOf(i95));
                                                    }
                                                    i58 = h14;
                                                    i56 = i59;
                                                    unsafe = unsafe4;
                                                    i57 = i60;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                c11941h2 = this;
                                                i56 = i59;
                                                unsafe = unsafe4;
                                                i57 = i60;
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 66:
                                                i20 = i39;
                                                i22 = i40;
                                                i59 = i38;
                                                unsafe4 = unsafe6;
                                                i60 = i41;
                                                if (i72 == 0) {
                                                    int h15 = Z0.h(bArr5, i60, y03);
                                                    unsafe7.putObject(obj4, j11, Integer.valueOf(C11972p1.a(y03.f61684a)));
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    c11941h2 = this;
                                                    i58 = h15;
                                                    i56 = i59;
                                                    unsafe = unsafe4;
                                                    i57 = i60;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                c11941h2 = this;
                                                i56 = i59;
                                                unsafe = unsafe4;
                                                i57 = i60;
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                            case 67:
                                                i20 = i39;
                                                i22 = i40;
                                                unsafe4 = unsafe6;
                                                i60 = i41;
                                                if (i72 == 0) {
                                                    int k14 = Z0.k(bArr5, i60, y03);
                                                    unsafe7.putObject(obj4, j11, Long.valueOf(C11972p1.b(y03.f61685b)));
                                                    unsafe7.putInt(obj4, j12, i20);
                                                    c11941h2 = this;
                                                    i56 = i38;
                                                    unsafe = unsafe4;
                                                    i57 = i60;
                                                    i58 = k14;
                                                    if (i58 != i57) {
                                                    }
                                                } else {
                                                    c11941h2 = this;
                                                    i56 = i38;
                                                    unsafe = unsafe4;
                                                    i57 = i60;
                                                    i58 = i57;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                break;
                                            case 68:
                                                if (i72 == 3) {
                                                    Object C11 = c11941h2.C(obj4, i39, i38);
                                                    i20 = i39;
                                                    int l10 = Z0.l(C11, c11941h2.z(i38), bArr, i41, i11, (i40 & (-8)) | 4, y02);
                                                    c11941h2.i(obj4, i20, i38, C11);
                                                    unsafe = unsafe6;
                                                    i56 = i38;
                                                    i58 = l10;
                                                    i57 = i41;
                                                    i22 = i40;
                                                    if (i58 != i57) {
                                                    }
                                                }
                                                break;
                                            default:
                                                i20 = i39;
                                                i22 = i40;
                                                i56 = i38;
                                                unsafe = unsafe6;
                                                i57 = i41;
                                                i58 = i57;
                                                if (i58 != i57) {
                                                }
                                                break;
                                        }
                                    } else {
                                        if (i72 == 2) {
                                            Unsafe unsafe8 = f61756o;
                                            Object A10 = c11941h2.A(i38);
                                            Object object = unsafe8.getObject(obj, j11);
                                            if (!((X1) object).l()) {
                                                X1 i96 = X1.e().i();
                                                Y1.a(i96, object);
                                                unsafe8.putObject(obj, j11, i96);
                                            }
                                            throw null;
                                        }
                                        obj4 = obj;
                                    }
                                } else {
                                    long j13 = i73;
                                    Unsafe unsafe9 = f61756o;
                                    int i97 = i74;
                                    F1 f12 = (F1) unsafe9.getObject(obj4, j11);
                                    if (f12.P1()) {
                                        obj2 = "";
                                    } else {
                                        int size = f12.size();
                                        obj2 = "";
                                        F1 L02 = f12.L0(size != 0 ? size + size : 10);
                                        unsafe9.putObject(obj4, j11, L02);
                                        f12 = L02;
                                    }
                                    switch (v10) {
                                        case 18:
                                        case 35:
                                            i42 = i11;
                                            i65 = i93;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i43 = i97;
                                            if (i72 == 2) {
                                                C11976q1 c11976q1 = (C11976q1) f12;
                                                i23 = Z0.h(bArr3, i41, y03);
                                                int i98 = y03.f61684a + i23;
                                                while (i23 < i98) {
                                                    c11976q1.b(Double.longBitsToDouble(Z0.n(bArr3, i23)));
                                                    i23 += 8;
                                                }
                                                if (i23 != i98) {
                                                    throw zzfb.zzf();
                                                }
                                            } else {
                                                if (i72 == 1) {
                                                    C11976q1 c11976q12 = (C11976q1) f12;
                                                    c11976q12.b(Double.longBitsToDouble(Z0.n(bArr3, i41)));
                                                    i23 = i41 + 8;
                                                    while (i23 < i42) {
                                                        int h16 = Z0.h(bArr3, i23, y03);
                                                        if (i40 == y03.f61684a) {
                                                            c11976q12.b(Double.longBitsToDouble(Z0.n(bArr3, h16)));
                                                            i23 = h16 + 8;
                                                        }
                                                    }
                                                }
                                                i23 = i41;
                                            }
                                            if (i23 != i41) {
                                                i13 = i12;
                                                i21 = i23;
                                                i20 = i43;
                                                i22 = i40;
                                                unsafe = unsafe3;
                                                i67 = i37;
                                                i69 = i36;
                                                obj4 = obj;
                                                break;
                                            } else {
                                                i62 = i12;
                                                i61 = i42;
                                                i66 = i40;
                                                unsafe5 = unsafe3;
                                                y04 = y03;
                                                i63 = 0;
                                                i67 = i37;
                                                i69 = i36;
                                                bArr4 = bArr3;
                                                i68 = i43;
                                                obj4 = obj;
                                                i64 = i23;
                                                break;
                                            }
                                        case 19:
                                        case 36:
                                            i42 = i11;
                                            i65 = i93;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i43 = i97;
                                            if (i72 == 2) {
                                                C12003x1 c12003x1 = (C12003x1) f12;
                                                i23 = Z0.h(bArr3, i41, y03);
                                                int i99 = y03.f61684a + i23;
                                                while (i23 < i99) {
                                                    c12003x1.b(Float.intBitsToFloat(Z0.b(bArr3, i23)));
                                                    i23 += 4;
                                                }
                                                if (i23 != i99) {
                                                    throw zzfb.zzf();
                                                }
                                            } else {
                                                if (i72 == 5) {
                                                    C12003x1 c12003x12 = (C12003x1) f12;
                                                    c12003x12.b(Float.intBitsToFloat(Z0.b(bArr3, i41)));
                                                    i23 = i41 + 4;
                                                    while (i23 < i42) {
                                                        int h17 = Z0.h(bArr3, i23, y03);
                                                        if (i40 == y03.f61684a) {
                                                            c12003x12.b(Float.intBitsToFloat(Z0.b(bArr3, h17)));
                                                            i23 = h17 + 4;
                                                        }
                                                    }
                                                }
                                                i23 = i41;
                                            }
                                            if (i23 != i41) {
                                            }
                                            break;
                                        case 20:
                                        case 21:
                                        case 37:
                                        case 38:
                                            i42 = i11;
                                            i65 = i93;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i43 = i97;
                                            if (i72 == 2) {
                                                S1 s12 = (S1) f12;
                                                i23 = Z0.h(bArr3, i41, y03);
                                                int i100 = y03.f61684a + i23;
                                                while (i23 < i100) {
                                                    i23 = Z0.k(bArr3, i23, y03);
                                                    s12.b(y03.f61685b);
                                                }
                                                if (i23 != i100) {
                                                    throw zzfb.zzf();
                                                }
                                            } else {
                                                if (i72 == 0) {
                                                    S1 s13 = (S1) f12;
                                                    i23 = Z0.k(bArr3, i41, y03);
                                                    s13.b(y03.f61685b);
                                                    while (i23 < i42) {
                                                        int h18 = Z0.h(bArr3, i23, y03);
                                                        if (i40 == y03.f61684a) {
                                                            i23 = Z0.k(bArr3, h18, y03);
                                                            s13.b(y03.f61685b);
                                                        }
                                                    }
                                                }
                                                i23 = i41;
                                            }
                                            if (i23 != i41) {
                                            }
                                            break;
                                        case 22:
                                        case 29:
                                        case 39:
                                        case 43:
                                            i44 = i11;
                                            i45 = i93;
                                            i46 = i41;
                                            i47 = i40;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i48 = i97;
                                            if (i72 == 2) {
                                                f10 = Z0.f(bArr3, i46, f12, y03);
                                                i40 = i47;
                                                i23 = f10;
                                                i41 = i46;
                                                i43 = i48;
                                                i42 = i44;
                                                i65 = i45;
                                                if (i23 != i41) {
                                                }
                                            } else {
                                                if (i72 == 0) {
                                                    i40 = i47;
                                                    i41 = i46;
                                                    i43 = i48;
                                                    i42 = i44;
                                                    i65 = i45;
                                                    i23 = Z0.j(i47, bArr, i46, i11, f12, y02);
                                                    if (i23 != i41) {
                                                    }
                                                }
                                                i40 = i47;
                                                i41 = i46;
                                                i43 = i48;
                                                i42 = i44;
                                                i65 = i45;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            break;
                                        case 23:
                                        case 32:
                                        case 40:
                                        case 46:
                                            i44 = i11;
                                            i45 = i93;
                                            i46 = i41;
                                            i47 = i40;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i48 = i97;
                                            if (i72 == 2) {
                                                S1 s14 = (S1) f12;
                                                f10 = Z0.h(bArr3, i46, y03);
                                                int i101 = y03.f61684a + f10;
                                                while (f10 < i101) {
                                                    s14.b(Z0.n(bArr3, f10));
                                                    f10 += 8;
                                                }
                                                if (f10 != i101) {
                                                    throw zzfb.zzf();
                                                }
                                                i40 = i47;
                                                i23 = f10;
                                                i41 = i46;
                                                i43 = i48;
                                                i42 = i44;
                                                i65 = i45;
                                                if (i23 != i41) {
                                                }
                                            } else {
                                                if (i72 == 1) {
                                                    S1 s15 = (S1) f12;
                                                    s15.b(Z0.n(bArr3, i46));
                                                    i49 = i46 + 8;
                                                    while (i49 < i44) {
                                                        int h19 = Z0.h(bArr3, i49, y03);
                                                        if (i47 == y03.f61684a) {
                                                            s15.b(Z0.n(bArr3, h19));
                                                            i49 = h19 + 8;
                                                        } else {
                                                            i40 = i47;
                                                            i41 = i46;
                                                            i42 = i44;
                                                            i65 = i45;
                                                            i23 = i49;
                                                            i43 = i48;
                                                            if (i23 != i41) {
                                                            }
                                                        }
                                                    }
                                                    i40 = i47;
                                                    i41 = i46;
                                                    i42 = i44;
                                                    i65 = i45;
                                                    i23 = i49;
                                                    i43 = i48;
                                                    if (i23 != i41) {
                                                    }
                                                }
                                                i40 = i47;
                                                i41 = i46;
                                                i43 = i48;
                                                i42 = i44;
                                                i65 = i45;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            break;
                                        case 24:
                                        case 31:
                                        case 41:
                                        case 45:
                                            i44 = i11;
                                            i45 = i93;
                                            i46 = i41;
                                            i47 = i40;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i48 = i97;
                                            if (i72 == 2) {
                                                C1 c12 = (C1) f12;
                                                f10 = Z0.h(bArr3, i46, y03);
                                                int i102 = y03.f61684a + f10;
                                                while (f10 < i102) {
                                                    c12.j(Z0.b(bArr3, f10));
                                                    f10 += 4;
                                                }
                                                if (f10 != i102) {
                                                    throw zzfb.zzf();
                                                }
                                                i40 = i47;
                                                i23 = f10;
                                                i41 = i46;
                                                i43 = i48;
                                                i42 = i44;
                                                i65 = i45;
                                                if (i23 != i41) {
                                                }
                                            } else {
                                                if (i72 == 5) {
                                                    C1 c13 = (C1) f12;
                                                    c13.j(Z0.b(bArr3, i46));
                                                    i49 = i46 + 4;
                                                    while (i49 < i44) {
                                                        int h20 = Z0.h(bArr3, i49, y03);
                                                        if (i47 == y03.f61684a) {
                                                            c13.j(Z0.b(bArr3, h20));
                                                            i49 = h20 + 4;
                                                        } else {
                                                            i40 = i47;
                                                            i41 = i46;
                                                            i42 = i44;
                                                            i65 = i45;
                                                            i23 = i49;
                                                            i43 = i48;
                                                            if (i23 != i41) {
                                                            }
                                                        }
                                                    }
                                                    i40 = i47;
                                                    i41 = i46;
                                                    i42 = i44;
                                                    i65 = i45;
                                                    i23 = i49;
                                                    i43 = i48;
                                                    if (i23 != i41) {
                                                    }
                                                }
                                                i40 = i47;
                                                i41 = i46;
                                                i43 = i48;
                                                i42 = i44;
                                                i65 = i45;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            break;
                                        case 25:
                                        case 42:
                                            i44 = i11;
                                            i45 = i93;
                                            i46 = i41;
                                            i47 = i40;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i48 = i97;
                                            if (i72 == 2) {
                                                C11912a1 c11912a1 = (C11912a1) f12;
                                                f10 = Z0.h(bArr3, i46, y03);
                                                int i103 = y03.f61684a + f10;
                                                while (f10 < i103) {
                                                    f10 = Z0.k(bArr3, f10, y03);
                                                    c11912a1.b(y03.f61685b != 0);
                                                }
                                                if (f10 != i103) {
                                                    throw zzfb.zzf();
                                                }
                                            } else {
                                                if (i72 == 0) {
                                                    C11912a1 c11912a12 = (C11912a1) f12;
                                                    f10 = Z0.k(bArr3, i46, y03);
                                                    c11912a12.b(y03.f61685b != 0);
                                                    while (f10 < i44) {
                                                        int h21 = Z0.h(bArr3, f10, y03);
                                                        if (i47 == y03.f61684a) {
                                                            f10 = Z0.k(bArr3, h21, y03);
                                                            c11912a12.b(y03.f61685b != 0);
                                                        }
                                                    }
                                                }
                                                i40 = i47;
                                                i41 = i46;
                                                i43 = i48;
                                                i42 = i44;
                                                i65 = i45;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            i40 = i47;
                                            i23 = f10;
                                            i41 = i46;
                                            i43 = i48;
                                            i42 = i44;
                                            i65 = i45;
                                            if (i23 != i41) {
                                            }
                                            break;
                                        case 26:
                                            i44 = i11;
                                            i45 = i93;
                                            i46 = i41;
                                            i47 = i40;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i48 = i97;
                                            if (i72 == 2) {
                                                if ((j13 & TagBits.HasTypeVariable) == 0) {
                                                    f10 = Z0.h(bArr3, i46, y03);
                                                    int i104 = y03.f61684a;
                                                    if (i104 < 0) {
                                                        throw zzfb.zzc();
                                                    }
                                                    if (i104 == 0) {
                                                        obj3 = obj2;
                                                        f12.add(obj3);
                                                    } else {
                                                        obj3 = obj2;
                                                        f12.add(new String(bArr3, f10, i104, H1.f61615b));
                                                        f10 += i104;
                                                    }
                                                    while (f10 < i44) {
                                                        int h22 = Z0.h(bArr3, f10, y03);
                                                        if (i47 == y03.f61684a) {
                                                            f10 = Z0.h(bArr3, h22, y03);
                                                            int i105 = y03.f61684a;
                                                            if (i105 < 0) {
                                                                throw zzfb.zzc();
                                                            }
                                                            if (i105 == 0) {
                                                                f12.add(obj3);
                                                            } else {
                                                                f12.add(new String(bArr3, f10, i105, H1.f61615b));
                                                                f10 += i105;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    Object obj5 = obj2;
                                                    f10 = Z0.h(bArr3, i46, y03);
                                                    int i106 = y03.f61684a;
                                                    if (i106 < 0) {
                                                        throw zzfb.zzc();
                                                    }
                                                    if (i106 == 0) {
                                                        f12.add(obj5);
                                                    } else {
                                                        int i107 = f10 + i106;
                                                        if (!U2.c(bArr3, f10, i107)) {
                                                            throw zzfb.zzb();
                                                        }
                                                        f12.add(new String(bArr3, f10, i106, H1.f61615b));
                                                        f10 = i107;
                                                    }
                                                    while (f10 < i44) {
                                                        int h23 = Z0.h(bArr3, f10, y03);
                                                        if (i47 == y03.f61684a) {
                                                            f10 = Z0.h(bArr3, h23, y03);
                                                            int i108 = y03.f61684a;
                                                            if (i108 < 0) {
                                                                throw zzfb.zzc();
                                                            }
                                                            if (i108 == 0) {
                                                                f12.add(obj5);
                                                            } else {
                                                                int i109 = f10 + i108;
                                                                if (!U2.c(bArr3, f10, i109)) {
                                                                    throw zzfb.zzb();
                                                                }
                                                                f12.add(new String(bArr3, f10, i108, H1.f61615b));
                                                                f10 = i109;
                                                            }
                                                        }
                                                    }
                                                }
                                                i40 = i47;
                                                i23 = f10;
                                                i41 = i46;
                                                i43 = i48;
                                                i42 = i44;
                                                i65 = i45;
                                                if (i23 != i41) {
                                                }
                                            }
                                            i40 = i47;
                                            i41 = i46;
                                            i43 = i48;
                                            i42 = i44;
                                            i65 = i45;
                                            i23 = i41;
                                            if (i23 != i41) {
                                            }
                                            break;
                                        case 27:
                                            if (i72 == 2) {
                                                c11941h2 = this;
                                                i45 = i93;
                                                i48 = i97;
                                                i44 = i11;
                                                bArr3 = bArr;
                                                i49 = Z0.e(c11941h2.z(i93), i40, bArr, i41, i11, f12, y02);
                                                i40 = i40;
                                                unsafe3 = unsafe6;
                                                i42 = i44;
                                                i65 = i45;
                                                i23 = i49;
                                                i43 = i48;
                                                if (i23 != i41) {
                                                }
                                            } else {
                                                bArr3 = bArr;
                                                c11941h2 = this;
                                                i42 = i11;
                                                unsafe3 = unsafe6;
                                                i65 = i93;
                                                i43 = i97;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            break;
                                        case 28:
                                            i50 = i97;
                                            if (i72 == 2) {
                                                i23 = Z0.h(bArr, i41, y03);
                                                int i110 = y03.f61684a;
                                                if (i110 < 0) {
                                                    throw zzfb.zzc();
                                                }
                                                if (i110 > bArr.length - i23) {
                                                    throw zzfb.zzf();
                                                }
                                                if (i110 == 0) {
                                                    f12.add(AbstractC11956l1.f61792c);
                                                } else {
                                                    f12.add(AbstractC11956l1.v(bArr, i23, i110));
                                                    i23 += i110;
                                                }
                                                while (i23 < i11) {
                                                    int h24 = Z0.h(bArr, i23, y03);
                                                    if (i40 == y03.f61684a) {
                                                        i23 = Z0.h(bArr, h24, y03);
                                                        int i111 = y03.f61684a;
                                                        if (i111 < 0) {
                                                            throw zzfb.zzc();
                                                        }
                                                        if (i111 > bArr.length - i23) {
                                                            throw zzfb.zzf();
                                                        }
                                                        if (i111 == 0) {
                                                            f12.add(AbstractC11956l1.f61792c);
                                                        } else {
                                                            f12.add(AbstractC11956l1.v(bArr, i23, i111));
                                                            i23 += i111;
                                                        }
                                                    } else {
                                                        i42 = i11;
                                                        bArr3 = bArr;
                                                        unsafe3 = unsafe6;
                                                        i65 = i93;
                                                        i43 = i50;
                                                        c11941h2 = this;
                                                        if (i23 != i41) {
                                                        }
                                                    }
                                                }
                                                i42 = i11;
                                                bArr3 = bArr;
                                                unsafe3 = unsafe6;
                                                i65 = i93;
                                                i43 = i50;
                                                c11941h2 = this;
                                                if (i23 != i41) {
                                                }
                                            } else {
                                                i42 = i11;
                                                bArr3 = bArr;
                                                unsafe3 = unsafe6;
                                                i65 = i93;
                                                i43 = i50;
                                                c11941h2 = this;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            break;
                                        case 30:
                                        case 44:
                                            int i112 = i11;
                                            if (i72 == 2) {
                                                j10 = Z0.f(bArr, i41, f12, y03);
                                            } else if (i72 == 0) {
                                                j10 = Z0.j(i40, bArr, i41, i11, f12, y02);
                                            } else {
                                                c11941h2 = this;
                                                i42 = i112;
                                                bArr3 = bArr;
                                                unsafe3 = unsafe6;
                                                i65 = i93;
                                                i43 = i97;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            E1 y12 = c11941h2.y(i93);
                                            F2 f22 = c11941h2.f61766j;
                                            int i113 = C11980r2.f61833d;
                                            if (y12 == null) {
                                                i51 = j10;
                                                i52 = i112;
                                                i50 = i97;
                                            } else if (f12 != null) {
                                                int size2 = f12.size();
                                                Object obj6 = null;
                                                int i114 = 0;
                                                int i115 = 0;
                                                while (i114 < size2) {
                                                    Integer num = (Integer) f12.get(i114);
                                                    int i116 = j10;
                                                    int intValue = num.intValue();
                                                    if (y12.N1()) {
                                                        if (i114 != i115) {
                                                            f12.set(i115, num);
                                                        }
                                                        i115++;
                                                        i53 = i112;
                                                        i54 = i97;
                                                    } else {
                                                        i53 = i112;
                                                        i54 = i97;
                                                        obj6 = C11980r2.c(obj, i54, intValue, obj6, f22);
                                                    }
                                                    i114++;
                                                    i97 = i54;
                                                    i112 = i53;
                                                    j10 = i116;
                                                }
                                                i51 = j10;
                                                i52 = i112;
                                                i50 = i97;
                                                if (i115 != size2) {
                                                    f12.subList(i115, size2).clear();
                                                }
                                            } else {
                                                i51 = j10;
                                                i52 = i112;
                                                i50 = i97;
                                                Iterator it = f12.iterator();
                                                Object obj7 = null;
                                                while (it.hasNext()) {
                                                    int intValue2 = ((Integer) it.next()).intValue();
                                                    if (!y12.N1()) {
                                                        obj7 = C11980r2.c(obj, i50, intValue2, obj7, f22);
                                                        it.remove();
                                                    }
                                                }
                                            }
                                            i42 = i52;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i23 = i51;
                                            i65 = i93;
                                            i43 = i50;
                                            c11941h2 = this;
                                            if (i23 != i41) {
                                            }
                                            break;
                                        case 33:
                                        case 47:
                                            i55 = i11;
                                            if (i72 == 2) {
                                                C1 c14 = (C1) f12;
                                                i23 = Z0.h(bArr, i41, y03);
                                                int i117 = y03.f61684a + i23;
                                                while (i23 < i117) {
                                                    i23 = Z0.h(bArr, i23, y03);
                                                    c14.j(C11972p1.a(y03.f61684a));
                                                }
                                                if (i23 != i117) {
                                                    throw zzfb.zzf();
                                                }
                                            } else {
                                                if (i72 == 0) {
                                                    C1 c15 = (C1) f12;
                                                    i23 = Z0.h(bArr, i41, y03);
                                                    c15.j(C11972p1.a(y03.f61684a));
                                                    while (i23 < i55) {
                                                        int h25 = Z0.h(bArr, i23, y03);
                                                        if (i40 == y03.f61684a) {
                                                            i23 = Z0.h(bArr, h25, y03);
                                                            c15.j(C11972p1.a(y03.f61684a));
                                                        }
                                                    }
                                                }
                                                i42 = i55;
                                                i65 = i93;
                                                bArr3 = bArr;
                                                unsafe3 = unsafe6;
                                                i43 = i97;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            i42 = i55;
                                            i65 = i93;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i43 = i97;
                                            if (i23 != i41) {
                                            }
                                            break;
                                        case 34:
                                        case 48:
                                            i55 = i11;
                                            if (i72 == 2) {
                                                S1 s16 = (S1) f12;
                                                i23 = Z0.h(bArr, i41, y03);
                                                int i118 = y03.f61684a + i23;
                                                while (i23 < i118) {
                                                    i23 = Z0.k(bArr, i23, y03);
                                                    s16.b(C11972p1.b(y03.f61685b));
                                                }
                                                if (i23 != i118) {
                                                    throw zzfb.zzf();
                                                }
                                            } else {
                                                if (i72 == 0) {
                                                    S1 s17 = (S1) f12;
                                                    i23 = Z0.k(bArr, i41, y03);
                                                    s17.b(C11972p1.b(y03.f61685b));
                                                    while (i23 < i55) {
                                                        int h26 = Z0.h(bArr, i23, y03);
                                                        if (i40 == y03.f61684a) {
                                                            i23 = Z0.k(bArr, h26, y03);
                                                            s17.b(C11972p1.b(y03.f61685b));
                                                        }
                                                    }
                                                }
                                                i42 = i55;
                                                i65 = i93;
                                                bArr3 = bArr;
                                                unsafe3 = unsafe6;
                                                i43 = i97;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            i42 = i55;
                                            i65 = i93;
                                            bArr3 = bArr;
                                            unsafe3 = unsafe6;
                                            i43 = i97;
                                            if (i23 != i41) {
                                            }
                                            break;
                                        default:
                                            if (i72 == 3) {
                                                InterfaceC11973p2 z10 = c11941h2.z(i93);
                                                int i119 = (i40 & (-8)) | 4;
                                                i55 = i11;
                                                i23 = Z0.c(z10, bArr, i41, i11, i119, y02);
                                                f12.add(y03.f61686c);
                                                while (i23 < i55) {
                                                    int h27 = Z0.h(bArr, i23, y03);
                                                    if (i40 == y03.f61684a) {
                                                        i23 = Z0.c(z10, bArr, h27, i11, i119, y02);
                                                        f12.add(y03.f61686c);
                                                    } else {
                                                        i42 = i55;
                                                        i65 = i93;
                                                        bArr3 = bArr;
                                                        unsafe3 = unsafe6;
                                                        i43 = i97;
                                                        if (i23 != i41) {
                                                        }
                                                    }
                                                }
                                                i42 = i55;
                                                i65 = i93;
                                                bArr3 = bArr;
                                                unsafe3 = unsafe6;
                                                i43 = i97;
                                                if (i23 != i41) {
                                                }
                                            } else {
                                                i42 = i11;
                                                i65 = i93;
                                                bArr3 = bArr;
                                                unsafe3 = unsafe6;
                                                i43 = i97;
                                                i23 = i41;
                                                if (i23 != i41) {
                                                }
                                            }
                                            break;
                                    }
                                }
                            } else if (i72 == 2) {
                                F1 f13 = (F1) unsafe6.getObject(obj4, j11);
                                if (!f13.P1()) {
                                    int size3 = f13.size();
                                    f13 = f13.L0(size3 != 0 ? size3 + size3 : 10);
                                    unsafe6.putObject(obj4, j11, f13);
                                }
                                i64 = Z0.e(c11941h2.z(i18), i92, bArr, i75, i11, f13, y02);
                                i66 = i92;
                                i65 = i18;
                                i68 = i74;
                                y04 = y03;
                                i63 = 0;
                                i67 = i67;
                                i69 = i69;
                                i62 = i12;
                                unsafe5 = unsafe6;
                                bArr4 = bArr;
                                i61 = i11;
                            } else {
                                i36 = i69;
                                i37 = i67;
                                i38 = i18;
                                i39 = i74;
                                i40 = i92;
                                i41 = i75;
                            }
                            i13 = i12;
                            i20 = i39;
                            i21 = i41;
                            i22 = i40;
                            i65 = i38;
                            unsafe = unsafe6;
                            i67 = i37;
                            i69 = i36;
                        }
                    }
                    if (i22 == i13 || i13 == 0) {
                        int i120 = i20;
                        i23 = Z0.g(i22, bArr, i21, i11, q(obj), y02);
                        i61 = i11;
                        i66 = i22;
                        i62 = i13;
                        i68 = i120;
                        y04 = y03;
                        i63 = i19;
                        unsafe5 = unsafe;
                        bArr4 = bArr;
                        i64 = i23;
                    } else {
                        i66 = i22;
                        i14 = 1048575;
                        i64 = i21;
                    }
                } else {
                    u10 = c11941h2.u(i71, i63);
                }
                i18 = u10;
                i17 = -1;
                if (i18 != i17) {
                }
                if (i22 == i13) {
                }
                int i1202 = i20;
                i23 = Z0.g(i22, bArr, i21, i11, q(obj), y02);
                i61 = i11;
                i66 = i22;
                i62 = i13;
                i68 = i1202;
                y04 = y03;
                i63 = i19;
                unsafe5 = unsafe;
                bArr4 = bArr;
                i64 = i23;
            } else {
                unsafe = unsafe5;
                i13 = i62;
                i14 = 1048575;
            }
        }
    }

    public final int t(int i10) {
        return this.f61757a[i10 + 2];
    }

    public final int u(int i10, int i11) {
        int length = (this.f61757a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.f61757a[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    public final int w(int i10) {
        return this.f61757a[i10 + 1];
    }

    public final E1 y(int i10) {
        int i11 = i10 / 3;
        return (E1) this.f61758b[i11 + i11 + 1];
    }

    public final InterfaceC11973p2 z(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        InterfaceC11973p2 interfaceC11973p2 = (InterfaceC11973p2) this.f61758b[i12];
        if (interfaceC11973p2 != null) {
            return interfaceC11973p2;
        }
        InterfaceC11973p2 b10 = C11961m2.a().b((Class) this.f61758b[i12 + 1]);
        this.f61758b[i12] = b10;
        return b10;
    }
}
