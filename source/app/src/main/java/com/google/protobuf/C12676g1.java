package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12724x;
import com.google.protobuf.C12692m;
import com.google.protobuf.C12699o0;
import com.google.protobuf.C2;
import com.google.protobuf.D0;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.R0;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import sun.misc.Unsafe;

@B
public final class C12676g1<T> implements L1<T> {

    public static final int f69127r = 3;

    public static final int f69128s = 20;

    public static final int f69129t = 1048575;

    public static final int f69130u = 267386880;

    public static final int f69131v = 268435456;

    public static final int f69132w = 536870912;

    public static final int f69133x = 1048575;

    public static final int f69135z = 51;

    public final int[] f69136a;

    public final Object[] f69137b;

    public final int f69138c;

    public final int f69139d;

    public final InterfaceC12659b1 f69140e;

    public final boolean f69141f;

    public final boolean f69142g;

    public final boolean f69143h;

    public final boolean f69144i;

    public final int[] f69145j;

    public final int f69146k;

    public final int f69147l;

    public final InterfaceC12697n1 f69148m;

    public final L0 f69149n;

    public final q2<?, ?> f69150o;

    public final AbstractC12669e0<?> f69151p;

    public final U0 f69152q;

    public static final int[] f69134y = new int[0];

    public static final Unsafe f69126A = x2.T();

    public static class a {

