package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import sun.misc.Unsafe;

public final class Z5<T> implements InterfaceC12083h6<T> {

    public static final int[] f62189l = new int[0];

    public static final Unsafe f62190m = C12244z6.v();

    public final int[] f62191a;

    public final Object[] f62192b;

    public final int f62193c;

    public final int f62194d;

    public final W5 f62195e;

    public final boolean f62196f;

    public final int[] f62197g;

    public final int f62198h;

    public final int f62199i;

    public final AbstractC12181s6 f62200j;

    public final AbstractC12037c5 f62201k;

    public Z5(int[] iArr, Object[] objArr, int i10, int i11, W5 w52, boolean z10, int[] iArr2, int i12, int i13, C12029b6 c12029b6, H5 h52, AbstractC12181s6 abstractC12181s6, AbstractC12037c5 abstractC12037c5, R5 r52) {
        this.f62191a = iArr;
        this.f62192b = objArr;
        this.f62193c = i10;
        this.f62194d = i11;
        boolean z11 = false;
        if (abstractC12037c5 != null && (w52 instanceof AbstractC12136n5)) {
            z11 = true;
        }
        this.f62196f = z11;
        this.f62197g = iArr2;
        this.f62198h = i12;
        this.f62199i = i13;
        this.f62200j = abstractC12181s6;
        this.f62201k = abstractC12037c5;
        this.f62195e = w52;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0269  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Z5 A(Class cls, T5 t52, C12029b6 c12029b6, H5 h52, AbstractC12181s6 abstractC12181s6, AbstractC12037c5 abstractC12037c5, R5 r52) {
        int i10;
        int charAt;
        int charAt2;
        int i11;
        int i12;
        int i13;
        int[] iArr;
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
        C12074g6 c12074g6;
        String str;
        int objectFieldOffset;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        Field B10;
        int i34;
        char charAt11;
        int i35;
        int i36;
        int i37;
        int i38;
        Object obj;
        Field B11;
        Object obj2;
        Field B12;
        int i39;
        char charAt12;
        int i40;
        char charAt13;
        int i41;
        char charAt14;
        int i42;
        char charAt15;
        if (!(t52 instanceof C12074g6)) {
            throw null;
        }
        C12074g6 c12074g62 = (C12074g6) t52;
        String a10 = c12074g62.a();
        int length = a10.length();
        char c10 = '\ud800';
        if (a10.charAt(0) >= '\ud800') {
            int i43 = 1;
            while (true) {
                i10 = i43 + 1;
                if (a10.charAt(i43) < '\ud800') {
                    break;
                }
                i43 = i10;
            }
        } else {
            i10 = 1;
        }
        int i44 = i10 + 1;
        int charAt16 = a10.charAt(i10);
        if (charAt16 >= 55296) {
            int i45 = charAt16 & 8191;
            int i46 = 13;
            while (true) {
                i42 = i44 + 1;
                charAt15 = a10.charAt(i44);
                if (charAt15 < '\ud800') {
                    break;
                }
                i45 |= (charAt15 & '\u1fff') << i46;
                i46 += 13;
                i44 = i42;
            }
            charAt16 = i45 | (charAt15 << i46);
            i44 = i42;
        }
        if (charAt16 == 0) {
            i13 = 0;
            charAt = 0;
            charAt2 = 0;
            i11 = 0;
            i14 = 0;
            i12 = 0;
            iArr = f62189l;
            i15 = 0;
        } else {
            int i47 = i44 + 1;
            int charAt17 = a10.charAt(i44);
            if (charAt17 >= 55296) {
                int i48 = charAt17 & 8191;
                int i49 = 13;
                while (true) {
                    i23 = i47 + 1;
                    charAt10 = a10.charAt(i47);
                    if (charAt10 < '\ud800') {
                        break;
                    }
                    i48 |= (charAt10 & '\u1fff') << i49;
                    i49 += 13;
                    i47 = i23;
                }
                charAt17 = i48 | (charAt10 << i49);
                i47 = i23;
            }
            int i50 = i47 + 1;
            int charAt18 = a10.charAt(i47);
            if (charAt18 >= 55296) {
                int i51 = charAt18 & 8191;
                int i52 = 13;
                while (true) {
                    i22 = i50 + 1;
                    charAt9 = a10.charAt(i50);
                    if (charAt9 < '\ud800') {
                        break;
                    }
                    i51 |= (charAt9 & '\u1fff') << i52;
                    i52 += 13;
                    i50 = i22;
                }
                charAt18 = i51 | (charAt9 << i52);
                i50 = i22;
            }
            int i53 = i50 + 1;
            int charAt19 = a10.charAt(i50);
            if (charAt19 >= 55296) {
                int i54 = charAt19 & 8191;
                int i55 = 13;
                while (true) {
                    i21 = i53 + 1;
                    charAt8 = a10.charAt(i53);
                    if (charAt8 < '\ud800') {
                        break;
                    }
                    i54 |= (charAt8 & '\u1fff') << i55;
                    i55 += 13;
                    i53 = i21;
                }
                charAt19 = i54 | (charAt8 << i55);
                i53 = i21;
            }
            int i56 = i53 + 1;
            int charAt20 = a10.charAt(i53);
            if (charAt20 >= 55296) {
                int i57 = charAt20 & 8191;
                int i58 = 13;
                while (true) {
                    i20 = i56 + 1;
                    charAt7 = a10.charAt(i56);
                    if (charAt7 < '\ud800') {
                        break;
                    }
                    i57 |= (charAt7 & '\u1fff') << i58;
                    i58 += 13;
                    i56 = i20;
                }
                charAt20 = i57 | (charAt7 << i58);
                i56 = i20;
            }
            int i59 = i56 + 1;
            charAt = a10.charAt(i56);
            if (charAt >= 55296) {
                int i60 = charAt & 8191;
                int i61 = 13;
                while (true) {
                    i19 = i59 + 1;
                    charAt6 = a10.charAt(i59);
                    if (charAt6 < '\ud800') {
                        break;
                    }
                    i60 |= (charAt6 & '\u1fff') << i61;
                    i61 += 13;
                    i59 = i19;
                }
                charAt = i60 | (charAt6 << i61);
                i59 = i19;
            }
            int i62 = i59 + 1;
            charAt2 = a10.charAt(i59);
            if (charAt2 >= 55296) {
                int i63 = charAt2 & 8191;
                int i64 = 13;
                while (true) {
                    i18 = i62 + 1;
                    charAt5 = a10.charAt(i62);
                    if (charAt5 < '\ud800') {
                        break;
                    }
                    i63 |= (charAt5 & '\u1fff') << i64;
                    i64 += 13;
                    i62 = i18;
                }
                charAt2 = i63 | (charAt5 << i64);
                i62 = i18;
            }
            int i65 = i62 + 1;
            int charAt21 = a10.charAt(i62);
            if (charAt21 >= 55296) {
                int i66 = charAt21 & 8191;
                int i67 = 13;
                while (true) {
                    i17 = i65 + 1;
                    charAt4 = a10.charAt(i65);
                    if (charAt4 < '\ud800') {
                        break;
                    }
                    i66 |= (charAt4 & '\u1fff') << i67;
                    i67 += 13;
                    i65 = i17;
                }
                charAt21 = i66 | (charAt4 << i67);
                i65 = i17;
            }
            int i68 = i65 + 1;
            int charAt22 = a10.charAt(i65);
            if (charAt22 >= 55296) {
                int i69 = charAt22 & 8191;
                int i70 = 13;
                while (true) {
                    i16 = i68 + 1;
                    charAt3 = a10.charAt(i68);
                    if (charAt3 < '\ud800') {
                        break;
                    }
                    i69 |= (charAt3 & '\u1fff') << i70;
                    i70 += 13;
                    i68 = i16;
                }
                charAt22 = i69 | (charAt3 << i70);
                i68 = i16;
            }
            int i71 = charAt17 + charAt17 + charAt18;
            int[] iArr2 = new int[charAt22 + charAt2 + charAt21];
            i11 = charAt19;
            i12 = charAt22;
            i13 = i71;
            iArr = iArr2;
            i14 = charAt20;
            i15 = charAt17;
            i44 = i68;
        }
        Unsafe unsafe = f62190m;
        Object[] b10 = c12074g62.b();
        Class<?> cls2 = c12074g62.O1().getClass();
        int i72 = i12 + charAt2;
        int i73 = charAt + charAt;
        int[] iArr3 = new int[charAt * 3];
        Object[] objArr = new Object[i73];
        int i74 = i12;
        int i75 = i72;
        int i76 = 0;
        int i77 = 0;
        while (i44 < length) {
            int i78 = i44 + 1;
            int charAt23 = a10.charAt(i44);
            if (charAt23 >= c10) {
                int i79 = charAt23 & 8191;
                int i80 = i78;
                int i81 = 13;
                while (true) {
                    i41 = i80 + 1;
                    charAt14 = a10.charAt(i80);
                    if (charAt14 < c10) {
                        break;
                    }
                    i79 |= (charAt14 & '\u1fff') << i81;
                    i81 += 13;
                    i80 = i41;
                }
                charAt23 = i79 | (charAt14 << i81);
                i24 = i41;
            } else {
                i24 = i78;
            }
            int i82 = i24 + 1;
            int charAt24 = a10.charAt(i24);
            if (charAt24 >= c10) {
                int i83 = charAt24 & 8191;
                int i84 = i82;
                int i85 = 13;
                while (true) {
                    i40 = i84 + 1;
                    charAt13 = a10.charAt(i84);
                    if (charAt13 < c10) {
                        break;
                    }
                    i83 |= (charAt13 & '\u1fff') << i85;
                    i85 += 13;
                    i84 = i40;
                }
                charAt24 = i83 | (charAt13 << i85);
                i25 = i40;
            } else {
                i25 = i82;
            }
            if ((charAt24 & 1024) != 0) {
                iArr[i76] = i77;
                i76++;
            }
            int i86 = charAt24 & 255;
            int i87 = length;
            int i88 = charAt24 & 2048;
            int i89 = i14;
            if (i86 >= 51) {
                int i90 = i25 + 1;
                int charAt25 = a10.charAt(i25);
                if (charAt25 >= 55296) {
                    int i91 = charAt25 & 8191;
                    int i92 = i90;
                    int i93 = 13;
                    while (true) {
                        i39 = i92 + 1;
                        charAt12 = a10.charAt(i92);
                        i26 = i11;
                        if (charAt12 < '\ud800') {
                            break;
                        }
                        i91 |= (charAt12 & '\u1fff') << i93;
                        i93 += 13;
                        i92 = i39;
                        i11 = i26;
                    }
                    charAt25 = i91 | (charAt12 << i93);
                    i37 = i39;
                } else {
                    i26 = i11;
                    i37 = i90;
                }
                int i94 = i86 - 51;
                int i95 = i37;
                if (i94 == 9 || i94 == 17) {
                    i38 = i13 + 1;
                    int i96 = i77 / 3;
                    objArr[i96 + i96 + 1] = b10[i13];
                } else {
                    if (i94 == 12) {
                        if (c12074g62.P1() == 1 || i88 != 0) {
                            i38 = i13 + 1;
                            int i97 = i77 / 3;
                            objArr[i97 + i97 + 1] = b10[i13];
                        } else {
                            i88 = 0;
                        }
                    }
                    int i98 = charAt25 + charAt25;
                    obj = b10[i98];
                    if (obj instanceof Field) {
                        B11 = B(cls2, (String) obj);
                        b10[i98] = B11;
                    } else {
                        B11 = (Field) obj;
                    }
                    int objectFieldOffset2 = (int) unsafe.objectFieldOffset(B11);
                    int i99 = i98 + 1;
                    obj2 = b10[i99];
                    int i100 = i88;
                    if (obj2 instanceof Field) {
                        B12 = B(cls2, (String) obj2);
                        b10[i99] = B12;
                    } else {
                        B12 = (Field) obj2;
                    }
                    i27 = i13;
                    i31 = i95;
                    i28 = charAt23;
                    i29 = (int) unsafe.objectFieldOffset(B12);
                    i32 = 0;
                    str = a10;
                    c12074g6 = c12074g62;
                    objectFieldOffset = objectFieldOffset2;
                    i33 = i100;
                }
                i13 = i38;
                int i982 = charAt25 + charAt25;
                obj = b10[i982];
                if (obj instanceof Field) {
                }
                int objectFieldOffset22 = (int) unsafe.objectFieldOffset(B11);
                int i992 = i982 + 1;
                obj2 = b10[i992];
                int i1002 = i88;
                if (obj2 instanceof Field) {
                }
                i27 = i13;
                i31 = i95;
                i28 = charAt23;
                i29 = (int) unsafe.objectFieldOffset(B12);
                i32 = 0;
                str = a10;
                c12074g6 = c12074g62;
                objectFieldOffset = objectFieldOffset22;
                i33 = i1002;
            } else {
                i26 = i11;
                i27 = i13 + 1;
                Field B13 = B(cls2, (String) b10[i13]);
                i28 = charAt23;
                if (i86 == 9 || i86 == 17) {
                    c12074g6 = c12074g62;
                    int i101 = i77 / 3;
                    objArr[i101 + i101 + 1] = B13.getType();
                } else {
                    if (i86 == 27) {
                        c12074g6 = c12074g62;
                        i35 = 1;
                        i36 = i13 + 2;
                    } else if (i86 == 49) {
                        i36 = i13 + 2;
                        c12074g6 = c12074g62;
                        i35 = 1;
                    } else {
                        if (i86 == 12 || i86 == 30 || i86 == 44) {
                            c12074g6 = c12074g62;
                            if (c12074g62.P1() == 1 || i88 != 0) {
                                i36 = i13 + 2;
                                int i102 = i77 / 3;
                                objArr[i102 + i102 + 1] = b10[i27];
                                str = a10;
                                i27 = i36;
                            } else {
                                str = a10;
                                i88 = 0;
                            }
                        } else if (i86 == 50) {
                            int i103 = i13 + 2;
                            int i104 = i74 + 1;
                            iArr[i74] = i77;
                            int i105 = i77 / 3;
                            int i106 = i105 + i105;
                            objArr[i106] = b10[i27];
                            if (i88 != 0) {
                                i27 = i13 + 3;
                                objArr[i106 + 1] = b10[i103];
                                str = a10;
                                i74 = i104;
                                c12074g6 = c12074g62;
                            } else {
                                i27 = i103;
                                i74 = i104;
                                i88 = 0;
                                c12074g6 = c12074g62;
                            }
                        } else {
                            c12074g6 = c12074g62;
                        }
                        objectFieldOffset = (int) unsafe.objectFieldOffset(B13);
                        i29 = 1048575;
                        if ((charAt24 & 4096) != 0 || i86 > 17) {
                            i30 = i88;
                            i31 = i25;
                            i32 = 0;
                        } else {
                            int i107 = i25 + 1;
                            int charAt26 = str.charAt(i25);
                            if (charAt26 >= 55296) {
                                int i108 = charAt26 & 8191;
                                int i109 = 13;
                                while (true) {
                                    i34 = i107 + 1;
                                    charAt11 = str.charAt(i107);
                                    if (charAt11 < '\ud800') {
                                        break;
                                    }
                                    i108 |= (charAt11 & '\u1fff') << i109;
                                    i109 += 13;
                                    i107 = i34;
                                }
                                charAt26 = i108 | (charAt11 << i109);
                                i107 = i34;
                            }
                            int i110 = i15 + i15 + (charAt26 / 32);
                            Object obj3 = b10[i110];
                            i31 = i107;
                            if (obj3 instanceof Field) {
                                B10 = (Field) obj3;
                            } else {
                                B10 = B(cls2, (String) obj3);
                                b10[i110] = B10;
                            }
                            i30 = i88;
                            i32 = charAt26 % 32;
                            i29 = (int) unsafe.objectFieldOffset(B10);
                        }
                        if (i86 >= 18 && i86 <= 49) {
                            iArr[i75] = objectFieldOffset;
                            i75++;
                        }
                        i33 = i30;
                    }
                    int i111 = i77 / 3;
                    objArr[i111 + i111 + i35] = b10[i27];
                    str = a10;
                    i27 = i36;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(B13);
                    i29 = 1048575;
                    if ((charAt24 & 4096) != 0) {
                    }
                    i30 = i88;
                    i31 = i25;
                    i32 = 0;
                    if (i86 >= 18) {
                        iArr[i75] = objectFieldOffset;
                        i75++;
                    }
                    i33 = i30;
                }
                str = a10;
                objectFieldOffset = (int) unsafe.objectFieldOffset(B13);
                i29 = 1048575;
                if ((charAt24 & 4096) != 0) {
                }
                i30 = i88;
                i31 = i25;
                i32 = 0;
                if (i86 >= 18) {
                }
                i33 = i30;
            }
            int i112 = i77 + 1;
            iArr3[i77] = i28;
            int i113 = i77 + 2;
            Class<?> cls3 = cls2;
            iArr3[i112] = objectFieldOffset | (i33 != 0 ? Integer.MIN_VALUE : 0) | ((charAt24 & 512) != 0 ? 536870912 : 0) | ((charAt24 & 256) != 0 ? 268435456 : 0) | (i86 << 20);
            i77 += 3;
            iArr3[i113] = (i32 << 20) | i29;
            a10 = str;
            i13 = i27;
            length = i87;
            i14 = i89;
            cls2 = cls3;
            c12074g62 = c12074g6;
            i44 = i31;
            i11 = i26;
            c10 = '\ud800';
        }
        return new Z5(iArr3, objArr, i11, i14, c12074g62.O1(), false, iArr, i12, i72, c12029b6, h52, abstractC12181s6, abstractC12037c5, r52);
    }

    public static Field B(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e10) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + name.length() + 29 + String.valueOf(arrays).length());
            sb2.append("Field ");
            sb2.append(str);
            sb2.append(" for ");
            sb2.append(name);
            sb2.append(" not found. Known fields are ");
            sb2.append(arrays);
            throw new RuntimeException(sb2.toString(), e10);
        }
    }

    public static boolean L(Object obj, int i10, InterfaceC12083h6 interfaceC12083h6) {
        return interfaceC12083h6.e(C12244z6.s(obj, i10 & 1048575));
    }

    public static int O(int i10) {
        return (i10 >>> 20) & 255;
    }

    public static boolean i(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC12163q5) {
            return ((AbstractC12163q5) obj).k();
        }
        return true;
    }

    public static void j(Object obj) {
        if (!i(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    public static double k(Object obj, long j10) {
        return ((Double) C12244z6.s(obj, j10)).doubleValue();
    }

    public static float l(Object obj, long j10) {
        return ((Float) C12244z6.s(obj, j10)).floatValue();
    }

    public static int m(Object obj, long j10) {
        return ((Integer) C12244z6.s(obj, j10)).intValue();
    }

    public static long n(Object obj, long j10) {
        return ((Long) C12244z6.s(obj, j10)).longValue();
    }

    public static boolean o(Object obj, long j10) {
        return ((Boolean) C12244z6.s(obj, j10)).booleanValue();
    }

    public static final int w(byte[] bArr, int i10, int i11, C6 c62, Class cls, G4 g42) throws IOException {
        int i12;
        C6 c63 = C6.zza;
        switch (c62.ordinal()) {
            case 0:
                i12 = i10 + 8;
                g42.f61929c = Double.valueOf(Double.longBitsToDouble(H4.e(bArr, i10)));
                break;
            case 1:
                i12 = i10 + 4;
                g42.f61929c = Float.valueOf(Float.intBitsToFloat(H4.d(bArr, i10)));
                break;
            case 2:
            case 3:
                int c10 = H4.c(bArr, i10, g42);
                g42.f61929c = Long.valueOf(g42.f61928b);
                return c10;
            case 4:
            case 12:
            case 13:
                int a10 = H4.a(bArr, i10, g42);
                g42.f61929c = Integer.valueOf(g42.f61927a);
                return a10;
            case 5:
            case 15:
                i12 = i10 + 8;
                g42.f61929c = Long.valueOf(H4.e(bArr, i10));
                break;
            case 6:
            case 14:
                i12 = i10 + 4;
                g42.f61929c = Integer.valueOf(H4.d(bArr, i10));
                break;
            case 7:
                int c11 = H4.c(bArr, i10, g42);
                g42.f61929c = Boolean.valueOf(g42.f61928b != 0);
                return c11;
            case 8:
                return H4.f(bArr, i10, g42);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return H4.h(C12056e6.a().b(cls), bArr, i10, i11, g42);
            case 11:
                return H4.g(bArr, i10, g42);
            case 16:
                int a11 = H4.a(bArr, i10, g42);
                g42.f61929c = Integer.valueOf(U4.a(g42.f61927a));
                return a11;
            case 17:
                int c12 = H4.c(bArr, i10, g42);
                g42.f61929c = Long.valueOf(U4.b(g42.f61928b));
                return c12;
        }
        return i12;
    }

    public static final void x(int i10, Object obj, E6 e62) throws IOException {
        if (obj instanceof String) {
            e62.d(i10, (String) obj);
        } else {
            e62.k(i10, (S4) obj);
        }
    }

    public static C12190t6 y(Object obj) {
        AbstractC12163q5 abstractC12163q5 = (AbstractC12163q5) obj;
        C12190t6 c12190t6 = abstractC12163q5.zzc;
        if (c12190t6 != C12190t6.a()) {
            return c12190t6;
        }
        C12190t6 b10 = C12190t6.b();
        abstractC12163q5.zzc = b10;
        return b10;
    }

    public final void C(Object obj, Object obj2, int i10) {
        if (r(obj2, i10)) {
            int M10 = M(i10) & 1048575;
            Unsafe unsafe = f62190m;
            long j10 = M10;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                int i11 = this.f62191a[i10];
                String obj3 = obj2.toString();
                StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 38 + obj3.length());
                sb2.append("Source subfield ");
                sb2.append(i11);
                sb2.append(" is present but null: ");
                sb2.append(obj3);
                throw new IllegalStateException(sb2.toString());
            }
            InterfaceC12083h6 E10 = E(i10);
            if (!r(obj, i10)) {
                if (i(object)) {
                    Object N12 = E10.N1();
                    E10.d(N12, object);
                    unsafe.putObject(obj, j10, N12);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                s(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!i(object2)) {
                Object N13 = E10.N1();
                E10.d(N13, object2);
                unsafe.putObject(obj, j10, N13);
                object2 = N13;
            }
            E10.d(object2, object);
        }
    }

    public final void D(Object obj, Object obj2, int i10) {
        int[] iArr = this.f62191a;
        int i11 = iArr[i10];
        if (t(obj2, i11, i10)) {
            int M10 = M(i10) & 1048575;
            Unsafe unsafe = f62190m;
            long j10 = M10;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                int i12 = iArr[i10];
                String obj3 = obj2.toString();
                StringBuilder sb2 = new StringBuilder(String.valueOf(i12).length() + 38 + obj3.length());
                sb2.append("Source subfield ");
                sb2.append(i12);
                sb2.append(" is present but null: ");
                sb2.append(obj3);
                throw new IllegalStateException(sb2.toString());
            }
            InterfaceC12083h6 E10 = E(i10);
            if (!t(obj, i11, i10)) {
                if (i(object)) {
                    Object N12 = E10.N1();
                    E10.d(N12, object);
                    unsafe.putObject(obj, j10, N12);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                u(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!i(object2)) {
                Object N13 = E10.N1();
                E10.d(N13, object2);
                unsafe.putObject(obj, j10, N13);
                object2 = N13;
            }
            E10.d(object2, object);
        }
    }

    public final InterfaceC12083h6 E(int i10) {
        Object[] objArr = this.f62192b;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        InterfaceC12083h6 interfaceC12083h6 = (InterfaceC12083h6) objArr[i12];
        if (interfaceC12083h6 != null) {
            return interfaceC12083h6;
        }
        InterfaceC12083h6 b10 = C12056e6.a().b((Class) objArr[i12 + 1]);
        objArr[i12] = b10;
        return b10;
    }

    public final Object F(int i10) {
        int i11 = i10 / 3;
        return this.f62192b[i11 + i11];
    }

    public final InterfaceC12207v5 G(int i10) {
        int i11 = i10 / 3;
        return (InterfaceC12207v5) this.f62192b[i11 + i11 + 1];
    }

    public final Object H(Object obj, int i10) {
        InterfaceC12083h6 E10 = E(i10);
        int M10 = M(i10) & 1048575;
        if (!r(obj, i10)) {
            return E10.N1();
        }
        Object object = f62190m.getObject(obj, M10);
        if (i(object)) {
            return object;
        }
        Object N12 = E10.N1();
        if (object != null) {
            E10.d(N12, object);
        }
        return N12;
    }

    public final void I(Object obj, int i10, Object obj2) {
        f62190m.putObject(obj, M(i10) & 1048575, obj2);
        s(obj, i10);
    }

    public final Object J(Object obj, int i10, int i11) {
        InterfaceC12083h6 E10 = E(i11);
        if (!t(obj, i10, i11)) {
            return E10.N1();
        }
        Object object = f62190m.getObject(obj, M(i11) & 1048575);
        if (i(object)) {
            return object;
        }
        Object N12 = E10.N1();
        if (object != null) {
            E10.d(N12, object);
        }
        return N12;
    }

    public final void K(Object obj, int i10, int i11, Object obj2) {
        f62190m.putObject(obj, M(i11) & 1048575, obj2);
        u(obj, i10, i11);
    }

    public final int M(int i10) {
        return this.f62191a[i10 + 1];
    }

    public final int N(int i10) {
        return this.f62191a[i10 + 2];
    }

    @Override
    public final Object N1() {
        return ((AbstractC12163q5) this.f62195e).m();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0054. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v253, types: [int] */
    /* JADX WARN: Type inference failed for: r0v260, types: [int] */
    /* JADX WARN: Type inference failed for: r0v262 */
    /* JADX WARN: Type inference failed for: r0v263 */
    /* JADX WARN: Type inference failed for: r0v264 */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r0v273 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v275 */
    /* JADX WARN: Type inference failed for: r0v276 */
    /* JADX WARN: Type inference failed for: r0v277 */
    /* JADX WARN: Type inference failed for: r1v116, types: [int] */
    /* JADX WARN: Type inference failed for: r1v119, types: [int] */
    /* JADX WARN: Type inference failed for: r1v163 */
    /* JADX WARN: Type inference failed for: r1v164 */
    /* JADX WARN: Type inference failed for: r1v76, types: [int] */
    /* JADX WARN: Type inference failed for: r1v78 */
    /* JADX WARN: Type inference failed for: r2v31, types: [int] */
    /* JADX WARN: Type inference failed for: r2v39, types: [int] */
    /* JADX WARN: Type inference failed for: r2v43, types: [int] */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52, types: [int] */
    /* JADX WARN: Type inference failed for: r2v80, types: [int] */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r2v84, types: [int] */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r2v95 */
    /* JADX WARN: Type inference failed for: r2v96 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r2v99 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v40, types: [int] */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v47, types: [int] */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v60 */
    /* JADX WARN: Type inference failed for: r3v61 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30, types: [int] */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v37, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v59 */
    /* JADX WARN: Type inference failed for: r4v60 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override
    public final int a(Object obj) {
        int i10;
        boolean z10;
        ?? r52;
        int G10;
        int G11;
        int G12;
        int a10;
        int G13;
        int G14;
        int l10;
        int G15;
        ?? t10;
        int size;
        int G16;
        int b10;
        int b11;
        ?? r32;
        int d10;
        ?? r12;
        ?? r02;
        int C10;
        int G17;
        int G18;
        ?? r42;
        Unsafe unsafe = f62190m;
        boolean z11 = false;
        int i11 = 1048575;
        boolean z12 = false;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (true) {
            int[] iArr = this.f62191a;
            if (i12 >= iArr.length) {
                int i15 = i13 + ((AbstractC12163q5) obj).zzc.i();
                if (!this.f62196f) {
                    return i15;
                }
                C12155p6 c12155p6 = ((AbstractC12136n5) obj).zzb.f62290a;
                int j10 = c12155p6.j();
                int i16 = 0;
                for (int i17 = 0; i17 < j10; i17++) {
                    Map.Entry k10 = c12155p6.k(i17);
                    i16 += C12073g5.j((InterfaceC12064f5) ((C12128m6) k10).b(), k10.getValue());
                }
                for (Map.Entry entry : c12155p6.l()) {
                    i16 += C12073g5.j((InterfaceC12064f5) entry.getKey(), entry.getValue());
                }
                return i15 + i16;
            }
            int M10 = M(i12);
            int O10 = O(M10);
            int i18 = iArr[i12];
            int i19 = iArr[i12 + 2];
            int i20 = i19 & i11;
            if (O10 <= 17) {
                if (i20 != i14) {
                    z12 = i20 == i11 ? z11 : unsafe.getInt(obj, i20);
                    i14 = i20;
                }
                i10 = i14;
                z10 = z12;
                r52 = 1 << (i19 >>> 20);
            } else {
                i10 = i14;
                z10 = z12;
                r52 = z11;
            }
            int i21 = M10 & i11;
            if (O10 >= EnumC12082h5.zzJ.N1()) {
                EnumC12082h5.zzW.N1();
            }
            long j11 = i21;
            switch (O10) {
                case 0:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        G10 = W4.G(i18 << 3);
                        r02 = G10 + 8;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        G11 = W4.G(i18 << 3);
                        r02 = G11 + 4;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        long j12 = unsafe.getLong(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a(j12);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        long j13 = unsafe.getLong(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a(j13);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        long j14 = unsafe.getInt(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a(j14);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        G10 = W4.G(i18 << 3);
                        r02 = G10 + 8;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        G11 = W4.G(i18 << 3);
                        r02 = G11 + 4;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        G13 = W4.G(i18 << 3);
                        r02 = G13 + 1;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        break;
                    } else {
                        int i22 = i18 << 3;
                        Object object = unsafe.getObject(obj, j11);
                        if (object instanceof S4) {
                            G14 = W4.G(i22);
                            l10 = ((S4) object).l();
                            G15 = W4.G(l10);
                            r02 = G14 + G15 + l10;
                            i13 += r02;
                            break;
                        } else {
                            G12 = W4.G(i22);
                            a10 = W4.b((String) object);
                            r02 = G12 + a10;
                            i13 += r02;
                        }
                    }
                case 9:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        r02 = C12101j6.E(i18, unsafe.getObject(obj, j11), E(i12));
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        S4 s42 = (S4) unsafe.getObject(obj, j11);
                        G14 = W4.G(i18 << 3);
                        l10 = s42.l();
                        G15 = W4.G(l10);
                        r02 = G14 + G15 + l10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        int i23 = unsafe.getInt(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.G(i23);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        long j15 = unsafe.getInt(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a(j15);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        G11 = W4.G(i18 << 3);
                        r02 = G11 + 4;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        G10 = W4.G(i18 << 3);
                        r02 = G10 + 8;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        int i24 = unsafe.getInt(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.G((i24 >> 31) ^ (i24 + i24));
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        long j16 = unsafe.getLong(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a((j16 >> 63) ^ (j16 + j16));
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (q(obj, i12, i10, z10 ? 1 : 0, r52)) {
                        r02 = W4.g(i18, (W5) unsafe.getObject(obj, j11), E(i12));
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    r02 = C12101j6.D(i18, (List) unsafe.getObject(obj, j11), z11);
                    i13 += r02;
                    break;
                case 19:
                    r02 = C12101j6.B(i18, (List) unsafe.getObject(obj, j11), z11);
                    i13 += r02;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j11);
                    int i25 = C12101j6.f62335b;
                    if (list.size() != 0) {
                        t10 = C12101j6.t(list) + (list.size() * W4.G(i18 << 3));
                        i13 += t10;
                        break;
                    }
                    t10 = z11;
                    i13 += t10;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j11);
                    int i26 = C12101j6.f62335b;
                    size = list2.size();
                    if (size != 0) {
                        G12 = C12101j6.u(list2);
                        G16 = W4.G(i18 << 3);
                        a10 = size * G16;
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    }
                    r02 = z11;
                    i13 += r02;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j11);
                    int i27 = C12101j6.f62335b;
                    size = list3.size();
                    if (size != 0) {
                        G12 = C12101j6.x(list3);
                        G16 = W4.G(i18 << 3);
                        a10 = size * G16;
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    }
                    r02 = z11;
                    i13 += r02;
                case 23:
                    r02 = C12101j6.D(i18, (List) unsafe.getObject(obj, j11), z11);
                    i13 += r02;
                    break;
                case 24:
                    r02 = C12101j6.B(i18, (List) unsafe.getObject(obj, j11), z11);
                    i13 += r02;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j11);
                    int i28 = C12101j6.f62335b;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        r02 = size2 * (W4.G(i18 << 3) + 1);
                        i13 += r02;
                        break;
                    }
                    r02 = z11;
                    i13 += r02;
                case 26:
                    ?? r03 = (List) unsafe.getObject(obj, j11);
                    int i29 = C12101j6.f62335b;
                    int size3 = r03.size();
                    if (size3 != 0) {
                        int G19 = W4.G(i18 << 3) * size3;
                        if (r03 instanceof G5) {
                            G5 g52 = (G5) r03;
                            t10 = G19;
                            for (?? r33 = z11; r33 < size3; r33++) {
                                Object P12 = g52.P1();
                                if (P12 instanceof S4) {
                                    int l11 = ((S4) P12).l();
                                    b11 = t10 + W4.G(l11) + l11;
                                } else {
                                    b11 = t10 + W4.b((String) P12);
                                }
                                t10 = b11;
                            }
                        } else {
                            t10 = G19;
                            for (?? r34 = z11; r34 < size3; r34++) {
                                Object obj2 = r03.get(r34);
                                if (obj2 instanceof S4) {
                                    int l12 = ((S4) obj2).l();
                                    b10 = t10 + W4.G(l12) + l12;
                                } else {
                                    b10 = t10 + W4.b((String) obj2);
                                }
                                t10 = b10;
                            }
                        }
                        i13 += t10;
                        break;
                    }
                    t10 = z11;
                    i13 += t10;
                case 27:
                    ?? r04 = (List) unsafe.getObject(obj, j11);
                    InterfaceC12083h6 E10 = E(i12);
                    int i30 = C12101j6.f62335b;
                    int size4 = r04.size();
                    if (size4 == 0) {
                        r32 = z11;
                    } else {
                        r32 = W4.G(i18 << 3) * size4;
                        for (?? r43 = z11; r43 < size4; r43++) {
                            Object obj3 = r04.get(r43);
                            if (obj3 instanceof F5) {
                                int b12 = ((F5) obj3).b();
                                d10 = (r32 == true ? 1 : 0) + W4.G(b12) + b12;
                            } else {
                                d10 = (r32 == true ? 1 : 0) + W4.d((W5) obj3, E10);
                            }
                            r32 = d10;
                        }
                    }
                    i13 += r32;
                    break;
                case 28:
                    ?? r05 = (List) unsafe.getObject(obj, j11);
                    int i31 = C12101j6.f62335b;
                    int size5 = r05.size();
                    if (size5 == 0) {
                        r12 = z11;
                    } else {
                        r12 = size5 * W4.G(i18 << 3);
                        for (?? r22 = z11; r22 < r05.size(); r22++) {
                            int l13 = ((S4) r05.get(r22)).l();
                            r12 += W4.G(l13) + l13;
                        }
                    }
                    i13 += r12;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j11);
                    int i32 = C12101j6.f62335b;
                    size = list5.size();
                    if (size != 0) {
                        G12 = C12101j6.y(list5);
                        G16 = W4.G(i18 << 3);
                        a10 = size * G16;
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    }
                    r02 = z11;
                    i13 += r02;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j11);
                    int i33 = C12101j6.f62335b;
                    size = list6.size();
                    if (size != 0) {
                        G12 = C12101j6.w(list6);
                        G16 = W4.G(i18 << 3);
                        a10 = size * G16;
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    }
                    r02 = z11;
                    i13 += r02;
                case 31:
                    r02 = C12101j6.B(i18, (List) unsafe.getObject(obj, j11), z11);
                    i13 += r02;
                    break;
                case 32:
                    r02 = C12101j6.D(i18, (List) unsafe.getObject(obj, j11), z11);
                    i13 += r02;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j11);
                    int i34 = C12101j6.f62335b;
                    size = list7.size();
                    if (size != 0) {
                        G12 = C12101j6.z(list7);
                        G16 = W4.G(i18 << 3);
                        a10 = size * G16;
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    }
                    r02 = z11;
                    i13 += r02;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j11);
                    int i35 = C12101j6.f62335b;
                    size = list8.size();
                    if (size != 0) {
                        G12 = C12101j6.v(list8);
                        G16 = W4.G(i18 << 3);
                        a10 = size * G16;
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    }
                    r02 = z11;
                    i13 += r02;
                case 35:
                    C10 = C12101j6.C((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    C10 = C12101j6.A((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    C10 = C12101j6.t((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    C10 = C12101j6.u((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    C10 = C12101j6.x((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    C10 = C12101j6.C((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    C10 = C12101j6.A((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j11);
                    int i36 = C12101j6.f62335b;
                    C10 = list9.size();
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    C10 = C12101j6.y((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    C10 = C12101j6.w((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    C10 = C12101j6.A((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    C10 = C12101j6.C((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    C10 = C12101j6.z((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    C10 = C12101j6.v((List) unsafe.getObject(obj, j11));
                    if (C10 > 0) {
                        G17 = W4.G(i18 << 3);
                        G18 = W4.G(C10);
                        r12 = G17 + G18 + C10;
                        i13 += r12;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    ?? r06 = (List) unsafe.getObject(obj, j11);
                    InterfaceC12083h6 E11 = E(i12);
                    int i37 = C12101j6.f62335b;
                    int size6 = r06.size();
                    if (size6 == 0) {
                        r42 = z11;
                    } else {
                        boolean z13 = z11;
                        r42 = z13;
                        ?? r35 = z13;
                        while (r35 < size6) {
                            int g10 = W4.g(i18, (W5) r06.get(r35), E11);
                            r35++;
                            r42 = (r42 == true ? 1 : 0) + g10;
                        }
                    }
                    i13 += r42;
                    break;
                case 50:
                    Q5 q52 = (Q5) unsafe.getObject(obj, j11);
                    P5 p52 = (P5) F(i12);
                    if (!q52.isEmpty()) {
                        t10 = z11;
                        for (Map.Entry entry2 : q52.entrySet()) {
                            t10 += p52.d(i18, entry2.getKey(), entry2.getValue());
                        }
                        i13 += t10;
                        break;
                    }
                    t10 = z11;
                    i13 += t10;
                case 51:
                    if (t(obj, i18, i12)) {
                        G10 = W4.G(i18 << 3);
                        r02 = G10 + 8;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (t(obj, i18, i12)) {
                        G11 = W4.G(i18 << 3);
                        r02 = G11 + 4;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (t(obj, i18, i12)) {
                        long n10 = n(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a(n10);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (t(obj, i18, i12)) {
                        long n11 = n(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a(n11);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (t(obj, i18, i12)) {
                        long m10 = m(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a(m10);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (t(obj, i18, i12)) {
                        G10 = W4.G(i18 << 3);
                        r02 = G10 + 8;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (t(obj, i18, i12)) {
                        G11 = W4.G(i18 << 3);
                        r02 = G11 + 4;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (t(obj, i18, i12)) {
                        G13 = W4.G(i18 << 3);
                        r02 = G13 + 1;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!t(obj, i18, i12)) {
                        break;
                    } else {
                        int i38 = i18 << 3;
                        Object object2 = unsafe.getObject(obj, j11);
                        if (object2 instanceof S4) {
                            G14 = W4.G(i38);
                            l10 = ((S4) object2).l();
                            G15 = W4.G(l10);
                            r02 = G14 + G15 + l10;
                            i13 += r02;
                            break;
                        } else {
                            G12 = W4.G(i38);
                            a10 = W4.b((String) object2);
                            r02 = G12 + a10;
                            i13 += r02;
                        }
                    }
                case 60:
                    if (t(obj, i18, i12)) {
                        r02 = C12101j6.E(i18, unsafe.getObject(obj, j11), E(i12));
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (t(obj, i18, i12)) {
                        S4 s43 = (S4) unsafe.getObject(obj, j11);
                        G14 = W4.G(i18 << 3);
                        l10 = s43.l();
                        G15 = W4.G(l10);
                        r02 = G14 + G15 + l10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (t(obj, i18, i12)) {
                        int m11 = m(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.G(m11);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (t(obj, i18, i12)) {
                        long m12 = m(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a(m12);
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (t(obj, i18, i12)) {
                        G11 = W4.G(i18 << 3);
                        r02 = G11 + 4;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (t(obj, i18, i12)) {
                        G10 = W4.G(i18 << 3);
                        r02 = G10 + 8;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (t(obj, i18, i12)) {
                        int m13 = m(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.G((m13 >> 31) ^ (m13 + m13));
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (t(obj, i18, i12)) {
                        long n12 = n(obj, j11);
                        G12 = W4.G(i18 << 3);
                        a10 = W4.a((n12 >> 63) ^ (n12 + n12));
                        r02 = G12 + a10;
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (t(obj, i18, i12)) {
                        r02 = W4.g(i18, (W5) unsafe.getObject(obj, j11), E(i12));
                        i13 += r02;
                        break;
                    } else {
                        break;
                    }
            }
            i12 += 3;
            i14 = i10;
            z12 = z10;
            z11 = false;
            i11 = 1048575;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
    @Override
    public final int b(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int i11;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.f62191a;
            if (i12 >= iArr.length) {
                int hashCode = (i13 * 53) + ((AbstractC12163q5) obj).zzc.hashCode();
                return this.f62196f ? (hashCode * 53) + ((AbstractC12136n5) obj).zzb.f62290a.hashCode() : hashCode;
            }
            int M10 = M(i12);
            int i14 = 1048575 & M10;
            int O10 = O(M10);
            int i15 = iArr[i12];
            long j10 = i14;
            int i16 = 37;
            switch (O10) {
                case 0:
                    i10 = i13 * 53;
                    doubleToLongBits = Double.doubleToLongBits(C12244z6.q(obj, j10));
                    byte[] bArr = A5.f61886b;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i13 = i10 + floatToIntBits;
                    break;
                case 1:
                    i10 = i13 * 53;
                    floatToIntBits = Float.floatToIntBits(C12244z6.o(obj, j10));
                    i13 = i10 + floatToIntBits;
                    break;
                case 2:
                    i10 = i13 * 53;
                    doubleToLongBits = C12244z6.k(obj, j10);
                    byte[] bArr2 = A5.f61886b;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i13 = i10 + floatToIntBits;
                    break;
                case 3:
                    i10 = i13 * 53;
                    doubleToLongBits = C12244z6.k(obj, j10);
                    byte[] bArr3 = A5.f61886b;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i13 = i10 + floatToIntBits;
                    break;
                case 4:
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.i(obj, j10);
                    i13 = i10 + floatToIntBits;
                    break;
                case 5:
                    i10 = i13 * 53;
                    doubleToLongBits = C12244z6.k(obj, j10);
                    byte[] bArr4 = A5.f61886b;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i13 = i10 + floatToIntBits;
                    break;
                case 6:
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.i(obj, j10);
                    i13 = i10 + floatToIntBits;
                    break;
                case 7:
                    i10 = i13 * 53;
                    floatToIntBits = A5.b(C12244z6.m(obj, j10));
                    i13 = i10 + floatToIntBits;
                    break;
                case 8:
                    i10 = i13 * 53;
                    floatToIntBits = ((String) C12244z6.s(obj, j10)).hashCode();
                    i13 = i10 + floatToIntBits;
                    break;
                case 9:
                    i11 = i13 * 53;
                    Object s10 = C12244z6.s(obj, j10);
                    if (s10 != null) {
                        i16 = s10.hashCode();
                    }
                    i13 = i11 + i16;
                    break;
                case 10:
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.s(obj, j10).hashCode();
                    i13 = i10 + floatToIntBits;
                    break;
                case 11:
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.i(obj, j10);
                    i13 = i10 + floatToIntBits;
                    break;
                case 12:
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.i(obj, j10);
                    i13 = i10 + floatToIntBits;
                    break;
                case 13:
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.i(obj, j10);
                    i13 = i10 + floatToIntBits;
                    break;
                case 14:
                    i10 = i13 * 53;
                    doubleToLongBits = C12244z6.k(obj, j10);
                    byte[] bArr5 = A5.f61886b;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i13 = i10 + floatToIntBits;
                    break;
                case 15:
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.i(obj, j10);
                    i13 = i10 + floatToIntBits;
                    break;
                case 16:
                    i10 = i13 * 53;
                    doubleToLongBits = C12244z6.k(obj, j10);
                    byte[] bArr6 = A5.f61886b;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i13 = i10 + floatToIntBits;
                    break;
                case 17:
                    i11 = i13 * 53;
                    Object s11 = C12244z6.s(obj, j10);
                    if (s11 != null) {
                        i16 = s11.hashCode();
                    }
                    i13 = i11 + i16;
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
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.s(obj, j10).hashCode();
                    i13 = i10 + floatToIntBits;
                    break;
                case 50:
                    i10 = i13 * 53;
                    floatToIntBits = C12244z6.s(obj, j10).hashCode();
                    i13 = i10 + floatToIntBits;
                    break;
                case 51:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        doubleToLongBits = Double.doubleToLongBits(k(obj, j10));
                        byte[] bArr7 = A5.f61886b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 52:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = Float.floatToIntBits(l(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 53:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        doubleToLongBits = n(obj, j10);
                        byte[] bArr8 = A5.f61886b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 54:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        doubleToLongBits = n(obj, j10);
                        byte[] bArr9 = A5.f61886b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 55:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = m(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 56:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        doubleToLongBits = n(obj, j10);
                        byte[] bArr10 = A5.f61886b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 57:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = m(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 58:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = A5.b(o(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 59:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = ((String) C12244z6.s(obj, j10)).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 60:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = C12244z6.s(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 61:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = C12244z6.s(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 62:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = m(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 63:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = m(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 64:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = m(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 65:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        doubleToLongBits = n(obj, j10);
                        byte[] bArr11 = A5.f61886b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 66:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = m(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 67:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        doubleToLongBits = n(obj, j10);
                        byte[] bArr12 = A5.f61886b;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    }
                case 68:
                    if (!t(obj, i15, i12)) {
                        break;
                    } else {
                        i10 = i13 * 53;
                        floatToIntBits = C12244z6.s(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    }
            }
            i12 += 3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:235:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x05c7  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(Object obj, E6 e62) throws IOException {
        Map.Entry entry;
        int[] iArr;
        int i10;
        Map.Entry entry2;
        int i11;
        int i12;
        int i13;
        Map.Entry entry3;
        if (this.f62196f) {
            C12073g5 c12073g5 = ((AbstractC12136n5) obj).zzb;
            if (!c12073g5.f62290a.isEmpty()) {
                entry = (Map.Entry) c12073g5.c().next();
                iArr = this.f62191a;
                Unsafe unsafe = f62190m;
                int i14 = 1048575;
                int i15 = 1048575;
                int i16 = 0;
                i10 = 0;
                while (i10 < iArr.length) {
                    int M10 = M(i10);
                    int O10 = O(M10);
                    int i17 = iArr[i10];
                    if (O10 <= 17) {
                        int i18 = iArr[i10 + 2];
                        int i19 = i18 & i14;
                        if (i19 != i15) {
                            i16 = i19 == i14 ? 0 : unsafe.getInt(obj, i19);
                            i15 = i19;
                        }
                        i11 = i15;
                        i12 = i16;
                        i13 = 1 << (i18 >>> 20);
                    } else {
                        i11 = i15;
                        i12 = i16;
                        i13 = 0;
                    }
                    if (entry != null) {
                        throw null;
                    }
                    long j10 = M10 & i14;
                    switch (O10) {
                        case 0:
                            entry3 = entry;
                            if (!q(obj, i10, i11, i12, i13)) {
                                break;
                            } else {
                                e62.e(i17, C12244z6.q(obj, j10));
                                continue;
                            }
                        case 1:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.i(i17, C12244z6.o(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 2:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.b(i17, unsafe.getLong(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 3:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.o(i17, unsafe.getLong(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 4:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.p(i17, unsafe.getInt(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 5:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.j(i17, unsafe.getLong(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 6:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.l(i17, unsafe.getInt(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 7:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.z(i17, C12244z6.m(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 8:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                x(i17, unsafe.getObject(obj, j10), e62);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.B(i17, unsafe.getObject(obj, j10), E(i10));
                                break;
                            } else {
                                continue;
                            }
                        case 10:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.k(i17, (S4) unsafe.getObject(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 11:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.u(i17, unsafe.getInt(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 12:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.g(i17, unsafe.getInt(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 13:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.a(i17, unsafe.getInt(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 14:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.h(i17, unsafe.getLong(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 15:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.w(i17, unsafe.getInt(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 16:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.D(i17, unsafe.getLong(obj, j10));
                                break;
                            } else {
                                continue;
                            }
                        case 17:
                            entry3 = entry;
                            if (q(obj, i10, i11, i12, i13)) {
                                e62.C(i17, unsafe.getObject(obj, j10), E(i10));
                                break;
                            } else {
                                continue;
                            }
                        case 18:
                            C12101j6.f(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 19:
                            C12101j6.g(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 20:
                            C12101j6.h(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 21:
                            C12101j6.i(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 22:
                            C12101j6.m(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 23:
                            C12101j6.k(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 24:
                            C12101j6.p(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 25:
                            C12101j6.s(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 26:
                            int i20 = iArr[i10];
                            List list = (List) unsafe.getObject(obj, j10);
                            int i21 = C12101j6.f62335b;
                            if (list != null && !list.isEmpty()) {
                                e62.v(i20, list);
                                break;
                            }
                            break;
                        case 27:
                            int i22 = iArr[i10];
                            List list2 = (List) unsafe.getObject(obj, j10);
                            InterfaceC12083h6 E10 = E(i10);
                            int i23 = C12101j6.f62335b;
                            if (list2 != null && !list2.isEmpty()) {
                                for (int i24 = 0; i24 < list2.size(); i24++) {
                                    ((X4) e62).B(i22, list2.get(i24), E10);
                                }
                                break;
                            }
                            break;
                        case 28:
                            int i25 = iArr[i10];
                            List list3 = (List) unsafe.getObject(obj, j10);
                            int i26 = C12101j6.f62335b;
                            if (list3 != null && !list3.isEmpty()) {
                                e62.s(i25, list3);
                                break;
                            }
                            break;
                        case 29:
                            C12101j6.n(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 30:
                            C12101j6.r(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 31:
                            C12101j6.q(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 32:
                            C12101j6.l(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 33:
                            C12101j6.o(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 34:
                            C12101j6.j(iArr[i10], (List) unsafe.getObject(obj, j10), e62, false);
                            break;
                        case 35:
                            C12101j6.f(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 36:
                            C12101j6.g(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 37:
                            C12101j6.h(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 38:
                            C12101j6.i(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 39:
                            C12101j6.m(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 40:
                            C12101j6.k(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 41:
                            C12101j6.p(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 42:
                            C12101j6.s(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 43:
                            C12101j6.n(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 44:
                            C12101j6.r(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 45:
                            C12101j6.q(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 46:
                            C12101j6.l(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 47:
                            C12101j6.o(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 48:
                            C12101j6.j(iArr[i10], (List) unsafe.getObject(obj, j10), e62, true);
                            break;
                        case 49:
                            int i27 = iArr[i10];
                            List list4 = (List) unsafe.getObject(obj, j10);
                            InterfaceC12083h6 E11 = E(i10);
                            int i28 = C12101j6.f62335b;
                            if (list4 != null && !list4.isEmpty()) {
                                for (int i29 = 0; i29 < list4.size(); i29++) {
                                    ((X4) e62).C(i27, list4.get(i29), E11);
                                }
                                break;
                            }
                            break;
                        case 50:
                            Object object = unsafe.getObject(obj, j10);
                            if (object != null) {
                                e62.f(i17, ((P5) F(i10)).e(), (Q5) object);
                                break;
                            }
                            break;
                        case 51:
                            if (t(obj, i17, i10)) {
                                e62.e(i17, k(obj, j10));
                                break;
                            }
                            break;
                        case 52:
                            if (t(obj, i17, i10)) {
                                e62.i(i17, l(obj, j10));
                                break;
                            }
                            break;
                        case 53:
                            if (t(obj, i17, i10)) {
                                e62.b(i17, n(obj, j10));
                                break;
                            }
                            break;
                        case 54:
                            if (t(obj, i17, i10)) {
                                e62.o(i17, n(obj, j10));
                                break;
                            }
                            break;
                        case 55:
                            if (t(obj, i17, i10)) {
                                e62.p(i17, m(obj, j10));
                                break;
                            }
                            break;
                        case 56:
                            if (t(obj, i17, i10)) {
                                e62.j(i17, n(obj, j10));
                                break;
                            }
                            break;
                        case 57:
                            if (t(obj, i17, i10)) {
                                e62.l(i17, m(obj, j10));
                                break;
                            }
                            break;
                        case 58:
                            if (t(obj, i17, i10)) {
                                e62.z(i17, o(obj, j10));
                                break;
                            }
                            break;
                        case 59:
                            if (t(obj, i17, i10)) {
                                x(i17, unsafe.getObject(obj, j10), e62);
                                break;
                            }
                            break;
                        case 60:
                            if (t(obj, i17, i10)) {
                                e62.B(i17, unsafe.getObject(obj, j10), E(i10));
                                break;
                            }
                            break;
                        case 61:
                            if (t(obj, i17, i10)) {
                                e62.k(i17, (S4) unsafe.getObject(obj, j10));
                                break;
                            }
                            break;
                        case 62:
                            if (t(obj, i17, i10)) {
                                e62.u(i17, m(obj, j10));
                                break;
                            }
                            break;
                        case 63:
                            if (t(obj, i17, i10)) {
                                e62.g(i17, m(obj, j10));
                                break;
                            }
                            break;
                        case 64:
                            if (t(obj, i17, i10)) {
                                e62.a(i17, m(obj, j10));
                                break;
                            }
                            break;
                        case 65:
                            if (t(obj, i17, i10)) {
                                e62.h(i17, n(obj, j10));
                                break;
                            }
                            break;
                        case 66:
                            if (t(obj, i17, i10)) {
                                e62.w(i17, m(obj, j10));
                                break;
                            }
                            break;
                        case 67:
                            if (t(obj, i17, i10)) {
                                e62.D(i17, n(obj, j10));
                                break;
                            }
                            break;
                        case 68:
                            if (t(obj, i17, i10)) {
                                e62.C(i17, unsafe.getObject(obj, j10), E(i10));
                                break;
                            }
                            break;
                    }
                    entry3 = entry;
                    i10 += 3;
                    i15 = i11;
                    entry = entry3;
                    i16 = i12;
                    i14 = 1048575;
                }
                entry2 = entry;
                if (entry2 != null) {
                    ((AbstractC12163q5) obj).zzc.g(e62);
                    return;
                } else {
                    throw null;
                }
            }
        }
        entry = null;
        iArr = this.f62191a;
        Unsafe unsafe2 = f62190m;
        int i142 = 1048575;
        int i152 = 1048575;
        int i162 = 0;
        i10 = 0;
        while (i10 < iArr.length) {
        }
        entry2 = entry;
        if (entry2 != null) {
        }
    }

    @Override
    public final void d(Object obj, Object obj2) {
        j(obj);
        obj2.getClass();
        int i10 = 0;
        while (true) {
            int[] iArr = this.f62191a;
            if (i10 >= iArr.length) {
                C12101j6.d(this.f62200j, obj, obj2);
                if (this.f62196f) {
                    C12101j6.c(this.f62201k, obj, obj2);
                    return;
                }
                return;
            }
            int M10 = M(i10);
            int i11 = 1048575 & M10;
            int O10 = O(M10);
            int i12 = iArr[i10];
            long j10 = i11;
            switch (O10) {
                case 0:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.r(obj, j10, C12244z6.q(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 1:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.p(obj, j10, C12244z6.o(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 2:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.l(obj, j10, C12244z6.k(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 3:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.l(obj, j10, C12244z6.k(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 4:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.j(obj, j10, C12244z6.i(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 5:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.l(obj, j10, C12244z6.k(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 6:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.j(obj, j10, C12244z6.i(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 7:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.n(obj, j10, C12244z6.m(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 8:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.t(obj, j10, C12244z6.s(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 9:
                    C(obj, obj2, i10);
                    break;
                case 10:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.t(obj, j10, C12244z6.s(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 11:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.j(obj, j10, C12244z6.i(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 12:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.j(obj, j10, C12244z6.i(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 13:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.j(obj, j10, C12244z6.i(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 14:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.l(obj, j10, C12244z6.k(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 15:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.j(obj, j10, C12244z6.i(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 16:
                    if (!r(obj2, i10)) {
                        break;
                    } else {
                        C12244z6.l(obj, j10, C12244z6.k(obj2, j10));
                        s(obj, i10);
                        break;
                    }
                case 17:
                    C(obj, obj2, i10);
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
                    InterfaceC12243z5 interfaceC12243z5 = (InterfaceC12243z5) C12244z6.s(obj, j10);
                    InterfaceC12243z5 interfaceC12243z52 = (InterfaceC12243z5) C12244z6.s(obj2, j10);
                    int size = interfaceC12243z5.size();
                    int size2 = interfaceC12243z52.size();
                    if (size > 0 && size2 > 0) {
                        if (!interfaceC12243z5.N1()) {
                            interfaceC12243z5 = interfaceC12243z5.K0(size2 + size);
                        }
                        interfaceC12243z5.addAll(interfaceC12243z52);
                    }
                    if (size > 0) {
                        interfaceC12243z52 = interfaceC12243z5;
                    }
                    C12244z6.t(obj, j10, interfaceC12243z52);
                    break;
                case 50:
                    int i13 = C12101j6.f62335b;
                    C12244z6.t(obj, j10, R5.a(C12244z6.s(obj, j10), C12244z6.s(obj2, j10)));
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
                    if (!t(obj2, i12, i10)) {
                        break;
                    } else {
                        C12244z6.t(obj, j10, C12244z6.s(obj2, j10));
                        u(obj, i12, i10);
                        break;
                    }
                case 60:
                    D(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!t(obj2, i12, i10)) {
                        break;
                    } else {
                        C12244z6.t(obj, j10, C12244z6.s(obj2, j10));
                        u(obj, i12, i10);
                        break;
                    }
                case 68:
                    D(obj, obj2, i10);
                    break;
            }
            i10 += 3;
        }
    }

    @Override
    public final boolean e(Object obj) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i13 < this.f62198h) {
            int[] iArr = this.f62197g;
            int[] iArr2 = this.f62191a;
            int i15 = iArr[i13];
            int i16 = iArr2[i15];
            int M10 = M(i15);
            int i17 = iArr2[i15 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i14) {
                if (i18 != 1048575) {
                    i12 = f62190m.getInt(obj, i18);
                }
                i11 = i12;
                i10 = i18;
            } else {
                i10 = i14;
                i11 = i12;
            }
            if ((268435456 & M10) != 0 && !q(obj, i15, i10, i11, i19)) {
                return false;
            }
            int O10 = O(M10);
            if (O10 != 9 && O10 != 17) {
                if (O10 != 27) {
                    if (O10 == 60 || O10 == 68) {
                        if (t(obj, i16, i15) && !L(obj, M10, E(i15))) {
                            return false;
                        }
                    } else if (O10 != 49) {
                        if (O10 != 50) {
                            continue;
                        } else {
                            Q5 q52 = (Q5) C12244z6.s(obj, M10 & 1048575);
                            if (!q52.isEmpty() && ((P5) F(i15)).e().f62077c.a() == D6.MESSAGE) {
                                InterfaceC12083h6 interfaceC12083h6 = null;
                                for (Object obj2 : q52.values()) {
                                    if (interfaceC12083h6 == null) {
                                        interfaceC12083h6 = C12056e6.a().b(obj2.getClass());
                                    }
                                    if (!interfaceC12083h6.e(obj2)) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
                List list = (List) C12244z6.s(obj, M10 & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    InterfaceC12083h6 E10 = E(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!E10.e(list.get(i20))) {
                            return false;
                        }
                    }
                }
            } else if (q(obj, i15, i10, i11, i19) && !L(obj, M10, E(i15))) {
                return false;
            }
            i13++;
            i14 = i10;
            i12 = i11;
        }
        return !this.f62196f || ((AbstractC12136n5) obj).zzb.e();
    }

    @Override
    public final void f(Object obj) {
        if (i(obj)) {
            if (obj instanceof AbstractC12163q5) {
                AbstractC12163q5 abstractC12163q5 = (AbstractC12163q5) obj;
                abstractC12163q5.r(Integer.MAX_VALUE);
                abstractC12163q5.zza = 0;
                abstractC12163q5.l();
            }
            int[] iArr = this.f62191a;
            for (int i10 = 0; i10 < iArr.length; i10 += 3) {
                int M10 = M(i10);
                int i11 = 1048575 & M10;
                int O10 = O(M10);
                long j10 = i11;
                if (O10 != 9) {
                    if (O10 != 60 && O10 != 68) {
                        switch (O10) {
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
                                ((InterfaceC12243z5) C12244z6.s(obj, j10)).O1();
                                break;
                            case 50:
                                Unsafe unsafe = f62190m;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((Q5) object).j();
                                    unsafe.putObject(obj, j10, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (t(obj, iArr[i10], i10)) {
                        E(i10).f(f62190m.getObject(obj, j10));
                    }
                }
                if (r(obj, i10)) {
                    E(i10).f(f62190m.getObject(obj, j10));
                }
            }
            this.f62200j.b(obj);
            if (this.f62196f) {
                this.f62201k.a(obj);
            }
        }
    }

    @Override
    public final void g(Object obj, byte[] bArr, int i10, int i11, G4 g42) throws IOException {
        z(obj, bArr, i10, i11, 0, g42);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c0 A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(Object obj, Object obj2) {
        int i10;
        boolean b10;
        for (0; i10 < this.f62191a.length; i10 + 3) {
            int M10 = M(i10);
            long j10 = M10 & 1048575;
            switch (O(M10)) {
                case 0:
                    i10 = (p(obj, obj2, i10) && Double.doubleToLongBits(C12244z6.q(obj, j10)) == Double.doubleToLongBits(C12244z6.q(obj2, j10))) ? i10 + 3 : 0;
                    return false;
                case 1:
                    if (p(obj, obj2, i10) && Float.floatToIntBits(C12244z6.o(obj, j10)) == Float.floatToIntBits(C12244z6.o(obj2, j10))) {
                    }
                    return false;
                case 2:
                    if (p(obj, obj2, i10) && C12244z6.k(obj, j10) == C12244z6.k(obj2, j10)) {
                    }
                    return false;
                case 3:
                    if (p(obj, obj2, i10) && C12244z6.k(obj, j10) == C12244z6.k(obj2, j10)) {
                    }
                    return false;
                case 4:
                    if (p(obj, obj2, i10) && C12244z6.i(obj, j10) == C12244z6.i(obj2, j10)) {
                    }
                    return false;
                case 5:
                    if (p(obj, obj2, i10) && C12244z6.k(obj, j10) == C12244z6.k(obj2, j10)) {
                    }
                    return false;
                case 6:
                    if (p(obj, obj2, i10) && C12244z6.i(obj, j10) == C12244z6.i(obj2, j10)) {
                    }
                    return false;
                case 7:
                    if (p(obj, obj2, i10) && C12244z6.m(obj, j10) == C12244z6.m(obj2, j10)) {
                    }
                    return false;
                case 8:
                    if (p(obj, obj2, i10) && C12101j6.b(C12244z6.s(obj, j10), C12244z6.s(obj2, j10))) {
                    }
                    return false;
                case 9:
                    if (p(obj, obj2, i10) && C12101j6.b(C12244z6.s(obj, j10), C12244z6.s(obj2, j10))) {
                    }
                    return false;
                case 10:
                    if (p(obj, obj2, i10) && C12101j6.b(C12244z6.s(obj, j10), C12244z6.s(obj2, j10))) {
                    }
                    return false;
                case 11:
                    if (p(obj, obj2, i10) && C12244z6.i(obj, j10) == C12244z6.i(obj2, j10)) {
                    }
                    return false;
                case 12:
                    if (p(obj, obj2, i10) && C12244z6.i(obj, j10) == C12244z6.i(obj2, j10)) {
                    }
                    return false;
                case 13:
                    if (p(obj, obj2, i10) && C12244z6.i(obj, j10) == C12244z6.i(obj2, j10)) {
                    }
                    return false;
                case 14:
                    if (p(obj, obj2, i10) && C12244z6.k(obj, j10) == C12244z6.k(obj2, j10)) {
                    }
                    return false;
                case 15:
                    if (p(obj, obj2, i10) && C12244z6.i(obj, j10) == C12244z6.i(obj2, j10)) {
                    }
                    return false;
                case 16:
                    if (p(obj, obj2, i10) && C12244z6.k(obj, j10) == C12244z6.k(obj2, j10)) {
                    }
                    return false;
                case 17:
                    if (p(obj, obj2, i10) && C12101j6.b(C12244z6.s(obj, j10), C12244z6.s(obj2, j10))) {
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
                    b10 = C12101j6.b(C12244z6.s(obj, j10), C12244z6.s(obj2, j10));
                    if (b10) {
                        return false;
                    }
                case 50:
                    b10 = C12101j6.b(C12244z6.s(obj, j10), C12244z6.s(obj2, j10));
                    if (b10) {
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
                    long N10 = N(i10) & 1048575;
                    if (C12244z6.i(obj, N10) == C12244z6.i(obj2, N10) && C12101j6.b(C12244z6.s(obj, j10), C12244z6.s(obj2, j10))) {
                    }
                    return false;
                default:
            }
        }
        if (!((AbstractC12163q5) obj).zzc.equals(((AbstractC12163q5) obj2).zzc)) {
            return false;
        }
        if (this.f62196f) {
            return ((AbstractC12136n5) obj).zzb.equals(((AbstractC12136n5) obj2).zzb);
        }
        return true;
    }

    public final boolean p(Object obj, Object obj2, int i10) {
        return r(obj, i10) == r(obj2, i10);
    }

    public final boolean q(Object obj, int i10, int i11, int i12, int i13) {
        return i11 == 1048575 ? r(obj, i10) : (i12 & i13) != 0;
    }

    public final boolean r(Object obj, int i10) {
        int N10 = N(i10);
        long j10 = N10 & 1048575;
        if (j10 != 1048575) {
            return (C12244z6.i(obj, j10) & (1 << (N10 >>> 20))) != 0;
        }
        int M10 = M(i10);
        long j11 = M10 & 1048575;
        switch (O(M10)) {
            case 0:
                return Double.doubleToRawLongBits(C12244z6.q(obj, j11)) != 0;
            case 1:
                return Float.floatToRawIntBits(C12244z6.o(obj, j11)) != 0;
            case 2:
                return C12244z6.k(obj, j11) != 0;
            case 3:
                return C12244z6.k(obj, j11) != 0;
            case 4:
                return C12244z6.i(obj, j11) != 0;
            case 5:
                return C12244z6.k(obj, j11) != 0;
            case 6:
                return C12244z6.i(obj, j11) != 0;
            case 7:
                return C12244z6.m(obj, j11);
            case 8:
                Object s10 = C12244z6.s(obj, j11);
                if (s10 instanceof String) {
                    return !((String) s10).isEmpty();
                }
                if (s10 instanceof S4) {
                    return !S4.f62112c.equals(s10);
                }
                throw new IllegalArgumentException();
            case 9:
                return C12244z6.s(obj, j11) != null;
            case 10:
                return !S4.f62112c.equals(C12244z6.s(obj, j11));
            case 11:
                return C12244z6.i(obj, j11) != 0;
            case 12:
                return C12244z6.i(obj, j11) != 0;
            case 13:
                return C12244z6.i(obj, j11) != 0;
            case 14:
                return C12244z6.k(obj, j11) != 0;
            case 15:
                return C12244z6.i(obj, j11) != 0;
            case 16:
                return C12244z6.k(obj, j11) != 0;
            case 17:
                return C12244z6.s(obj, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final void s(Object obj, int i10) {
        int N10 = N(i10);
        long j10 = 1048575 & N10;
        if (j10 == 1048575) {
            return;
        }
        C12244z6.j(obj, j10, (1 << (N10 >>> 20)) | C12244z6.i(obj, j10));
    }

    public final boolean t(Object obj, int i10, int i11) {
        return C12244z6.i(obj, (long) (N(i11) & 1048575)) == i10;
    }

    public final void u(Object obj, int i10, int i11) {
        C12244z6.j(obj, N(i11) & 1048575, i10);
    }

    public final int v(int i10, int i11) {
        int[] iArr = this.f62191a;
        int length = (iArr.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = iArr[i13];
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

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0d74, code lost:
    
        if (r7 == 1048575) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0d76, code lost:
    
        r15.putInt(r0, r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0d7a, code lost:
    
        r3 = r10.f62198h;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0d80, code lost:
    
        if (r3 >= r10.f62199i) goto L672;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0d82, code lost:
    
        r6 = r10.f62197g;
        r7 = r10.f62200j;
        r8 = r10.f62191a;
        r6 = r6[r3];
        r8 = r8[r6];
        r9 = com.google.android.gms.internal.measurement.C12244z6.s(r0, r10.M(r6) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0d99, code lost:
    
        if (r9 == null) goto L673;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0d9b, code lost:
    
        r12 = r10.G(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0d9f, code lost:
    
        if (r12 == null) goto L674;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0da1, code lost:
    
        r6 = ((com.google.android.gms.internal.measurement.P5) r10.F(r6)).e();
        r9 = ((com.google.android.gms.internal.measurement.Q5) r9).entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0db9, code lost:
    
        if (r9.hasNext() == false) goto L675;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0dbb, code lost:
    
        r13 = (java.util.Map.Entry) r9.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0dcf, code lost:
    
        if (r12.a(((java.lang.Integer) r13.getValue()).intValue()) != false) goto L678;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0dd1, code lost:
    
        if (r4 != 0) goto L576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0dd3, code lost:
    
        r4 = r7.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0dd7, code lost:
    
        r14 = com.google.android.gms.internal.measurement.P5.c(r6, r13.getKey(), r13.getValue());
        r15 = com.google.android.gms.internal.measurement.S4.f62112c;
        r15 = new byte[r14];
        r16 = com.google.android.gms.internal.measurement.W4.f62159d;
        r16 = r7;
        r11 = new com.google.android.gms.internal.measurement.V4(r15, 0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:637:0x0a64, code lost:
    
        throw new com.google.android.gms.internal.measurement.zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0df1, code lost:
    
        com.google.android.gms.internal.measurement.P5.b(r11, r6, r13.getKey(), r13.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0dfc, code lost:
    
        r4.k((r8 << 3) | 2, com.google.android.gms.internal.measurement.P4.a(r11, r15));
        r9.remove();
        r7 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0e16, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0e1c, code lost:
    
        throw new java.lang.RuntimeException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0e1d, code lost:
    
        r3 = r3 + 1;
        r4 = (com.google.android.gms.internal.measurement.C12190t6) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0e27, code lost:
    
        if (r4 == 0) goto L585;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0e29, code lost:
    
        ((com.google.android.gms.internal.measurement.AbstractC12163q5) r0).zzc = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0e2d, code lost:
    
        if (r1 != 0) goto L591;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0e31, code lost:
    
        if (r2 != r40) goto L589;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0e3b, code lost:
    
        throw new com.google.android.gms.internal.measurement.zzmq(r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0e44, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0e3c, code lost:
    
        r3 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0e40, code lost:
    
        if (r2 > r40) goto L595;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0e42, code lost:
    
        if (r5 != r1) goto L595;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0e4a, code lost:
    
        throw new com.google.android.gms.internal.measurement.zzmq(r3);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:219:0x037d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x00b9. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:643:0x0a87. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0923 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0931 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:648:0x0d01  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x0d10  */
    /* JADX WARN: Removed duplicated region for block: B:723:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0d27  */
    /* JADX WARN: Type inference failed for: r3v65, types: [int] */
    /* JADX WARN: Type inference failed for: r4v107 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.google.android.gms.internal.measurement.t6] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int z(Object obj, byte[] bArr, int i10, int i11, int i12, G4 g42) throws IOException {
        Z5<T> z52;
        String str;
        int i13;
        Unsafe unsafe;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        String str2;
        int i23;
        int i24;
        int i25;
        int c10;
        Unsafe unsafe2;
        int g10;
        int a10;
        int i26;
        Unsafe unsafe3;
        int i27;
        Object obj2;
        int i28;
        Q5 q52;
        Unsafe unsafe4;
        Object obj3;
        long j10;
        int i29;
        Unsafe unsafe5;
        int i30;
        Z5<T> z53;
        String str3;
        String str4;
        int m10;
        Object obj4;
        int l10;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int c11;
        Z5<T> z54 = this;
        Object obj5 = obj;
        int i38 = i11;
        int i39 = i12;
        j(obj);
        Unsafe unsafe6 = f62190m;
        int i40 = i10;
        int i41 = -1;
        int i42 = 0;
        int i43 = 0;
        int i44 = 0;
        int i45 = 1048575;
        while (true) {
            if (i40 < i38) {
                int i46 = i40 + 1;
                int i47 = bArr[i40];
                if (i47 < 0) {
                    i14 = H4.b(i47, bArr, i46, g42);
                    i43 = g42.f61927a;
                } else {
                    i43 = i47;
                    i14 = i46;
                }
                int i48 = i43 >>> 3;
                if (i48 > i41) {
                    i16 = (i48 < z54.f62193c || i48 > z54.f62194d) ? -1 : z54.v(i48, i42 / 3);
                } else if (i48 < z54.f62193c || i48 > z54.f62194d) {
                    i15 = -1;
                    i16 = -1;
                    if (i16 != i15) {
                        z52 = z54;
                        i17 = i14;
                        i18 = i44;
                        i19 = i45;
                        str = "Failed to parse the message.";
                        i13 = i39;
                        unsafe = unsafe6;
                        i20 = 0;
                    } else {
                        int i49 = i43 & 7;
                        int[] iArr = z54.f62191a;
                        int i50 = i14;
                        int i51 = iArr[i16 + 1];
                        int i52 = i43;
                        int O10 = O(i51);
                        long j11 = i51 & 1048575;
                        if (O10 <= 17) {
                            int i53 = iArr[i16 + 2];
                            int i54 = 1 << (i53 >>> 20);
                            int i55 = 1048575;
                            int i56 = i53 & 1048575;
                            if (i56 != i45) {
                                if (i45 != 1048575) {
                                    unsafe6.putInt(obj5, i45, i44);
                                    i55 = 1048575;
                                }
                                i44 = i56 == i55 ? 0 : unsafe6.getInt(obj5, i56);
                                i34 = i56;
                            } else {
                                i34 = i45;
                            }
                            switch (O10) {
                                case 0:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 1) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        i40 = i36 + 8;
                                        i44 |= i54;
                                        C12244z6.r(obj5, j11, Double.longBitsToDouble(H4.e(bArr, i36)));
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 1:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 5) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        i40 = i36 + 4;
                                        i44 |= i54;
                                        C12244z6.p(obj5, j11, Float.intBitsToFloat(H4.d(bArr, i36)));
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 2:
                                case 3:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 0) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        i37 = i54 | i44;
                                        c11 = H4.c(bArr, i36, g42);
                                        unsafe6.putLong(obj, j11, g42.f61928b);
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i44 = i37;
                                        i40 = c11;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 4:
                                case 11:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 0) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        i44 |= i54;
                                        i40 = H4.a(bArr, i36, g42);
                                        unsafe6.putInt(obj5, j11, g42.f61927a);
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 5:
                                case 14:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 1) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        c11 = i36 + 8;
                                        i37 = i54 | i44;
                                        unsafe6.putLong(obj, j11, H4.e(bArr, i36));
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i44 = i37;
                                        i40 = c11;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 6:
                                case 13:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 5) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        i40 = i36 + 4;
                                        i44 |= i54;
                                        unsafe6.putInt(obj5, j11, H4.d(bArr, i36));
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 7:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 0) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        i44 |= i54;
                                        i40 = H4.c(bArr, i36, g42);
                                        C12244z6.n(obj5, j11, g42.f61928b != 0);
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 8:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 2) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        if ((i51 & 536870912) != 0) {
                                            i44 |= i54;
                                            i40 = H4.f(bArr, i36, g42);
                                        } else {
                                            i40 = H4.a(bArr, i36, g42);
                                            int i57 = g42.f61927a;
                                            if (i57 < 0) {
                                                throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            int i58 = i44 | i54;
                                            if (i57 == 0) {
                                                g42.f61929c = "";
                                            } else {
                                                g42.f61929c = new String(bArr, i40, i57, A5.f61885a);
                                                i40 += i57;
                                            }
                                            i44 = i58;
                                        }
                                        unsafe6.putObject(obj5, j11, g42.f61929c);
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 9:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 2) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        int i59 = i44 | i54;
                                        Object H10 = z54.H(obj5, i20);
                                        i40 = H4.j(H10, z54.E(i20), bArr, i36, i11, g42);
                                        z54.I(obj5, i20, H10);
                                        i44 = i59;
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 10:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 2) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        i44 |= i54;
                                        i40 = H4.g(bArr, i36, g42);
                                        unsafe6.putObject(obj5, j11, g42.f61929c);
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 12:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 0) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        int a11 = H4.a(bArr, i36, g42);
                                        int i60 = g42.f61927a;
                                        InterfaceC12207v5 G10 = z54.G(i20);
                                        if ((i51 & Integer.MIN_VALUE) == 0 || G10 == null || G10.a(i60)) {
                                            i44 |= i54;
                                            unsafe6.putInt(obj5, j11, i60);
                                        } else {
                                            y(obj).k(i35, Long.valueOf(i60));
                                        }
                                        i40 = a11;
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 15:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 0) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        i44 |= i54;
                                        i40 = H4.a(bArr, i36, g42);
                                        unsafe6.putInt(obj5, j11, U4.a(g42.f61927a));
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                case 16:
                                    i35 = i52;
                                    i36 = i50;
                                    i19 = i34;
                                    i20 = i16;
                                    if (i49 != 0) {
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        int i61 = i44 | i54;
                                        int c12 = H4.c(bArr, i36, g42);
                                        unsafe6.putLong(obj, j11, U4.b(g42.f61928b));
                                        i44 = i61;
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i40 = c12;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                                default:
                                    if (i49 != 3) {
                                        i35 = i52;
                                        i36 = i50;
                                        i19 = i34;
                                        i20 = i16;
                                        i17 = i36;
                                        i18 = i44;
                                        i43 = i35;
                                        unsafe = unsafe6;
                                        str = "Failed to parse the message.";
                                        z52 = z54;
                                        i13 = i12;
                                        break;
                                    } else {
                                        Object H11 = z54.H(obj5, i16);
                                        i35 = i52;
                                        i19 = i34;
                                        i20 = i16;
                                        i40 = H4.k(H11, z54.E(i16), bArr, i50, i11, (i48 << 3) | 4, g42);
                                        z54.I(obj5, i20, H11);
                                        i44 = i54 | i44;
                                        i43 = i35;
                                        i42 = i20;
                                        i41 = i48;
                                        i45 = i19;
                                        i38 = i11;
                                        i39 = i12;
                                        break;
                                    }
                            }
                        } else {
                            int i62 = i45;
                            i20 = i16;
                            int i63 = i52;
                            int i64 = i44;
                            if (O10 != 27) {
                                i19 = i62;
                                i18 = i64;
                                if (O10 > 49) {
                                    Unsafe unsafe7 = unsafe6;
                                    i22 = i48;
                                    str2 = "Failed to parse the message.";
                                    i23 = i50;
                                    Z5<T> z55 = z54;
                                    if (O10 != 50) {
                                        long j12 = iArr[i20 + 2] & 1048575;
                                        switch (O10) {
                                            case 51:
                                                z52 = this;
                                                obj5 = obj;
                                                i24 = i20;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                if (i49 == 1) {
                                                    i25 = i23 + 8;
                                                    unsafe.putObject(obj5, j11, Double.valueOf(Double.longBitsToDouble(H4.e(bArr, i23))));
                                                    unsafe.putInt(obj5, j12, i48);
                                                    i40 = i25;
                                                    if (i40 == i23) {
                                                        i13 = i12;
                                                        i17 = i40;
                                                        i20 = i24;
                                                        break;
                                                    } else {
                                                        i39 = i12;
                                                        z54 = z52;
                                                        i41 = i48;
                                                        unsafe6 = unsafe;
                                                        i44 = i18;
                                                        i45 = i19;
                                                        i42 = i24;
                                                        i38 = i11;
                                                        break;
                                                    }
                                                }
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                            case 52:
                                                z52 = this;
                                                obj5 = obj;
                                                i24 = i20;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                if (i49 == 5) {
                                                    i25 = i23 + 4;
                                                    unsafe.putObject(obj5, j11, Float.valueOf(Float.intBitsToFloat(H4.d(bArr, i23))));
                                                    unsafe.putInt(obj5, j12, i48);
                                                    i40 = i25;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 53:
                                            case 54:
                                                z52 = this;
                                                obj5 = obj;
                                                i24 = i20;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                if (i49 == 0) {
                                                    c10 = H4.c(bArr, i23, g42);
                                                    unsafe.putObject(obj5, j11, Long.valueOf(g42.f61928b));
                                                    unsafe.putInt(obj5, j12, i48);
                                                    i40 = c10;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 55:
                                            case 62:
                                                z52 = this;
                                                obj5 = obj;
                                                i24 = i20;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                if (i49 == 0) {
                                                    i25 = H4.a(bArr, i23, g42);
                                                    unsafe.putObject(obj5, j11, Integer.valueOf(g42.f61927a));
                                                    unsafe.putInt(obj5, j12, i48);
                                                    i40 = i25;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 56:
                                            case 65:
                                                z52 = this;
                                                obj5 = obj;
                                                i24 = i20;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                if (i49 == 1) {
                                                    i25 = i23 + 8;
                                                    unsafe.putObject(obj5, j11, Long.valueOf(H4.e(bArr, i23)));
                                                    unsafe.putInt(obj5, j12, i48);
                                                    i40 = i25;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 57:
                                            case 64:
                                                z52 = this;
                                                obj5 = obj;
                                                i24 = i20;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                if (i49 == 5) {
                                                    i25 = i23 + 4;
                                                    unsafe.putObject(obj5, j11, Integer.valueOf(H4.d(bArr, i23)));
                                                    unsafe.putInt(obj5, j12, i48);
                                                    i40 = i25;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 58:
                                                z52 = this;
                                                obj5 = obj;
                                                i24 = i20;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                if (i49 == 0) {
                                                    c10 = H4.c(bArr, i23, g42);
                                                    unsafe.putObject(obj5, j11, Boolean.valueOf(g42.f61928b != 0));
                                                    unsafe.putInt(obj5, j12, i48);
                                                    i40 = c10;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 59:
                                                z52 = this;
                                                obj5 = obj;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                if (i49 == 2) {
                                                    i25 = H4.a(bArr, i23, g42);
                                                    int i65 = g42.f61927a;
                                                    if (i65 == 0) {
                                                        unsafe.putObject(obj5, j11, "");
                                                        i24 = i20;
                                                    } else {
                                                        i24 = i20;
                                                        int i66 = i25 + i65;
                                                        if ((i51 & 536870912) != 0 && !B6.a(bArr, i25, i66)) {
                                                            throw new zzmq("Protocol message had invalid UTF-8.");
                                                        }
                                                        unsafe.putObject(obj5, j11, new String(bArr, i25, i65, A5.f61885a));
                                                        i25 = i66;
                                                    }
                                                    unsafe.putInt(obj5, j12, i48);
                                                    i40 = i25;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                i24 = i20;
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 60:
                                                z52 = this;
                                                obj5 = obj;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe2 = unsafe7;
                                                if (i49 == 2) {
                                                    Object J10 = z52.J(obj5, i48, i20);
                                                    unsafe = unsafe2;
                                                    i40 = H4.j(J10, z52.E(i20), bArr, i23, i11, g42);
                                                    z52.K(obj5, i48, i20, J10);
                                                    i43 = i43;
                                                    i24 = i20;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                unsafe = unsafe2;
                                                i24 = i20;
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 61:
                                                z52 = this;
                                                obj5 = obj;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe2 = unsafe7;
                                                if (i49 == 2) {
                                                    g10 = H4.g(bArr, i23, g42);
                                                    unsafe2.putObject(obj5, j11, g42.f61929c);
                                                    unsafe2.putInt(obj5, j12, i48);
                                                    i40 = g10;
                                                    unsafe = unsafe2;
                                                    i24 = i20;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                unsafe = unsafe2;
                                                i24 = i20;
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 63:
                                                z52 = this;
                                                obj5 = obj;
                                                str = str2;
                                                i48 = i22;
                                                unsafe2 = unsafe7;
                                                if (i49 == 0) {
                                                    g10 = H4.a(bArr, i23, g42);
                                                    int i67 = g42.f61927a;
                                                    InterfaceC12207v5 G11 = z52.G(i20);
                                                    if (G11 == null || G11.a(i67)) {
                                                        i43 = i63;
                                                        unsafe2.putObject(obj5, j11, Integer.valueOf(i67));
                                                        unsafe2.putInt(obj5, j12, i48);
                                                    } else {
                                                        i43 = i63;
                                                        y(obj).k(i43, Long.valueOf(i67));
                                                    }
                                                    i40 = g10;
                                                    unsafe = unsafe2;
                                                    i24 = i20;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                unsafe = unsafe2;
                                                i24 = i20;
                                                i43 = i63;
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 66:
                                                z52 = this;
                                                obj5 = obj;
                                                str = str2;
                                                i48 = i22;
                                                unsafe2 = unsafe7;
                                                if (i49 == 0) {
                                                    a10 = H4.a(bArr, i23, g42);
                                                    unsafe2.putObject(obj5, j11, Integer.valueOf(U4.a(g42.f61927a)));
                                                    unsafe2.putInt(obj5, j12, i48);
                                                    i40 = a10;
                                                    unsafe = unsafe2;
                                                    i24 = i20;
                                                    i43 = i63;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                unsafe = unsafe2;
                                                i24 = i20;
                                                i43 = i63;
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 67:
                                                z52 = this;
                                                obj5 = obj;
                                                str = str2;
                                                i48 = i22;
                                                if (i49 == 0) {
                                                    a10 = H4.c(bArr, i23, g42);
                                                    unsafe2 = unsafe7;
                                                    unsafe2.putObject(obj5, j11, Long.valueOf(U4.b(g42.f61928b)));
                                                    unsafe2.putInt(obj5, j12, i48);
                                                    i40 = a10;
                                                    unsafe = unsafe2;
                                                    i24 = i20;
                                                    i43 = i63;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                i24 = i20;
                                                i43 = i63;
                                                unsafe = unsafe7;
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                            case 68:
                                                if (i49 == 3) {
                                                    obj5 = obj;
                                                    Object J11 = J(obj5, i22, i20);
                                                    str = str2;
                                                    i48 = i22;
                                                    i40 = H4.k(J11, E(i20), bArr, i23, i11, (i63 & (-8)) | 4, g42);
                                                    K(obj5, i48, i20, J11);
                                                    z52 = this;
                                                    i24 = i20;
                                                    i43 = i63;
                                                    unsafe = unsafe7;
                                                    if (i40 == i23) {
                                                    }
                                                } else {
                                                    obj5 = obj;
                                                    str = str2;
                                                    i48 = i22;
                                                    z52 = this;
                                                    i24 = i20;
                                                    i43 = i63;
                                                    unsafe = unsafe7;
                                                    i40 = i23;
                                                    if (i40 == i23) {
                                                    }
                                                }
                                                break;
                                            default:
                                                z52 = this;
                                                obj5 = obj;
                                                i24 = i20;
                                                str = str2;
                                                i43 = i63;
                                                i48 = i22;
                                                unsafe = unsafe7;
                                                i40 = i23;
                                                if (i40 == i23) {
                                                }
                                                break;
                                        }
                                    } else if (i49 == 2) {
                                        Object F10 = z55.F(i20);
                                        Unsafe unsafe8 = unsafe7;
                                        Object object = unsafe8.getObject(obj5, j11);
                                        if (!((Q5) object).k()) {
                                            Q5 i68 = Q5.e().i();
                                            R5.a(i68, object);
                                            unsafe8.putObject(obj5, j11, i68);
                                            object = i68;
                                        }
                                        O5 e10 = ((P5) F10).e();
                                        Q5 q53 = (Q5) object;
                                        int a12 = H4.a(bArr, i23, g42);
                                        int i69 = g42.f61927a;
                                        if (i69 >= 0 && i69 <= i11 - a12) {
                                            int i70 = a12 + i69;
                                            Object obj6 = e10.f62076b;
                                            Object obj7 = e10.f62078d;
                                            Object obj8 = obj7;
                                            while (a12 < i70) {
                                                Object obj9 = obj6;
                                                int i71 = a12 + 1;
                                                byte b10 = bArr[a12];
                                                if (b10 < 0) {
                                                    i71 = H4.b(b10, bArr, i71, g42);
                                                    b10 = g42.f61927a;
                                                }
                                                int i72 = i70;
                                                int i73 = b10 >>> 3;
                                                Q5 q54 = q53;
                                                int i74 = b10 & 7;
                                                Unsafe unsafe9 = unsafe8;
                                                if (i73 != 1) {
                                                    if (i73 == 2) {
                                                        C6 c62 = e10.f62077c;
                                                        if (i74 == c62.b()) {
                                                            obj3 = obj7;
                                                            q52 = q54;
                                                            i27 = i63;
                                                            unsafe4 = unsafe9;
                                                            obj2 = obj9;
                                                            a12 = w(bArr, i71, i11, c62, obj7.getClass(), g42);
                                                            i70 = i72;
                                                            obj8 = g42.f61929c;
                                                            q53 = q52;
                                                            obj6 = obj2;
                                                            obj7 = obj3;
                                                            i63 = i27;
                                                            unsafe8 = unsafe4;
                                                        }
                                                    }
                                                    i27 = i63;
                                                    obj2 = obj9;
                                                    i28 = i72;
                                                    q52 = q54;
                                                    unsafe4 = unsafe9;
                                                    obj3 = obj7;
                                                } else {
                                                    i27 = i63;
                                                    obj2 = obj9;
                                                    i28 = i72;
                                                    q52 = q54;
                                                    unsafe4 = unsafe9;
                                                    obj3 = obj7;
                                                    C6 c63 = e10.f62075a;
                                                    if (i74 == c63.b()) {
                                                        a12 = w(bArr, i71, i11, c63, null, g42);
                                                        obj6 = g42.f61929c;
                                                        i70 = i28;
                                                        q53 = q52;
                                                        obj7 = obj3;
                                                        i63 = i27;
                                                        unsafe8 = unsafe4;
                                                    }
                                                }
                                                a12 = H4.p(b10, bArr, i71, i11, g42);
                                                i70 = i28;
                                                q53 = q52;
                                                obj6 = obj2;
                                                obj7 = obj3;
                                                i63 = i27;
                                                unsafe8 = unsafe4;
                                            }
                                            int i75 = i70;
                                            Q5 q55 = q53;
                                            Unsafe unsafe10 = unsafe8;
                                            int i76 = i63;
                                            Object obj10 = obj6;
                                            if (a12 != i75) {
                                                throw new zzmq(str2);
                                            }
                                            q55.put(obj10, obj8);
                                            if (i75 != i23) {
                                                z54 = this;
                                                i40 = i75;
                                                i42 = i20;
                                                i38 = i11;
                                                i44 = i18;
                                                i45 = i19;
                                                i43 = i76;
                                                i41 = i22;
                                                unsafe6 = unsafe10;
                                                obj5 = obj;
                                                i39 = i12;
                                            } else {
                                                z52 = this;
                                                i13 = i12;
                                                i17 = i75;
                                                str = str2;
                                                i43 = i76;
                                                i48 = i22;
                                                unsafe = unsafe10;
                                                obj5 = obj;
                                            }
                                        }
                                    } else {
                                        i26 = i63;
                                        unsafe3 = unsafe7;
                                    }
                                } else {
                                    int i77 = i48;
                                    long j13 = i51;
                                    InterfaceC12243z5 interfaceC12243z5 = (InterfaceC12243z5) unsafe6.getObject(obj5, j11);
                                    if (interfaceC12243z5.N1()) {
                                        j10 = j13;
                                    } else {
                                        int size = interfaceC12243z5.size();
                                        j10 = j13;
                                        interfaceC12243z5 = interfaceC12243z5.K0(size + size);
                                        unsafe6.putObject(obj5, j11, interfaceC12243z5);
                                    }
                                    InterfaceC12243z5 interfaceC12243z52 = interfaceC12243z5;
                                    switch (O10) {
                                        case 18:
                                        case 35:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            i30 = i50;
                                            z53 = z54;
                                            str3 = "Failed to parse the message.";
                                            if (i49 == 2) {
                                                int i78 = H4.f61937b;
                                                Y4 y42 = (Y4) interfaceC12243z52;
                                                i40 = H4.a(bArr, i30, g42);
                                                int i79 = g42.f61927a;
                                                int i80 = i40 + i79;
                                                if (i80 > bArr.length) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                y42.l(y42.size() + (i79 / 8));
                                                while (i40 < i80) {
                                                    y42.k(Double.longBitsToDouble(H4.e(bArr, i40)));
                                                    i40 += 8;
                                                }
                                                if (i40 != i80) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else {
                                                if (i49 == 1) {
                                                    i40 = i30 + 8;
                                                    int i81 = H4.f61937b;
                                                    Y4 y43 = (Y4) interfaceC12243z52;
                                                    y43.k(Double.longBitsToDouble(H4.e(bArr, i30)));
                                                    while (i40 < i29) {
                                                        int a13 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            y43.k(Double.longBitsToDouble(H4.e(bArr, a13)));
                                                            i40 = a13 + 8;
                                                        }
                                                    }
                                                }
                                                i40 = i30;
                                            }
                                            if (i40 != i30) {
                                                str = str3;
                                                i17 = i40;
                                                i43 = i63;
                                                i48 = i77;
                                                unsafe = unsafe5;
                                                i13 = i12;
                                                z52 = z53;
                                                break;
                                            } else {
                                                z54 = z53;
                                                i43 = i63;
                                                i42 = i20;
                                                i38 = i29;
                                                i44 = i18;
                                                i45 = i19;
                                                i41 = i77;
                                                unsafe6 = unsafe5;
                                                i39 = i12;
                                                break;
                                            }
                                        case 19:
                                        case 36:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            i30 = i50;
                                            z53 = z54;
                                            str3 = "Failed to parse the message.";
                                            if (i49 == 2) {
                                                int i82 = H4.f61937b;
                                                C12091i5 c12091i5 = (C12091i5) interfaceC12243z52;
                                                i40 = H4.a(bArr, i30, g42);
                                                int i83 = g42.f61927a;
                                                int i84 = i40 + i83;
                                                if (i84 > bArr.length) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                c12091i5.l(c12091i5.size() + (i83 / 4));
                                                while (i40 < i84) {
                                                    c12091i5.k(Float.intBitsToFloat(H4.d(bArr, i40)));
                                                    i40 += 4;
                                                }
                                                if (i40 != i84) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else {
                                                if (i49 == 5) {
                                                    i40 = i30 + 4;
                                                    int i85 = H4.f61937b;
                                                    C12091i5 c12091i52 = (C12091i5) interfaceC12243z52;
                                                    c12091i52.k(Float.intBitsToFloat(H4.d(bArr, i30)));
                                                    while (i40 < i29) {
                                                        int a14 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            c12091i52.k(Float.intBitsToFloat(H4.d(bArr, a14)));
                                                            i40 = a14 + 4;
                                                        }
                                                    }
                                                }
                                                i40 = i30;
                                            }
                                            if (i40 != i30) {
                                            }
                                            break;
                                        case 20:
                                        case 21:
                                        case 37:
                                        case 38:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            i30 = i50;
                                            z53 = z54;
                                            str3 = "Failed to parse the message.";
                                            if (i49 == 2) {
                                                int i86 = H4.f61937b;
                                                J5 j52 = (J5) interfaceC12243z52;
                                                i40 = H4.a(bArr, i30, g42);
                                                int i87 = g42.f61927a + i40;
                                                while (i40 < i87) {
                                                    i40 = H4.c(bArr, i40, g42);
                                                    j52.c(g42.f61928b);
                                                }
                                                if (i40 != i87) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else {
                                                if (i49 == 0) {
                                                    int i88 = H4.f61937b;
                                                    J5 j53 = (J5) interfaceC12243z52;
                                                    i40 = H4.c(bArr, i30, g42);
                                                    j53.c(g42.f61928b);
                                                    while (i40 < i29) {
                                                        int a15 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            i40 = H4.c(bArr, a15, g42);
                                                            j53.c(g42.f61928b);
                                                        }
                                                    }
                                                }
                                                i40 = i30;
                                            }
                                            if (i40 != i30) {
                                            }
                                            break;
                                        case 22:
                                        case 29:
                                        case 39:
                                        case 43:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            str4 = "Failed to parse the message.";
                                            i30 = i50;
                                            z53 = z54;
                                            if (i49 == 2) {
                                                m10 = H4.m(bArr, i30, interfaceC12243z52, g42);
                                                i40 = m10;
                                                str3 = str4;
                                                if (i40 != i30) {
                                                }
                                            } else {
                                                if (i49 == 0) {
                                                    str3 = str4;
                                                    i40 = H4.l(i63, bArr, i30, i11, interfaceC12243z52, g42);
                                                    if (i40 != i30) {
                                                    }
                                                }
                                                str3 = str4;
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            break;
                                        case 23:
                                        case 32:
                                        case 40:
                                        case 46:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            str4 = "Failed to parse the message.";
                                            i30 = i50;
                                            z53 = z54;
                                            if (i49 == 2) {
                                                int i89 = H4.f61937b;
                                                J5 j54 = (J5) interfaceC12243z52;
                                                m10 = H4.a(bArr, i30, g42);
                                                int i90 = g42.f61927a;
                                                int i91 = m10 + i90;
                                                if (i91 > bArr.length) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                j54.j(j54.size() + (i90 / 8));
                                                while (m10 < i91) {
                                                    j54.c(H4.e(bArr, m10));
                                                    m10 += 8;
                                                }
                                                if (m10 != i91) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                i40 = m10;
                                                str3 = str4;
                                                if (i40 != i30) {
                                                }
                                            } else {
                                                if (i49 == 1) {
                                                    i40 = i30 + 8;
                                                    int i92 = H4.f61937b;
                                                    J5 j55 = (J5) interfaceC12243z52;
                                                    j55.c(H4.e(bArr, i30));
                                                    while (i40 < i29) {
                                                        int a16 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            j55.c(H4.e(bArr, a16));
                                                            i40 = a16 + 8;
                                                        } else {
                                                            str3 = str4;
                                                            if (i40 != i30) {
                                                            }
                                                        }
                                                    }
                                                    str3 = str4;
                                                    if (i40 != i30) {
                                                    }
                                                }
                                                str3 = str4;
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            break;
                                        case 24:
                                        case 31:
                                        case 41:
                                        case 45:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            str4 = "Failed to parse the message.";
                                            i30 = i50;
                                            z53 = z54;
                                            if (i49 == 2) {
                                                int i93 = H4.f61937b;
                                                C12171r5 c12171r5 = (C12171r5) interfaceC12243z52;
                                                m10 = H4.a(bArr, i30, g42);
                                                int i94 = g42.f61927a;
                                                int i95 = m10 + i94;
                                                if (i95 > bArr.length) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                c12171r5.l(c12171r5.size() + (i94 / 4));
                                                while (m10 < i95) {
                                                    c12171r5.k(H4.d(bArr, m10));
                                                    m10 += 4;
                                                }
                                                if (m10 != i95) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                i40 = m10;
                                                str3 = str4;
                                                if (i40 != i30) {
                                                }
                                            } else {
                                                if (i49 == 5) {
                                                    i40 = i30 + 4;
                                                    int i96 = H4.f61937b;
                                                    C12171r5 c12171r52 = (C12171r5) interfaceC12243z52;
                                                    c12171r52.k(H4.d(bArr, i30));
                                                    while (i40 < i29) {
                                                        int a17 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            c12171r52.k(H4.d(bArr, a17));
                                                            i40 = a17 + 4;
                                                        } else {
                                                            str3 = str4;
                                                            if (i40 != i30) {
                                                            }
                                                        }
                                                    }
                                                    str3 = str4;
                                                    if (i40 != i30) {
                                                    }
                                                }
                                                str3 = str4;
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            break;
                                        case 25:
                                        case 42:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            str4 = "Failed to parse the message.";
                                            i30 = i50;
                                            z53 = z54;
                                            if (i49 == 2) {
                                                int i97 = H4.f61937b;
                                                I4 i410 = (I4) interfaceC12243z52;
                                                m10 = H4.a(bArr, i30, g42);
                                                int i98 = g42.f61927a + m10;
                                                while (m10 < i98) {
                                                    m10 = H4.c(bArr, m10, g42);
                                                    i410.k(g42.f61928b != 0);
                                                }
                                                if (m10 != i98) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else {
                                                if (i49 == 0) {
                                                    int i99 = H4.f61937b;
                                                    I4 i411 = (I4) interfaceC12243z52;
                                                    m10 = H4.c(bArr, i30, g42);
                                                    i411.k(g42.f61928b != 0);
                                                    while (m10 < i29) {
                                                        int a18 = H4.a(bArr, m10, g42);
                                                        if (i63 == g42.f61927a) {
                                                            m10 = H4.c(bArr, a18, g42);
                                                            i411.k(g42.f61928b != 0);
                                                        }
                                                    }
                                                }
                                                str3 = str4;
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            i40 = m10;
                                            str3 = str4;
                                            if (i40 != i30) {
                                            }
                                            break;
                                        case 26:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            str4 = "Failed to parse the message.";
                                            i30 = i50;
                                            z53 = z54;
                                            if (i49 == 2) {
                                                if ((j10 & TagBits.HasTypeVariable) == 0) {
                                                    i40 = H4.a(bArr, i30, g42);
                                                    int i100 = g42.f61927a;
                                                    if (i100 < 0) {
                                                        throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i100 == 0) {
                                                        obj4 = "";
                                                        interfaceC12243z52.add(obj4);
                                                    } else {
                                                        obj4 = "";
                                                        interfaceC12243z52.add(new String(bArr, i40, i100, A5.f61885a));
                                                        i40 += i100;
                                                    }
                                                    while (i40 < i29) {
                                                        int a19 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            i40 = H4.a(bArr, a19, g42);
                                                            int i101 = g42.f61927a;
                                                            if (i101 < 0) {
                                                                throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                            }
                                                            if (i101 == 0) {
                                                                interfaceC12243z52.add(obj4);
                                                            } else {
                                                                interfaceC12243z52.add(new String(bArr, i40, i101, A5.f61885a));
                                                                i40 += i101;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    i40 = H4.a(bArr, i30, g42);
                                                    int i102 = g42.f61927a;
                                                    if (i102 < 0) {
                                                        throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i102 == 0) {
                                                        interfaceC12243z52.add("");
                                                    } else {
                                                        int i103 = i40 + i102;
                                                        if (!B6.a(bArr, i40, i103)) {
                                                            throw new zzmq("Protocol message had invalid UTF-8.");
                                                        }
                                                        interfaceC12243z52.add(new String(bArr, i40, i102, A5.f61885a));
                                                        i40 = i103;
                                                    }
                                                    while (i40 < i29) {
                                                        int a20 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            i40 = H4.a(bArr, a20, g42);
                                                            int i104 = g42.f61927a;
                                                            if (i104 < 0) {
                                                                throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                            }
                                                            if (i104 == 0) {
                                                                interfaceC12243z52.add("");
                                                            } else {
                                                                int i105 = i40 + i104;
                                                                if (!B6.a(bArr, i40, i105)) {
                                                                    throw new zzmq("Protocol message had invalid UTF-8.");
                                                                }
                                                                interfaceC12243z52.add(new String(bArr, i40, i104, A5.f61885a));
                                                                i40 = i105;
                                                            }
                                                        }
                                                    }
                                                }
                                                str3 = str4;
                                                if (i40 != i30) {
                                                }
                                            }
                                            str3 = str4;
                                            i40 = i30;
                                            if (i40 != i30) {
                                            }
                                            break;
                                        case 27:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            if (i49 == 2) {
                                                i77 = i77;
                                                i30 = i50;
                                                i40 = H4.n(E(i20), i63, bArr, i50, i11, interfaceC12243z52, g42);
                                                z53 = this;
                                                str3 = "Failed to parse the message.";
                                                if (i40 != i30) {
                                                }
                                            } else {
                                                i77 = i77;
                                                i30 = i50;
                                                z53 = this;
                                                str3 = "Failed to parse the message.";
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            break;
                                        case 28:
                                            i29 = i11;
                                            unsafe5 = unsafe6;
                                            if (i49 == 2) {
                                                int a21 = H4.a(bArr, i50, g42);
                                                int i106 = g42.f61927a;
                                                if (i106 < 0) {
                                                    throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i106 > bArr.length - a21) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                if (i106 == 0) {
                                                    interfaceC12243z52.add(S4.f62112c);
                                                } else {
                                                    interfaceC12243z52.add(S4.p(bArr, a21, i106));
                                                    a21 += i106;
                                                }
                                                while (a21 < i29) {
                                                    int a22 = H4.a(bArr, a21, g42);
                                                    if (i63 == g42.f61927a) {
                                                        a21 = H4.a(bArr, a22, g42);
                                                        int i107 = g42.f61927a;
                                                        if (i107 < 0) {
                                                            throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i107 > bArr.length - a21) {
                                                            throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                        }
                                                        if (i107 == 0) {
                                                            interfaceC12243z52.add(S4.f62112c);
                                                        } else {
                                                            interfaceC12243z52.add(S4.p(bArr, a21, i107));
                                                            a21 += i107;
                                                        }
                                                    } else {
                                                        i40 = a21;
                                                        i77 = i77;
                                                        str3 = "Failed to parse the message.";
                                                        i30 = i50;
                                                        z53 = this;
                                                        if (i40 != i30) {
                                                        }
                                                    }
                                                }
                                                i40 = a21;
                                                i77 = i77;
                                                str3 = "Failed to parse the message.";
                                                i30 = i50;
                                                z53 = this;
                                                if (i40 != i30) {
                                                }
                                            } else {
                                                i77 = i77;
                                                str3 = "Failed to parse the message.";
                                                i30 = i50;
                                                z53 = this;
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            break;
                                        case 30:
                                        case 44:
                                            i29 = i11;
                                            if (i49 == 2) {
                                                l10 = H4.m(bArr, i50, interfaceC12243z52, g42);
                                            } else if (i49 == 0) {
                                                l10 = H4.l(i63, bArr, i50, i11, interfaceC12243z52, g42);
                                            } else {
                                                unsafe5 = unsafe6;
                                                i30 = i50;
                                                str3 = "Failed to parse the message.";
                                                z53 = this;
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            InterfaceC12207v5 G12 = z54.G(i20);
                                            AbstractC12181s6 abstractC12181s6 = z54.f62200j;
                                            int i108 = C12101j6.f62335b;
                                            if (G12 == null) {
                                                i31 = l10;
                                                unsafe5 = unsafe6;
                                                i32 = i77;
                                            } else if (interfaceC12243z52 != null) {
                                                int size2 = interfaceC12243z52.size();
                                                i31 = l10;
                                                Object obj11 = null;
                                                int i109 = 0;
                                                int i110 = 0;
                                                while (i109 < size2) {
                                                    Unsafe unsafe11 = unsafe6;
                                                    Integer num = (Integer) interfaceC12243z52.get(i109);
                                                    int intValue = num.intValue();
                                                    if (G12.a(intValue)) {
                                                        if (i109 != i110) {
                                                            interfaceC12243z52.set(i110, num);
                                                        }
                                                        i110++;
                                                        i33 = i77;
                                                    } else {
                                                        i33 = i77;
                                                        obj11 = C12101j6.e(obj5, i33, intValue, obj11, abstractC12181s6);
                                                    }
                                                    i109++;
                                                    i77 = i33;
                                                    unsafe6 = unsafe11;
                                                }
                                                unsafe5 = unsafe6;
                                                i32 = i77;
                                                if (i110 != size2) {
                                                    interfaceC12243z52.subList(i110, size2).clear();
                                                }
                                            } else {
                                                i31 = l10;
                                                unsafe5 = unsafe6;
                                                i32 = i77;
                                                Iterator it = interfaceC12243z52.iterator();
                                                Object obj12 = null;
                                                while (it.hasNext()) {
                                                    int intValue2 = ((Integer) it.next()).intValue();
                                                    if (!G12.a(intValue2)) {
                                                        obj12 = C12101j6.e(obj5, i32, intValue2, obj12, abstractC12181s6);
                                                        it.remove();
                                                    }
                                                }
                                            }
                                            i77 = i32;
                                            i40 = i31;
                                            str3 = "Failed to parse the message.";
                                            i30 = i50;
                                            z53 = this;
                                            if (i40 != i30) {
                                            }
                                            break;
                                        case 33:
                                        case 47:
                                            i29 = i11;
                                            if (i49 == 2) {
                                                int i111 = H4.f61937b;
                                                C12171r5 c12171r53 = (C12171r5) interfaceC12243z52;
                                                i40 = H4.a(bArr, i50, g42);
                                                int i112 = g42.f61927a + i40;
                                                while (i40 < i112) {
                                                    i40 = H4.a(bArr, i40, g42);
                                                    c12171r53.k(U4.a(g42.f61927a));
                                                }
                                                if (i40 != i112) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else {
                                                if (i49 == 0) {
                                                    int i113 = H4.f61937b;
                                                    C12171r5 c12171r54 = (C12171r5) interfaceC12243z52;
                                                    i40 = H4.a(bArr, i50, g42);
                                                    c12171r54.k(U4.a(g42.f61927a));
                                                    while (i40 < i29) {
                                                        int a23 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            i40 = H4.a(bArr, a23, g42);
                                                            c12171r54.k(U4.a(g42.f61927a));
                                                        }
                                                    }
                                                }
                                                unsafe5 = unsafe6;
                                                i30 = i50;
                                                z53 = z54;
                                                str3 = "Failed to parse the message.";
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            unsafe5 = unsafe6;
                                            i30 = i50;
                                            z53 = z54;
                                            str3 = "Failed to parse the message.";
                                            if (i40 != i30) {
                                            }
                                            break;
                                        case 34:
                                        case 48:
                                            i29 = i11;
                                            if (i49 == 2) {
                                                int i114 = H4.f61937b;
                                                J5 j56 = (J5) interfaceC12243z52;
                                                i40 = H4.a(bArr, i50, g42);
                                                int i115 = g42.f61927a + i40;
                                                while (i40 < i115) {
                                                    i40 = H4.c(bArr, i40, g42);
                                                    j56.c(U4.b(g42.f61928b));
                                                }
                                                if (i40 != i115) {
                                                    throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else {
                                                if (i49 == 0) {
                                                    int i116 = H4.f61937b;
                                                    J5 j57 = (J5) interfaceC12243z52;
                                                    i40 = H4.c(bArr, i50, g42);
                                                    j57.c(U4.b(g42.f61928b));
                                                    while (i40 < i29) {
                                                        int a24 = H4.a(bArr, i40, g42);
                                                        if (i63 == g42.f61927a) {
                                                            i40 = H4.c(bArr, a24, g42);
                                                            j57.c(U4.b(g42.f61928b));
                                                        }
                                                    }
                                                }
                                                unsafe5 = unsafe6;
                                                i30 = i50;
                                                z53 = z54;
                                                str3 = "Failed to parse the message.";
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            unsafe5 = unsafe6;
                                            i30 = i50;
                                            z53 = z54;
                                            str3 = "Failed to parse the message.";
                                            if (i40 != i30) {
                                            }
                                            break;
                                        default:
                                            if (i49 == 3) {
                                                int i117 = (i63 & (-8)) | 4;
                                                InterfaceC12083h6 E10 = z54.E(i20);
                                                i40 = H4.i(E10, bArr, i50, i11, i117, g42);
                                                interfaceC12243z52.add(g42.f61929c);
                                                int i118 = i11;
                                                while (i40 < i118) {
                                                    int a25 = H4.a(bArr, i40, g42);
                                                    if (i63 == g42.f61927a) {
                                                        i40 = H4.i(E10, bArr, a25, i11, i117, g42);
                                                        interfaceC12243z52.add(g42.f61929c);
                                                        i118 = i118;
                                                        i117 = i117;
                                                    } else {
                                                        i29 = i118;
                                                        unsafe5 = unsafe6;
                                                        i30 = i50;
                                                        z53 = z54;
                                                        str3 = "Failed to parse the message.";
                                                        if (i40 != i30) {
                                                        }
                                                    }
                                                }
                                                i29 = i118;
                                                unsafe5 = unsafe6;
                                                i30 = i50;
                                                z53 = z54;
                                                str3 = "Failed to parse the message.";
                                                if (i40 != i30) {
                                                }
                                            } else {
                                                i29 = i11;
                                                unsafe5 = unsafe6;
                                                i30 = i50;
                                                z53 = z54;
                                                str3 = "Failed to parse the message.";
                                                i40 = i30;
                                                if (i40 != i30) {
                                                }
                                            }
                                            break;
                                    }
                                }
                            } else if (i49 == 2) {
                                InterfaceC12243z5 interfaceC12243z53 = (InterfaceC12243z5) unsafe6.getObject(obj5, j11);
                                if (!interfaceC12243z53.N1()) {
                                    int size3 = interfaceC12243z53.size();
                                    interfaceC12243z53 = interfaceC12243z53.K0(size3 == 0 ? 10 : size3 + size3);
                                    unsafe6.putObject(obj5, j11, interfaceC12243z53);
                                }
                                i19 = i62;
                                i40 = H4.n(z54.E(i20), i63, bArr, i50, i11, interfaceC12243z53, g42);
                                i43 = i63;
                                i42 = i20;
                                i41 = i48;
                                i44 = i64;
                                i45 = i19;
                                i38 = i11;
                                i39 = i12;
                            } else {
                                i19 = i62;
                                i26 = i63;
                                unsafe3 = unsafe6;
                                i22 = i48;
                                i18 = i64;
                                str2 = "Failed to parse the message.";
                                i23 = i50;
                            }
                            z52 = this;
                            obj5 = obj;
                            i13 = i12;
                            i17 = i23;
                            str = str2;
                            i43 = i26;
                            i48 = i22;
                            unsafe = unsafe3;
                        }
                    }
                    if (i43 == i13 || i13 == 0) {
                        if (z52.f62196f) {
                            C12028b5 c12028b5 = g42.f61930d;
                            int i119 = C12028b5.f62235e;
                            int i120 = C12056e6.f62268d;
                            if (c12028b5 != C12028b5.f62234d) {
                                W5 w52 = z52.f62195e;
                                int i121 = H4.f61937b;
                                if (c12028b5.b(w52, i48) != null) {
                                    throw null;
                                }
                                i21 = i43;
                                i40 = H4.o(i43, bArr, i17, i11, y(obj), g42);
                                i43 = i21;
                                i42 = i20;
                                i41 = i48;
                                unsafe6 = unsafe;
                                i44 = i18;
                                i45 = i19;
                                i39 = i13;
                                z54 = z52;
                                i38 = i11;
                            }
                        }
                        i21 = i43;
                        i40 = H4.o(i21, bArr, i17, i11, y(obj), g42);
                        i43 = i21;
                        i42 = i20;
                        i41 = i48;
                        unsafe6 = unsafe;
                        i44 = i18;
                        i45 = i19;
                        i39 = i13;
                        z54 = z52;
                        i38 = i11;
                    } else {
                        i40 = i17;
                        i44 = i18;
                        i45 = i19;
                    }
                } else {
                    i16 = z54.v(i48, 0);
                }
                i15 = -1;
                if (i16 != i15) {
                }
                if (i43 == i13) {
                }
                if (z52.f62196f) {
                }
                i21 = i43;
                i40 = H4.o(i21, bArr, i17, i11, y(obj), g42);
                i43 = i21;
                i42 = i20;
                i41 = i48;
                unsafe6 = unsafe;
                i44 = i18;
                i45 = i19;
                i39 = i13;
                z54 = z52;
                i38 = i11;
            } else {
                z52 = z54;
                str = "Failed to parse the message.";
                i13 = i39;
                unsafe = unsafe6;
            }
        }
    }
}