        public static final int[] f69153a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f69153a = iArr;
            try {
                iArr[A2.b.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69153a[A2.b.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69153a[A2.b.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69153a[A2.b.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69153a[A2.b.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69153a[A2.b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f69153a[A2.b.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f69153a[A2.b.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f69153a[A2.b.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f69153a[A2.b.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f69153a[A2.b.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f69153a[A2.b.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f69153a[A2.b.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f69153a[A2.b.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f69153a[A2.b.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f69153a[A2.b.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f69153a[A2.b.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public C12676g1(int[] buffer, Object[] objects, int minFieldNumber, int maxFieldNumber, InterfaceC12659b1 defaultInstance, boolean proto3, boolean useCachedSizeField, int[] intArray, int checkInitialized, int mapFieldPositions, InterfaceC12697n1 newInstanceSchema, L0 listFieldSchema, q2<?, ?> unknownFieldSchema, AbstractC12669e0<?> extensionSchema, U0 mapFieldSchema) {
        this.f69136a = buffer;
        this.f69137b = objects;
        this.f69138c = minFieldNumber;
        this.f69139d = maxFieldNumber;
        this.f69142g = defaultInstance instanceof AbstractC12719v0;
        this.f69143h = proto3;
        this.f69141f = extensionSchema != null && extensionSchema.e(defaultInstance);
        this.f69144i = useCachedSizeField;
        this.f69145j = intArray;
        this.f69146k = checkInitialized;
        this.f69147l = mapFieldPositions;
        this.f69148m = newInstanceSchema;
        this.f69149n = listFieldSchema;
        this.f69150o = unknownFieldSchema;
        this.f69151p = extensionSchema;
        this.f69140e = defaultInstance;
        this.f69152q = mapFieldSchema;
    }

    public static boolean B(Object message) {
        if (message == null) {
            return false;
        }
        if (message instanceof AbstractC12719v0) {
            return ((AbstractC12719v0) message).F6();
        }
        return true;
    }

    public static boolean E(int value) {
        return (value & 268435456) != 0;
    }

    public static List<?> F(Object message, long offset) {
        return (List) x2.Q(message, offset);
    }

    public static <T> long G(T message, long offset) {
        return x2.N(message, offset);
    }

    public static <T> C12676g1<T> O(Class<T> messageClass, Z0 messageInfo, InterfaceC12697n1 newInstanceSchema, L0 listFieldSchema, q2<?, ?> unknownFieldSchema, AbstractC12669e0<?> extensionSchema, U0 mapFieldSchema) {
        return messageInfo instanceof D1 ? Q((D1) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema) : P((C12656a2) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    public static <T> C12676g1<T> P(C12656a2 messageInfo, InterfaceC12697n1 newInstanceSchema, L0 listFieldSchema, q2<?, ?> unknownFieldSchema, AbstractC12669e0<?> extensionSchema, U0 mapFieldSchema) {
        int s10;
        int s11;
        int i10;
        boolean z10 = messageInfo.m() == EnumC12729y1.PROTO3;
        C12684j0[] d10 = messageInfo.d();
        if (d10.length == 0) {
            s10 = 0;
            s11 = 0;
        } else {
            s10 = d10[0].s();
            s11 = d10[d10.length - 1].s();
        }
        int length = d10.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i11 = 0;
        int i12 = 0;
        for (C12684j0 c12684j0 : d10) {
            if (c12684j0.A() == EnumC12702p0.MAP) {
                i11++;
            } else if (c12684j0.A().e() >= 18 && c12684j0.A().e() <= 49) {
                i12++;
            }
        }
        int[] iArr2 = i11 > 0 ? new int[i11] : null;
        int[] iArr3 = i12 > 0 ? new int[i12] : null;
        int[] c10 = messageInfo.c();
        if (c10 == null) {
            c10 = f69134y;
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i13 < d10.length) {
            C12684j0 c12684j02 = d10[i13];
            int s12 = c12684j02.s();
            o0(c12684j02, iArr, i14, objArr);
            if (i15 < c10.length && c10[i15] == s12) {
                c10[i15] = i14;
                i15++;
            }
            if (c12684j02.A() == EnumC12702p0.MAP) {
                iArr2[i16] = i14;
                i16++;
            } else if (c12684j02.A().e() >= 18 && c12684j02.A().e() <= 49) {
                i10 = i14;
                iArr3[i17] = (int) x2.Z(c12684j02.r());
                i17++;
                i13++;
                i14 = i10 + 3;
            }
            i10 = i14;
            i13++;
            i14 = i10 + 3;
        }
        if (iArr2 == null) {
            iArr2 = f69134y;
        }
        if (iArr3 == null) {
            iArr3 = f69134y;
        }
        int[] iArr4 = new int[c10.length + iArr2.length + iArr3.length];
        System.arraycopy(c10, 0, iArr4, 0, c10.length);
        System.arraycopy(iArr2, 0, iArr4, c10.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, c10.length + iArr2.length, iArr3.length);
        return new C12676g1<>(iArr, objArr, s10, s11, messageInfo.b(), z10, true, iArr4, c10.length, c10.length + iArr2.length, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0255  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> C12676g1<T> Q(D1 messageInfo, InterfaceC12697n1 newInstanceSchema, L0 listFieldSchema, q2<?, ?> unknownFieldSchema, AbstractC12669e0<?> extensionSchema, U0 mapFieldSchema) {
        int i10;
        int charAt;
        int charAt2;
        int charAt3;
        int charAt4;
        int charAt5;
        int[] iArr;
        int i11;
        int i12;
        int i13;
        char charAt6;
        int i14;
        char charAt7;
        int i15;
        char charAt8;
        int i16;
        char charAt9;
        int i17;
        char charAt10;
        int i18;
        char charAt11;
        int i19;
        char charAt12;
        int i20;
        char charAt13;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int objectFieldOffset;
        String str;
        boolean z10;
        int i27;
        int i28;
        int i29;
        Field k02;
        char charAt14;
        int i30;
        int i31;
        Object obj;
        Field k03;
        Object obj2;
        Field k04;
        int i32;
        char charAt15;
        int i33;
        char charAt16;
        int i34;
        char charAt17;
        int i35;
        char charAt18;
        boolean z11 = messageInfo.m() == EnumC12729y1.PROTO3;
        String d10 = messageInfo.d();
        int length = d10.length();
        char c10 = '\ud800';
        if (d10.charAt(0) >= '\ud800') {
            int i36 = 1;
            while (true) {
                i10 = i36 + 1;
                if (d10.charAt(i36) < '\ud800') {
                    break;
                }
                i36 = i10;
            }
        } else {
            i10 = 1;
        }
        int i37 = i10 + 1;
        int charAt19 = d10.charAt(i10);
        if (charAt19 >= 55296) {
            int i38 = charAt19 & 8191;
            int i39 = 13;
            while (true) {
                i35 = i37 + 1;
                charAt18 = d10.charAt(i37);
                if (charAt18 < '\ud800') {
                    break;
                }
                i38 |= (charAt18 & '\u1fff') << i39;
                i39 += 13;
                i37 = i35;
            }
            charAt19 = i38 | (charAt18 << i39);
            i37 = i35;
        }
        if (charAt19 == 0) {
            charAt = 0;
            charAt2 = 0;
            charAt3 = 0;
            charAt4 = 0;
            charAt5 = 0;
            i11 = 0;
            iArr = f69134y;
            i12 = 0;
        } else {
            int i40 = i37 + 1;
            int charAt20 = d10.charAt(i37);
            if (charAt20 >= 55296) {
                int i41 = charAt20 & 8191;
                int i42 = 13;
                while (true) {
                    i20 = i40 + 1;
                    charAt13 = d10.charAt(i40);
                    if (charAt13 < '\ud800') {
                        break;
                    }
                    i41 |= (charAt13 & '\u1fff') << i42;
                    i42 += 13;
                    i40 = i20;
                }
                charAt20 = i41 | (charAt13 << i42);
                i40 = i20;
            }
            int i43 = i40 + 1;
            int charAt21 = d10.charAt(i40);
            if (charAt21 >= 55296) {
                int i44 = charAt21 & 8191;
                int i45 = 13;
                while (true) {
                    i19 = i43 + 1;
                    charAt12 = d10.charAt(i43);
                    if (charAt12 < '\ud800') {
                        break;
                    }
                    i44 |= (charAt12 & '\u1fff') << i45;
                    i45 += 13;
                    i43 = i19;
                }
                charAt21 = i44 | (charAt12 << i45);
                i43 = i19;
            }
            int i46 = i43 + 1;
            charAt = d10.charAt(i43);
            if (charAt >= 55296) {
                int i47 = charAt & 8191;
                int i48 = 13;
                while (true) {
                    i18 = i46 + 1;
                    charAt11 = d10.charAt(i46);
                    if (charAt11 < '\ud800') {
                        break;
                    }
                    i47 |= (charAt11 & '\u1fff') << i48;
                    i48 += 13;
                    i46 = i18;
                }
                charAt = i47 | (charAt11 << i48);
                i46 = i18;
            }
            int i49 = i46 + 1;
            charAt2 = d10.charAt(i46);
            if (charAt2 >= 55296) {
                int i50 = charAt2 & 8191;
                int i51 = 13;
                while (true) {
                    i17 = i49 + 1;
                    charAt10 = d10.charAt(i49);
                    if (charAt10 < '\ud800') {
                        break;
                    }
                    i50 |= (charAt10 & '\u1fff') << i51;
                    i51 += 13;
                    i49 = i17;
                }
                charAt2 = i50 | (charAt10 << i51);
                i49 = i17;
            }
            int i52 = i49 + 1;
            charAt3 = d10.charAt(i49);
            if (charAt3 >= 55296) {
                int i53 = charAt3 & 8191;
                int i54 = 13;
                while (true) {
                    i16 = i52 + 1;
                    charAt9 = d10.charAt(i52);
                    if (charAt9 < '\ud800') {
                        break;
                    }
                    i53 |= (charAt9 & '\u1fff') << i54;
                    i54 += 13;
                    i52 = i16;
                }
                charAt3 = i53 | (charAt9 << i54);
                i52 = i16;
            }
            int i55 = i52 + 1;
            charAt4 = d10.charAt(i52);
            if (charAt4 >= 55296) {
                int i56 = charAt4 & 8191;
                int i57 = 13;
                while (true) {
                    i15 = i55 + 1;
                    charAt8 = d10.charAt(i55);
                    if (charAt8 < '\ud800') {
                        break;
                    }
                    i56 |= (charAt8 & '\u1fff') << i57;
                    i57 += 13;
                    i55 = i15;
                }
                charAt4 = i56 | (charAt8 << i57);
                i55 = i15;
            }
            int i58 = i55 + 1;
            int charAt22 = d10.charAt(i55);
            if (charAt22 >= 55296) {
                int i59 = charAt22 & 8191;
                int i60 = 13;
                while (true) {
                    i14 = i58 + 1;
                    charAt7 = d10.charAt(i58);
                    if (charAt7 < '\ud800') {
                        break;
                    }
                    i59 |= (charAt7 & '\u1fff') << i60;
                    i60 += 13;
                    i58 = i14;
                }
                charAt22 = i59 | (charAt7 << i60);
                i58 = i14;
            }
            int i61 = i58 + 1;
            charAt5 = d10.charAt(i58);
            if (charAt5 >= 55296) {
                int i62 = charAt5 & 8191;
                int i63 = 13;
                while (true) {
                    i13 = i61 + 1;
                    charAt6 = d10.charAt(i61);
                    if (charAt6 < '\ud800') {
                        break;
                    }
                    i62 |= (charAt6 & '\u1fff') << i63;
                    i63 += 13;
                    i61 = i13;
                }
                charAt5 = i62 | (charAt6 << i63);
                i61 = i13;
            }
            iArr = new int[charAt5 + charAt4 + charAt22];
            i11 = (charAt20 * 2) + charAt21;
            i12 = charAt20;
            i37 = i61;
        }
        Unsafe unsafe = f69126A;
        Object[] c11 = messageInfo.c();
        Class<?> cls = messageInfo.b().getClass();
        int[] iArr2 = new int[charAt3 * 3];
        Object[] objArr = new Object[charAt3 * 2];
        int i64 = charAt5 + charAt4;
        int i65 = charAt5;
        int i66 = i64;
        int i67 = 0;
        int i68 = 0;
        while (i37 < length) {
            int i69 = i37 + 1;
            int charAt23 = d10.charAt(i37);
            if (charAt23 >= c10) {
                int i70 = charAt23 & 8191;
                int i71 = i69;
                int i72 = 13;
                while (true) {
                    i34 = i71 + 1;
                    charAt17 = d10.charAt(i71);
                    if (charAt17 < c10) {
                        break;
                    }
                    i70 |= (charAt17 & '\u1fff') << i72;
                    i72 += 13;
                    i71 = i34;
                }
                charAt23 = i70 | (charAt17 << i72);
                i21 = i34;
            } else {
                i21 = i69;
            }
            int i73 = i21 + 1;
            int charAt24 = d10.charAt(i21);
            if (charAt24 >= c10) {
                int i74 = charAt24 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i33 = i75 + 1;
                    charAt16 = d10.charAt(i75);
                    i22 = length;
                    if (charAt16 < '\ud800') {
                        break;
                    }
                    i74 |= (charAt16 & '\u1fff') << i76;
                    i76 += 13;
                    i75 = i33;
                    length = i22;
                }
                charAt24 = i74 | (charAt16 << i76);
                i23 = i33;
            } else {
                i22 = length;
                i23 = i73;
            }
            int i77 = charAt24 & 255;
            int i78 = charAt5;
            if ((charAt24 & 1024) != 0) {
                iArr[i67] = i68;
                i67++;
            }
            int i79 = i67;
            if (i77 >= 51) {
                int i80 = i23 + 1;
                int charAt25 = d10.charAt(i23);
                char c12 = '\ud800';
                if (charAt25 >= 55296) {
                    int i81 = charAt25 & 8191;
                    int i82 = 13;
                    while (true) {
                        i32 = i80 + 1;
                        charAt15 = d10.charAt(i80);
                        if (charAt15 < c12) {
                            break;
                        }
                        i81 |= (charAt15 & '\u1fff') << i82;
                        i82 += 13;
                        i80 = i32;
                        c12 = '\ud800';
                    }
                    charAt25 = i81 | (charAt15 << i82);
                    i80 = i32;
                }
                int i83 = i77 - 51;
                int i84 = i80;
                if (i83 == 9 || i83 == 17) {
                    i31 = i11 + 1;
                    objArr[((i68 / 3) * 2) + 1] = c11[i11];
                } else {
                    if (i83 == 12 && !z11) {
                        i31 = i11 + 1;
                        objArr[((i68 / 3) * 2) + 1] = c11[i11];
                    }
                    int i85 = charAt25 * 2;
                    obj = c11[i85];
                    if (obj instanceof Field) {
                        k03 = k0(cls, (String) obj);
                        c11[i85] = k03;
                    } else {
                        k03 = (Field) obj;
                    }
                    i24 = charAt;
                    i25 = charAt2;
                    int objectFieldOffset2 = (int) unsafe.objectFieldOffset(k03);
                    int i86 = i85 + 1;
                    obj2 = c11[i86];
                    if (obj2 instanceof Field) {
                        k04 = k0(cls, (String) obj2);
                        c11[i86] = k04;
                    } else {
                        k04 = (Field) obj2;
                    }
                    str = d10;
                    i27 = (int) unsafe.objectFieldOffset(k04);
                    z10 = z11;
                    i28 = i84;
                    objectFieldOffset = objectFieldOffset2;
                    i29 = 0;
                }
                i11 = i31;
                int i852 = charAt25 * 2;
                obj = c11[i852];
                if (obj instanceof Field) {
                }
                i24 = charAt;
                i25 = charAt2;
                int objectFieldOffset22 = (int) unsafe.objectFieldOffset(k03);
                int i862 = i852 + 1;
                obj2 = c11[i862];
                if (obj2 instanceof Field) {
                }
                str = d10;
                i27 = (int) unsafe.objectFieldOffset(k04);
                z10 = z11;
                i28 = i84;
                objectFieldOffset = objectFieldOffset22;
                i29 = 0;
            } else {
                i24 = charAt;
                i25 = charAt2;
                int i87 = i11 + 1;
                Field k05 = k0(cls, (String) c11[i11]);
                if (i77 == 9 || i77 == 17) {
                    objArr[((i68 / 3) * 2) + 1] = k05.getType();
                } else {
                    if (i77 == 27 || i77 == 49) {
                        i30 = i11 + 2;
                        objArr[((i68 / 3) * 2) + 1] = c11[i87];
                    } else if (i77 == 12 || i77 == 30 || i77 == 44) {
                        if (!z11) {
                            i30 = i11 + 2;
                            objArr[((i68 / 3) * 2) + 1] = c11[i87];
                        }
                    } else if (i77 == 50) {
                        int i88 = i65 + 1;
                        iArr[i65] = i68;
                        int i89 = (i68 / 3) * 2;
                        int i90 = i11 + 2;
                        objArr[i89] = c11[i87];
                        if ((charAt24 & 2048) != 0) {
                            i87 = i11 + 3;
                            objArr[i89 + 1] = c11[i90];
                            i65 = i88;
                        } else {
                            i65 = i88;
                            i26 = i90;
                            objectFieldOffset = (int) unsafe.objectFieldOffset(k05);
                            i11 = i26;
                            if ((charAt24 & 4096) == 4096 || i77 > 17) {
                                str = d10;
                                z10 = z11;
                                i27 = 1048575;
                                i28 = i23;
                                i29 = 0;
                            } else {
                                int i91 = i23 + 1;
                                int charAt26 = d10.charAt(i23);
                                if (charAt26 >= 55296) {
                                    int i92 = charAt26 & 8191;
                                    int i93 = 13;
                                    while (true) {
                                        i28 = i91 + 1;
                                        charAt14 = d10.charAt(i91);
                                        if (charAt14 < '\ud800') {
                                            break;
                                        }
                                        i92 |= (charAt14 & '\u1fff') << i93;
                                        i93 += 13;
                                        i91 = i28;
                                    }
                                    charAt26 = i92 | (charAt14 << i93);
                                } else {
                                    i28 = i91;
                                }
                                int i94 = (i12 * 2) + (charAt26 / 32);
                                Object obj3 = c11[i94];
                                str = d10;
                                if (obj3 instanceof Field) {
                                    k02 = (Field) obj3;
                                } else {
                                    k02 = k0(cls, (String) obj3);
                                    c11[i94] = k02;
                                }
                                z10 = z11;
                                i27 = (int) unsafe.objectFieldOffset(k02);
                                i29 = charAt26 % 32;
                            }
                            if (i77 >= 18 && i77 <= 49) {
                                iArr[i66] = objectFieldOffset;
                                i66++;
                            }
                        }
                    }
                    i26 = i30;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(k05);
                    i11 = i26;
                    if ((charAt24 & 4096) == 4096) {
                    }
                    str = d10;
                    z10 = z11;
                    i27 = 1048575;
                    i28 = i23;
                    i29 = 0;
                    if (i77 >= 18) {
                        iArr[i66] = objectFieldOffset;
                        i66++;
                    }
                }
                i26 = i87;
                objectFieldOffset = (int) unsafe.objectFieldOffset(k05);
                i11 = i26;
                if ((charAt24 & 4096) == 4096) {
                }
                str = d10;
                z10 = z11;
                i27 = 1048575;
                i28 = i23;
                i29 = 0;
                if (i77 >= 18) {
                }
            }
            int i95 = i68 + 1;
            iArr2[i68] = charAt23;
            int i96 = i68 + 2;
            iArr2[i95] = ((charAt24 & 256) != 0 ? 268435456 : 0) | ((charAt24 & 512) != 0 ? 536870912 : 0) | (i77 << 20) | objectFieldOffset;
            i68 += 3;
            iArr2[i96] = (i29 << 20) | i27;
            z11 = z10;
            charAt = i24;
            charAt5 = i78;
            i37 = i28;
            length = i22;
            d10 = str;
            i67 = i79;
            charAt2 = i25;
            c10 = '\ud800';
        }
        return new C12676g1<>(iArr2, objArr, charAt, charAt2, messageInfo.b(), z11, false, iArr, charAt5, i64, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    public static long S(int value) {
        return value & 1048575;
    }

    public static <T> boolean T(T message, long offset) {
        return ((Boolean) x2.Q(message, offset)).booleanValue();
    }

    public static <T> double U(T message, long offset) {
        return ((Double) x2.Q(message, offset)).doubleValue();
    }

    public static <T> float V(T message, long offset) {
        return ((Float) x2.Q(message, offset)).floatValue();
    }

    public static <T> int W(T message, long offset) {
        return ((Integer) x2.Q(message, offset)).intValue();
    }

    public static <T> long X(T message, long offset) {
        return ((Long) x2.Q(message, offset)).longValue();
    }

    public static <T> boolean d(T message, long offset) {
        return x2.w(message, offset);
    }

    public static void e(Object message) {
        if (B(message)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + message);
    }

    public static <T> double h(T message, long offset) {
        return x2.F(message, offset);
    }

    public static Field k0(Class<?> messageClass, String fieldName) {
        try {
            return messageClass.getDeclaredField(fieldName);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = messageClass.getDeclaredFields();
            for (Field field : declaredFields) {
                if (fieldName.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + fieldName + " for " + messageClass.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    public static <T> float l(T message, long offset) {
        return x2.H(message, offset);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void o0(C12684j0 fi2, int[] buffer, int bufferIndex, Object[] objects) {
        int Z10;
        int e10;
        long Z11;
        int i10;
        int i11;
        C12714t1 w10 = fi2.w();
        if (w10 == null) {
            EnumC12702p0 A10 = fi2.A();
            Z10 = (int) x2.Z(fi2.r());
            e10 = A10.e();
            if (!A10.g() && !A10.h()) {
                Field y10 = fi2.y();
                i10 = y10 == null ? 1048575 : (int) x2.Z(y10);
                i11 = Integer.numberOfTrailingZeros(fi2.z());
            } else if (fi2.o() == null) {
                i10 = 0;
                i11 = 0;
            } else {
                Z11 = x2.Z(fi2.o());
            }
            buffer[bufferIndex] = fi2.s();
            buffer[bufferIndex + 1] = (fi2.D() ? 268435456 : 0) | (!fi2.B() ? 536870912 : 0) | (e10 << 20) | Z10;
            buffer[bufferIndex + 2] = i10 | (i11 << 20);
            Class<?> v10 = fi2.v();
            if (fi2.u() != null) {
                if (v10 != null) {
                    objects[((bufferIndex / 3) * 2) + 1] = v10;
                    return;
                } else {
                    if (fi2.q() != null) {
                        objects[((bufferIndex / 3) * 2) + 1] = fi2.q();
                        return;
                    }
                    return;
                }
            }
            int i12 = (bufferIndex / 3) * 2;
            objects[i12] = fi2.u();
            if (v10 != null) {
                objects[i12 + 1] = v10;
                return;
            } else {
                if (fi2.q() != null) {
                    objects[i12 + 1] = fi2.q();
                    return;
                }
                return;
            }
        }
        e10 = fi2.A().e() + 51;
        Z10 = (int) x2.Z(w10.c());
        Z11 = x2.Z(w10.a());
        i10 = (int) Z11;
        i11 = 0;
        buffer[bufferIndex] = fi2.s();
        if (!fi2.B()) {
        }
        buffer[bufferIndex + 1] = (fi2.D() ? 268435456 : 0) | (!fi2.B() ? 536870912 : 0) | (e10 << 20) | Z10;
        buffer[bufferIndex + 2] = i10 | (i11 << 20);
        Class<?> v102 = fi2.v();
        if (fi2.u() != null) {
        }
    }

    public static s2 p(Object message) {
        AbstractC12719v0 abstractC12719v0 = (AbstractC12719v0) message;
        s2 s2Var = abstractC12719v0.f69595c;
        if (s2Var != s2.c()) {
            return s2Var;
        }
        s2 o10 = s2.o();
        abstractC12719v0.f69595c = o10;
        return o10;
    }

    public static int r0(int value) {
        return (value & f69130u) >>> 20;
    }

    public static <T> int u(T message, long offset) {
        return x2.K(message, offset);
    }

    public static boolean v(int value) {
        return (value & 536870912) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean y(Object message, int typeAndOffset, L1 schema) {
        return schema.K1(x2.Q(message, S(typeAndOffset)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.google.protobuf.L1] */
    public final boolean A(T t10, int i10, int i11) {
        Map<?, ?> h10 = this.f69152q.h(x2.Q(t10, S(i10)));
        if (h10.isEmpty()) {
            return true;
        }
        if (this.f69152q.c(n(i11)).f68863c.a() != A2.c.MESSAGE) {
            return true;
        }
        ?? r52 = 0;
        for (Object obj : h10.values()) {
            r52 = r52;
            if (r52 == 0) {
                r52 = C12732z1.a().i(obj.getClass());
            }
            if (!r52.K1(obj)) {
                return false;
            }
        }
        return true;
    }

    public final boolean C(T message, T other, int pos) {
        long f02 = f0(pos) & 1048575;
        return x2.K(message, f02) == x2.K(other, f02);
    }

    public final boolean D(T message, int fieldNumber, int pos) {
        return x2.K(message, (long) (f0(pos) & 1048575)) == fieldNumber;
    }

    /* JADX WARN: Code restructure failed: missing block: B:211:0x0094, code lost:
    
        r0 = r18.f69146k;
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0099, code lost:
    
        if (r0 >= r18.f69147l) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x009b, code lost:
    
        r4 = j(r21, r18.f69145j[r0], r4, r19, r21);
        r0 = r0 + 1;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x00b1, code lost:
    
        r10 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x00b2, code lost:
    
        if (r4 == null) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x00b4, code lost:
    
        r7.o(r10, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x00b7, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:?, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x00c6. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:36:0x064f A[Catch: all -> 0x0675, TRY_LEAVE, TryCatch #6 {all -> 0x0675, blocks: (B:34:0x0649, B:36:0x064f, B:49:0x0679, B:50:0x067e), top: B:33:0x0649 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x06b5 A[LOOP:4: B:65:0x06b1->B:67:0x06b5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x06ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final <UT, UB, ET extends C12699o0.c<ET>> void H(q2<UT, UB> unknownFieldSchema, AbstractC12669e0<ET> extensionSchema, T message, E1 reader, C12666d0 extensionRegistry) throws IOException {
        q2 q2Var;
        T t10;
        int i10;
        Object obj;
        T t11;
        C12699o0<ET> d10;
        C12666d0 c12666d0;
        Object obj2;
        q2 q2Var2 = unknownFieldSchema;
        T t12 = message;
        C12666d0 c12666d02 = extensionRegistry;
        Object obj3 = null;
        C12699o0<ET> c12699o0 = null;
        while (true) {
            try {
                int q10 = reader.q();
                int d02 = d0(q10);
                if (d02 >= 0) {
                    t10 = t12;
                    try {
                        int s02 = s0(d02);
                        switch (r0(s02)) {
                            case 0:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.j0(t10, S(s02), reader.readDouble());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 1:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.l0(t10, S(s02), reader.readFloat());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 2:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.r0(t10, S(s02), reader.y());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 3:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.r0(t10, S(s02), reader.j());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 4:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.o0(t10, S(s02), reader.J());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 5:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.r0(t10, S(s02), reader.z());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 6:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.o0(t10, S(s02), reader.N());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 7:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.a0(t10, S(s02), reader.C());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 8:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                i0(t10, s02, reader);
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 9:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                InterfaceC12659b1 interfaceC12659b1 = (InterfaceC12659b1) M(t10, d02);
                                reader.s(interfaceC12659b1, o(d02), c12666d0);
                                p0(t10, d02, interfaceC12659b1);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 10:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.t0(t10, S(s02), reader.h());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 11:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.o0(t10, S(s02), reader.c());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 12:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                int d11 = reader.d();
                                D0.e m10 = m(d02);
                                if (m10 != null && !m10.a(d11)) {
                                    obj3 = N1.Q(t10, q10, d11, obj2, q2Var);
                                    t12 = t10;
                                    c12666d02 = c12666d0;
                                    q2Var2 = q2Var;
                                    break;
                                }
                                x2.o0(t10, S(s02), d11);
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 13:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.o0(t10, S(s02), reader.S());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 14:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.r0(t10, S(s02), reader.b());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 15:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.o0(t10, S(s02), reader.e());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 16:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                x2.r0(t10, S(s02), reader.P());
                                l0(t10, d02);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 17:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                InterfaceC12659b1 interfaceC12659b12 = (InterfaceC12659b1) M(t10, d02);
                                reader.k(interfaceC12659b12, o(d02), c12666d0);
                                p0(t10, d02, interfaceC12659b12);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 18:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.x(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 19:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.t(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 20:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.F(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 21:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.E(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 22:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.o(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 23:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.K(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 24:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.p(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 25:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.f(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 26:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                j0(t10, s02, reader);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 27:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                h0(message, s02, reader, o(d02), extensionRegistry);
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 28:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.w(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 29:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.L(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 30:
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                List<Integer> e10 = this.f69149n.e(t10, S(s02));
                                reader.G(e10);
                                obj3 = N1.C(message, q10, e10, m(d02), obj3, unknownFieldSchema);
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 31:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.A(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 32:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.n(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 33:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.i(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 34:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.a(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 35:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.x(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 36:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.t(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 37:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.F(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 38:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.E(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 39:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.o(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 40:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.K(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 41:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.p(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 42:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.f(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 43:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.L(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 44:
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                List<Integer> e11 = this.f69149n.e(t10, S(s02));
                                reader.G(e11);
                                obj3 = N1.C(message, q10, e11, m(d02), obj3, unknownFieldSchema);
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 45:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.A(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 46:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.n(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 47:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.i(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 48:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                reader.a(this.f69149n.e(t10, S(s02)));
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 49:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                try {
                                    g0(message, S(s02), reader, o(d02), extensionRegistry);
                                    obj3 = obj2;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                                    obj3 = obj2;
                                    try {
                                        if (!q2Var.q(reader)) {
                                            if (obj3 == null) {
                                                obj3 = q2Var.f(t10);
                                            }
                                            if (!q2Var.m(obj3, reader)) {
                                                Object obj4 = obj3;
                                                for (int i11 = this.f69146k; i11 < this.f69147l; i11++) {
                                                    obj4 = j(message, this.f69145j[i11], obj4, unknownFieldSchema, message);
                                                }
                                                if (obj4 != null) {
                                                    q2Var.o(t10, obj4);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!reader.v()) {
                                            Object obj5 = obj3;
                                            for (int i12 = this.f69146k; i12 < this.f69147l; i12++) {
                                                obj5 = j(message, this.f69145j[i12], obj5, unknownFieldSchema, message);
                                            }
                                            if (obj5 != null) {
                                                q2Var.o(t10, obj5);
                                                return;
                                            }
                                            return;
                                        }
                                        t12 = t10;
                                        c12666d02 = c12666d0;
                                        q2Var2 = q2Var;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        obj = obj3;
                                        while (i10 < this.f69147l) {
                                        }
                                        if (obj != null) {
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    obj3 = obj2;
                                    obj = obj3;
                                    while (i10 < this.f69147l) {
                                    }
                                    if (obj != null) {
                                    }
                                    throw th;
                                }
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 50:
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                try {
                                    I(message, d02, n(d02), extensionRegistry, reader);
                                    q2Var = q2Var2;
                                    obj3 = obj2;
                                } catch (InvalidProtocolBufferException.InvalidWireTypeException unused2) {
                                    q2Var = q2Var2;
                                    obj3 = obj2;
                                    if (!q2Var.q(reader)) {
                                    }
                                    t12 = t10;
                                    c12666d02 = c12666d0;
                                    q2Var2 = q2Var;
                                } catch (Throwable th4) {
                                    th = th4;
                                    q2Var = q2Var2;
                                    obj3 = obj2;
                                    obj = obj3;
                                    while (i10 < this.f69147l) {
                                    }
                                    if (obj != null) {
                                    }
                                    throw th;
                                }
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 51:
                                x2.t0(t10, S(s02), Double.valueOf(reader.readDouble()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 52:
                                x2.t0(t10, S(s02), Float.valueOf(reader.readFloat()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 53:
                                x2.t0(t10, S(s02), Long.valueOf(reader.y()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 54:
                                x2.t0(t10, S(s02), Long.valueOf(reader.j()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 55:
                                x2.t0(t10, S(s02), Integer.valueOf(reader.J()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 56:
                                x2.t0(t10, S(s02), Long.valueOf(reader.z()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 57:
                                x2.t0(t10, S(s02), Integer.valueOf(reader.N()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 58:
                                x2.t0(t10, S(s02), Boolean.valueOf(reader.C()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 59:
                                i0(t10, s02, reader);
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 60:
                                InterfaceC12659b1 interfaceC12659b13 = (InterfaceC12659b1) N(t10, q10, d02);
                                reader.s(interfaceC12659b13, o(d02), c12666d02);
                                q0(t10, q10, d02, interfaceC12659b13);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 61:
                                x2.t0(t10, S(s02), reader.h());
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 62:
                                x2.t0(t10, S(s02), Integer.valueOf(reader.c()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 63:
                                int d12 = reader.d();
                                D0.e m11 = m(d02);
                                if (m11 != null && !m11.a(d12)) {
                                    obj3 = N1.Q(t10, q10, d12, obj3, q2Var2);
                                    c12666d0 = c12666d02;
                                    q2Var = q2Var2;
                                    t12 = t10;
                                    c12666d02 = c12666d0;
                                    q2Var2 = q2Var;
                                    break;
                                }
                                x2.t0(t10, S(s02), Integer.valueOf(d12));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 64:
                                x2.t0(t10, S(s02), Integer.valueOf(reader.S()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 65:
                                x2.t0(t10, S(s02), Long.valueOf(reader.b()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 66:
                                x2.t0(t10, S(s02), Integer.valueOf(reader.e()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 67:
                                x2.t0(t10, S(s02), Long.valueOf(reader.P()));
                                m0(t10, q10, d02);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            case 68:
                                InterfaceC12659b1 interfaceC12659b14 = (InterfaceC12659b1) N(t10, q10, d02);
                                reader.k(interfaceC12659b14, o(d02), c12666d02);
                                q0(t10, q10, d02, interfaceC12659b14);
                                obj2 = obj3;
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                obj3 = obj2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                            default:
                                if (obj3 == null) {
                                    try {
                                        obj3 = q2Var2.f(t10);
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused3) {
                                        c12666d0 = c12666d02;
                                        q2Var = q2Var2;
                                        if (!q2Var.q(reader)) {
                                        }
                                        t12 = t10;
                                        c12666d02 = c12666d0;
                                        q2Var2 = q2Var;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        q2Var = q2Var2;
                                        obj = obj3;
                                        while (i10 < this.f69147l) {
                                        }
                                        if (obj != null) {
                                        }
                                        throw th;
                                    }
                                }
                                if (!q2Var2.m(obj3, reader)) {
                                    Object obj6 = obj3;
                                    for (int i13 = this.f69146k; i13 < this.f69147l; i13++) {
                                        obj6 = j(message, this.f69145j[i13], obj6, unknownFieldSchema, message);
                                    }
                                    if (obj6 != null) {
                                        q2Var2.o(t10, obj6);
                                        return;
                                    }
                                    return;
                                }
                                c12666d0 = c12666d02;
                                q2Var = q2Var2;
                                t12 = t10;
                                c12666d02 = c12666d0;
                                q2Var2 = q2Var;
                                break;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } else {
                    if (q10 == Integer.MAX_VALUE) {
                        Object obj7 = obj3;
                        for (int i14 = this.f69146k; i14 < this.f69147l; i14++) {
                            obj7 = j(message, this.f69145j[i14], obj7, unknownFieldSchema, message);
                        }
                        if (obj7 != null) {
                            q2Var2.o(t12, obj7);
                            return;
                        }
                        return;
                    }
                    try {
                        Object b10 = !this.f69141f ? null : extensionSchema.b(c12666d02, this.f69140e, q10);
                        if (b10 != null) {
                            if (c12699o0 == null) {
                                try {
                                    d10 = extensionSchema.d(message);
                                } catch (Throwable th7) {
                                    th = th7;
                                    q2Var = q2Var2;
                                    t10 = t12;
                                    obj = obj3;
                                    while (i10 < this.f69147l) {
                                    }
                                    if (obj != null) {
                                    }
                                    throw th;
                                }
                            } else {
                                d10 = c12699o0;
                            }
                            t11 = t12;
                            try {
                                obj3 = extensionSchema.g(message, reader, b10, extensionRegistry, d10, obj3, unknownFieldSchema);
                                c12699o0 = d10;
                            } catch (Throwable th8) {
                                th = th8;
                                t10 = t11;
                                q2Var = q2Var2;
                                obj = obj3;
                                for (i10 = this.f69146k; i10 < this.f69147l; i10++) {
                                    obj = j(message, this.f69145j[i10], obj, unknownFieldSchema, message);
                                }
                                if (obj != null) {
                                    q2Var.o(t10, obj);
                                }
                                throw th;
                            }
                        } else {
                            t11 = t12;
                            if (!q2Var2.q(reader)) {
                                if (obj3 == null) {
                                    obj3 = q2Var2.f(t11);
                                }
                                if (!q2Var2.m(obj3, reader)) {
                                }
                            } else if (!reader.v()) {
                            }
                        }
                        t12 = t11;
                    } catch (Throwable th9) {
                        th = th9;
                        t10 = t12;
                    }
                }
            } catch (Throwable th10) {
                th = th10;
            }
        }
    }

    public final <K, V> void I(Object message, int pos, Object mapDefaultEntry, C12666d0 extensionRegistry, E1 reader) throws IOException {
        long S10 = S(s0(pos));
        Object Q10 = x2.Q(message, S10);
        if (Q10 == null) {
            Q10 = this.f69152q.g(mapDefaultEntry);
            x2.t0(message, S10, Q10);
        } else if (this.f69152q.i(Q10)) {
            Object g10 = this.f69152q.g(mapDefaultEntry);
            this.f69152q.b(g10, Q10);
            x2.t0(message, S10, g10);
            Q10 = g10;
        }
        reader.g(this.f69152q.f(Q10), this.f69152q.c(mapDefaultEntry), extensionRegistry);
    }

    @Override
    public boolean I1(T message, T other) {
        int length = this.f69136a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!i(message, other, i10)) {
                return false;
            }
        }
        if (!this.f69150o.g(message).equals(this.f69150o.g(other))) {
            return false;
        }
        if (this.f69141f) {
            return this.f69151p.c(message).equals(this.f69151p.c(other));
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void J(T targetParent, T sourceParent, int pos) {
        if (w(sourceParent, pos)) {
            long S10 = S(s0(pos));
            Unsafe unsafe = f69126A;
            Object object = unsafe.getObject(sourceParent, S10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + R(pos) + " is present but null: " + ((Object) sourceParent));
            }
            L1 o10 = o(pos);
            if (!w(targetParent, pos)) {
                if (B(object)) {
                    Object a10 = o10.a();
                    o10.b(a10, object);
                    unsafe.putObject(targetParent, S10, a10);
                } else {
                    unsafe.putObject(targetParent, S10, object);
                }
                l0(targetParent, pos);
                return;
            }
            Object object2 = unsafe.getObject(targetParent, S10);
            if (!B(object2)) {
                Object a11 = o10.a();
                o10.b(a11, object2);
                unsafe.putObject(targetParent, S10, a11);
                object2 = a11;
            }
            o10.b(object2, object);
        }
    }

    @Override
    public void J1(T message, C2 writer) throws IOException {
        if (writer.J() == C2.a.DESCENDING) {
            v0(message, writer);
        } else if (this.f69143h) {
            u0(message, writer);
        } else {
            t0(message, writer);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void K(T targetParent, T sourceParent, int pos) {
        int R10 = R(pos);
        if (D(sourceParent, R10, pos)) {
            long S10 = S(s0(pos));
            Unsafe unsafe = f69126A;
            Object object = unsafe.getObject(sourceParent, S10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + R(pos) + " is present but null: " + ((Object) sourceParent));
            }
            L1 o10 = o(pos);
            if (!D(targetParent, R10, pos)) {
                if (B(object)) {
                    Object a10 = o10.a();
                    o10.b(a10, object);
                    unsafe.putObject(targetParent, S10, a10);
                } else {
                    unsafe.putObject(targetParent, S10, object);
                }
                m0(targetParent, R10, pos);
                return;
            }
            Object object2 = unsafe.getObject(targetParent, S10);
            if (!B(object2)) {
                Object a11 = o10.a();
                o10.b(a11, object2);
                unsafe.putObject(targetParent, S10, a11);
                object2 = a11;
            }
            o10.b(object2, object);
        }
    }

    @Override
    public final boolean K1(T message) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.f69146k) {
            int i15 = this.f69145j[i14];
            int R10 = R(i15);
            int s02 = s0(i15);
            int i16 = this.f69136a[i15 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i12) {
                if (i17 != 1048575) {
                    i13 = f69126A.getInt(message, i17);
                }
                i11 = i13;
                i10 = i17;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if (E(s02) && !x(message, i15, i10, i11, i18)) {
                return false;
            }
            int r02 = r0(s02);
            if (r02 != 9 && r02 != 17) {
                if (r02 != 27) {
                    if (r02 == 60 || r02 == 68) {
                        if (D(message, R10, i15) && !y(message, s02, o(i15))) {
                            return false;
                        }
                    } else if (r02 != 49) {
                        if (r02 == 50 && !A(message, s02, i15)) {
                            return false;
                        }
                    }
                }
                if (!z(message, s02, i15)) {
                    return false;
                }
            } else if (x(message, i15, i10, i11, i18) && !y(message, s02, o(i15))) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        return !this.f69141f || this.f69151p.c(message).E();
    }

    public final void L(T message, T other, int pos) {
        int s02 = s0(pos);
        long S10 = S(s02);
        int R10 = R(pos);
        switch (r0(s02)) {
            case 0:
                if (w(other, pos)) {
                    x2.j0(message, S10, x2.F(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 1:
                if (w(other, pos)) {
                    x2.l0(message, S10, x2.H(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 2:
                if (w(other, pos)) {
                    x2.r0(message, S10, x2.N(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 3:
                if (w(other, pos)) {
                    x2.r0(message, S10, x2.N(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 4:
                if (w(other, pos)) {
                    x2.o0(message, S10, x2.K(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 5:
                if (w(other, pos)) {
                    x2.r0(message, S10, x2.N(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 6:
                if (w(other, pos)) {
                    x2.o0(message, S10, x2.K(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 7:
                if (w(other, pos)) {
                    x2.a0(message, S10, x2.w(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 8:
                if (w(other, pos)) {
                    x2.t0(message, S10, x2.Q(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 9:
                J(message, other, pos);
                return;
            case 10:
                if (w(other, pos)) {
                    x2.t0(message, S10, x2.Q(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 11:
                if (w(other, pos)) {
                    x2.o0(message, S10, x2.K(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 12:
                if (w(other, pos)) {
                    x2.o0(message, S10, x2.K(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 13:
                if (w(other, pos)) {
                    x2.o0(message, S10, x2.K(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 14:
                if (w(other, pos)) {
                    x2.r0(message, S10, x2.N(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 15:
                if (w(other, pos)) {
                    x2.o0(message, S10, x2.K(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 16:
                if (w(other, pos)) {
                    x2.r0(message, S10, x2.N(other, S10));
                    l0(message, pos);
                    return;
                }
                return;
            case 17:
                J(message, other, pos);
                return;
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
                this.f69149n.d(message, other, S10);
                return;
            case 50:
                N1.I(this.f69152q, message, other, S10);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (D(other, R10, pos)) {
                    x2.t0(message, S10, x2.Q(other, S10));
                    m0(message, R10, pos);
                    return;
                }
                return;
            case 60:
                K(message, other, pos);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (D(other, R10, pos)) {
                    x2.t0(message, S10, x2.Q(other, S10));
                    m0(message, R10, pos);
                    return;
                }
                return;
            case 68:
                K(message, other, pos);
                return;
            default:
                return;
        }
    }

    @Override
    public void L1(T message, byte[] data, int position, int limit, C12692m.b registers) throws IOException {
        if (this.f69143h) {
            b0(message, data, position, limit, registers);
        } else {
            a0(message, data, position, limit, 0, registers);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object M(T message, int pos) {
        L1 o10 = o(pos);
        long S10 = S(s0(pos));
        if (!w(message, pos)) {
            return o10.a();
        }
        Object object = f69126A.getObject(message, S10);
        if (B(object)) {
            return object;
        }
        Object a10 = o10.a();
        if (object != null) {
            o10.b(a10, object);
        }
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void M1(T message) {
        if (B(message)) {
            if (message instanceof AbstractC12719v0) {
                AbstractC12719v0 abstractC12719v0 = (AbstractC12719v0) message;
                abstractC12719v0.i4();
                abstractC12719v0.H3();
                abstractC12719v0.H6();
            }
            int length = this.f69136a.length;
            for (int i10 = 0; i10 < length; i10 += 3) {
                int s02 = s0(i10);
                long S10 = S(s02);
                int r02 = r0(s02);
                if (r02 != 9) {
                    if (r02 != 60 && r02 != 68) {
                        switch (r02) {
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
                                this.f69149n.c(message, S10);
                                break;
                            case 50:
                                Unsafe unsafe = f69126A;
                                Object object = unsafe.getObject(message, S10);
                                if (object != null) {
                                    unsafe.putObject(message, S10, this.f69152q.d(object));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (D(message, R(i10), i10)) {
                        o(i10).M1(f69126A.getObject(message, S10));
                    }
                }
                if (w(message, i10)) {
                    o(i10).M1(f69126A.getObject(message, S10));
                }
            }
            this.f69150o.j(message);
            if (this.f69141f) {
                this.f69151p.f(message);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object N(T message, int fieldNumber, int pos) {
        L1 o10 = o(pos);
        if (!D(message, fieldNumber, pos)) {
            return o10.a();
        }
        Object object = f69126A.getObject(message, S(s0(pos)));
        if (B(object)) {
            return object;
        }
        Object a10 = o10.a();
        if (object != null) {
            o10.b(a10, object);
        }
        return a10;
    }

    @Override
    public int N1(T message) {
        return this.f69143h ? s(message) : r(message);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0019. Please report as an issue. */
    @Override
    public int O1(T message) {
        int i10;
        int s10;
        int length = this.f69136a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int s02 = s0(i12);
            int R10 = R(i12);
            long S10 = S(s02);
            int i13 = 37;
            switch (r0(s02)) {
                case 0:
                    i10 = i11 * 53;
                    s10 = D0.s(Double.doubleToLongBits(x2.F(message, S10)));
                    i11 = i10 + s10;
                    break;
                case 1:
                    i10 = i11 * 53;
                    s10 = Float.floatToIntBits(x2.H(message, S10));
                    i11 = i10 + s10;
                    break;
                case 2:
                    i10 = i11 * 53;
                    s10 = D0.s(x2.N(message, S10));
                    i11 = i10 + s10;
                    break;
                case 3:
                    i10 = i11 * 53;
                    s10 = D0.s(x2.N(message, S10));
                    i11 = i10 + s10;
                    break;
                case 4:
                    i10 = i11 * 53;
                    s10 = x2.K(message, S10);
                    i11 = i10 + s10;
                    break;
                case 5:
                    i10 = i11 * 53;
                    s10 = D0.s(x2.N(message, S10));
                    i11 = i10 + s10;
                    break;
                case 6:
                    i10 = i11 * 53;
                    s10 = x2.K(message, S10);
                    i11 = i10 + s10;
                    break;
                case 7:
                    i10 = i11 * 53;
                    s10 = D0.k(x2.w(message, S10));
                    i11 = i10 + s10;
                    break;
                case 8:
                    i10 = i11 * 53;
                    s10 = ((String) x2.Q(message, S10)).hashCode();
                    i11 = i10 + s10;
                    break;
                case 9:
                    Object Q10 = x2.Q(message, S10);
                    if (Q10 != null) {
                        i13 = Q10.hashCode();
                    }
                    i11 = (i11 * 53) + i13;
                    break;
                case 10:
                    i10 = i11 * 53;
                    s10 = x2.Q(message, S10).hashCode();
                    i11 = i10 + s10;
                    break;
                case 11:
                    i10 = i11 * 53;
                    s10 = x2.K(message, S10);
                    i11 = i10 + s10;
                    break;
                case 12:
                    i10 = i11 * 53;
                    s10 = x2.K(message, S10);
                    i11 = i10 + s10;
                    break;
                case 13:
                    i10 = i11 * 53;
                    s10 = x2.K(message, S10);
                    i11 = i10 + s10;
                    break;
                case 14:
                    i10 = i11 * 53;
                    s10 = D0.s(x2.N(message, S10));
                    i11 = i10 + s10;
                    break;
                case 15:
                    i10 = i11 * 53;
                    s10 = x2.K(message, S10);
                    i11 = i10 + s10;
                    break;
                case 16:
                    i10 = i11 * 53;
                    s10 = D0.s(x2.N(message, S10));
                    i11 = i10 + s10;
                    break;
                case 17:
                    Object Q11 = x2.Q(message, S10);
                    if (Q11 != null) {
                        i13 = Q11.hashCode();
                    }
                    i11 = (i11 * 53) + i13;
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
                    s10 = x2.Q(message, S10).hashCode();
                    i11 = i10 + s10;
                    break;
                case 50:
                    i10 = i11 * 53;
                    s10 = x2.Q(message, S10).hashCode();
                    i11 = i10 + s10;
                    break;
                case 51:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = D0.s(Double.doubleToLongBits(U(message, S10)));
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = Float.floatToIntBits(V(message, S10));
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = D0.s(X(message, S10));
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = D0.s(X(message, S10));
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = W(message, S10);
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = D0.s(X(message, S10));
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = W(message, S10);
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = D0.k(T(message, S10));
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = ((String) x2.Q(message, S10)).hashCode();
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = x2.Q(message, S10).hashCode();
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = x2.Q(message, S10).hashCode();
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = W(message, S10);
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = W(message, S10);
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = W(message, S10);
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = D0.s(X(message, S10));
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = W(message, S10);
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = D0.s(X(message, S10));
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (D(message, R10, i12)) {
                        i10 = i11 * 53;
                        s10 = x2.Q(message, S10).hashCode();
                        i11 = i10 + s10;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i11 * 53) + this.f69150o.g(message).hashCode();
        return this.f69141f ? (hashCode * 53) + this.f69151p.c(message).hashCode() : hashCode;
    }

    @Override
    public void P1(T message, E1 reader, C12666d0 extensionRegistry) throws IOException {
        extensionRegistry.getClass();
        e(message);
        H(this.f69150o, this.f69151p, message, reader, extensionRegistry);
    }

    public final int R(int pos) {
        return this.f69136a[pos];
    }

    public final <K, V> int Y(T message, byte[] data, int position, int limit, int bufferPosition, long fieldOffset, C12692m.b registers) throws IOException {
        Unsafe unsafe = f69126A;
        Object n10 = n(bufferPosition);
        Object object = unsafe.getObject(message, fieldOffset);
        if (this.f69152q.i(object)) {
            Object g10 = this.f69152q.g(n10);
            this.f69152q.b(g10, object);
            unsafe.putObject(message, fieldOffset, g10);
            object = g10;
        }
        return f(data, position, limit, this.f69152q.c(n10), this.f69152q.f(object), registers);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0023. Please report as an issue. */
    public final int Z(T message, byte[] data, int position, int limit, int tag, int number, int wireType, int typeAndOffset, int fieldType, long fieldOffset, int bufferPosition, C12692m.b registers) throws IOException {
        Unsafe unsafe = f69126A;
        long j10 = this.f69136a[bufferPosition + 2] & 1048575;
        switch (fieldType) {
            case 51:
                if (wireType == 1) {
                    unsafe.putObject(message, fieldOffset, Double.valueOf(C12692m.d(data, position)));
                    int i10 = position + 8;
                    unsafe.putInt(message, j10, number);
                    return i10;
                }
                return position;
            case 52:
                if (wireType == 5) {
                    unsafe.putObject(message, fieldOffset, Float.valueOf(C12692m.l(data, position)));
                    int i11 = position + 4;
                    unsafe.putInt(message, j10, number);
                    return i11;
                }
                return position;
            case 53:
            case 54:
                if (wireType == 0) {
                    int L10 = C12692m.L(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Long.valueOf(registers.f69355b));
                    unsafe.putInt(message, j10, number);
                    return L10;
                }
                return position;
            case 55:
            case 62:
                if (wireType == 0) {
                    int I10 = C12692m.I(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Integer.valueOf(registers.f69354a));
                    unsafe.putInt(message, j10, number);
                    return I10;
                }
                return position;
            case 56:
            case 65:
                if (wireType == 1) {
                    unsafe.putObject(message, fieldOffset, Long.valueOf(C12692m.j(data, position)));
                    int i12 = position + 8;
                    unsafe.putInt(message, j10, number);
                    return i12;
                }
                return position;
            case 57:
            case 64:
                if (wireType == 5) {
                    unsafe.putObject(message, fieldOffset, Integer.valueOf(C12692m.h(data, position)));
                    int i13 = position + 4;
                    unsafe.putInt(message, j10, number);
                    return i13;
                }
                return position;
            case 58:
                if (wireType == 0) {
                    int L11 = C12692m.L(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Boolean.valueOf(registers.f69355b != 0));
                    unsafe.putInt(message, j10, number);
                    return L11;
                }
                return position;
            case 59:
                if (wireType == 2) {
                    int I11 = C12692m.I(data, position, registers);
                    int i14 = registers.f69354a;
                    if (i14 == 0) {
                        unsafe.putObject(message, fieldOffset, "");
                    } else {
                        if ((typeAndOffset & 536870912) != 0 && !Utf8.u(data, I11, I11 + i14)) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        unsafe.putObject(message, fieldOffset, new String(data, I11, i14, D0.f67922b));
                        I11 += i14;
                    }
                    unsafe.putInt(message, j10, number);
                    return I11;
                }
                return position;
            case 60:
                if (wireType == 2) {
                    Object N10 = N(message, number, bufferPosition);
                    int O10 = C12692m.O(N10, o(bufferPosition), data, position, limit, registers);
                    q0(message, number, bufferPosition, N10);
                    return O10;
                }
                return position;
            case 61:
                if (wireType == 2) {
                    int b10 = C12692m.b(data, position, registers);
                    unsafe.putObject(message, fieldOffset, registers.f69356c);
                    unsafe.putInt(message, j10, number);
                    return b10;
                }
                return position;
            case 63:
                if (wireType == 0) {
                    int I12 = C12692m.I(data, position, registers);
                    int i15 = registers.f69354a;
                    D0.e m10 = m(bufferPosition);
                    if (m10 == null || m10.a(i15)) {
                        unsafe.putObject(message, fieldOffset, Integer.valueOf(i15));
                        unsafe.putInt(message, j10, number);
                    } else {
                        p(message).r(tag, Long.valueOf(i15));
                    }
                    return I12;
                }
                return position;
            case 66:
                if (wireType == 0) {
                    int I13 = C12692m.I(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Integer.valueOf(C.c(registers.f69354a)));
                    unsafe.putInt(message, j10, number);
                    return I13;
                }
                return position;
            case 67:
                if (wireType == 0) {
                    int L12 = C12692m.L(data, position, registers);
                    unsafe.putObject(message, fieldOffset, Long.valueOf(C.d(registers.f69355b)));
                    unsafe.putInt(message, j10, number);
                    return L12;
                }
                return position;
            case 68:
                if (wireType == 3) {
                    Object N11 = N(message, number, bufferPosition);
                    int N12 = C12692m.N(N11, o(bufferPosition), data, position, limit, (tag & (-8)) | 4, registers);
                    q0(message, number, bufferPosition, N11);
                    return N12;
                }
                return position;
            default:
                return position;
        }
    }

    @Override
    public T a() {
        return (T) this.f69148m.a(this.f69140e);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:98:0x0090. Please report as an issue. */
    @A
    public int a0(T message, byte[] data, int position, int limit, int endGroup, C12692m.b registers) throws IOException {
        Unsafe unsafe;
        int i10;
        C12676g1<T> c12676g1;
        int i11;
        int i12;
        int i13;
        int i14;
        T t10;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        byte[] bArr;
        int L10;
        int i26;
        int i27;
        C12676g1<T> c12676g12 = this;
        T t11 = message;
        byte[] bArr2 = data;
        int i28 = limit;
        int i29 = endGroup;
        C12692m.b bVar = registers;
        e(message);
        Unsafe unsafe2 = f69126A;
        int i30 = position;
        int i31 = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = -1;
        int i35 = 1048575;
        while (true) {
            if (i30 < i28) {
                int i36 = i30 + 1;
                byte b10 = bArr2[i30];
                if (b10 < 0) {
                    int H10 = C12692m.H(b10, bArr2, i36, bVar);
                    i15 = bVar.f69354a;
                    i36 = H10;
                } else {
                    i15 = b10;
                }
                int i37 = i15 >>> 3;
                int i38 = i15 & 7;
                int e02 = i37 > i34 ? c12676g12.e0(i37, i31 / 3) : c12676g12.d0(i37);
                if (e02 == -1) {
                    i16 = i37;
                    i17 = i36;
                    i12 = i15;
                    i18 = i33;
                    i19 = i35;
                    unsafe = unsafe2;
                    i10 = i29;
                    i20 = 0;
                } else {
                    int i39 = c12676g12.f69136a[e02 + 1];
                    int r02 = r0(i39);
                    long S10 = S(i39);
                    int i40 = i15;
                    if (r02 <= 17) {
                        int i41 = c12676g12.f69136a[e02 + 2];
                        int i42 = 1 << (i41 >>> 20);
                        int i43 = i41 & 1048575;
                        if (i43 != i35) {
                            if (i35 != 1048575) {
                                unsafe2.putInt(t11, i35, i33);
                            }
                            i22 = i43;
                            i21 = unsafe2.getInt(t11, i43);
                        } else {
                            i21 = i33;
                            i22 = i35;
                        }
                        switch (r02) {
                            case 0:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 1) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    x2.j0(t11, S10, C12692m.d(bArr, i36));
                                    i30 = i36 + 8;
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 1:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 5) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    x2.l0(t11, S10, C12692m.l(bArr, i36));
                                    i30 = i36 + 4;
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 2:
                            case 3:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 0) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    L10 = C12692m.L(bArr, i36, bVar);
                                    unsafe2.putLong(message, S10, bVar.f69355b);
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i30 = L10;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 4:
                            case 11:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 0) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    i30 = C12692m.I(bArr, i36, bVar);
                                    unsafe2.putInt(t11, S10, bVar.f69354a);
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 5:
                            case 14:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 1) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    unsafe2.putLong(message, S10, C12692m.j(bArr, i36));
                                    i30 = i36 + 8;
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 6:
                            case 13:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 5) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    unsafe2.putInt(t11, S10, C12692m.h(bArr, i36));
                                    i30 = i36 + 4;
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 7:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 0) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    i30 = C12692m.L(bArr, i36, bVar);
                                    x2.a0(t11, S10, bVar.f69355b != 0);
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 8:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 2) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    i30 = (536870912 & i39) == 0 ? C12692m.C(bArr, i36, bVar) : C12692m.F(bArr, i36, bVar);
                                    unsafe2.putObject(t11, S10, bVar.f69356c);
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 9:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 2) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    Object M10 = c12676g12.M(t11, i25);
                                    i30 = C12692m.O(M10, c12676g12.o(i25), data, i36, limit, registers);
                                    c12676g12.p0(t11, i25, M10);
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 10:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 2) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    i30 = C12692m.b(bArr, i36, bVar);
                                    unsafe2.putObject(t11, S10, bVar.f69356c);
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 12:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 0) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    i30 = C12692m.I(bArr, i36, bVar);
                                    int i44 = bVar.f69354a;
                                    D0.e m10 = c12676g12.m(i25);
                                    if (m10 == null || m10.a(i44)) {
                                        unsafe2.putInt(t11, S10, i44);
                                        i33 = i21 | i42;
                                        i29 = endGroup;
                                        i31 = i25;
                                        i32 = i24;
                                        i34 = i16;
                                        i35 = i23;
                                        bArr2 = bArr;
                                    } else {
                                        p(message).r(i24, Long.valueOf(i44));
                                        i31 = i25;
                                        i33 = i21;
                                        i32 = i24;
                                        i34 = i16;
                                        i35 = i23;
                                        i29 = endGroup;
                                        bArr2 = bArr;
                                    }
                                }
                                break;
                            case 15:
                                bArr = data;
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                if (i38 != 0) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    i30 = C12692m.I(bArr, i36, bVar);
                                    unsafe2.putInt(t11, S10, C.c(bVar.f69354a));
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 16:
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                bArr = data;
                                if (i38 != 0) {
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    L10 = C12692m.L(bArr, i36, bVar);
                                    unsafe2.putLong(message, S10, C.d(bVar.f69355b));
                                    i33 = i21 | i42;
                                    i29 = endGroup;
                                    i31 = i25;
                                    i30 = L10;
                                    i32 = i24;
                                    i34 = i16;
                                    i35 = i23;
                                    bArr2 = bArr;
                                }
                            case 17:
                                if (i38 != 3) {
                                    i16 = i37;
                                    i23 = i22;
                                    i24 = i40;
                                    i25 = e02;
                                    i19 = i23;
                                    i10 = endGroup;
                                    i17 = i36;
                                    i20 = i25;
                                    unsafe = unsafe2;
                                    i18 = i21;
                                    i12 = i24;
                                    break;
                                } else {
                                    Object M11 = c12676g12.M(t11, e02);
                                    i30 = C12692m.N(M11, c12676g12.o(e02), data, i36, limit, (i37 << 3) | 4, registers);
                                    c12676g12.p0(t11, e02, M11);
                                    i33 = i21 | i42;
                                    i35 = i22;
                                    i29 = endGroup;
                                    i31 = e02;
                                    i32 = i40;
                                    i34 = i37;
                                    bArr2 = data;
                                }
                            default:
                                i16 = i37;
                                i25 = e02;
                                i23 = i22;
                                i24 = i40;
                                i19 = i23;
                                i10 = endGroup;
                                i17 = i36;
                                i20 = i25;
                                unsafe = unsafe2;
                                i18 = i21;
                                i12 = i24;
                                break;
                        }
                    } else {
                        i16 = i37;
                        i19 = i35;
                        i18 = i33;
                        if (r02 == 27) {
                            if (i38 == 2) {
                                D0.k kVar = (D0.k) unsafe2.getObject(t11, S10);
                                if (!kVar.hc()) {
                                    int size = kVar.size();
                                    kVar = kVar.q2(size == 0 ? 10 : size * 2);
                                    unsafe2.putObject(t11, S10, kVar);
                                }
                                i30 = C12692m.q(c12676g12.o(e02), i40, data, i36, limit, kVar, registers);
                                i31 = e02;
                                i32 = i40;
                                i35 = i19;
                                i33 = i18;
                                i34 = i16;
                                bArr2 = data;
                                i29 = endGroup;
                            } else {
                                i26 = i36;
                                unsafe = unsafe2;
                                i20 = e02;
                                i27 = i40;
                                i10 = endGroup;
                                i17 = i26;
                            }
                        } else if (r02 <= 49) {
                            int i45 = i36;
                            unsafe = unsafe2;
                            i20 = e02;
                            i27 = i40;
                            i30 = c0(message, data, i36, limit, i40, i16, i38, e02, i39, r02, S10, registers);
                            if (i30 != i45) {
                                c12676g12 = this;
                                t11 = message;
                                bArr2 = data;
                                i28 = limit;
                                i29 = endGroup;
                                bVar = registers;
                                i35 = i19;
                                i33 = i18;
                                i31 = i20;
                                i32 = i27;
                                i34 = i16;
                                unsafe2 = unsafe;
                            } else {
                                i10 = endGroup;
                                i17 = i30;
                            }
                        } else {
                            i26 = i36;
                            unsafe = unsafe2;
                            i20 = e02;
                            i27 = i40;
                            if (r02 != 50) {
                                i30 = Z(message, data, i26, limit, i27, i16, i38, i39, r02, S10, i20, registers);
                                if (i30 != i26) {
                                    c12676g12 = this;
                                    t11 = message;
                                    bArr2 = data;
                                    i28 = limit;
                                    i29 = endGroup;
                                    bVar = registers;
                                    i35 = i19;
                                    i33 = i18;
                                    i31 = i20;
                                    i32 = i27;
                                    i34 = i16;
                                    unsafe2 = unsafe;
                                } else {
                                    i10 = endGroup;
                                    i17 = i30;
                                }
                            } else if (i38 == 2) {
                                i30 = Y(message, data, i26, limit, i20, S10, registers);
                                if (i30 != i26) {
                                    c12676g12 = this;
                                    t11 = message;
                                    bArr2 = data;
                                    i28 = limit;
                                    i29 = endGroup;
                                    bVar = registers;
                                    i35 = i19;
                                    i33 = i18;
                                    i31 = i20;
                                    i32 = i27;
                                    i34 = i16;
                                    unsafe2 = unsafe;
                                } else {
                                    i10 = endGroup;
                                    i17 = i30;
                                }
                            } else {
                                i10 = endGroup;
                                i17 = i26;
                            }
                        }
                        i12 = i27;
                    }
                }
                if (i12 != i10 || i10 == 0) {
                    i30 = (!this.f69141f || registers.f69357d == C12666d0.d()) ? C12692m.G(i12, data, i17, limit, p(message), registers) : C12692m.g(i12, data, i17, limit, message, this.f69140e, this.f69150o, registers);
                    t11 = message;
                    bArr2 = data;
                    i28 = limit;
                    i32 = i12;
                    c12676g12 = this;
                    bVar = registers;
                    i35 = i19;
                    i33 = i18;
                    i31 = i20;
                    i34 = i16;
                    unsafe2 = unsafe;
                    i29 = i10;
                } else {
                    i14 = 1048575;
                    c12676g1 = this;
                    i11 = i17;
                    i13 = i19;
                    i33 = i18;
                }
            } else {
                int i46 = i35;
                unsafe = unsafe2;
                i10 = i29;
                c12676g1 = c12676g12;
                i11 = i30;
                i12 = i32;
                i13 = i46;
                i14 = 1048575;
            }
        }
        if (i13 != i14) {
            t10 = message;
            unsafe.putInt(t10, i13, i33);
        } else {
            t10 = message;
        }
        s2 s2Var = null;
        for (int i47 = c12676g1.f69146k; i47 < c12676g1.f69147l; i47++) {
            s2Var = (s2) j(message, c12676g1.f69145j[i47], s2Var, c12676g1.f69150o, message);
        }
        if (s2Var != null) {
            c12676g1.f69150o.o(t10, s2Var);
        }
        if (i10 == 0) {
            if (i11 != limit) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i11 > limit || i12 != i10) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i11;
    }

    @Override
    public void b(T message, T other) {
        e(message);
        other.getClass();
        for (int i10 = 0; i10 < this.f69136a.length; i10 += 3) {
            L(message, other, i10);
        }
        N1.J(this.f69150o, message, other);
        if (this.f69141f) {
            N1.H(this.f69151p, message, other);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x0298, code lost:
    
        if (r0 != r10) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x029a, code lost:
    
        r15 = r29;
        r14 = r30;
        r12 = r31;
        r13 = r33;
        r11 = r34;
        r1 = r18;
        r8 = r19;
        r7 = r22;
        r6 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x02b2, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02e8, code lost:
    
        if (r0 != r15) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0307, code lost:
    
        if (r0 != r15) goto L99;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0089. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [int] */
    @A
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b0(T message, byte[] data, int position, int limit, C12692m.b registers) throws IOException {
        byte b10;
        int i10;
        int i11;
        int i12;
        int i13;
        Unsafe unsafe;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int b11;
        C12676g1<T> c12676g1 = this;
        T t10 = message;
        byte[] bArr = data;
        int i21 = limit;
        C12692m.b bVar = registers;
        e(message);
        Unsafe unsafe2 = f69126A;
        int i22 = -1;
        int i23 = position;
        int i24 = -1;
        int i25 = 0;
        int i26 = 0;
        int i27 = 1048575;
        while (i23 < i21) {
            int i28 = i23 + 1;
            byte b12 = bArr[i23];
            if (b12 < 0) {
                i10 = C12692m.H(b12, bArr, i28, bVar);
                b10 = bVar.f69354a;
            } else {
                b10 = b12;
                i10 = i28;
            }
            int i29 = b10 >>> 3;
            int i30 = b10 & 7;
            int e02 = i29 > i24 ? c12676g1.e0(i29, i25 / 3) : c12676g1.d0(i29);
            if (e02 == i22) {
                i11 = i10;
                i12 = i29;
                i13 = i22;
                unsafe = unsafe2;
                i14 = 0;
            } else {
                int i31 = c12676g1.f69136a[e02 + 1];
                int r02 = r0(i31);
                long S10 = S(i31);
                if (r02 <= 17) {
                    int i32 = c12676g1.f69136a[e02 + 2];
                    int i33 = 1 << (i32 >>> 20);
                    int i34 = 1048575;
                    int i35 = i32 & 1048575;
                    if (i35 != i27) {
                        if (i27 != 1048575) {
                            unsafe2.putInt(t10, i27, i26);
                            i34 = 1048575;
                        }
                        if (i35 != i34) {
                            i26 = unsafe2.getInt(t10, i35);
                        }
                        i27 = i35;
                    }
                    switch (r02) {
                        case 0:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            i19 = i10;
                            i20 = i26;
                            if (i30 != 1) {
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                x2.j0(t10, S10, C12692m.d(bArr, i19));
                                i23 = i19 + 8;
                                i26 = i20 | i33;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 1:
                            i12 = i29;
                            bVar = registers;
                            i19 = i10;
                            i20 = i26;
                            i18 = e02;
                            if (i30 != 5) {
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                x2.l0(t10, S10, C12692m.l(bArr, i19));
                                i23 = i19 + 4;
                                i26 = i20 | i33;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 2:
                        case 3:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            i19 = i10;
                            i20 = i26;
                            if (i30 != 0) {
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                int L10 = C12692m.L(bArr, i19, bVar);
                                unsafe2.putLong(message, S10, bVar.f69355b);
                                i26 = i20 | i33;
                                i25 = i18;
                                i23 = L10;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 4:
                        case 11:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            i19 = i10;
                            i20 = i26;
                            if (i30 != 0) {
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                i23 = C12692m.I(bArr, i19, bVar);
                                unsafe2.putInt(t10, S10, bVar.f69354a);
                                i26 = i20 | i33;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 5:
                        case 14:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            i20 = i26;
                            if (i30 != 1) {
                                i19 = i10;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                i19 = i10;
                                unsafe2.putLong(message, S10, C12692m.j(bArr, i10));
                                i23 = i19 + 8;
                                i26 = i20 | i33;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 6:
                        case 13:
                            i12 = i29;
                            bVar = registers;
                            i20 = i26;
                            i18 = e02;
                            if (i30 != 5) {
                                i19 = i10;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                unsafe2.putInt(t10, S10, C12692m.h(bArr, i10));
                                i23 = i10 + 4;
                                i26 = i20 | i33;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 7:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            boolean z10 = true;
                            i20 = i26;
                            if (i30 != 0) {
                                i19 = i10;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                int L11 = C12692m.L(bArr, i10, bVar);
                                if (bVar.f69355b == 0) {
                                    z10 = false;
                                }
                                x2.a0(t10, S10, z10);
                                i26 = i20 | i33;
                                i23 = L11;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 8:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            i20 = i26;
                            if (i30 != 2) {
                                i19 = i10;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                i23 = (536870912 & i31) == 0 ? C12692m.C(bArr, i10, bVar) : C12692m.F(bArr, i10, bVar);
                                unsafe2.putObject(t10, S10, bVar.f69356c);
                                i26 = i20 | i33;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 9:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            if (i30 != 2) {
                                i19 = i10;
                                i20 = i26;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                Object M10 = c12676g1.M(t10, i18);
                                i23 = C12692m.O(M10, c12676g1.o(i18), data, i10, limit, registers);
                                c12676g1.p0(t10, i18, M10);
                                i26 |= i33;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 10:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            if (i30 != 2) {
                                i19 = i10;
                                i20 = i26;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                b11 = C12692m.b(bArr, i10, bVar);
                                unsafe2.putObject(t10, S10, bVar.f69356c);
                                i26 |= i33;
                                i23 = b11;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 12:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            if (i30 != 0) {
                                i19 = i10;
                                i20 = i26;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                b11 = C12692m.I(bArr, i10, bVar);
                                unsafe2.putInt(t10, S10, bVar.f69354a);
                                i26 |= i33;
                                i23 = b11;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 15:
                            i12 = i29;
                            bVar = registers;
                            i18 = e02;
                            if (i30 != 0) {
                                i19 = i10;
                                i20 = i26;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                i23 = C12692m.I(bArr, i10, bVar);
                                unsafe2.putInt(t10, S10, C.c(bVar.f69354a));
                                i26 |= i33;
                                i25 = i18;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        case 16:
                            if (i30 != 0) {
                                i12 = i29;
                                i18 = e02;
                                i19 = i10;
                                i20 = i26;
                                i26 = i20;
                                i14 = i18;
                                unsafe = unsafe2;
                                i11 = i19;
                                i13 = -1;
                                break;
                            } else {
                                bVar = registers;
                                int L12 = C12692m.L(bArr, i10, bVar);
                                i12 = i29;
                                unsafe2.putLong(message, S10, C.d(bVar.f69355b));
                                i26 |= i33;
                                i25 = e02;
                                i23 = L12;
                                i24 = i12;
                                i22 = -1;
                                break;
                            }
                        default:
                            i12 = i29;
                            i18 = e02;
                            i19 = i10;
                            i20 = i26;
                            i26 = i20;
                            i14 = i18;
                            unsafe = unsafe2;
                            i11 = i19;
                            i13 = -1;
                            break;
                    }
                } else {
                    i12 = i29;
                    int i36 = i26;
                    bVar = registers;
                    int i37 = i10;
                    if (r02 != 27) {
                        if (r02 <= 49) {
                            i15 = i36;
                            i14 = e02;
                            i13 = -1;
                            unsafe = unsafe2;
                            i16 = i27;
                            i23 = c0(message, data, i37, limit, b10, i12, i30, e02, i31, r02, S10, registers);
                        } else {
                            i15 = i36;
                            i16 = i27;
                            i14 = e02;
                            unsafe = unsafe2;
                            i17 = i37;
                            i13 = -1;
                            if (r02 != 50) {
                                i23 = Z(message, data, i17, limit, b10, i12, i30, i31, r02, S10, i14, registers);
                            } else if (i30 == 2) {
                                i23 = Y(message, data, i17, limit, i14, S10, registers);
                            }
                        }
                        i25 = i14;
                        unsafe2 = unsafe;
                    } else if (i30 == 2) {
                        D0.k kVar = (D0.k) unsafe2.getObject(t10, S10);
                        if (!kVar.hc()) {
                            int size = kVar.size();
                            kVar = kVar.q2(size == 0 ? 10 : size * 2);
                            unsafe2.putObject(t10, S10, kVar);
                        }
                        i23 = C12692m.q(c12676g1.o(e02), b10, data, i37, limit, kVar, registers);
                        i25 = e02;
                        i26 = i36;
                        i24 = i12;
                        i22 = -1;
                    } else {
                        i16 = i27;
                        i14 = e02;
                        unsafe = unsafe2;
                        i17 = i37;
                        i15 = i36;
                        i13 = -1;
                    }
                    i11 = i17;
                    i27 = i16;
                    i26 = i15;
                }
            }
            i23 = C12692m.G(b10, data, i11, limit, p(message), registers);
            c12676g1 = this;
            t10 = message;
            bArr = data;
            i21 = limit;
            bVar = registers;
            i24 = i12;
            i22 = i13;
            i25 = i14;
            unsafe2 = unsafe;
        }
        int i38 = i26;
        Unsafe unsafe3 = unsafe2;
        if (i27 != 1048575) {
            unsafe3.putInt(message, i27, i38);
        }
        if (i23 == limit) {
            return i23;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    public final boolean c(T message, T other, int pos) {
        return w(message, pos) == w(other, pos);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002f. Please report as an issue. */
    public final int c0(T message, byte[] data, int position, int limit, int tag, int number, int wireType, int bufferPosition, long typeAndOffset, int fieldType, long fieldOffset, C12692m.b registers) throws IOException {
        int J10;
        Unsafe unsafe = f69126A;
        D0.k kVar = (D0.k) unsafe.getObject(message, fieldOffset);
        if (!kVar.hc()) {
            int size = kVar.size();
            kVar = kVar.q2(size == 0 ? 10 : size * 2);
            unsafe.putObject(message, fieldOffset, kVar);
        }
        switch (fieldType) {
            case 18:
            case 35:
                if (wireType == 2) {
                    return C12692m.s(data, position, kVar, registers);
                }
                if (wireType == 1) {
                    return C12692m.e(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 19:
            case 36:
                if (wireType == 2) {
                    return C12692m.v(data, position, kVar, registers);
                }
                if (wireType == 5) {
                    return C12692m.m(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 20:
            case 21:
            case 37:
            case 38:
                if (wireType == 2) {
                    return C12692m.z(data, position, kVar, registers);
                }
                if (wireType == 0) {
                    return C12692m.M(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 22:
            case 29:
            case 39:
            case 43:
                if (wireType == 2) {
                    return C12692m.y(data, position, kVar, registers);
                }
                if (wireType == 0) {
                    return C12692m.J(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 23:
            case 32:
            case 40:
            case 46:
                if (wireType == 2) {
                    return C12692m.u(data, position, kVar, registers);
                }
                if (wireType == 1) {
                    return C12692m.k(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 24:
            case 31:
            case 41:
            case 45:
                if (wireType == 2) {
                    return C12692m.t(data, position, kVar, registers);
                }
                if (wireType == 5) {
                    return C12692m.i(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 25:
            case 42:
                if (wireType == 2) {
                    return C12692m.r(data, position, kVar, registers);
                }
                if (wireType == 0) {
                    return C12692m.a(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 26:
                if (wireType == 2) {
                    return (typeAndOffset & TagBits.HasTypeVariable) == 0 ? C12692m.D(tag, data, position, limit, kVar, registers) : C12692m.E(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 27:
                if (wireType == 2) {
                    return C12692m.q(o(bufferPosition), tag, data, position, limit, kVar, registers);
                }
                return position;
            case 28:
                if (wireType == 2) {
                    return C12692m.c(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 30:
            case 44:
                if (wireType != 2) {
                    if (wireType == 0) {
                        J10 = C12692m.J(tag, data, position, limit, kVar, registers);
                    }
                    return position;
                }
                J10 = C12692m.y(data, position, kVar, registers);
                N1.C(message, number, kVar, m(bufferPosition), null, this.f69150o);
                return J10;
            case 33:
            case 47:
                if (wireType == 2) {
                    return C12692m.w(data, position, kVar, registers);
                }
                if (wireType == 0) {
                    return C12692m.A(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 34:
            case 48:
                if (wireType == 2) {
                    return C12692m.x(data, position, kVar, registers);
                }
                if (wireType == 0) {
                    return C12692m.B(tag, data, position, limit, kVar, registers);
                }
                return position;
            case 49:
                if (wireType == 3) {
                    return C12692m.o(o(bufferPosition), tag, data, position, limit, kVar, registers);
                }
                return position;
            default:
                return position;
        }
    }

    public final int d0(final int number) {
        if (number < this.f69138c || number > this.f69139d) {
            return -1;
        }
        return n0(number, 0);
    }

    public final int e0(final int number, final int min) {
        if (number < this.f69138c || number > this.f69139d) {
            return -1;
        }
        return n0(number, min);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.util.Map, java.util.Map<K, V>] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    public final <K, V> int f(byte[] data, int position, int limit, R0.b<K, V> metadata, Map<K, V> target, C12692m.b registers) throws IOException {
        int i10;
        int I10 = C12692m.I(data, position, registers);
        int i11 = registers.f69354a;
        if (i11 < 0 || i11 > limit - I10) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i12 = I10 + i11;
        Object obj = metadata.f68862b;
        Object obj2 = metadata.f68864d;
        while (I10 < i12) {
            int i13 = I10 + 1;
            byte b10 = data[I10];
            if (b10 < 0) {
                i10 = C12692m.H(b10, data, i13, registers);
                b10 = registers.f69354a;
            } else {
                i10 = i13;
            }
            int i14 = b10 >>> 3;
            int i15 = b10 & 7;
            if (i14 != 1) {
                if (i14 == 2 && i15 == metadata.f68863c.b()) {
                    I10 = g(data, i10, limit, metadata.f68863c, metadata.f68864d.getClass(), registers);
                    obj2 = registers.f69356c;
                }
                I10 = C12692m.P(b10, data, i10, limit, registers);
            } else if (i15 == metadata.f68861a.b()) {
                I10 = g(data, i10, limit, metadata.f68861a, null, registers);
                obj = registers.f69356c;
            } else {
                I10 = C12692m.P(b10, data, i10, limit, registers);
            }
        }
        if (I10 != i12) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        target.put(obj, obj2);
        return i12;
    }

    public final int f0(int pos) {
        return this.f69136a[pos + 2];
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    public final int g(byte[] data, int position, int limit, A2.b fieldType, Class<?> messageType, C12692m.b registers) throws IOException {
        switch (a.f69153a[fieldType.ordinal()]) {
            case 1:
                int L10 = C12692m.L(data, position, registers);
                registers.f69356c = Boolean.valueOf(registers.f69355b != 0);
                return L10;
            case 2:
                return C12692m.b(data, position, registers);
            case 3:
                registers.f69356c = Double.valueOf(C12692m.d(data, position));
                return position + 8;
            case 4:
            case 5:
                registers.f69356c = Integer.valueOf(C12692m.h(data, position));
                return position + 4;
            case 6:
            case 7:
                registers.f69356c = Long.valueOf(C12692m.j(data, position));
                return position + 8;
            case 8:
                registers.f69356c = Float.valueOf(C12692m.l(data, position));
                return position + 4;
            case 9:
            case 10:
            case 11:
                int I10 = C12692m.I(data, position, registers);
                registers.f69356c = Integer.valueOf(registers.f69354a);
                return I10;
            case 12:
            case 13:
                int L11 = C12692m.L(data, position, registers);
                registers.f69356c = Long.valueOf(registers.f69355b);
                return L11;
            case 14:
                return C12692m.p(C12732z1.a().i(messageType), data, position, limit, registers);
            case 15:
                int I11 = C12692m.I(data, position, registers);
                registers.f69356c = Integer.valueOf(C.c(registers.f69354a));
                return I11;
            case 16:
                int L12 = C12692m.L(data, position, registers);
                registers.f69356c = Long.valueOf(C.d(registers.f69355b));
                return L12;
            case 17:
                return C12692m.F(data, position, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    public final <E> void g0(Object message, long offset, E1 reader, L1<E> schema, C12666d0 extensionRegistry) throws IOException {
        reader.B(this.f69149n.e(message, offset), schema, extensionRegistry);
    }

    public final <E> void h0(Object message, int typeAndOffset, E1 reader, L1<E> schema, C12666d0 extensionRegistry) throws IOException {
        reader.D(this.f69149n.e(message, S(typeAndOffset)), schema, extensionRegistry);
    }

    public final boolean i(T message, T other, int pos) {
        int s02 = s0(pos);
        long S10 = S(s02);
        switch (r0(s02)) {
            case 0:
                return c(message, other, pos) && Double.doubleToLongBits(x2.F(message, S10)) == Double.doubleToLongBits(x2.F(other, S10));
            case 1:
                return c(message, other, pos) && Float.floatToIntBits(x2.H(message, S10)) == Float.floatToIntBits(x2.H(other, S10));
            case 2:
                return c(message, other, pos) && x2.N(message, S10) == x2.N(other, S10);
            case 3:
                return c(message, other, pos) && x2.N(message, S10) == x2.N(other, S10);
            case 4:
                return c(message, other, pos) && x2.K(message, S10) == x2.K(other, S10);
            case 5:
                return c(message, other, pos) && x2.N(message, S10) == x2.N(other, S10);
            case 6:
                return c(message, other, pos) && x2.K(message, S10) == x2.K(other, S10);
            case 7:
                return c(message, other, pos) && x2.w(message, S10) == x2.w(other, S10);
            case 8:
                return c(message, other, pos) && N1.N(x2.Q(message, S10), x2.Q(other, S10));
            case 9:
                return c(message, other, pos) && N1.N(x2.Q(message, S10), x2.Q(other, S10));
            case 10:
                return c(message, other, pos) && N1.N(x2.Q(message, S10), x2.Q(other, S10));
            case 11:
                return c(message, other, pos) && x2.K(message, S10) == x2.K(other, S10);
            case 12:
                return c(message, other, pos) && x2.K(message, S10) == x2.K(other, S10);
            case 13:
                return c(message, other, pos) && x2.K(message, S10) == x2.K(other, S10);
            case 14:
                return c(message, other, pos) && x2.N(message, S10) == x2.N(other, S10);
            case 15:
                return c(message, other, pos) && x2.K(message, S10) == x2.K(other, S10);
            case 16:
                return c(message, other, pos) && x2.N(message, S10) == x2.N(other, S10);
            case 17:
                return c(message, other, pos) && N1.N(x2.Q(message, S10), x2.Q(other, S10));
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
                return N1.N(x2.Q(message, S10), x2.Q(other, S10));
            case 50:
                return N1.N(x2.Q(message, S10), x2.Q(other, S10));
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
                return C(message, other, pos) && N1.N(x2.Q(message, S10), x2.Q(other, S10));
            default:
                return true;
        }
    }

    public final void i0(Object message, int typeAndOffset, E1 reader) throws IOException {
        if (v(typeAndOffset)) {
            x2.t0(message, S(typeAndOffset), reader.T());
        } else if (this.f69142g) {
            x2.t0(message, S(typeAndOffset), reader.Q());
        } else {
            x2.t0(message, S(typeAndOffset), reader.h());
        }
    }

    public final <UT, UB> UB j(Object obj, int i10, UB ub2, q2<UT, UB> q2Var, Object obj2) {
        D0.e m10;
        int R10 = R(i10);
        Object Q10 = x2.Q(obj, S(s0(i10)));
        return (Q10 == null || (m10 = m(i10)) == null) ? ub2 : (UB) k(i10, R10, this.f69152q.f(Q10), m10, ub2, q2Var, obj2);
    }

    public final void j0(Object message, int typeAndOffset, E1 reader) throws IOException {
        if (v(typeAndOffset)) {
            reader.I(this.f69149n.e(message, S(typeAndOffset)));
        } else {
            reader.r(this.f69149n.e(message, S(typeAndOffset)));
        }
    }

    public final <K, V, UT, UB> UB k(int i10, int i11, Map<K, V> map, D0.e eVar, UB ub2, q2<UT, UB> q2Var, Object obj) {
        R0.b<?, ?> c10 = this.f69152q.c(n(i10));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!eVar.a(((Integer) next.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = q2Var.f(obj);
                }
                AbstractC12724x.h M10 = AbstractC12724x.M(R0.b(c10, next.getKey(), next.getValue()));
                try {
                    R0.l(M10.b(), c10, next.getKey(), next.getValue());
                    q2Var.d(ub2, i11, M10.a());
                    it.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return ub2;
    }

    public final void l0(T message, int pos) {
        int f02 = f0(pos);
        long j10 = 1048575 & f02;
        if (j10 == 1048575) {
            return;
        }
        x2.o0(message, j10, (1 << (f02 >>> 20)) | x2.K(message, j10));
    }

    public final D0.e m(int pos) {
        return (D0.e) this.f69137b[((pos / 3) * 2) + 1];
    }

    public final void m0(T message, int fieldNumber, int pos) {
        x2.o0(message, f0(pos) & 1048575, fieldNumber);
    }

    public final Object n(int pos) {
        return this.f69137b[(pos / 3) * 2];
    }

    public final int n0(final int number, int min) {
        int length = (this.f69136a.length / 3) - 1;
        while (min <= length) {
            int i10 = (length + min) >>> 1;
            int i11 = i10 * 3;
            int R10 = R(i11);
            if (number == R10) {
                return i11;
            }
            if (number < R10) {
                length = i10 - 1;
            } else {
                min = i10 + 1;
            }
        }
        return -1;
    }

    public final L1 o(int pos) {
        int i10 = (pos / 3) * 2;
        L1 l12 = (L1) this.f69137b[i10];
        if (l12 != null) {
            return l12;
        }
        L1<T> i11 = C12732z1.a().i((Class) this.f69137b[i10 + 1]);
        this.f69137b[i10] = i11;
        return i11;
    }

    public final void p0(T message, int pos, Object field) {
        f69126A.putObject(message, S(s0(pos)), field);
        l0(message, pos);
    }

    public int q() {
        return this.f69136a.length * 3;
    }

    public final void q0(T message, int fieldNumber, int pos, Object field) {
        f69126A.putObject(message, S(s0(pos)), field);
        m0(message, fieldNumber, pos);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x005e. Please report as an issue. */
    public final int r(T message) {
        int i10;
        int i11;
        int i02;
        int a02;
        int N02;
        boolean z10;
        int f10;
        int i12;
        int X02;
        int Z02;
        Unsafe unsafe = f69126A;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i15 < this.f69136a.length) {
            int s02 = s0(i15);
            int R10 = R(i15);
            int r02 = r0(s02);
            if (r02 <= 17) {
                i10 = this.f69136a[i15 + 2];
                int i18 = i10 & i13;
                i11 = 1 << (i10 >>> 20);
                if (i18 != i14) {
                    i17 = unsafe.getInt(message, i18);
                    i14 = i18;
                }
            } else {
                i10 = (!this.f69144i || r02 < EnumC12702p0.DOUBLE_LIST_PACKED.e() || r02 > EnumC12702p0.SINT64_LIST_PACKED.e()) ? 0 : this.f69136a[i15 + 2] & i13;
                i11 = 0;
            }
            long S10 = S(s02);
            switch (r02) {
                case 0:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        i02 = CodedOutputStream.i0(R10, 0.0d);
                        i16 += i02;
                        break;
                    }
                case 1:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        i02 = CodedOutputStream.q0(R10, 0.0f);
                        i16 += i02;
                        break;
                    }
                case 2:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        i02 = CodedOutputStream.y0(R10, unsafe.getLong(message, S10));
                        i16 += i02;
                        break;
                    }
                case 3:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        i02 = CodedOutputStream.a1(R10, unsafe.getLong(message, S10));
                        i16 += i02;
                        break;
                    }
                case 4:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        i02 = CodedOutputStream.w0(R10, unsafe.getInt(message, S10));
                        i16 += i02;
                        break;
                    }
                case 5:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        i02 = CodedOutputStream.o0(R10, 0L);
                        i16 += i02;
                        break;
                    }
                case 6:
                    if ((i17 & i11) != 0) {
                        i02 = CodedOutputStream.m0(R10, 0);
                        i16 += i02;
                        break;
                    }
                    break;
                case 7:
                    if ((i17 & i11) != 0) {
                        a02 = CodedOutputStream.a0(R10, true);
                        i16 += a02;
                    }
                    break;
                case 8:
                    if ((i17 & i11) != 0) {
                        Object object = unsafe.getObject(message, S10);
                        a02 = object instanceof AbstractC12724x ? CodedOutputStream.g0(R10, (AbstractC12724x) object) : CodedOutputStream.V0(R10, (String) object);
                        i16 += a02;
                    }
                    break;
                case 9:
                    if ((i17 & i11) != 0) {
                        a02 = N1.p(R10, unsafe.getObject(message, S10), o(i15));
                        i16 += a02;
                    }
                    break;
                case 10:
                    if ((i17 & i11) != 0) {
                        a02 = CodedOutputStream.g0(R10, (AbstractC12724x) unsafe.getObject(message, S10));
                        i16 += a02;
                    }
                    break;
                case 11:
                    if ((i17 & i11) != 0) {
                        a02 = CodedOutputStream.Y0(R10, unsafe.getInt(message, S10));
                        i16 += a02;
                    }
                    break;
                case 12:
                    if ((i17 & i11) != 0) {
                        a02 = CodedOutputStream.k0(R10, unsafe.getInt(message, S10));
                        i16 += a02;
                    }
                    break;
                case 13:
                    if ((i17 & i11) != 0) {
                        N02 = CodedOutputStream.N0(R10, 0);
                        i16 += N02;
                    }
                    break;
                case 14:
                    if ((i17 & i11) != 0) {
                        a02 = CodedOutputStream.P0(R10, 0L);
                        i16 += a02;
                    }
                    break;
                case 15:
                    if ((i17 & i11) != 0) {
                        a02 = CodedOutputStream.R0(R10, unsafe.getInt(message, S10));
                        i16 += a02;
                    }
                    break;
                case 16:
                    if ((i17 & i11) != 0) {
                        a02 = CodedOutputStream.T0(R10, unsafe.getLong(message, S10));
                        i16 += a02;
                    }
                    break;
                case 17:
                    if ((i17 & i11) != 0) {
                        a02 = CodedOutputStream.t0(R10, (InterfaceC12659b1) unsafe.getObject(message, S10), o(i15));
                        i16 += a02;
                    }
                    break;
                case 18:
                    a02 = N1.h(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += a02;
                    break;
                case 19:
                    z10 = false;
                    f10 = N1.f(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 20:
                    z10 = false;
                    f10 = N1.n(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 21:
                    z10 = false;
                    f10 = N1.z(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 22:
                    z10 = false;
                    f10 = N1.l(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 23:
                    z10 = false;
                    f10 = N1.h(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 24:
                    z10 = false;
                    f10 = N1.f(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 25:
                    z10 = false;
                    f10 = N1.a(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 26:
                    a02 = N1.w(R10, (List) unsafe.getObject(message, S10));
                    i16 += a02;
                    break;
                case 27:
                    a02 = N1.r(R10, (List) unsafe.getObject(message, S10), o(i15));
                    i16 += a02;
                    break;
                case 28:
                    a02 = N1.c(R10, (List) unsafe.getObject(message, S10));
                    i16 += a02;
                    break;
                case 29:
                    a02 = N1.x(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += a02;
                    break;
                case 30:
                    z10 = false;
                    f10 = N1.d(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 31:
                    z10 = false;
                    f10 = N1.f(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 32:
                    z10 = false;
                    f10 = N1.h(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 33:
                    z10 = false;
                    f10 = N1.s(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 34:
                    z10 = false;
                    f10 = N1.u(R10, (List) unsafe.getObject(message, S10), false);
                    i16 += f10;
                    break;
                case 35:
                    i12 = N1.i((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 36:
                    i12 = N1.g((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 37:
                    i12 = N1.o((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 38:
                    i12 = N1.A((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 39:
                    i12 = N1.m((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 40:
                    i12 = N1.i((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 41:
                    i12 = N1.g((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 42:
                    i12 = N1.b((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 43:
                    i12 = N1.y((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 44:
                    i12 = N1.e((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 45:
                    i12 = N1.g((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 46:
                    i12 = N1.i((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 47:
                    i12 = N1.t((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 48:
                    i12 = N1.v((List) unsafe.getObject(message, S10));
                    if (i12 > 0) {
                        if (this.f69144i) {
                            unsafe.putInt(message, i10, i12);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i12);
                        N02 = X02 + Z02 + i12;
                        i16 += N02;
                    }
                    break;
                case 49:
                    a02 = N1.k(R10, (List) unsafe.getObject(message, S10), o(i15));
                    i16 += a02;
                    break;
                case 50:
                    a02 = this.f69152q.e(R10, unsafe.getObject(message, S10), n(i15));
                    i16 += a02;
                    break;
                case 51:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.i0(R10, 0.0d);
                        i16 += a02;
                    }
                    break;
                case 52:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.q0(R10, 0.0f);
                        i16 += a02;
                    }
                    break;
                case 53:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.y0(R10, X(message, S10));
                        i16 += a02;
                    }
                    break;
                case 54:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.a1(R10, X(message, S10));
                        i16 += a02;
                    }
                    break;
                case 55:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.w0(R10, W(message, S10));
                        i16 += a02;
                    }
                    break;
                case 56:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.o0(R10, 0L);
                        i16 += a02;
                    }
                    break;
                case 57:
                    if (D(message, R10, i15)) {
                        N02 = CodedOutputStream.m0(R10, 0);
                        i16 += N02;
                    }
                    break;
                case 58:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.a0(R10, true);
                        i16 += a02;
                    }
                    break;
                case 59:
                    if (D(message, R10, i15)) {
                        Object object2 = unsafe.getObject(message, S10);
                        a02 = object2 instanceof AbstractC12724x ? CodedOutputStream.g0(R10, (AbstractC12724x) object2) : CodedOutputStream.V0(R10, (String) object2);
                        i16 += a02;
                    }
                    break;
                case 60:
                    if (D(message, R10, i15)) {
                        a02 = N1.p(R10, unsafe.getObject(message, S10), o(i15));
                        i16 += a02;
                    }
                    break;
                case 61:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.g0(R10, (AbstractC12724x) unsafe.getObject(message, S10));
                        i16 += a02;
                    }
                    break;
                case 62:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.Y0(R10, W(message, S10));
                        i16 += a02;
                    }
                    break;
                case 63:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.k0(R10, W(message, S10));
                        i16 += a02;
                    }
                    break;
                case 64:
                    if (D(message, R10, i15)) {
                        N02 = CodedOutputStream.N0(R10, 0);
                        i16 += N02;
                    }
                    break;
                case 65:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.P0(R10, 0L);
                        i16 += a02;
                    }
                    break;
                case 66:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.R0(R10, W(message, S10));
                        i16 += a02;
                    }
                    break;
                case 67:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.T0(R10, X(message, S10));
                        i16 += a02;
                    }
                    break;
                case 68:
                    if (D(message, R10, i15)) {
                        a02 = CodedOutputStream.t0(R10, (InterfaceC12659b1) unsafe.getObject(message, S10), o(i15));
                        i16 += a02;
                    }
                    break;
            }
            i15 += 3;
            i13 = 1048575;
        }
        int t10 = i16 + t(this.f69150o, message);
        return this.f69141f ? t10 + this.f69151p.c(message).z() : t10;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x003d. Please report as an issue. */
    public final int s(T message) {
        int i02;
        int i10;
        int X02;
        int Z02;
        Unsafe unsafe = f69126A;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f69136a.length; i12 += 3) {
            int s02 = s0(i12);
            int r02 = r0(s02);
            int R10 = R(i12);
            long S10 = S(s02);
            int i13 = (r02 < EnumC12702p0.DOUBLE_LIST_PACKED.e() || r02 > EnumC12702p0.SINT64_LIST_PACKED.e()) ? 0 : this.f69136a[i12 + 2] & 1048575;
            switch (r02) {
                case 0:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.i0(R10, 0.0d);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.q0(R10, 0.0f);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.y0(R10, x2.N(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.a1(R10, x2.N(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.w0(R10, x2.K(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.o0(R10, 0L);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.m0(R10, 0);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.a0(R10, true);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (w(message, i12)) {
                        Object Q10 = x2.Q(message, S10);
                        i02 = Q10 instanceof AbstractC12724x ? CodedOutputStream.g0(R10, (AbstractC12724x) Q10) : CodedOutputStream.V0(R10, (String) Q10);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (w(message, i12)) {
                        i02 = N1.p(R10, x2.Q(message, S10), o(i12));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.g0(R10, (AbstractC12724x) x2.Q(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.Y0(R10, x2.K(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.k0(R10, x2.K(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.N0(R10, 0);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.P0(R10, 0L);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.R0(R10, x2.K(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.T0(R10, x2.N(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (w(message, i12)) {
                        i02 = CodedOutputStream.t0(R10, (InterfaceC12659b1) x2.Q(message, S10), o(i12));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i02 = N1.h(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 19:
                    i02 = N1.f(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 20:
                    i02 = N1.n(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 21:
                    i02 = N1.z(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 22:
                    i02 = N1.l(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 23:
                    i02 = N1.h(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 24:
                    i02 = N1.f(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 25:
                    i02 = N1.a(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 26:
                    i02 = N1.w(R10, F(message, S10));
                    i11 += i02;
                    break;
                case 27:
                    i02 = N1.r(R10, F(message, S10), o(i12));
                    i11 += i02;
                    break;
                case 28:
                    i02 = N1.c(R10, F(message, S10));
                    i11 += i02;
                    break;
                case 29:
                    i02 = N1.x(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 30:
                    i02 = N1.d(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 31:
                    i02 = N1.f(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 32:
                    i02 = N1.h(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 33:
                    i02 = N1.s(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 34:
                    i02 = N1.u(R10, F(message, S10), false);
                    i11 += i02;
                    break;
                case 35:
                    i10 = N1.i((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 36:
                    i10 = N1.g((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 37:
                    i10 = N1.o((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 38:
                    i10 = N1.A((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 39:
                    i10 = N1.m((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 40:
                    i10 = N1.i((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 41:
                    i10 = N1.g((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 42:
                    i10 = N1.b((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 43:
                    i10 = N1.y((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 44:
                    i10 = N1.e((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 45:
                    i10 = N1.g((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 46:
                    i10 = N1.i((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 47:
                    i10 = N1.t((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 48:
                    i10 = N1.v((List) unsafe.getObject(message, S10));
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (this.f69144i) {
                            unsafe.putInt(message, i13, i10);
                        }
                        X02 = CodedOutputStream.X0(R10);
                        Z02 = CodedOutputStream.Z0(i10);
                        i02 = X02 + Z02 + i10;
                        i11 += i02;
                        break;
                    }
                case 49:
                    i02 = N1.k(R10, F(message, S10), o(i12));
                    i11 += i02;
                    break;
                case 50:
                    i02 = this.f69152q.e(R10, x2.Q(message, S10), n(i12));
                    i11 += i02;
                    break;
                case 51:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.i0(R10, 0.0d);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.q0(R10, 0.0f);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.y0(R10, X(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.a1(R10, X(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.w0(R10, W(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.o0(R10, 0L);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.m0(R10, 0);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.a0(R10, true);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (D(message, R10, i12)) {
                        Object Q11 = x2.Q(message, S10);
                        i02 = Q11 instanceof AbstractC12724x ? CodedOutputStream.g0(R10, (AbstractC12724x) Q11) : CodedOutputStream.V0(R10, (String) Q11);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (D(message, R10, i12)) {
                        i02 = N1.p(R10, x2.Q(message, S10), o(i12));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.g0(R10, (AbstractC12724x) x2.Q(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.Y0(R10, W(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.k0(R10, W(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.N0(R10, 0);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.P0(R10, 0L);
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.R0(R10, W(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.T0(R10, X(message, S10));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (D(message, R10, i12)) {
                        i02 = CodedOutputStream.t0(R10, (InterfaceC12659b1) x2.Q(message, S10), o(i12));
                        i11 += i02;
                        break;
                    } else {
                        break;
                    }
            }
        }
        return i11 + t(this.f69150o, message);
    }

    public final int s0(int pos) {
        return this.f69136a[pos + 1];
    }

    public final <UT, UB> int t(q2<UT, UB> schema, T message) {
        return schema.h(schema.g(message));
    }

    /* JADX WARN: Removed duplicated region for block: B:228:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void t0(T message, C2 writer) throws IOException {
        Iterator<Map.Entry<?, Object>> it;
        Map.Entry<?, ?> entry;
        int length;
        int i10;
        int i11;
        if (this.f69141f) {
            C12699o0<?> c10 = this.f69151p.c(message);
            if (!c10.C()) {
                it = c10.I();
                entry = (Map.Entry) it.next();
                length = this.f69136a.length;
                Unsafe unsafe = f69126A;
                int i12 = 1048575;
                int i13 = 1048575;
                i10 = 0;
                int i14 = 0;
                while (i10 < length) {
                    int s02 = s0(i10);
                    int R10 = R(i10);
                    int r02 = r0(s02);
                    if (r02 <= 17) {
                        int i15 = this.f69136a[i10 + 2];
                        int i16 = i15 & i12;
                        if (i16 != i13) {
                            i14 = unsafe.getInt(message, i16);
                            i13 = i16;
                        }
                        i11 = 1 << (i15 >>> 20);
                    } else {
                        i11 = 0;
                    }
                    while (entry != null && this.f69151p.a(entry) <= R10) {
                        this.f69151p.j(writer, entry);
                        entry = it.hasNext() ? (Map.Entry) it.next() : null;
                    }
                    long S10 = S(s02);
                    switch (r02) {
                        case 0:
                            if ((i11 & i14) == 0) {
                                break;
                            } else {
                                writer.G(R10, h(message, S10));
                                continue;
                            }
                        case 1:
                            if ((i11 & i14) != 0) {
                                writer.P(R10, l(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 2:
                            if ((i11 & i14) != 0) {
                                writer.L(R10, unsafe.getLong(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 3:
                            if ((i11 & i14) != 0) {
                                writer.f(R10, unsafe.getLong(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 4:
                            if ((i11 & i14) != 0) {
                                writer.i(R10, unsafe.getInt(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 5:
                            if ((i11 & i14) != 0) {
                                writer.o(R10, unsafe.getLong(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 6:
                            if ((i11 & i14) != 0) {
                                writer.c(R10, unsafe.getInt(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 7:
                            if ((i11 & i14) != 0) {
                                writer.q(R10, d(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 8:
                            if ((i11 & i14) != 0) {
                                x0(R10, unsafe.getObject(message, S10), writer);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            if ((i11 & i14) != 0) {
                                writer.I(R10, unsafe.getObject(message, S10), o(i10));
                                break;
                            } else {
                                continue;
                            }
                        case 10:
                            if ((i11 & i14) != 0) {
                                writer.h(R10, (AbstractC12724x) unsafe.getObject(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 11:
                            if ((i11 & i14) != 0) {
                                writer.m(R10, unsafe.getInt(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 12:
                            if ((i11 & i14) != 0) {
                                writer.Q(R10, unsafe.getInt(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 13:
                            if ((i11 & i14) != 0) {
                                writer.r(R10, unsafe.getInt(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 14:
                            if ((i11 & i14) != 0) {
                                writer.C(R10, unsafe.getLong(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 15:
                            if ((i11 & i14) != 0) {
                                writer.S(R10, unsafe.getInt(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 16:
                            if ((i11 & i14) != 0) {
                                writer.l(R10, unsafe.getLong(message, S10));
                                break;
                            } else {
                                continue;
                            }
                        case 17:
                            if ((i11 & i14) != 0) {
                                writer.B(R10, unsafe.getObject(message, S10), o(i10));
                                break;
                            } else {
                                continue;
                            }
                        case 18:
                            N1.Y(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 19:
                            N1.g0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 20:
                            N1.m0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 21:
                            N1.F0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 22:
                            N1.k0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 23:
                            N1.e0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 24:
                            N1.c0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 25:
                            N1.U(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 26:
                            N1.B0(R(i10), (List) unsafe.getObject(message, S10), writer);
                            break;
                        case 27:
                            N1.q0(R(i10), (List) unsafe.getObject(message, S10), writer, o(i10));
                            break;
                        case 28:
                            N1.W(R(i10), (List) unsafe.getObject(message, S10), writer);
                            break;
                        case 29:
                            N1.D0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 30:
                            N1.a0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 31:
                            N1.s0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 32:
                            N1.u0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 33:
                            N1.w0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 34:
                            N1.y0(R(i10), (List) unsafe.getObject(message, S10), writer, false);
                            continue;
                        case 35:
                            N1.Y(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 36:
                            N1.g0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 37:
                            N1.m0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 38:
                            N1.F0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 39:
                            N1.k0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 40:
                            N1.e0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 41:
                            N1.c0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 42:
                            N1.U(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 43:
                            N1.D0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 44:
                            N1.a0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 45:
                            N1.s0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 46:
                            N1.u0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 47:
                            N1.w0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 48:
                            N1.y0(R(i10), (List) unsafe.getObject(message, S10), writer, true);
                            break;
                        case 49:
                            N1.i0(R(i10), (List) unsafe.getObject(message, S10), writer, o(i10));
                            break;
                        case 50:
                            w0(writer, R10, unsafe.getObject(message, S10), i10);
                            break;
                        case 51:
                            if (D(message, R10, i10)) {
                                writer.G(R10, U(message, S10));
                                break;
                            }
                            break;
                        case 52:
                            if (D(message, R10, i10)) {
                                writer.P(R10, V(message, S10));
                                break;
                            }
                            break;
                        case 53:
                            if (D(message, R10, i10)) {
                                writer.L(R10, X(message, S10));
                                break;
                            }
                            break;
                        case 54:
                            if (D(message, R10, i10)) {
                                writer.f(R10, X(message, S10));
                                break;
                            }
                            break;
                        case 55:
                            if (D(message, R10, i10)) {
                                writer.i(R10, W(message, S10));
                                break;
                            }
                            break;
                        case 56:
                            if (D(message, R10, i10)) {
                                writer.o(R10, X(message, S10));
                                break;
                            }
                            break;
                        case 57:
                            if (D(message, R10, i10)) {
                                writer.c(R10, W(message, S10));
                                break;
                            }
                            break;
                        case 58:
                            if (D(message, R10, i10)) {
                                writer.q(R10, T(message, S10));
                                break;
                            }
                            break;
                        case 59:
                            if (D(message, R10, i10)) {
                                x0(R10, unsafe.getObject(message, S10), writer);
                                break;
                            }
                            break;
                        case 60:
                            if (D(message, R10, i10)) {
                                writer.I(R10, unsafe.getObject(message, S10), o(i10));
                                break;
                            }
                            break;
                        case 61:
                            if (D(message, R10, i10)) {
                                writer.h(R10, (AbstractC12724x) unsafe.getObject(message, S10));
                                break;
                            }
                            break;
                        case 62:
                            if (D(message, R10, i10)) {
                                writer.m(R10, W(message, S10));
                                break;
                            }
                            break;
                        case 63:
                            if (D(message, R10, i10)) {
                                writer.Q(R10, W(message, S10));
                                break;
                            }
                            break;
                        case 64:
                            if (D(message, R10, i10)) {
                                writer.r(R10, W(message, S10));
                                break;
                            }
                            break;
                        case 65:
                            if (D(message, R10, i10)) {
                                writer.C(R10, X(message, S10));
                                break;
                            }
                            break;
                        case 66:
                            if (D(message, R10, i10)) {
                                writer.S(R10, W(message, S10));
                                break;
                            }
                            break;
                        case 67:
                            if (D(message, R10, i10)) {
                                writer.l(R10, X(message, S10));
                                break;
                            }
                            break;
                        case 68:
                            if (D(message, R10, i10)) {
                                writer.B(R10, unsafe.getObject(message, S10), o(i10));
                                break;
                            }
                            break;
                    }
                    i10 += 3;
                    i12 = 1048575;
                }
                while (entry != null) {
                    this.f69151p.j(writer, entry);
                    entry = it.hasNext() ? (Map.Entry) it.next() : null;
                }
                y0(this.f69150o, message, writer);
            }
        }
        it = null;
        entry = null;
        length = this.f69136a.length;
        Unsafe unsafe2 = f69126A;
        int i122 = 1048575;
        int i132 = 1048575;
        i10 = 0;
        int i142 = 0;
        while (i10 < length) {
        }
        while (entry != null) {
        }
        y0(this.f69150o, message, writer);
    }

    /* JADX WARN: Removed duplicated region for block: B:275:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u0(T message, C2 writer) throws IOException {
        Iterator<Map.Entry<?, Object>> it;
        Map.Entry<?, ?> entry;
        int length;
        int i10;
        if (this.f69141f) {
            C12699o0<?> c10 = this.f69151p.c(message);
            if (!c10.C()) {
                it = c10.I();
                entry = (Map.Entry) it.next();
                length = this.f69136a.length;
                for (i10 = 0; i10 < length; i10 += 3) {
                    int s02 = s0(i10);
                    int R10 = R(i10);
                    while (entry != null && this.f69151p.a(entry) <= R10) {
                        this.f69151p.j(writer, entry);
                        entry = it.hasNext() ? (Map.Entry) it.next() : null;
                    }
                    switch (r0(s02)) {
                        case 0:
                            if (w(message, i10)) {
                                writer.G(R10, h(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (w(message, i10)) {
                                writer.P(R10, l(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (w(message, i10)) {
                                writer.L(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (w(message, i10)) {
                                writer.f(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (w(message, i10)) {
                                writer.i(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (w(message, i10)) {
                                writer.o(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 6:
                            if (w(message, i10)) {
                                writer.c(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 7:
                            if (w(message, i10)) {
                                writer.q(R10, d(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 8:
                            if (w(message, i10)) {
                                x0(R10, x2.Q(message, S(s02)), writer);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            if (w(message, i10)) {
                                writer.I(R10, x2.Q(message, S(s02)), o(i10));
                                break;
                            } else {
                                break;
                            }
                        case 10:
                            if (w(message, i10)) {
                                writer.h(R10, (AbstractC12724x) x2.Q(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if (w(message, i10)) {
                                writer.m(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 12:
                            if (w(message, i10)) {
                                writer.Q(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 13:
                            if (w(message, i10)) {
                                writer.r(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 14:
                            if (w(message, i10)) {
                                writer.C(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 15:
                            if (w(message, i10)) {
                                writer.S(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 16:
                            if (w(message, i10)) {
                                writer.l(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 17:
                            if (w(message, i10)) {
                                writer.B(R10, x2.Q(message, S(s02)), o(i10));
                                break;
                            } else {
                                break;
                            }
                        case 18:
                            N1.Y(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 19:
                            N1.g0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 20:
                            N1.m0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 21:
                            N1.F0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 22:
                            N1.k0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 23:
                            N1.e0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 24:
                            N1.c0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 25:
                            N1.U(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 26:
                            N1.B0(R(i10), (List) x2.Q(message, S(s02)), writer);
                            break;
                        case 27:
                            N1.q0(R(i10), (List) x2.Q(message, S(s02)), writer, o(i10));
                            break;
                        case 28:
                            N1.W(R(i10), (List) x2.Q(message, S(s02)), writer);
                            break;
                        case 29:
                            N1.D0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 30:
                            N1.a0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 31:
                            N1.s0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 32:
                            N1.u0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 33:
                            N1.w0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 34:
                            N1.y0(R(i10), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 35:
                            N1.Y(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 36:
                            N1.g0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 37:
                            N1.m0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 38:
                            N1.F0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 39:
                            N1.k0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 40:
                            N1.e0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 41:
                            N1.c0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 42:
                            N1.U(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 43:
                            N1.D0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 44:
                            N1.a0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 45:
                            N1.s0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 46:
                            N1.u0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 47:
                            N1.w0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 48:
                            N1.y0(R(i10), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 49:
                            N1.i0(R(i10), (List) x2.Q(message, S(s02)), writer, o(i10));
                            break;
                        case 50:
                            w0(writer, R10, x2.Q(message, S(s02)), i10);
                            break;
                        case 51:
                            if (D(message, R10, i10)) {
                                writer.G(R10, U(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 52:
                            if (D(message, R10, i10)) {
                                writer.P(R10, V(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            if (D(message, R10, i10)) {
                                writer.L(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            if (D(message, R10, i10)) {
                                writer.f(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 55:
                            if (D(message, R10, i10)) {
                                writer.i(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 56:
                            if (D(message, R10, i10)) {
                                writer.o(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 57:
                            if (D(message, R10, i10)) {
                                writer.c(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 58:
                            if (D(message, R10, i10)) {
                                writer.q(R10, T(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 59:
                            if (D(message, R10, i10)) {
                                x0(R10, x2.Q(message, S(s02)), writer);
                                break;
                            } else {
                                break;
                            }
                        case 60:
                            if (D(message, R10, i10)) {
                                writer.I(R10, x2.Q(message, S(s02)), o(i10));
                                break;
                            } else {
                                break;
                            }
                        case 61:
                            if (D(message, R10, i10)) {
                                writer.h(R10, (AbstractC12724x) x2.Q(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 62:
                            if (D(message, R10, i10)) {
                                writer.m(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 63:
                            if (D(message, R10, i10)) {
                                writer.Q(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 64:
                            if (D(message, R10, i10)) {
                                writer.r(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 65:
                            if (D(message, R10, i10)) {
                                writer.C(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 66:
                            if (D(message, R10, i10)) {
                                writer.S(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 67:
                            if (D(message, R10, i10)) {
                                writer.l(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 68:
                            if (D(message, R10, i10)) {
                                writer.B(R10, x2.Q(message, S(s02)), o(i10));
                                break;
                            } else {
                                break;
                            }
                    }
                }
                while (entry != null) {
                    this.f69151p.j(writer, entry);
                    entry = it.hasNext() ? (Map.Entry) it.next() : null;
                }
                y0(this.f69150o, message, writer);
            }
        }
        it = null;
        entry = null;
        length = this.f69136a.length;
        while (i10 < length) {
        }
        while (entry != null) {
        }
        y0(this.f69150o, message, writer);
    }

    /* JADX WARN: Removed duplicated region for block: B:275:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v0(T message, C2 writer) throws IOException {
        Iterator<Map.Entry<?, Object>> it;
        Map.Entry<?, ?> entry;
        int length;
        y0(this.f69150o, message, writer);
        if (this.f69141f) {
            C12699o0<?> c10 = this.f69151p.c(message);
            if (!c10.C()) {
                it = c10.r();
                entry = (Map.Entry) it.next();
                for (length = this.f69136a.length - 3; length >= 0; length -= 3) {
                    int s02 = s0(length);
                    int R10 = R(length);
                    while (entry != null && this.f69151p.a(entry) > R10) {
                        this.f69151p.j(writer, entry);
                        entry = it.hasNext() ? (Map.Entry) it.next() : null;
                    }
                    switch (r0(s02)) {
                        case 0:
                            if (w(message, length)) {
                                writer.G(R10, h(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (w(message, length)) {
                                writer.P(R10, l(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (w(message, length)) {
                                writer.L(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (w(message, length)) {
                                writer.f(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (w(message, length)) {
                                writer.i(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (w(message, length)) {
                                writer.o(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 6:
                            if (w(message, length)) {
                                writer.c(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 7:
                            if (w(message, length)) {
                                writer.q(R10, d(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 8:
                            if (w(message, length)) {
                                x0(R10, x2.Q(message, S(s02)), writer);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            if (w(message, length)) {
                                writer.I(R10, x2.Q(message, S(s02)), o(length));
                                break;
                            } else {
                                break;
                            }
                        case 10:
                            if (w(message, length)) {
                                writer.h(R10, (AbstractC12724x) x2.Q(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if (w(message, length)) {
                                writer.m(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 12:
                            if (w(message, length)) {
                                writer.Q(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 13:
                            if (w(message, length)) {
                                writer.r(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 14:
                            if (w(message, length)) {
                                writer.C(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 15:
                            if (w(message, length)) {
                                writer.S(R10, u(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 16:
                            if (w(message, length)) {
                                writer.l(R10, G(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 17:
                            if (w(message, length)) {
                                writer.B(R10, x2.Q(message, S(s02)), o(length));
                                break;
                            } else {
                                break;
                            }
                        case 18:
                            N1.Y(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 19:
                            N1.g0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 20:
                            N1.m0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 21:
                            N1.F0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 22:
                            N1.k0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 23:
                            N1.e0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 24:
                            N1.c0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 25:
                            N1.U(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 26:
                            N1.B0(R(length), (List) x2.Q(message, S(s02)), writer);
                            break;
                        case 27:
                            N1.q0(R(length), (List) x2.Q(message, S(s02)), writer, o(length));
                            break;
                        case 28:
                            N1.W(R(length), (List) x2.Q(message, S(s02)), writer);
                            break;
                        case 29:
                            N1.D0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 30:
                            N1.a0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 31:
                            N1.s0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 32:
                            N1.u0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 33:
                            N1.w0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 34:
                            N1.y0(R(length), (List) x2.Q(message, S(s02)), writer, false);
                            break;
                        case 35:
                            N1.Y(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 36:
                            N1.g0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 37:
                            N1.m0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 38:
                            N1.F0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 39:
                            N1.k0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 40:
                            N1.e0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 41:
                            N1.c0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 42:
                            N1.U(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 43:
                            N1.D0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 44:
                            N1.a0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 45:
                            N1.s0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 46:
                            N1.u0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 47:
                            N1.w0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 48:
                            N1.y0(R(length), (List) x2.Q(message, S(s02)), writer, true);
                            break;
                        case 49:
                            N1.i0(R(length), (List) x2.Q(message, S(s02)), writer, o(length));
                            break;
                        case 50:
                            w0(writer, R10, x2.Q(message, S(s02)), length);
                            break;
                        case 51:
                            if (D(message, R10, length)) {
                                writer.G(R10, U(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 52:
                            if (D(message, R10, length)) {
                                writer.P(R10, V(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            if (D(message, R10, length)) {
                                writer.L(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            if (D(message, R10, length)) {
                                writer.f(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 55:
                            if (D(message, R10, length)) {
                                writer.i(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 56:
                            if (D(message, R10, length)) {
                                writer.o(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 57:
                            if (D(message, R10, length)) {
                                writer.c(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 58:
                            if (D(message, R10, length)) {
                                writer.q(R10, T(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 59:
                            if (D(message, R10, length)) {
                                x0(R10, x2.Q(message, S(s02)), writer);
                                break;
                            } else {
                                break;
                            }
                        case 60:
                            if (D(message, R10, length)) {
                                writer.I(R10, x2.Q(message, S(s02)), o(length));
                                break;
                            } else {
                                break;
                            }
                        case 61:
                            if (D(message, R10, length)) {
                                writer.h(R10, (AbstractC12724x) x2.Q(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 62:
                            if (D(message, R10, length)) {
                                writer.m(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 63:
                            if (D(message, R10, length)) {
                                writer.Q(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 64:
                            if (D(message, R10, length)) {
                                writer.r(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 65:
                            if (D(message, R10, length)) {
                                writer.C(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 66:
                            if (D(message, R10, length)) {
                                writer.S(R10, W(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 67:
                            if (D(message, R10, length)) {
                                writer.l(R10, X(message, S(s02)));
                                break;
                            } else {
                                break;
                            }
                        case 68:
                            if (D(message, R10, length)) {
                                writer.B(R10, x2.Q(message, S(s02)), o(length));
                                break;
                            } else {
                                break;
                            }
                    }
                }
                while (entry != null) {
                    this.f69151p.j(writer, entry);
                    entry = it.hasNext() ? (Map.Entry) it.next() : null;
                }
            }
        }
        it = null;
        entry = null;
        while (length >= 0) {
        }
        while (entry != null) {
        }
    }

    public final boolean w(T message, int pos) {
        int f02 = f0(pos);
        long j10 = 1048575 & f02;
        if (j10 != 1048575) {
            return (x2.K(message, j10) & (1 << (f02 >>> 20))) != 0;
        }
        int s02 = s0(pos);
        long S10 = S(s02);
        switch (r0(s02)) {
            case 0:
                return Double.doubleToRawLongBits(x2.F(message, S10)) != 0;
            case 1:
                return Float.floatToRawIntBits(x2.H(message, S10)) != 0;
            case 2:
                return x2.N(message, S10) != 0;
            case 3:
                return x2.N(message, S10) != 0;
            case 4:
                return x2.K(message, S10) != 0;
            case 5:
                return x2.N(message, S10) != 0;
            case 6:
                return x2.K(message, S10) != 0;
            case 7:
                return x2.w(message, S10);
            case 8:
                Object Q10 = x2.Q(message, S10);
                if (Q10 instanceof String) {
                    return !((String) Q10).isEmpty();
                }
                if (Q10 instanceof AbstractC12724x) {
                    return !AbstractC12724x.f69696g.equals(Q10);
                }
                throw new IllegalArgumentException();
            case 9:
                return x2.Q(message, S10) != null;
            case 10:
                return !AbstractC12724x.f69696g.equals(x2.Q(message, S10));
            case 11:
                return x2.K(message, S10) != 0;
            case 12:
                return x2.K(message, S10) != 0;
            case 13:
                return x2.K(message, S10) != 0;
            case 14:
                return x2.N(message, S10) != 0;
            case 15:
                return x2.K(message, S10) != 0;
            case 16:
                return x2.N(message, S10) != 0;
            case 17:
                return x2.Q(message, S10) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final <K, V> void w0(C2 writer, int number, Object mapField, int pos) throws IOException {
        if (mapField != null) {
            writer.u(number, this.f69152q.c(n(pos)), this.f69152q.h(mapField));
        }
    }

    public final boolean x(T message, int pos, int presenceFieldOffset, int presenceField, int presenceMask) {
        return presenceFieldOffset == 1048575 ? w(message, pos) : (presenceField & presenceMask) != 0;
    }

    public final void x0(int fieldNumber, Object value, C2 writer) throws IOException {
        if (value instanceof String) {
            writer.e(fieldNumber, (String) value);
        } else {
            writer.h(fieldNumber, (AbstractC12724x) value);
        }
    }

    public final <UT, UB> void y0(q2<UT, UB> schema, T message, C2 writer) throws IOException {
        schema.t(schema.g(message), writer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <N> boolean z(Object message, int typeAndOffset, int pos) {
        List list = (List) x2.Q(message, S(typeAndOffset));
        if (list.isEmpty()) {
            return true;
        }
        L1 o10 = o(pos);
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!o10.K1(list.get(i10))) {
                return false;
            }
        }
        return true;
    }
}
