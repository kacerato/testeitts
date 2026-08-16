package com.android.tools.r8.internal;

import java.lang.classfile.Attributes;
import java.lang.constant.ConstantDescs;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class C6072Vd {

    public final int f45106a;

    public final byte[] f45107b;

    public final int[] f45108c;

    public final String[] f45109d;

    public final C10127wh[] f45110e;

    public final int[] f45111f;

    public final int f45112g;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x004b. Please report as an issue. */
    public C6072Vd(byte[] bArr, boolean z10) {
        this.f45107b = bArr;
        if (z10 && c(6) > 68) {
            throw new IllegalArgumentException(T60.a(c(6), "Unsupported class file major version "));
        }
        int d10 = d(8);
        this.f45108c = new int[d10];
        this.f45109d = new String[d10];
        int i10 = 10;
        boolean z11 = false;
        int i11 = 0;
        boolean z12 = false;
        int i12 = 1;
        while (true) {
            int i13 = 4;
            if (i12 >= d10) {
                this.f45112g = i11;
                this.f45106a = i10;
                int[] iArr = null;
                this.f45110e = z11 ? new C10127wh[d10] : null;
                if (z12) {
                    char[] cArr = new char[i11];
                    int a10 = a();
                    for (int d11 = d(a10 - 2); d11 > 0; d11--) {
                        String c10 = c(a10, cArr);
                        int a11 = a(a10 + 2);
                        int i14 = a10 + 6;
                        if (Attributes.NAME_BOOTSTRAP_METHODS.equals(c10)) {
                            int d12 = d(i14);
                            int[] iArr2 = new int[d12];
                            int i15 = a10 + 8;
                            for (int i16 = 0; i16 < d12; i16++) {
                                iArr2[i16] = i15;
                                i15 += (d(i15 + 2) * 2) + 4;
                            }
                            iArr = iArr2;
                        } else {
                            a10 = i14 + a11;
                        }
                    }
                    throw new IllegalArgumentException();
                }
                this.f45111f = iArr;
                return;
            }
            int i17 = i12 + 1;
            int i18 = i10 + 1;
            this.f45108c[i12] = i18;
            switch (bArr[i10]) {
                case 1:
                    i13 = d(i18) + 3;
                    if (i13 > i11) {
                        i11 = i13;
                    }
                    i12 = i17;
                    i10 += i13;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                case 9:
                case 10:
                case 11:
                case 12:
                    i13 = 5;
                    i12 = i17;
                    i10 += i13;
                case 5:
                case 6:
                    i12 += 2;
                    i13 = 9;
                    i10 += i13;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    i13 = 3;
                    i12 = i17;
                    i10 += i13;
                case 15:
                    i12 = i17;
                    i10 += i13;
                case 17:
                    z11 = true;
                    z12 = true;
                    i13 = 5;
                    i12 = i17;
                    i10 += i13;
                case 18:
                    z12 = true;
                    i13 = 5;
                    i12 = i17;
                    i10 += i13;
            }
        }
    }

    public static XQ b(int i10, XQ[] xqArr) {
        if (xqArr[i10] == null) {
            xqArr[i10] = new XQ();
        }
        XQ xq = xqArr[i10];
        xq.f45687b = (short) (xq.f45687b & (-2));
        return xq;
    }

    public final void a(AbstractC7449ge abstractC7449ge, K4[] k4Arr, int i10) {
        AbstractC7449ge abstractC7449ge2;
        String str;
        String str2;
        String str3;
        K4 k42;
        C6961di c6961di;
        String str4;
        int i11;
        String str5;
        String str6;
        int i12;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        int i13;
        int i14;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        int i15;
        int i16;
        String str21;
        String str22;
        String str23;
        boolean z10;
        int i17;
        String[] strArr;
        String str24;
        String str25;
        String[] strArr2;
        int i18;
        int i19;
        int i20;
        C6961di c6961di2 = new C6961di();
        c6961di2.f47459a = k4Arr;
        c6961di2.f47460b = i10;
        char[] cArr = new char[this.f45112g];
        c6961di2.f47461c = cArr;
        int i21 = this.f45106a;
        int d10 = d(i21);
        String a10 = a(i21 + 2, cArr);
        String a11 = a(i21 + 4, cArr);
        int d11 = d(i21 + 6);
        String[] strArr3 = new String[d11];
        int i22 = i21 + 8;
        for (int i23 = 0; i23 < d11; i23++) {
            strArr3[i23] = a(i22, cArr);
            i22 += 2;
        }
        int a12 = a();
        int i24 = d10;
        int d12 = d(a12 - 2);
        String str26 = null;
        String str27 = null;
        String str28 = null;
        int i25 = 0;
        String str29 = null;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        String str30 = null;
        int i33 = 0;
        int i34 = 0;
        int i35 = 0;
        K4 k43 = null;
        while (true) {
            String str31 = "Deprecated";
            C6961di c6961di3 = c6961di2;
            String str32 = Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS;
            int i36 = i22;
            if (d12 > 0) {
                String c10 = c(a12, cArr);
                String str33 = str26;
                int a13 = a(a12 + 2);
                int i37 = a12 + 6;
                String str34 = str27;
                if ("SourceFile".equals(c10)) {
                    str27 = c(i37, cArr);
                    i18 = i37;
                    i19 = a13;
                    i20 = i36;
                    str26 = str33;
                } else {
                    if ("InnerClasses".equals(c10)) {
                        i18 = i37;
                        i27 = i18;
                    } else if ("EnclosingMethod".equals(c10)) {
                        i18 = i37;
                        i28 = i18;
                    } else {
                        if (Attributes.NAME_NEST_HOST.equals(c10)) {
                            i18 = i37;
                            i19 = a13;
                            str30 = a(i37, cArr);
                        } else if (Attributes.NAME_NEST_MEMBERS.equals(c10)) {
                            i18 = i37;
                            i33 = i18;
                        } else if (Attributes.NAME_PERMITTED_SUBCLASSES.equals(c10)) {
                            i18 = i37;
                            i34 = i18;
                        } else {
                            if ("Signature".equals(c10)) {
                                str28 = c(i37, cArr);
                            } else if ("RuntimeVisibleAnnotations".equals(c10)) {
                                i18 = i37;
                                i29 = i18;
                            } else if (Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS.equals(c10)) {
                                i18 = i37;
                                i31 = i18;
                            } else if ("Deprecated".equals(c10)) {
                                i24 |= 131072;
                            } else if ("Synthetic".equals(c10)) {
                                i24 |= 4096;
                            } else if ("SourceDebugExtension".equals(c10)) {
                                if (a13 <= this.f45107b.length - i37) {
                                    i18 = i37;
                                    i19 = a13;
                                    str26 = a(new char[a13], i37, a13);
                                    i20 = i36;
                                    str27 = str34;
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            } else if ("RuntimeInvisibleAnnotations".equals(c10)) {
                                i18 = i37;
                                i30 = i18;
                            } else if (Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS.equals(c10)) {
                                i18 = i37;
                                i32 = i18;
                            } else if (Attributes.NAME_RECORD.equals(c10)) {
                                i24 |= 65536;
                                i18 = i37;
                                i35 = i18;
                            } else if (Attributes.NAME_MODULE.equals(c10)) {
                                i18 = i37;
                                i25 = i18;
                            } else if (Attributes.NAME_MODULE_MAIN_CLASS.equals(c10)) {
                                i18 = i37;
                                i19 = a13;
                                str29 = a(i37, cArr);
                            } else if (Attributes.NAME_MODULE_PACKAGES.equals(c10)) {
                                i18 = i37;
                                i26 = i18;
                            } else {
                                if (Attributes.NAME_BOOTSTRAP_METHODS.equals(c10)) {
                                    i18 = i37;
                                    i19 = a13;
                                    i20 = i36;
                                    str27 = str34;
                                    str26 = str33;
                                } else {
                                    i18 = i37;
                                    i19 = a13;
                                    i20 = i36;
                                    K4 a14 = a(k4Arr, c10, i18, i19, cArr, -1, null);
                                    a14.f41568c = k43;
                                    k43 = a14;
                                    str27 = str34;
                                    str26 = str33;
                                    i24 = i24;
                                }
                                a12 = i18 + i19;
                                d12--;
                                c6961di2 = c6961di3;
                                i22 = i20;
                            }
                            i18 = i37;
                        }
                        i20 = i36;
                        str26 = str33;
                        str27 = str34;
                    }
                    i19 = a13;
                    i20 = i36;
                    str26 = str33;
                    str27 = str34;
                }
                a12 = i18 + i19;
                d12--;
                c6961di2 = c6961di3;
                i22 = i20;
            } else {
                int i38 = i24;
                K4 k44 = k43;
                String str35 = str27;
                String str36 = str26;
                String str37 = "Synthetic";
                String str38 = "Signature";
                String str39 = "RuntimeVisibleAnnotations";
                abstractC7449ge.a(a(this.f45108c[1] - 7), i38, a10, str28, a11, strArr3);
                String str40 = Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS;
                if ((i10 & 2) != 0 || (str35 == null && str36 == null)) {
                    abstractC7449ge2 = abstractC7449ge;
                    str = "RuntimeInvisibleAnnotations";
                } else {
                    abstractC7449ge2 = abstractC7449ge;
                    str = "RuntimeInvisibleAnnotations";
                    abstractC7449ge2.a(str35, str36);
                }
                int i39 = i25;
                if (i39 != 0) {
                    c6961di = c6961di3;
                    char[] cArr2 = c6961di.f47461c;
                    k42 = k44;
                    int i40 = i39 + 6;
                    TX a15 = abstractC7449ge2.a(d(i39 + 2), c(this.f45108c[d(i39)], cArr2), c(i39 + 4, cArr2));
                    if (a15 == null) {
                        str2 = Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS;
                        str3 = "Deprecated";
                    } else {
                        String str41 = str29;
                        if (str41 != null) {
                            a15.a(str41);
                        }
                        int i41 = i26;
                        if (i41 != 0) {
                            int d13 = d(i41);
                            int i42 = i41 + 2;
                            while (true) {
                                int i43 = d13 - 1;
                                if (d13 <= 0) {
                                    break;
                                }
                                a15.b(c(this.f45108c[d(i42)], cArr2));
                                i42 += 2;
                                d13 = i43;
                            }
                        }
                        int d14 = d(i40);
                        int i44 = i39 + 8;
                        while (true) {
                            int i45 = d14 - 1;
                            if (d14 <= 0) {
                                break;
                            }
                            String c11 = c(this.f45108c[d(i44)], cArr2);
                            int d15 = d(i44 + 2);
                            String c12 = c(i44 + 4, cArr2);
                            i44 += 6;
                            a15.a(d15, c11, c12);
                            d14 = i45;
                        }
                        int d16 = d(i44);
                        int i46 = i44 + 2;
                        while (true) {
                            int i47 = d16 - 1;
                            if (d16 <= 0) {
                                break;
                            }
                            String c13 = c(this.f45108c[d(i46)], cArr2);
                            int d17 = d(i46 + 2);
                            int d18 = d(i46 + 4);
                            i46 += 6;
                            if (d18 != 0) {
                                String[] strArr4 = new String[d18];
                                str24 = str32;
                                str25 = str31;
                                int i48 = i46;
                                int i49 = 0;
                                while (i49 < d18) {
                                    strArr4[i49] = c(this.f45108c[d(i48)], cArr2);
                                    i48 += 2;
                                    i49++;
                                    d18 = d18;
                                }
                                strArr2 = strArr4;
                                i46 = i48;
                            } else {
                                str24 = str32;
                                str25 = str31;
                                strArr2 = null;
                            }
                            a15.a(d17, c13, strArr2);
                            d16 = i47;
                            str31 = str25;
                            str32 = str24;
                        }
                        str2 = str32;
                        str3 = str31;
                        int d19 = d(i46);
                        int i50 = i46 + 2;
                        while (true) {
                            int i51 = d19 - 1;
                            if (d19 <= 0) {
                                break;
                            }
                            String c14 = c(this.f45108c[d(i50)], cArr2);
                            int d20 = d(i50 + 2);
                            int d21 = d(i50 + 4);
                            i50 += 6;
                            if (d21 != 0) {
                                strArr = new String[d21];
                                i17 = i51;
                                int i52 = 0;
                                while (i52 < d21) {
                                    strArr[i52] = c(this.f45108c[d(i50)], cArr2);
                                    i50 += 2;
                                    i52++;
                                    d21 = d21;
                                }
                            } else {
                                i17 = i51;
                                strArr = null;
                            }
                            a15.b(d20, c14, strArr);
                            d19 = i17;
                        }
                        int d22 = d(i50);
                        int i53 = i50 + 2;
                        while (true) {
                            int i54 = d22 - 1;
                            if (d22 <= 0) {
                                break;
                            }
                            a15.c(a(i53, cArr2));
                            i53 += 2;
                            d22 = i54;
                        }
                        int d23 = d(i53);
                        int i55 = i53 + 2;
                        while (true) {
                            int i56 = d23 - 1;
                            if (d23 <= 0) {
                                break;
                            }
                            String a16 = a(i55, cArr2);
                            int d24 = d(i55 + 2);
                            i55 += 4;
                            String[] strArr5 = new String[d24];
                            for (int i57 = 0; i57 < d24; i57++) {
                                strArr5[i57] = a(i55, cArr2);
                                i55 += 2;
                            }
                            a15.a(a16, strArr5);
                            d23 = i56;
                        }
                        a15.a();
                    }
                } else {
                    str2 = Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS;
                    str3 = "Deprecated";
                    k42 = k44;
                    c6961di = c6961di3;
                }
                String str42 = str30;
                if (str42 != null) {
                    abstractC7449ge2.a(str42);
                }
                int i58 = i28;
                if (i58 != 0) {
                    String a17 = a(i58, cArr);
                    int d25 = d(i58 + 2);
                    abstractC7449ge2.a(a17, d25 == 0 ? null : c(this.f45108c[d25], cArr), d25 == 0 ? null : c(this.f45108c[d25] + 2, cArr));
                }
                int i59 = i29;
                if (i59 != 0) {
                    int d26 = d(i59);
                    int i60 = i59 + 2;
                    while (true) {
                        int i61 = d26 - 1;
                        if (d26 <= 0) {
                            break;
                        }
                        i60 = a(abstractC7449ge2.a(c(i60, cArr), true), i60 + 2, true, cArr);
                        d26 = i61;
                    }
                }
                int i62 = i30;
                if (i62 != 0) {
                    int d27 = d(i62);
                    int i63 = i62 + 2;
                    while (true) {
                        int i64 = d27 - 1;
                        if (d27 <= 0) {
                            break;
                        }
                        i63 = a(abstractC7449ge2.a(c(i63, cArr), false), i63 + 2, true, cArr);
                        d27 = i64;
                    }
                }
                int i65 = i31;
                if (i65 != 0) {
                    int d28 = d(i65);
                    int i66 = i65 + 2;
                    while (true) {
                        int i67 = d28 - 1;
                        if (d28 <= 0) {
                            break;
                        }
                        int a18 = a(c6961di, i66);
                        i66 = a(abstractC7449ge2.a(c6961di.f47466h, c6961di.f47467i, c(a18, cArr), true), a18 + 2, true, cArr);
                        d28 = i67;
                    }
                }
                int i68 = i32;
                if (i68 != 0) {
                    int d29 = d(i68);
                    int i69 = i68 + 2;
                    while (true) {
                        int i70 = d29 - 1;
                        if (d29 <= 0) {
                            break;
                        }
                        int a19 = a(c6961di, i69);
                        i69 = a(abstractC7449ge2.a(c6961di.f47466h, c6961di.f47467i, c(a19, cArr), false), a19 + 2, true, cArr);
                        d29 = i70;
                    }
                }
                boolean z11 = true;
                K4 k45 = k42;
                while (k45 != null) {
                    K4 k46 = k45.f41568c;
                    k45.f41568c = null;
                    abstractC7449ge2.a(k45);
                    k45 = k46;
                }
                int i71 = i33;
                K4 k47 = null;
                if (i71 != 0) {
                    int d30 = d(i71);
                    int i72 = i71 + 2;
                    while (true) {
                        int i73 = d30 - 1;
                        if (d30 <= 0) {
                            break;
                        }
                        abstractC7449ge2.b(a(i72, cArr));
                        i72 += 2;
                        d30 = i73;
                    }
                }
                int i74 = i34;
                if (i74 != 0) {
                    int d31 = d(i74);
                    int i75 = i74 + 2;
                    while (true) {
                        int i76 = d31 - 1;
                        if (d31 <= 0) {
                            break;
                        }
                        abstractC7449ge2.c(a(i75, cArr));
                        i75 += 2;
                        d31 = i76;
                    }
                }
                int i77 = i27;
                if (i77 != 0) {
                    int d32 = d(i77);
                    int i78 = i77 + 2;
                    while (true) {
                        int i79 = d32 - 1;
                        if (d32 <= 0) {
                            break;
                        }
                        abstractC7449ge2.a(d(i78 + 6), a(i78, cArr), a(i78 + 2, cArr), c(i78 + 4, cArr));
                        i78 += 8;
                        d32 = i79;
                    }
                }
                int i80 = i35;
                if (i80 != 0) {
                    int d33 = d(i80);
                    int i81 = i80 + 2;
                    while (true) {
                        int i82 = d33 - 1;
                        if (d33 <= 0) {
                            break;
                        }
                        char[] cArr3 = c6961di.f47461c;
                        String c15 = c(i81, cArr3);
                        String c16 = c(i81 + 2, cArr3);
                        int d34 = d(i81 + 4);
                        i81 += 6;
                        String str43 = k47;
                        int i83 = 0;
                        int i84 = 0;
                        int i85 = 0;
                        int i86 = 0;
                        while (true) {
                            int i87 = d34 - 1;
                            if (d34 <= 0) {
                                break;
                            }
                            String c17 = c(i81, cArr3);
                            int a20 = a(i81 + 2);
                            int i88 = i81 + 6;
                            if (str38.equals(c17)) {
                                str43 = c(i88, cArr3);
                                str19 = c16;
                                str20 = str;
                                i16 = i88;
                            } else if (str39.equals(c17)) {
                                str19 = c16;
                                str20 = str;
                                i16 = i88;
                                i83 = i16;
                            } else if (str40.equals(c17)) {
                                str19 = c16;
                                str20 = str;
                                i16 = i88;
                                i85 = i16;
                            } else if (str.equals(c17)) {
                                str19 = c16;
                                str20 = str;
                                i16 = i88;
                                i84 = i16;
                            } else {
                                String str44 = str2;
                                if (str44.equals(c17)) {
                                    str18 = str44;
                                    str19 = c16;
                                    str20 = str;
                                    str21 = str40;
                                    i16 = i88;
                                    i86 = i16;
                                    i15 = i82;
                                    str22 = str39;
                                    str23 = str37;
                                    z10 = true;
                                } else {
                                    str18 = str44;
                                    str19 = c16;
                                    str20 = str;
                                    i15 = i82;
                                    i16 = i88;
                                    str21 = str40;
                                    str22 = str39;
                                    str23 = str37;
                                    z10 = true;
                                    K4 a21 = a(c6961di.f47459a, c17, i88, a20, cArr3, -1, null);
                                    a21.f41568c = k47;
                                    k47 = a21;
                                    str43 = str43;
                                }
                                i81 = i16 + a20;
                                abstractC7449ge2 = abstractC7449ge;
                                str37 = str23;
                                z11 = z10;
                                d34 = i87;
                                str40 = str21;
                                str39 = str22;
                                str2 = str18;
                                c16 = str19;
                                str = str20;
                                i82 = i15;
                            }
                            i15 = i82;
                            str22 = str39;
                            str18 = str2;
                            str23 = str37;
                            z10 = true;
                            str21 = str40;
                            i81 = i16 + a20;
                            abstractC7449ge2 = abstractC7449ge;
                            str37 = str23;
                            z11 = z10;
                            d34 = i87;
                            str40 = str21;
                            str39 = str22;
                            str2 = str18;
                            c16 = str19;
                            str = str20;
                            i82 = i15;
                        }
                        String str45 = str;
                        int i89 = i82;
                        String str46 = str39;
                        String str47 = str2;
                        String str48 = str37;
                        String str49 = str40;
                        boolean z12 = z11;
                        AbstractC7449ge abstractC7449ge3 = abstractC7449ge2;
                        AbstractC7611hc0 b10 = abstractC7449ge3.b(c15, c16, str43);
                        if (b10 != null) {
                            int i90 = i83;
                            if (i90 != 0) {
                                int d35 = d(i90);
                                int i91 = i90 + 2;
                                while (true) {
                                    int i92 = d35 - 1;
                                    if (d35 <= 0) {
                                        break;
                                    }
                                    i91 = a(b10.a(c(i91, cArr3), z12), i91 + 2, z12, cArr3);
                                    d35 = i92;
                                }
                            }
                            int i93 = i84;
                            if (i93 != 0) {
                                int d36 = d(i93);
                                int i94 = i93 + 2;
                                while (true) {
                                    int i95 = d36 - 1;
                                    if (d36 <= 0) {
                                        break;
                                    }
                                    i94 = a(b10.a(c(i94, cArr3), false), i94 + 2, z12, cArr3);
                                    d36 = i95;
                                }
                            }
                            int i96 = i85;
                            if (i96 != 0) {
                                int d37 = d(i96);
                                int i97 = i96 + 2;
                                while (true) {
                                    int i98 = d37 - 1;
                                    if (d37 <= 0) {
                                        break;
                                    }
                                    int a22 = a(c6961di, i97);
                                    i97 = a(b10.a(c6961di.f47466h, c6961di.f47467i, c(a22, cArr3), z12), a22 + 2, z12, cArr3);
                                    d37 = i98;
                                }
                            }
                            int i99 = i86;
                            if (i99 != 0) {
                                int d38 = d(i99);
                                int i100 = i99 + 2;
                                while (true) {
                                    int i101 = d38 - 1;
                                    if (d38 <= 0) {
                                        break;
                                    }
                                    int a23 = a(c6961di, i100);
                                    i100 = a(b10.a(c6961di.f47466h, c6961di.f47467i, c(a23, cArr3), false), a23 + 2, z12, cArr3);
                                    d38 = i101;
                                }
                            }
                            while (k47 != null) {
                                K4 k48 = k47.f41568c;
                                k47.f41568c = null;
                                b10.a(k47);
                                k47 = k48;
                            }
                            b10.a();
                        }
                        d33 = i89;
                        abstractC7449ge2 = abstractC7449ge3;
                        str37 = str48;
                        z11 = z12;
                        str40 = str49;
                        str39 = str46;
                        str2 = str47;
                        str = str45;
                        k47 = null;
                    }
                }
                String str50 = str;
                String str51 = str39;
                String str52 = str2;
                String str53 = str37;
                String str54 = str40;
                int d39 = d(i36);
                int i102 = i36 + 2;
                while (true) {
                    int i103 = d39 - 1;
                    if (d39 <= 0) {
                        break;
                    }
                    char[] cArr4 = c6961di.f47461c;
                    int d40 = d(i102);
                    String c18 = c(i102 + 2, cArr4);
                    String c19 = c(i102 + 4, cArr4);
                    int d41 = d(i102 + 6);
                    int i104 = d40;
                    int i105 = i102 + 8;
                    int i106 = 0;
                    int i107 = 0;
                    int i108 = 0;
                    K4 k49 = null;
                    String str55 = null;
                    Object obj = null;
                    int i109 = 0;
                    while (true) {
                        int i110 = d41 - 1;
                        if (d41 <= 0) {
                            break;
                        }
                        String c20 = c(i105, cArr4);
                        int a24 = a(i105 + 2);
                        int i111 = i105 + 6;
                        int i112 = i106;
                        if ("ConstantValue".equals(c20)) {
                            int d42 = d(i111);
                            if (d42 == 0) {
                                i106 = i112;
                                i13 = i111;
                                i14 = i103;
                                str14 = str53;
                                str13 = str3;
                                str15 = str54;
                                str16 = str51;
                                str17 = str52;
                                str12 = str50;
                                obj = null;
                                i105 = i13 + a24;
                                str51 = str16;
                                str50 = str12;
                                str52 = str17;
                                d41 = i110;
                                str53 = str14;
                                str3 = str13;
                                str54 = str15;
                                i103 = i14;
                            } else {
                                obj = b(d42, cArr4);
                                i13 = i111;
                                str14 = str53;
                                str13 = str3;
                                str16 = str51;
                                str12 = str50;
                            }
                        } else {
                            if (str38.equals(c20)) {
                                str55 = c(i111, cArr4);
                                i106 = i112;
                                i13 = i111;
                                i14 = i103;
                                str14 = str53;
                                str13 = str3;
                                str15 = str54;
                                str16 = str51;
                                str17 = str52;
                                str12 = str50;
                            } else {
                                String str56 = str3;
                                if (str56.equals(c20)) {
                                    i104 |= 131072;
                                } else if (str53.equals(c20)) {
                                    i104 |= 4096;
                                } else {
                                    String str57 = str51;
                                    if (str57.equals(c20)) {
                                        str13 = str56;
                                        i108 = i111;
                                        i13 = i108;
                                        str14 = str53;
                                        str12 = str50;
                                        i106 = i112;
                                        str16 = str57;
                                        i14 = i103;
                                        str15 = str54;
                                        str17 = str52;
                                    } else {
                                        String str58 = str54;
                                        if (str58.equals(c20)) {
                                            str13 = str56;
                                            i106 = i111;
                                            i13 = i106;
                                            i14 = i103;
                                            str14 = str53;
                                            str16 = str57;
                                            str17 = str52;
                                            str12 = str50;
                                            str15 = str58;
                                        } else {
                                            str54 = str58;
                                            String str59 = str50;
                                            if (str59.equals(c20)) {
                                                str13 = str56;
                                                i107 = i111;
                                                i13 = i107;
                                                str12 = str59;
                                                str14 = str53;
                                                str16 = str57;
                                            } else {
                                                str12 = str59;
                                                String str60 = str52;
                                                if (str60.equals(c20)) {
                                                    str13 = str56;
                                                    i13 = i111;
                                                    i109 = i13;
                                                    str14 = str53;
                                                    str16 = str57;
                                                    i106 = i112;
                                                    i14 = i103;
                                                    str15 = str54;
                                                    str17 = str60;
                                                } else {
                                                    str13 = str56;
                                                    i13 = i111;
                                                    i14 = i103;
                                                    str14 = str53;
                                                    str15 = str54;
                                                    str16 = str57;
                                                    str17 = str60;
                                                    K4 a25 = a(c6961di.f47459a, c20, i111, a24, cArr4, -1, null);
                                                    a25.f41568c = k49;
                                                    k49 = a25;
                                                    i104 = i104;
                                                    i106 = i112;
                                                    i107 = i107;
                                                    i108 = i108;
                                                }
                                            }
                                        }
                                    }
                                }
                                str13 = str56;
                                i13 = i111;
                                str14 = str53;
                                str16 = str51;
                                str12 = str50;
                            }
                            i105 = i13 + a24;
                            str51 = str16;
                            str50 = str12;
                            str52 = str17;
                            d41 = i110;
                            str53 = str14;
                            str3 = str13;
                            str54 = str15;
                            i103 = i14;
                        }
                        i106 = i112;
                        i14 = i103;
                        str15 = str54;
                        str17 = str52;
                        i105 = i13 + a24;
                        str51 = str16;
                        str50 = str12;
                        str52 = str17;
                        d41 = i110;
                        str53 = str14;
                        str3 = str13;
                        str54 = str15;
                        i103 = i14;
                    }
                    int i113 = i106;
                    int i114 = i107;
                    int i115 = i108;
                    int i116 = i104;
                    int i117 = i103;
                    String str61 = str53;
                    String str62 = str3;
                    String str63 = str54;
                    String str64 = str51;
                    String str65 = str52;
                    String str66 = str50;
                    K4 k410 = k49;
                    int i118 = i105;
                    AbstractC6055Uw a26 = abstractC7449ge.a(i116, c18, c19, str55, obj);
                    if (a26 != null) {
                        if (i115 != 0) {
                            int d43 = d(i115);
                            int i119 = i115 + 2;
                            while (true) {
                                int i120 = d43 - 1;
                                if (d43 <= 0) {
                                    break;
                                }
                                i119 = a(a26.a(c(i119, cArr4), true), i119 + 2, true, cArr4);
                                d43 = i120;
                            }
                        }
                        if (i114 != 0) {
                            int d44 = d(i114);
                            int i121 = i114 + 2;
                            while (true) {
                                int i122 = d44 - 1;
                                if (d44 <= 0) {
                                    break;
                                }
                                i121 = a(a26.a(c(i121, cArr4), false), i121 + 2, true, cArr4);
                                d44 = i122;
                            }
                        }
                        if (i113 != 0) {
                            int d45 = d(i113);
                            int i123 = i113 + 2;
                            while (true) {
                                int i124 = d45 - 1;
                                if (d45 <= 0) {
                                    break;
                                }
                                int a27 = a(c6961di, i123);
                                i123 = a(a26.a(c6961di.f47466h, c6961di.f47467i, c(a27, cArr4), true), a27 + 2, true, cArr4);
                                d45 = i124;
                            }
                        }
                        int i125 = i109;
                        if (i125 != 0) {
                            int d46 = d(i125);
                            int i126 = i125 + 2;
                            while (true) {
                                int i127 = d46 - 1;
                                if (d46 <= 0) {
                                    break;
                                }
                                int a28 = a(c6961di, i126);
                                i126 = a(a26.a(c6961di.f47466h, c6961di.f47467i, c(a28, cArr4), false), a28 + 2, true, cArr4);
                                d46 = i127;
                            }
                        }
                        K4 k411 = k410;
                        while (k411 != null) {
                            K4 k412 = k411.f41568c;
                            k411.f41568c = null;
                            a26.a(k411);
                            k411 = k412;
                        }
                        a26.a();
                    }
                    d39 = i117;
                    i102 = i118;
                    str51 = str64;
                    str50 = str66;
                    str52 = str65;
                    str53 = str61;
                    str3 = str62;
                    str54 = str63;
                }
                String str67 = str53;
                String str68 = str3;
                String str69 = str54;
                String str70 = str51;
                String str71 = str52;
                String str72 = str50;
                int d47 = d(i102);
                int i128 = i102 + 2;
                while (true) {
                    int i129 = d47 - 1;
                    if (d47 > 0) {
                        char[] cArr5 = c6961di.f47461c;
                        c6961di.f47462d = d(i128);
                        c6961di.f47463e = c(i128 + 2, cArr5);
                        int i130 = i128 + 4;
                        c6961di.f47464f = c(i130, cArr5);
                        int d48 = d(i128 + 6);
                        int i131 = i128 + 8;
                        int i132 = 0;
                        int i133 = 0;
                        int i134 = 0;
                        int i135 = 0;
                        int i136 = 0;
                        K4 k413 = null;
                        String[] strArr6 = null;
                        int i137 = 0;
                        int i138 = 0;
                        int i139 = 0;
                        int i140 = 0;
                        int i141 = 0;
                        while (true) {
                            int i142 = d48 - 1;
                            if (d48 <= 0) {
                                break;
                            }
                            String c21 = c(i131, cArr5);
                            int i143 = i132;
                            int a29 = a(i131 + 2);
                            i132 = i131 + 6;
                            int i144 = i133;
                            if ("Code".equals(c21)) {
                                if ((c6961di.f47460b & 1) == 0) {
                                    i133 = i144;
                                    i141 = i132;
                                    str10 = str38;
                                    str7 = str72;
                                    str11 = str71;
                                    str8 = str67;
                                    str9 = str68;
                                    i12 = i141;
                                    i132 = i143;
                                } else {
                                    i11 = i134;
                                    str6 = str67;
                                    str5 = str68;
                                    i133 = i144;
                                    str9 = str5;
                                    str10 = str38;
                                    str7 = str72;
                                    str11 = str71;
                                    i12 = i132;
                                    i132 = i143;
                                    int i145 = i11;
                                    str8 = str6;
                                    i134 = i145;
                                }
                            } else {
                                if ("Exceptions".equals(c21)) {
                                    int d49 = d(i132);
                                    String[] strArr7 = new String[d49];
                                    int i146 = i134;
                                    int i147 = i131 + 8;
                                    for (int i148 = 0; i148 < d49; i148++) {
                                        strArr7[i148] = a(i147, cArr5);
                                        i147 += 2;
                                    }
                                    strArr6 = strArr7;
                                    str10 = str38;
                                    str7 = str72;
                                    str11 = str71;
                                    i134 = i146;
                                    str8 = str67;
                                    str9 = str68;
                                    i133 = i144;
                                } else {
                                    i11 = i134;
                                    if (str38.equals(c21)) {
                                        i133 = i144;
                                        i137 = d(i132);
                                        str10 = str38;
                                        str7 = str72;
                                        str11 = str71;
                                        i134 = i11;
                                        str8 = str67;
                                        str9 = str68;
                                    } else {
                                        str5 = str68;
                                        if (str5.equals(c21)) {
                                            c6961di.f47462d |= 131072;
                                            str6 = str67;
                                        } else {
                                            if (str70.equals(c21)) {
                                                i133 = i144;
                                                i135 = i132;
                                                str9 = str5;
                                                str10 = str38;
                                                str7 = str72;
                                                str11 = str71;
                                                i134 = i11;
                                                str8 = str67;
                                                i12 = i135;
                                            } else if (str69.equals(c21)) {
                                                i133 = i132;
                                                str9 = str5;
                                                str10 = str38;
                                                str7 = str72;
                                                str11 = str71;
                                                i134 = i11;
                                                str8 = str67;
                                                i132 = i143;
                                                i12 = i133;
                                            } else if ("AnnotationDefault".equals(c21)) {
                                                i133 = i144;
                                                i136 = i132;
                                                str9 = str5;
                                                str10 = str38;
                                                str7 = str72;
                                                str11 = str71;
                                                i134 = i11;
                                                str8 = str67;
                                                i12 = i136;
                                            } else {
                                                str6 = str67;
                                                if (str6.equals(c21)) {
                                                    c6961di.f47462d |= 4096;
                                                } else {
                                                    String str73 = str72;
                                                    if (str73.equals(c21)) {
                                                        str7 = str73;
                                                        str8 = str6;
                                                        str9 = str5;
                                                        str10 = str38;
                                                        str11 = str71;
                                                        i133 = i144;
                                                        i134 = i132;
                                                        i12 = i134;
                                                    } else {
                                                        K4 k414 = k413;
                                                        String str74 = str71;
                                                        if (str74.equals(c21)) {
                                                            i12 = i132;
                                                            str7 = str73;
                                                            str9 = str5;
                                                            str10 = str38;
                                                        } else {
                                                            i12 = i132;
                                                            if ("RuntimeVisibleParameterAnnotations".equals(c21)) {
                                                                i132 = i143;
                                                                str7 = str73;
                                                                str9 = str5;
                                                                str10 = str38;
                                                                i139 = i12;
                                                            } else if ("RuntimeInvisibleParameterAnnotations".equals(c21)) {
                                                                i132 = i143;
                                                                str7 = str73;
                                                                str9 = str5;
                                                                str10 = str38;
                                                                i140 = i12;
                                                            } else if (Attributes.NAME_METHOD_PARAMETERS.equals(c21)) {
                                                                i132 = i143;
                                                                str7 = str73;
                                                                str9 = str5;
                                                                str10 = str38;
                                                                i138 = i12;
                                                            } else {
                                                                str7 = str73;
                                                                str8 = str6;
                                                                str9 = str5;
                                                                str10 = str38;
                                                                str11 = str74;
                                                                K4 a30 = a(c6961di.f47459a, c21, i12, a29, cArr5, -1, null);
                                                                a30.f41568c = k414;
                                                                k413 = a30;
                                                                i132 = i143;
                                                                i133 = i144;
                                                                i134 = i11;
                                                                i135 = i135;
                                                                i136 = i136;
                                                            }
                                                        }
                                                        i133 = i144;
                                                        str8 = str6;
                                                        i134 = i11;
                                                        str11 = str74;
                                                        k413 = k414;
                                                    }
                                                }
                                            }
                                            i132 = i143;
                                        }
                                        i133 = i144;
                                        str9 = str5;
                                        str10 = str38;
                                        str7 = str72;
                                        str11 = str71;
                                        i12 = i132;
                                        i132 = i143;
                                        int i1452 = i11;
                                        str8 = str6;
                                        i134 = i1452;
                                    }
                                }
                                i12 = i132;
                                i132 = i143;
                            }
                            i131 = i12 + a29;
                            str71 = str11;
                            d48 = i142;
                            str67 = str8;
                            str38 = str10;
                            str68 = str9;
                            str72 = str7;
                        }
                        int i149 = i132;
                        int i150 = i133;
                        int i151 = i134;
                        int i152 = i135;
                        int i153 = i136;
                        String str75 = str38;
                        String str76 = str72;
                        String str77 = str71;
                        String str78 = str67;
                        String str79 = str68;
                        K4 k415 = k413;
                        int i154 = c6961di.f47462d;
                        String str80 = c6961di.f47463e;
                        String str81 = c6961di.f47464f;
                        if (i137 == 0) {
                            str4 = null;
                        } else {
                            String[] strArr8 = this.f45109d;
                            str4 = strArr8[i137];
                            if (str4 == null) {
                                int i155 = this.f45108c[i137];
                                str4 = a(cArr5, i155 + 2, d(i155));
                                strArr8[i137] = str4;
                            }
                        }
                        DX a31 = abstractC7449ge.a(i154, str80, str81, str4, strArr6);
                        if (a31 != null) {
                            if (a31 instanceof EX) {
                                d(i130);
                                ((EX) a31).f39916c.getClass();
                            }
                            if (i138 != 0 && (c6961di.f47460b & 2) == 0) {
                                int i156 = this.f45107b[i138] & 255;
                                int i157 = i138 + 1;
                                while (true) {
                                    int i158 = i156 - 1;
                                    if (i156 <= 0) {
                                        break;
                                    }
                                    a31.b(d(i157 + 2), c(i157, cArr5));
                                    i157 += 4;
                                    i156 = i158;
                                }
                            }
                            if (i153 != 0) {
                                Q2 a32 = a31.a();
                                a(a32, i153, (String) null, cArr5);
                                if (a32 != null) {
                                    a32.a();
                                }
                            }
                            if (i152 != 0) {
                                int d50 = d(i152);
                                int i159 = i152 + 2;
                                while (true) {
                                    int i160 = d50 - 1;
                                    if (d50 <= 0) {
                                        break;
                                    }
                                    i159 = a(a31.a(c(i159, cArr5), true), i159 + 2, true, cArr5);
                                    d50 = i160;
                                }
                            }
                            if (i151 != 0) {
                                int d51 = d(i151);
                                int i161 = i151 + 2;
                                while (true) {
                                    int i162 = d51 - 1;
                                    if (d51 <= 0) {
                                        break;
                                    }
                                    i161 = a(a31.a(c(i161, cArr5), false), i161 + 2, true, cArr5);
                                    d51 = i162;
                                }
                            }
                            if (i150 != 0) {
                                int d52 = d(i150);
                                int i163 = i150 + 2;
                                while (true) {
                                    int i164 = d52 - 1;
                                    if (d52 <= 0) {
                                        break;
                                    }
                                    int a33 = a(c6961di, i163);
                                    i163 = a(a31.c(c6961di.f47466h, c6961di.f47467i, c(a33, cArr5), true), a33 + 2, true, cArr5);
                                    d52 = i164;
                                }
                            }
                            if (i149 != 0) {
                                int d53 = d(i149);
                                int i165 = i149 + 2;
                                while (true) {
                                    int i166 = d53 - 1;
                                    if (d53 <= 0) {
                                        break;
                                    }
                                    int a34 = a(c6961di, i165);
                                    i165 = a(a31.c(c6961di.f47466h, c6961di.f47467i, c(a34, cArr5), false), a34 + 2, true, cArr5);
                                    d53 = i166;
                                }
                            }
                            int i167 = i139;
                            if (i167 != 0) {
                                a(a31, c6961di, i167, true);
                            }
                            int i168 = i140;
                            if (i168 != 0) {
                                a(a31, c6961di, i168, false);
                            }
                            while (k415 != null) {
                                K4 k416 = k415.f41568c;
                                k415.f41568c = null;
                                a31.a(k415);
                                k415 = k416;
                            }
                            int i169 = i141;
                            if (i169 != 0) {
                                a31.b();
                                a(a31, c6961di, i169);
                            }
                            a31.c();
                        }
                        i128 = i131;
                        d47 = i129;
                        str71 = str77;
                        str67 = str78;
                        str38 = str75;
                        str68 = str79;
                        str72 = str76;
                    } else {
                        abstractC7449ge.a();
                        return;
                    }
                }
            }
        }
    }

    public final short c(int i10) {
        byte[] bArr = this.f45107b;
        return (short) ((bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8));
    }

    public final int d(int i10) {
        byte[] bArr = this.f45107b;
        return (bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8);
    }

    public final String c(int i10, char[] cArr) {
        int d10 = d(i10);
        if (i10 == 0 || d10 == 0) {
            return null;
        }
        String[] strArr = this.f45109d;
        String str = strArr[d10];
        if (str != null) {
            return str;
        }
        int i11 = this.f45108c[d10];
        String a10 = a(cArr, i11 + 2, d(i11));
        strArr[d10] = a10;
        return a10;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0019. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int[] b(DX dx, C6961di c6961di, int i10, boolean z10) {
        int i11;
        char[] cArr = c6961di.f47461c;
        int d10 = d(i10);
        int[] iArr = new int[d10];
        int i12 = i10 + 2;
        for (int i13 = 0; i13 < d10; i13++) {
            iArr[i13] = i12;
            int a10 = a(i12);
            int i14 = a10 >>> 24;
            if (i14 != 23) {
                switch (i14) {
                    default:
                        switch (i14) {
                            case 64:
                            case 65:
                                int d11 = d(i12 + 1);
                                i11 = i12 + 3;
                                while (true) {
                                    int i15 = d11 - 1;
                                    if (d11 <= 0) {
                                        break;
                                    } else {
                                        int d12 = d(i11);
                                        int d13 = d(i11 + 2);
                                        i11 += 6;
                                        b(d12, c6961di.f47465g);
                                        b(d12 + d13, c6961di.f47465g);
                                        d11 = i15;
                                    }
                                }
                            case 66:
                            case 67:
                            case 68:
                            case 69:
                            case 70:
                                break;
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                                i11 = i12 + 4;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                        byte[] bArr = this.f45107b;
                        int i16 = bArr[i11] & 255;
                        if (i14 == 66) {
                            C9666tu0 c9666tu0 = i16 != 0 ? new C9666tu0(i11, bArr) : null;
                            int i17 = (i16 * 2) + 1 + i11;
                            i12 = a(dx.b(a10 & (-256), c9666tu0, c(i17, cArr), z10), i17 + 2, true, cArr);
                        } else {
                            i12 = a((Q2) null, (i16 * 2) + 3 + i11, true, cArr);
                        }
                    case 16:
                    case 17:
                    case 18:
                        i11 = i12 + 3;
                        byte[] bArr2 = this.f45107b;
                        int i162 = bArr2[i11] & 255;
                        if (i14 == 66) {
                        }
                        break;
                }
            }
            i11 = i12 + 3;
            byte[] bArr22 = this.f45107b;
            int i1622 = bArr22[i11] & 255;
            if (i14 == 66) {
            }
        }
        return iArr;
    }

    public final long b(int i10) {
        return (a(i10) << 32) | (a(i10 + 4) & 4294967295L);
    }

    public final Object b(int i10, char[] cArr) {
        int[] iArr = this.f45108c;
        int i11 = iArr[i10];
        byte[] bArr = this.f45107b;
        byte b10 = bArr[i11 - 1];
        switch (b10) {
            case 3:
                return Integer.valueOf(a(i11));
            case 4:
                return Float.valueOf(Float.intBitsToFloat(a(i11)));
            case 5:
                return Long.valueOf(b(i11));
            case 6:
                return Double.valueOf(Double.longBitsToDouble(b(i11)));
            case 7:
                return C9663tt0.d(c(i11, cArr));
            case 8:
                return c(i11, cArr);
            default:
                switch (b10) {
                    case 15:
                        int i12 = bArr[i11] & 255;
                        int i13 = iArr[d(i11 + 1)];
                        int i14 = this.f45108c[d(i13 + 2)];
                        return new C5829Qz(i12, a(i13, cArr), c(i14, cArr), c(i14 + 2, cArr), this.f45107b[i13 - 1] == 11);
                    case 16:
                        String c10 = c(i11, cArr);
                        return new C9663tt0(11, 0, c10.length(), c10);
                    case 17:
                        C10127wh c10127wh = this.f45110e[i10];
                        if (c10127wh != null) {
                            return c10127wh;
                        }
                        int i15 = iArr[d(i11 + 2)];
                        String c11 = c(i15, cArr);
                        String c12 = c(i15 + 2, cArr);
                        int i16 = this.f45111f[d(i11)];
                        C5829Qz c5829Qz = (C5829Qz) b(d(i16), cArr);
                        int d10 = d(i16 + 2);
                        Object[] objArr = new Object[d10];
                        int i17 = i16 + 4;
                        for (int i18 = 0; i18 < d10; i18++) {
                            objArr[i18] = b(d(i17), cArr);
                            i17 += 2;
                        }
                        C10127wh[] c10127whArr = this.f45110e;
                        C10127wh c10127wh2 = new C10127wh(c11, c12, c5829Qz, objArr);
                        c10127whArr[i10] = c10127wh2;
                        return c10127wh2;
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:293:0x05b4, code lost:
    
        r11 = r7;
        r7 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0762, code lost:
    
        if (r4 == false) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0769, code lost:
    
        if ((r49.f47460b & 8) == 0) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x076b, code lost:
    
        r48.a(256, 0, (java.lang.Object[]) null, 0, (java.lang.Object[]) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0776, code lost:
    
        r21 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x077b, code lost:
    
        r5 = r12[r34] & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0783, code lost:
    
        switch(r5) {
            case 0: goto L381;
            case 1: goto L381;
            case 2: goto L381;
            case 3: goto L381;
            case 4: goto L381;
            case 5: goto L381;
            case 6: goto L381;
            case 7: goto L381;
            case 8: goto L381;
            case 9: goto L381;
            case 10: goto L381;
            case 11: goto L381;
            case 12: goto L381;
            case 13: goto L381;
            case 14: goto L381;
            case 15: goto L381;
            case 16: goto L380;
            case 17: goto L379;
            case 18: goto L378;
            case 19: goto L377;
            case 20: goto L377;
            case 21: goto L375;
            case 22: goto L375;
            case 23: goto L375;
            case 24: goto L375;
            case 25: goto L375;
            case 26: goto L374;
            case 27: goto L374;
            case 28: goto L374;
            case 29: goto L374;
            case 30: goto L374;
            case 31: goto L374;
            case 32: goto L374;
            case 33: goto L374;
            case 34: goto L374;
            case 35: goto L374;
            case 36: goto L374;
            case 37: goto L374;
            case 38: goto L374;
            case 39: goto L374;
            case 40: goto L374;
            case 41: goto L374;
            case 42: goto L374;
            case 43: goto L374;
            case 44: goto L374;
            case 45: goto L374;
            case 46: goto L381;
            case 47: goto L381;
            case 48: goto L381;
            case 49: goto L381;
            case 50: goto L381;
            case 51: goto L381;
            case 52: goto L381;
            case 53: goto L381;
            case 54: goto L375;
            case 55: goto L375;
            case 56: goto L375;
            case 57: goto L375;
            case 58: goto L375;
            case 59: goto L372;
            case 60: goto L372;
            case 61: goto L372;
            case 62: goto L372;
            case 63: goto L372;
            case 64: goto L372;
            case 65: goto L372;
            case 66: goto L372;
            case 67: goto L372;
            case 68: goto L372;
            case 69: goto L372;
            case 70: goto L372;
            case 71: goto L372;
            case 72: goto L372;
            case 73: goto L372;
            case 74: goto L372;
            case 75: goto L372;
            case 76: goto L372;
            case 77: goto L372;
            case 78: goto L372;
            case 79: goto L381;
            case 80: goto L381;
            case 81: goto L381;
            case 82: goto L381;
            case 83: goto L381;
            case 84: goto L381;
            case 85: goto L381;
            case 86: goto L381;
            case 87: goto L381;
            case 88: goto L381;
            case 89: goto L381;
            case 90: goto L381;
            case 91: goto L381;
            case 92: goto L381;
            case 93: goto L381;
            case 94: goto L381;
            case 95: goto L381;
            case 96: goto L381;
            case 97: goto L381;
            case 98: goto L381;
            case 99: goto L381;
            case 100: goto L381;
            case 101: goto L381;
            case 102: goto L381;
            case 103: goto L381;
            case 104: goto L381;
            case 105: goto L381;
            case 106: goto L381;
            case 107: goto L381;
            case 108: goto L381;
            case 109: goto L381;
            case 110: goto L381;
            case 111: goto L381;
            case 112: goto L381;
            case 113: goto L381;
            case 114: goto L381;
            case 115: goto L381;
            case 116: goto L381;
            case 117: goto L381;
            case 118: goto L381;
            case 119: goto L381;
            case 120: goto L381;
            case 121: goto L381;
            case 122: goto L381;
            case 123: goto L381;
            case 124: goto L381;
            case 125: goto L381;
            case 126: goto L381;
            case 127: goto L381;
            case 128: goto L381;
            case 129: goto L381;
            case 130: goto L381;
            case 131: goto L381;
            case 132: goto L371;
            case 133: goto L381;
            case 134: goto L381;
            case 135: goto L381;
            case 136: goto L381;
            case 137: goto L381;
            case 138: goto L381;
            case 139: goto L381;
            case 140: goto L381;
            case 141: goto L381;
            case 142: goto L381;
            case 143: goto L381;
            case 144: goto L381;
            case 145: goto L381;
            case 146: goto L381;
            case 147: goto L381;
            case 148: goto L381;
            case 149: goto L381;
            case 150: goto L381;
            case 151: goto L381;
            case 152: goto L381;
            case 153: goto L369;
            case 154: goto L369;
            case 155: goto L369;
            case 156: goto L369;
            case 157: goto L369;
            case 158: goto L369;
            case 159: goto L369;
            case 160: goto L369;
            case 161: goto L369;
            case 162: goto L369;
            case 163: goto L369;
            case 164: goto L369;
            case 165: goto L369;
            case 166: goto L369;
            case 167: goto L369;
            case 168: goto L369;
            case 169: goto L375;
            case 170: goto L365;
            case 171: goto L360;
            case 172: goto L381;
            case 173: goto L381;
            case 174: goto L381;
            case 175: goto L381;
            case 176: goto L381;
            case 177: goto L381;
            case 178: goto L347;
            case 179: goto L347;
            case 180: goto L347;
            case 181: goto L347;
            case 182: goto L347;
            case 183: goto L347;
            case 184: goto L347;
            case 185: goto L347;
            case 186: goto L343;
            case 187: goto L341;
            case 188: goto L380;
            case 189: goto L341;
            case 190: goto L381;
            case 191: goto L381;
            case 192: goto L341;
            case 193: goto L341;
            case 194: goto L381;
            case 195: goto L381;
            case 196: goto L336;
            case 197: goto L335;
            case 198: goto L369;
            case 199: goto L369;
            case 200: goto L332;
            case 201: goto L332;
            case 202: goto L314;
            case 203: goto L314;
            case 204: goto L314;
            case 205: goto L314;
            case 206: goto L314;
            case 207: goto L314;
            case 208: goto L314;
            case 209: goto L314;
            case 210: goto L314;
            case 211: goto L314;
            case 212: goto L314;
            case 213: goto L314;
            case 214: goto L314;
            case 215: goto L314;
            case 216: goto L314;
            case 217: goto L314;
            case 218: goto L314;
            case 219: goto L314;
            case 220: goto L312;
            default: goto L516;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x078c, code lost:
    
        r14.a(200, r17[a(r34 + 1) + r9]);
        r50 = r6;
        r2 = 5;
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0a54, code lost:
    
        r0 = r34 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0950, code lost:
    
        r1 = r0;
        r0 = r21;
        r2 = r24;
        r4 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x0a58, code lost:
    
        if (r15 == null) goto L525;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0a5b, code lost:
    
        if (r4 >= r15.length) goto L526;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0a5d, code lost:
    
        if (r2 > r9) goto L527;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0a5f, code lost:
    
        if (r2 != r9) goto L529;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0a61, code lost:
    
        r2 = a(r49, r15[r4]);
        a(r14.a(r49.f47466h, r49.f47467i, c(r2, r13), true), r2 + 2, true, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0a79, code lost:
    
        r4 = r4 + 1;
        r2 = a(r15, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0a82, code lost:
    
        r3 = r30;
        r5 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0a86, code lost:
    
        if (r43 == null) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0a88, code lost:
    
        r7 = r43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0a8b, code lost:
    
        if (r5 >= r7.length) goto L531;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x0a8d, code lost:
    
        if (r3 > r9) goto L532;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0a8f, code lost:
    
        if (r3 != r9) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0a91, code lost:
    
        r3 = a(r49, r7[r5]);
        r21 = r0;
        r24 = r1;
        r30 = r9;
        a(r14.a(r49.f47466h, r49.f47467i, c(r3, r13), false), r3 + 2, true, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0aba, code lost:
    
        r5 = r5 + 1;
        r3 = a(r7, r5);
        r43 = r7;
        r0 = r21;
        r1 = r24;
        r9 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0ab3, code lost:
    
        r21 = r0;
        r24 = r1;
        r30 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x0ac9, code lost:
    
        r21 = r0;
        r24 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0acf, code lost:
    
        r21 = r0;
        r24 = r1;
        r7 = r43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x07a8, code lost:
    
        if (r5 >= 218) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x07aa, code lost:
    
        r5 = r5 - 49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x07af, code lost:
    
        r0 = r17[d(r34 + 1) + r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x07ba, code lost:
    
        if (r5 == 167) goto L331;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x07be, code lost:
    
        if (r5 != 168) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x07c3, code lost:
    
        if (r5 >= 167) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x07c5, code lost:
    
        r2 = ((r5 + 1) ^ 1) - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x07ce, code lost:
    
        r1 = r9 + 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x07d2, code lost:
    
        if (r17[r1] != null) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x07d4, code lost:
    
        r17[r1] = new com.android.tools.r8.internal.XQ();
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x07db, code lost:
    
        r1 = r17[r1];
        r1.f45687b = (short) (r1.f45687b & (-2));
        r14.a(r2, r1);
        r14.a(200, r0);
        r50 = r6;
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0911, code lost:
    
        r21 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0869, code lost:
    
        r2 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x07cc, code lost:
    
        r2 = r5 ^ 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x07f3, code lost:
    
        r14.a(r5 + 33, r0);
        r50 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x090f, code lost:
    
        r2 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x07ad, code lost:
    
        r5 = r5 - 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x07fe, code lost:
    
        r14.a(r5 - r25, r17[a(r34 + 1) + r9]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x080c, code lost:
    
        r50 = r6;
        r2 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0813, code lost:
    
        r14.a(r12[r34 + 3] & 255, a(r34 + 1, r13));
        r50 = r6;
        r2 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0827, code lost:
    
        r0 = r12[r34 + 1] & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0830, code lost:
    
        if (r0 != 132) goto L340;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0832, code lost:
    
        r14.a(d(r34 + 2), c(r34 + 4));
        r50 = r6;
        r2 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x084b, code lost:
    
        r14.d(r0, d(r34 + 2));
        r50 = r6;
        r2 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x085a, code lost:
    
        r14.c(r5, a(r34 + 1, r13));
        r50 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x086b, code lost:
    
        r0 = r47.f45108c[d(r34 + 1)];
        r1 = r47.f45108c[d(r0 + 2)];
        r2 = c(r1, r13);
        r1 = c(r1 + 2, r13);
        r0 = r47.f45111f[d(r0)];
        r3 = (com.android.tools.r8.internal.C5829Qz) b(d(r0), r13);
        r5 = d(r0 + 2);
        r4 = new java.lang.Object[r5];
        r0 = r0 + r7;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x08a7, code lost:
    
        if (r7 >= r5) goto L535;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x08a9, code lost:
    
        r4[r7] = b(d(r0), r13);
        r0 = r0 + 2;
        r7 = r7 + 1;
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x08bc, code lost:
    
        r14.a(r2, r1, r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x08c1, code lost:
    
        r0 = r47.f45108c[d(r34 + 1)];
        r1 = r47.f45108c[d(r0 + 2)];
        r2 = a(r0, r13);
        r3 = c(r1, r13);
        r4 = c(r1 + 2, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x08e5, code lost:
    
        if (r5 >= 182) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x08e7, code lost:
    
        r14.a(r5, r2, r3, r4);
        r50 = r6;
        r6 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0909, code lost:
    
        if (r6 != 185) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x090b, code lost:
    
        r2 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x08f6, code lost:
    
        if (r12[r0 - 1] != 11) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x08f8, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x08fb, code lost:
    
        r50 = r6;
        r6 = r5;
        r48.a(r5, r2, r3, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x08fa, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0915, code lost:
    
        r50 = r6;
        r0 = (4 - (r9 & 3)) + r34;
        r1 = r17[a(r0) + r9];
        r2 = a(r0 + 4);
        r0 = r0 + 8;
        r4 = new int[r2];
        r5 = new com.android.tools.r8.internal.XQ[r2];
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0935, code lost:
    
        if (r6 >= r2) goto L536;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0937, code lost:
    
        r4[r6] = a(r0);
        r5[r6] = r17[a(r0 + 4) + r9];
        r0 = r0 + 8;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x094d, code lost:
    
        r14.a(r1, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0959, code lost:
    
        r50 = r6;
        r0 = (4 - (r9 & 3)) + r34;
        r2 = r17[a(r0) + r9];
        r4 = a(r0 + 4);
        r5 = a(r0 + 8);
        r0 = r0 + 12;
        r6 = (r5 - r4) + 1;
        r7 = new com.android.tools.r8.internal.XQ[r6];
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x0982, code lost:
    
        if (r1 >= r6) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x0984, code lost:
    
        r7[r1] = r17[a(r0) + r9];
        r0 = r0 + 4;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x0993, code lost:
    
        r14.a(r4, r5, r2, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x0997, code lost:
    
        r50 = r6;
        r14.a(r5, r17[c(r34 + 1) + r9]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x09aa, code lost:
    
        r2 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x09ad, code lost:
    
        r50 = r6;
        r14.a(r12[r34 + 1] & 255, r12[r34 + 2]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x09c2, code lost:
    
        r50 = r6;
        r5 = r5 - 59;
        r14.d((r5 >> 2) + 54, r5 & 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x09d5, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x09d8, code lost:
    
        r50 = r6;
        r5 = r5 - 26;
        r14.d((r5 >> 2) + 21, r5 & 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x09ec, code lost:
    
        r50 = r6;
        r14.d(r5, r12[r34 + 1] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x09fd, code lost:
    
        r2 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x09ff, code lost:
    
        r50 = r6;
        r14.a(b(d(r34 + 1), r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0a13, code lost:
    
        r50 = r6;
        r14.a(b(r12[r34 + 1] & 255, r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x0a28, code lost:
    
        r50 = r6;
        r14.b(r5, c(r34 + 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0a3a, code lost:
    
        r50 = r6;
        r14.b(r5, r12[r34 + 1]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x0a49, code lost:
    
        r50 = r6;
        r14.a(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x078b, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x0779, code lost:
    
        r21 = r4;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:199:0x042b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:79:0x008a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x003b. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(DX dx, C6961di c6961di, int i10) {
        int i11;
        int i12;
        char c10;
        char c11;
        int i13;
        int i14;
        K4 k42;
        int[] iArr;
        int[] iArr2;
        String str;
        K4 k43;
        boolean z10;
        int i15;
        int i16;
        DX dx2;
        int i17;
        int i18;
        int[] iArr3;
        int[] iArr4;
        char c12;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z11;
        int i25;
        int[] iArr5;
        int i26;
        int i27;
        int[] iArr6;
        int[] iArr7;
        int i28;
        boolean z12;
        char c13;
        int i29;
        int i30;
        int i31;
        XQ[] xqArr;
        int i32;
        int i33;
        int d10;
        int i34;
        int i35;
        int i36;
        int[] iArr8;
        int[] iArr9;
        XQ[] xqArr2;
        int i37;
        boolean z13;
        char c14;
        XQ[] xqArr3;
        int i38;
        int i39;
        int i40;
        int i41;
        XQ[] xqArr4;
        int i42;
        int i43;
        DX dx3 = dx;
        byte[] bArr = this.f45107b;
        char[] cArr = c6961di.f47461c;
        int d11 = d(i10);
        int d12 = d(i10 + 2);
        int a10 = a(i10 + 4);
        int i44 = i10 + 8;
        if (a10 <= this.f45107b.length - i44) {
            int i45 = i44 + a10;
            XQ[] xqArr5 = new XQ[a10 + 1];
            c6961di.f47465g = xqArr5;
            int i46 = i44;
            while (i46 < i45) {
                int i47 = i46 - i44;
                switch (bArr[i46] & 255) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
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
                    case 50:
                    case 51:
                    case 52:
                    case 53:
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
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case 81:
                    case 82:
                    case 83:
                    case 84:
                    case 85:
                    case 86:
                    case 87:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    case 93:
                    case 94:
                    case 95:
                    case 96:
                    case 97:
                    case 98:
                    case 99:
                    case 100:
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                    case 105:
                    case 106:
                    case 107:
                    case 108:
                    case 109:
                    case 110:
                    case 111:
                    case 112:
                    case 113:
                    case 114:
                    case 115:
                    case 116:
                    case 117:
                    case 118:
                    case 119:
                    case 120:
                    case 121:
                    case 122:
                    case 123:
                    case 124:
                    case 125:
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                    case 131:
                    case 133:
                    case 134:
                    case 135:
                    case 136:
                    case 137:
                    case 138:
                    case 139:
                    case 140:
                    case 141:
                    case 142:
                    case 143:
                    case 144:
                    case 145:
                    case 146:
                    case 147:
                    case 148:
                    case 149:
                    case 150:
                    case 151:
                    case 152:
                    case 172:
                    case 173:
                    case 174:
                    case 175:
                    case 176:
                    case 177:
                    case 190:
                    case 191:
                    case 194:
                    case 195:
                        i46++;
                    case 16:
                    case 18:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 169:
                    case 188:
                        i46 += 2;
                    case 17:
                    case 19:
                    case 20:
                    case 132:
                    case 178:
                    case 179:
                    case 180:
                    case 181:
                    case 182:
                    case 183:
                    case 184:
                    case 187:
                    case 189:
                    case 192:
                    case 193:
                        i46 += 3;
                    case 153:
                    case 154:
                    case 155:
                    case 156:
                    case 157:
                    case 158:
                    case 159:
                    case 160:
                    case 161:
                    case 162:
                    case 163:
                    case 164:
                    case 165:
                    case 166:
                    case 167:
                    case 168:
                    case 198:
                    case 199:
                        int c15 = c(i46 + 1) + i47;
                        if (xqArr5[c15] == null) {
                            xqArr5[c15] = new XQ();
                        }
                        XQ xq = xqArr5[c15];
                        xq.f45687b = (short) (xq.f45687b & (-2));
                        i46 += 3;
                    case 170:
                        int i48 = (4 - (i47 & 3)) + i46;
                        int a11 = a(i48) + i47;
                        if (xqArr5[a11] == null) {
                            xqArr5[a11] = new XQ();
                        }
                        XQ xq2 = xqArr5[a11];
                        xq2.f45687b = (short) (xq2.f45687b & (-2));
                        int a12 = (a(i48 + 8) - a(i48 + 4)) + 1;
                        i43 = i48 + 12;
                        while (true) {
                            int i49 = a12 - 1;
                            if (a12 > 0) {
                                int a13 = a(i43) + i47;
                                if (xqArr5[a13] == null) {
                                    xqArr5[a13] = new XQ();
                                }
                                XQ xq3 = xqArr5[a13];
                                xq3.f45687b = (short) (xq3.f45687b & (-2));
                                i43 += 4;
                                a12 = i49;
                            } else {
                                i46 = i43;
                            }
                        }
                    case 171:
                        int i50 = (4 - (i47 & 3)) + i46;
                        int a14 = a(i50) + i47;
                        if (xqArr5[a14] == null) {
                            xqArr5[a14] = new XQ();
                        }
                        XQ xq4 = xqArr5[a14];
                        xq4.f45687b = (short) (xq4.f45687b & (-2));
                        int a15 = a(i50 + 4);
                        i43 = i50 + 8;
                        while (true) {
                            int i51 = a15 - 1;
                            if (a15 > 0) {
                                int a16 = a(i43 + 4) + i47;
                                if (xqArr5[a16] == null) {
                                    xqArr5[a16] = new XQ();
                                }
                                XQ xq5 = xqArr5[a16];
                                xq5.f45687b = (short) (xq5.f45687b & (-2));
                                i43 += 8;
                                a15 = i51;
                            } else {
                                i46 = i43;
                            }
                        }
                    case 185:
                    case 186:
                        i46 += 5;
                    case 196:
                        int i52 = bArr[i46 + 1] & 255;
                        if (i52 != 132) {
                            if (i52 != 169) {
                                switch (i52) {
                                    default:
                                        switch (i52) {
                                            case 54:
                                            case 55:
                                            case 56:
                                            case 57:
                                            case 58:
                                                break;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                        i46 += 4;
                                }
                            }
                            i46 += 4;
                        } else {
                            i46 += 6;
                        }
                    case 197:
                        i46 += 4;
                    case 200:
                    case 201:
                    case 220:
                        int a17 = a(i46 + 1) + i47;
                        if (xqArr5[a17] == null) {
                            xqArr5[a17] = new XQ();
                        }
                        XQ xq6 = xqArr5[a17];
                        xq6.f45687b = (short) (xq6.f45687b & (-2));
                        i46 += 5;
                    case 202:
                    case 203:
                    case 204:
                    case 205:
                    case 206:
                    case 207:
                    case 208:
                    case 209:
                    case 210:
                    case 211:
                    case 212:
                    case 213:
                    case 214:
                    case 215:
                    case 216:
                    case 217:
                    case 218:
                    case 219:
                        int d13 = d(i46 + 1) + i47;
                        if (xqArr5[d13] == null) {
                            xqArr5[d13] = new XQ();
                        }
                        XQ xq7 = xqArr5[d13];
                        xq7.f45687b = (short) (xq7.f45687b & (-2));
                        i46 += 3;
                    default:
                        throw new IllegalArgumentException();
                }
            }
            int d14 = d(i46);
            int i53 = i46 + 2;
            while (true) {
                int i54 = d14 - 1;
                if (d14 > 0) {
                    int d15 = d(i53);
                    if (xqArr5[d15] == null) {
                        xqArr5[d15] = new XQ();
                    }
                    XQ xq8 = xqArr5[d15];
                    xq8.f45687b = (short) (xq8.f45687b & (-2));
                    int d16 = d(i53 + 2);
                    if (xqArr5[d16] == null) {
                        xqArr5[d16] = new XQ();
                    }
                    XQ xq9 = xqArr5[d16];
                    xq9.f45687b = (short) (xq9.f45687b & (-2));
                    int d17 = d(i53 + 4);
                    if (xqArr5[d17] == null) {
                        xqArr5[d17] = new XQ();
                    }
                    XQ xq10 = xqArr5[d17];
                    xq10.f45687b = (short) (xq10.f45687b & (-2));
                    String c16 = c(this.f45108c[d(i53 + 6)], cArr);
                    i53 += 8;
                    dx3.a(xq8, xq9, xq10, c16);
                    d14 = i54;
                    i45 = i45;
                } else {
                    int i55 = i45;
                    int d18 = d(i53);
                    int i56 = i53 + 2;
                    int[] iArr10 = null;
                    int[] iArr11 = null;
                    boolean z14 = true;
                    int i57 = 0;
                    int i58 = 0;
                    K4 k44 = null;
                    int i59 = 0;
                    int i60 = 0;
                    while (true) {
                        int i61 = d18 - 1;
                        if (d18 > 0) {
                            String c17 = c(i56, cArr);
                            int a18 = a(i56 + 2);
                            int i62 = i56 + 6;
                            if ("LocalVariableTable".equals(c17)) {
                                if ((c6961di.f47460b & 2) == 0) {
                                    int d19 = d(i62);
                                    int i63 = i56 + 8;
                                    while (true) {
                                        int i64 = d19 - 1;
                                        if (d19 > 0) {
                                            int d20 = d(i63);
                                            a(d20, xqArr5);
                                            a(d(i63 + 2) + d20, xqArr5);
                                            i63 += 10;
                                            d19 = i64;
                                            iArr10 = iArr10;
                                        } else {
                                            xqArr3 = xqArr5;
                                            i38 = i62;
                                            i59 = i38;
                                            i40 = a10;
                                            i39 = i55;
                                        }
                                    }
                                } else {
                                    iArr8 = iArr10;
                                    iArr9 = iArr11;
                                    xqArr2 = xqArr5;
                                    i37 = a10;
                                    c14 = 4;
                                    z13 = false;
                                    i38 = i62;
                                    i39 = i55;
                                    iArr10 = iArr8;
                                    iArr11 = iArr9;
                                    xqArr3 = xqArr2;
                                    i40 = i37;
                                }
                            } else {
                                iArr8 = iArr10;
                                if ("LocalVariableTypeTable".equals(c17)) {
                                    xqArr3 = xqArr5;
                                    i38 = i62;
                                    i60 = i38;
                                    i40 = a10;
                                    i39 = i55;
                                    iArr10 = iArr8;
                                } else if ("LineNumberTable".equals(c17)) {
                                    if ((c6961di.f47460b & 2) == 0) {
                                        int d21 = d(i62);
                                        int i65 = i56 + 8;
                                        while (true) {
                                            int i66 = d21 - 1;
                                            if (d21 > 0) {
                                                int d22 = d(i65);
                                                int d23 = d(i65 + 2);
                                                int i67 = i65 + 4;
                                                a(d22, xqArr5);
                                                XQ xq11 = xqArr5[d22];
                                                short s10 = xq11.f45687b;
                                                int[] iArr12 = iArr11;
                                                if ((s10 & 128) == 0) {
                                                    xq11.f45687b = (short) (s10 | 128);
                                                    xq11.f45688c = (short) d23;
                                                    i41 = i66;
                                                    xqArr4 = xqArr5;
                                                    i42 = a10;
                                                } else {
                                                    if (xq11.f45689d == null) {
                                                        xq11.f45689d = new int[4];
                                                    }
                                                    int[] iArr13 = xq11.f45689d;
                                                    i41 = i66;
                                                    int i68 = iArr13[0] + 1;
                                                    iArr13[0] = i68;
                                                    if (i68 >= iArr13.length) {
                                                        int[] iArr14 = new int[iArr13.length + 4];
                                                        xqArr4 = xqArr5;
                                                        i42 = a10;
                                                        System.arraycopy(iArr13, 0, iArr14, 0, iArr13.length);
                                                        xq11.f45689d = iArr14;
                                                    } else {
                                                        xqArr4 = xqArr5;
                                                        i42 = a10;
                                                    }
                                                    xq11.f45689d[i68] = d23;
                                                }
                                                i65 = i67;
                                                iArr11 = iArr12;
                                                d21 = i41;
                                                xqArr5 = xqArr4;
                                                a10 = i42;
                                            }
                                        }
                                    }
                                    iArr9 = iArr11;
                                    xqArr2 = xqArr5;
                                    i37 = a10;
                                    c14 = 4;
                                    z13 = false;
                                    i38 = i62;
                                    i39 = i55;
                                    iArr10 = iArr8;
                                    iArr11 = iArr9;
                                    xqArr3 = xqArr2;
                                    i40 = i37;
                                } else {
                                    iArr9 = iArr11;
                                    xqArr2 = xqArr5;
                                    i37 = a10;
                                    if (Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS.equals(c17)) {
                                        iArr11 = b(dx3, c6961di, i62, true);
                                        i38 = i62;
                                        i39 = i55;
                                        iArr10 = iArr8;
                                        xqArr3 = xqArr2;
                                        i40 = i37;
                                    } else if (Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS.equals(c17)) {
                                        iArr10 = b(dx3, c6961di, i62, false);
                                        i38 = i62;
                                        i39 = i55;
                                        iArr11 = iArr9;
                                        xqArr3 = xqArr2;
                                        i40 = i37;
                                    } else {
                                        z13 = false;
                                        if (Attributes.NAME_STACK_MAP_TABLE.equals(c17)) {
                                            c14 = 4;
                                            if ((c6961di.f47460b & 4) == 0) {
                                                i57 = i56 + 8;
                                                i58 = i62 + a18;
                                            }
                                        } else {
                                            c14 = 4;
                                            if ("StackMap".equals(c17)) {
                                                if ((c6961di.f47460b & 4) == 0) {
                                                    i57 = i56 + 8;
                                                    i58 = i62 + a18;
                                                    z14 = false;
                                                    i38 = i62;
                                                    i39 = i55;
                                                    iArr10 = iArr8;
                                                    iArr11 = iArr9;
                                                    xqArr3 = xqArr2;
                                                    i40 = i37;
                                                }
                                            } else {
                                                xqArr3 = xqArr2;
                                                i38 = i62;
                                                i39 = i55;
                                                i40 = i37;
                                                K4 a19 = a(c6961di.f47459a, c17, i62, a18, cArr, i10, xqArr3);
                                                a19.f41568c = k44;
                                                k44 = a19;
                                                iArr10 = iArr8;
                                                iArr11 = iArr9;
                                            }
                                        }
                                        i38 = i62;
                                        i39 = i55;
                                        iArr10 = iArr8;
                                        iArr11 = iArr9;
                                        xqArr3 = xqArr2;
                                        i40 = i37;
                                    }
                                }
                            }
                            i56 = i38 + a18;
                            dx3 = dx;
                            xqArr5 = xqArr3;
                            d18 = i61;
                            i55 = i39;
                            a10 = i40;
                        } else {
                            int[] iArr15 = iArr10;
                            int[] iArr16 = iArr11;
                            XQ[] xqArr6 = xqArr5;
                            int i69 = a10;
                            int i70 = i55;
                            K4 k45 = k44;
                            int i71 = 4;
                            boolean z15 = (c6961di.f47460b & 8) != 0;
                            int i72 = 3;
                            if (i57 != 0) {
                                c6961di.f47471m = -1;
                                c6961di.f47472n = 0;
                                c6961di.f47473o = 0;
                                c6961di.f47474p = 0;
                                Object[] objArr = new Object[d12];
                                c6961di.f47475q = objArr;
                                c6961di.f47476r = 0;
                                c6961di.f47477s = new Object[d11];
                                if (z15) {
                                    String str2 = c6961di.f47464f;
                                    if ((c6961di.f47462d & 8) == 0) {
                                        if (ConstantDescs.INIT_NAME.equals(c6961di.f47463e)) {
                                            objArr[0] = 6;
                                        } else {
                                            objArr[0] = a(this.f45106a + 2, c6961di.f47461c);
                                        }
                                        i34 = 1;
                                    } else {
                                        i34 = 0;
                                    }
                                    int i73 = i34;
                                    int i74 = 1;
                                    while (true) {
                                        int i75 = i74 + 1;
                                        char charAt = str2.charAt(i74);
                                        if (charAt == 'F') {
                                            i35 = i73 + 1;
                                            objArr[i73] = 2;
                                        } else if (charAt != 'L') {
                                            if (charAt != 'S' && charAt != 'I') {
                                                if (charAt == 'J') {
                                                    i35 = i73 + 1;
                                                    objArr[i73] = 4;
                                                } else if (charAt != 'Z') {
                                                    if (charAt != '[') {
                                                        switch (charAt) {
                                                            case 'D':
                                                                objArr[i73] = Integer.valueOf(i72);
                                                                i73++;
                                                                i74 = i75;
                                                        }
                                                        c6961di.f47473o = i73;
                                                    } else {
                                                        while (str2.charAt(i75) == '[') {
                                                            i75++;
                                                        }
                                                        if (str2.charAt(i75) == 'L') {
                                                            i36 = 1;
                                                            do {
                                                                i75++;
                                                            } while (str2.charAt(i75) != ';');
                                                        } else {
                                                            i36 = 1;
                                                        }
                                                        i75 += i36;
                                                        objArr[i73] = str2.substring(i74, i75);
                                                        i73++;
                                                        i74 = i75;
                                                        i72 = 3;
                                                    }
                                                }
                                            }
                                            i35 = i73 + 1;
                                            objArr[i73] = 1;
                                        } else {
                                            int i76 = i75;
                                            while (str2.charAt(i76) != ';') {
                                                i76++;
                                            }
                                            objArr[i73] = str2.substring(i75, i76);
                                            i73++;
                                            i74 = i76 + 1;
                                            i72 = 3;
                                        }
                                        i73 = i35;
                                        i74 = i75;
                                        i72 = 3;
                                    }
                                }
                                int i77 = i57;
                                while (true) {
                                    i11 = i58;
                                    if (i77 < i11 - 2) {
                                        if (bArr[i77] != 8 || (d10 = d(i77 + 1)) < 0) {
                                            i33 = i69;
                                        } else {
                                            i33 = i69;
                                            if (d10 < i33) {
                                                if ((bArr[i44 + d10] & 255) == 187) {
                                                    if (xqArr6[d10] == null) {
                                                        xqArr6[d10] = new XQ();
                                                    }
                                                    XQ xq12 = xqArr6[d10];
                                                    xq12.f45687b = (short) (xq12.f45687b & (-2));
                                                }
                                                i77++;
                                                i69 = i33;
                                                i58 = i11;
                                            }
                                        }
                                        i77++;
                                        i69 = i33;
                                        i58 = i11;
                                    } else {
                                        i12 = i69;
                                        c10 = '\u00ff';
                                    }
                                }
                            } else {
                                i11 = i58;
                                i12 = i69;
                                c10 = '\u00ff';
                            }
                            if (!z15 || (c6961di.f47460b & 256) == 0) {
                                c11 = c10;
                                i13 = i12;
                            } else {
                                c11 = c10;
                                i13 = i12;
                                dx.a(-1, d12, (Object[]) null, 0, (Object[]) null);
                            }
                            int[] iArr17 = iArr16;
                            int a20 = a(iArr17, 0);
                            int a21 = a(iArr15, 0);
                            int i78 = (c6961di.f47460b & 256) == 0 ? 33 : 0;
                            int i79 = a21;
                            int i80 = i44;
                            int i81 = i57;
                            boolean z16 = false;
                            int i82 = 0;
                            int i83 = 0;
                            int i84 = a20;
                            while (true) {
                                int i85 = i70;
                                if (i80 < i85) {
                                    int i86 = i80 - i44;
                                    XQ xq13 = xqArr6[i86];
                                    k43 = k45;
                                    if (xq13 != null) {
                                        i16 = d12;
                                        boolean z17 = (c6961di.f47460b & 2) == 0;
                                        i15 = d11;
                                        dx2 = dx;
                                        dx2.a(xq13);
                                        if (z17 && (xq13.f45687b & 128) != 0) {
                                            dx2.b(xq13.f45688c & 65535, xq13);
                                            if (xq13.f45689d != null) {
                                                int i87 = 1;
                                                while (true) {
                                                    int[] iArr18 = xq13.f45689d;
                                                    z10 = z16;
                                                    if (i87 <= iArr18[0]) {
                                                        dx2.b(iArr18[i87], xq13);
                                                        i87++;
                                                        z16 = z10;
                                                    }
                                                }
                                            }
                                        }
                                        z10 = z16;
                                    } else {
                                        z10 = z16;
                                        i15 = d11;
                                        i16 = d12;
                                        dx2 = dx;
                                    }
                                    int i88 = i81;
                                    boolean z18 = z10;
                                    while (true) {
                                        if (i88 == 0) {
                                            i17 = i85;
                                            i18 = i80;
                                            iArr3 = iArr17;
                                            iArr4 = iArr15;
                                            c12 = '\uffff';
                                        } else {
                                            int i89 = c6961di.f47471m;
                                            if (i89 == i86 || i89 == -1) {
                                                if (i89 != -1) {
                                                    if (z14 && !z15) {
                                                        i26 = i85;
                                                        iArr7 = iArr15;
                                                        i28 = 64;
                                                        i27 = i80;
                                                        iArr6 = iArr17;
                                                        dx.a(c6961di.f47472n, c6961di.f47474p, c6961di.f47475q, c6961di.f47476r, c6961di.f47477s);
                                                    } else {
                                                        i26 = i85;
                                                        i27 = i80;
                                                        iArr6 = iArr17;
                                                        iArr7 = iArr15;
                                                        i28 = 64;
                                                        dx.a(-1, c6961di.f47473o, c6961di.f47475q, c6961di.f47476r, c6961di.f47477s);
                                                    }
                                                    z12 = false;
                                                } else {
                                                    i26 = i85;
                                                    i27 = i80;
                                                    iArr6 = iArr17;
                                                    iArr7 = iArr15;
                                                    i28 = 64;
                                                    z12 = z18;
                                                }
                                                if (i88 < i11) {
                                                    char[] cArr2 = c6961di.f47461c;
                                                    XQ[] xqArr7 = c6961di.f47465g;
                                                    if (z14) {
                                                        i29 = i88 + 1;
                                                        i30 = this.f45107b[i88] & 255;
                                                        i31 = 0;
                                                        c13 = '\uffff';
                                                    } else {
                                                        c13 = '\uffff';
                                                        c6961di.f47471m = -1;
                                                        i29 = i88;
                                                        i30 = 255;
                                                        i31 = 0;
                                                    }
                                                    c6961di.f47474p = i31;
                                                    if (i30 < i28) {
                                                        c6961di.f47472n = 3;
                                                        c6961di.f47476r = i31;
                                                        xqArr = xqArr7;
                                                        i32 = i71;
                                                    } else if (i30 < 128) {
                                                        int i90 = i30 - 64;
                                                        xqArr = xqArr7;
                                                        int a22 = a(i29, c6961di.f47477s, 0, cArr2, xqArr);
                                                        int i91 = i71;
                                                        c6961di.f47472n = i91;
                                                        c6961di.f47476r = 1;
                                                        i29 = a22;
                                                        i32 = i91;
                                                        i30 = i90;
                                                    } else {
                                                        xqArr = xqArr7;
                                                        int i92 = i71;
                                                        if (i30 >= 247) {
                                                            int d24 = d(i29);
                                                            int i93 = i29 + 2;
                                                            if (i30 == 247) {
                                                                i32 = i92;
                                                                int a23 = a(i93, c6961di.f47477s, 0, cArr2, xqArr);
                                                                c6961di.f47472n = i32;
                                                                c6961di.f47476r = 1;
                                                                i29 = a23;
                                                            } else {
                                                                i32 = i92;
                                                                if (i30 >= 248 && i30 < 251) {
                                                                    c6961di.f47472n = 2;
                                                                    int i94 = 251 - i30;
                                                                    c6961di.f47474p = i94;
                                                                    c6961di.f47473o -= i94;
                                                                    c6961di.f47476r = 0;
                                                                } else if (i30 == 251) {
                                                                    c6961di.f47472n = 3;
                                                                    c6961di.f47476r = 0;
                                                                } else if (i30 < 255) {
                                                                    int i95 = z15 ? c6961di.f47473o : 0;
                                                                    int i96 = i30 - 251;
                                                                    i29 = i93;
                                                                    int i97 = i96;
                                                                    while (i97 > 0) {
                                                                        i29 = a(i29, c6961di.f47475q, i95, cArr2, xqArr);
                                                                        i97--;
                                                                        i96 = i96;
                                                                        i95++;
                                                                        cArr2 = cArr2;
                                                                    }
                                                                    int i98 = i96;
                                                                    c6961di.f47472n = 1;
                                                                    c6961di.f47474p = i98;
                                                                    c6961di.f47473o += i98;
                                                                    c6961di.f47476r = 0;
                                                                } else {
                                                                    int d25 = d(i93);
                                                                    int i99 = i29 + 4;
                                                                    c6961di.f47472n = 0;
                                                                    c6961di.f47474p = d25;
                                                                    c6961di.f47473o = d25;
                                                                    for (int i100 = 0; i100 < d25; i100++) {
                                                                        i99 = a(i99, c6961di.f47475q, i100, cArr2, xqArr);
                                                                    }
                                                                    int d26 = d(i99);
                                                                    i29 = i99 + 2;
                                                                    c6961di.f47476r = d26;
                                                                    for (int i101 = 0; i101 < d26; i101++) {
                                                                        i29 = a(i29, c6961di.f47477s, i101, cArr2, xqArr);
                                                                    }
                                                                }
                                                                i29 = i93;
                                                            }
                                                            i30 = d24;
                                                        } else {
                                                            throw new IllegalArgumentException();
                                                        }
                                                    }
                                                    int i102 = i30 + 1 + c6961di.f47471m;
                                                    c6961di.f47471m = i102;
                                                    b(i102, xqArr);
                                                    i71 = i32;
                                                    iArr17 = iArr6;
                                                    i80 = i27;
                                                    z18 = z12;
                                                    iArr15 = iArr7;
                                                    i88 = i29;
                                                    i85 = i26;
                                                } else {
                                                    iArr17 = iArr6;
                                                    i80 = i27;
                                                    z18 = z12;
                                                    i85 = i26;
                                                    iArr15 = iArr7;
                                                    i88 = 0;
                                                }
                                            } else {
                                                i17 = i85;
                                                c12 = '\uffff';
                                                i18 = i80;
                                                iArr3 = iArr17;
                                                iArr4 = iArr15;
                                            }
                                        }
                                    }
                                } else {
                                    K4 k46 = k45;
                                    int[] iArr19 = iArr15;
                                    int i103 = d11;
                                    int i104 = d12;
                                    int[] iArr20 = iArr17;
                                    XQ xq14 = xqArr6[i13];
                                    if (xq14 != null) {
                                        dx.a(xq14);
                                    }
                                    int i105 = i59;
                                    if (i105 != 0 && (c6961di.f47460b & 2) == 0) {
                                        int i106 = i60;
                                        if (i106 != 0) {
                                            int d27 = d(i106) * 3;
                                            int[] iArr21 = new int[d27];
                                            int i107 = i106 + 2;
                                            while (d27 > 0) {
                                                iArr21[d27 - 1] = i107 + 6;
                                                iArr21[d27 - 2] = d(i107 + 8);
                                                d27 -= 3;
                                                iArr21[d27] = d(i107);
                                                i107 += 10;
                                            }
                                            iArr2 = iArr21;
                                        } else {
                                            iArr2 = null;
                                        }
                                        int d28 = d(i105);
                                        int i108 = i105 + 2;
                                        while (true) {
                                            int i109 = d28 - 1;
                                            if (d28 > 0) {
                                                int d29 = d(i108);
                                                int d30 = d(i108 + 2);
                                                String c18 = c(i108 + 4, cArr);
                                                String c19 = c(i108 + 6, cArr);
                                                int d31 = d(i108 + 8);
                                                int i110 = i108 + 10;
                                                if (iArr2 != null) {
                                                    for (int i111 = 0; i111 < iArr2.length; i111 += 3) {
                                                        if (iArr2[i111] == d29 && iArr2[i111 + 1] == d31) {
                                                            str = c(iArr2[i111 + 2], cArr);
                                                            dx.a(c18, c19, str, xqArr6[d29], xqArr6[d29 + d30], d31);
                                                            d28 = i109;
                                                            i108 = i110;
                                                        }
                                                    }
                                                }
                                                str = null;
                                                dx.a(c18, c19, str, xqArr6[d29], xqArr6[d29 + d30], d31);
                                                d28 = i109;
                                                i108 = i110;
                                            }
                                        }
                                    }
                                    if (iArr20 != null) {
                                        int length = iArr20.length;
                                        int i112 = 0;
                                        while (i112 < length) {
                                            int i113 = iArr20[i112];
                                            int i114 = this.f45107b[i113] & 255;
                                            if (i114 == 64 || i114 == 65) {
                                                int a24 = a(c6961di, i113);
                                                i14 = length;
                                                k42 = k46;
                                                iArr = iArr19;
                                                a(dx.a(c6961di.f47466h, c6961di.f47467i, c6961di.f47468j, c6961di.f47469k, c6961di.f47470l, c(a24, cArr), true), a24 + 2, true, cArr);
                                            } else {
                                                i14 = length;
                                                k42 = k46;
                                                iArr = iArr19;
                                            }
                                            i112++;
                                            iArr19 = iArr;
                                            length = i14;
                                            k46 = k42;
                                        }
                                    }
                                    int[] iArr22 = iArr19;
                                    K4 k47 = k46;
                                    if (iArr22 != null) {
                                        for (int i115 : iArr22) {
                                            int i116 = this.f45107b[i115] & 255;
                                            if (i116 == 64 || i116 == 65) {
                                                int a25 = a(c6961di, i115);
                                                a(dx.a(c6961di.f47466h, c6961di.f47467i, c6961di.f47468j, c6961di.f47469k, c6961di.f47470l, c(a25, cArr), false), a25 + 2, true, cArr);
                                            }
                                        }
                                    }
                                    K4 k48 = k47;
                                    while (k48 != null) {
                                        K4 k49 = k48.f41568c;
                                        k48.f41568c = null;
                                        dx.a(k48);
                                        k48 = k49;
                                    }
                                    dx.c(i103, i104);
                                    return;
                                }
                                i11 = i20;
                                i79 = i23;
                                i82 = i22;
                                i83 = i24;
                                i81 = i19;
                                iArr17 = iArr3;
                                z16 = z11;
                                i80 = i25;
                                d11 = i15;
                                d12 = i16;
                                i70 = i17;
                                i71 = 4;
                                c11 = '\u00ff';
                                i84 = i21;
                                iArr15 = iArr5;
                                k45 = k43;
                            }
                        }
                    }
                }
            }
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void a(int i10, XQ[] xqArr) {
        XQ xq = xqArr[i10];
        if (xq == null) {
            if (xq == null) {
                xqArr[i10] = new XQ();
            }
            XQ xq2 = xqArr[i10];
            xq2.f45687b = (short) (xq2.f45687b | 1);
        }
    }

    public final int a(int[] iArr, int i10) {
        if (iArr == null || i10 >= iArr.length) {
            return -1;
        }
        int i11 = iArr[i10];
        if ((this.f45107b[i11] & 255) < 67) {
            return -1;
        }
        return d(i11 + 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0010. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(C6961di c6961di, int i10) {
        int i11;
        int i12;
        int a10 = a(i10);
        int i13 = a10 >>> 24;
        if (i13 != 0 && i13 != 1) {
            switch (i13) {
                case 16:
                case 17:
                case 18:
                case 23:
                    i11 = a10 & (-256);
                    i12 = i10 + 3;
                    c6961di.f47466h = i11;
                    byte[] bArr = this.f45107b;
                    int i14 = bArr[i12] & 255;
                    c6961di.f47467i = i14 != 0 ? null : new C9666tu0(i12, bArr);
                    return (i14 * 2) + i12 + 1;
                case 19:
                case 20:
                case 21:
                    i11 = a10 & (-16777216);
                    i12 = i10 + 1;
                    c6961di.f47466h = i11;
                    byte[] bArr2 = this.f45107b;
                    int i142 = bArr2[i12] & 255;
                    c6961di.f47467i = i142 != 0 ? null : new C9666tu0(i12, bArr2);
                    return (i142 * 2) + i12 + 1;
                case 22:
                    break;
                default:
                    switch (i13) {
                        case 64:
                        case 65:
                            i11 = a10 & (-16777216);
                            int d10 = d(i10 + 1);
                            i12 = i10 + 3;
                            c6961di.f47468j = new XQ[d10];
                            c6961di.f47469k = new XQ[d10];
                            c6961di.f47470l = new int[d10];
                            for (int i15 = 0; i15 < d10; i15++) {
                                int d11 = d(i12);
                                int d12 = d(i12 + 2);
                                int d13 = d(i12 + 4);
                                i12 += 6;
                                c6961di.f47468j[i15] = b(d11, c6961di.f47465g);
                                c6961di.f47469k[i15] = b(d11 + d12, c6961di.f47465g);
                                c6961di.f47470l[i15] = d13;
                            }
                            c6961di.f47466h = i11;
                            byte[] bArr22 = this.f45107b;
                            int i1422 = bArr22[i12] & 255;
                            c6961di.f47467i = i1422 != 0 ? null : new C9666tu0(i12, bArr22);
                            return (i1422 * 2) + i12 + 1;
                        case 66:
                            break;
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            i11 = a10 & (-16777216);
                            i12 = i10 + 3;
                            c6961di.f47466h = i11;
                            byte[] bArr222 = this.f45107b;
                            int i14222 = bArr222[i12] & 255;
                            c6961di.f47467i = i14222 != 0 ? null : new C9666tu0(i12, bArr222);
                            return (i14222 * 2) + i12 + 1;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            i11 = a10 & (-16776961);
                            i12 = i10 + 4;
                            c6961di.f47466h = i11;
                            byte[] bArr2222 = this.f45107b;
                            int i142222 = bArr2222[i12] & 255;
                            c6961di.f47467i = i142222 != 0 ? null : new C9666tu0(i12, bArr2222);
                            return (i142222 * 2) + i12 + 1;
                        default:
                            throw new IllegalArgumentException();
                    }
            }
        }
        i11 = a10 & (-65536);
        i12 = i10 + 2;
        c6961di.f47466h = i11;
        byte[] bArr22222 = this.f45107b;
        int i1422222 = bArr22222[i12] & 255;
        c6961di.f47467i = i1422222 != 0 ? null : new C9666tu0(i12, bArr22222);
        return (i1422222 * 2) + i12 + 1;
    }

    public final void a(DX dx, C6961di c6961di, int i10, boolean z10) {
        int i11 = i10 + 1;
        int i12 = this.f45107b[i10] & 255;
        dx.a(i12, z10);
        char[] cArr = c6961di.f47461c;
        for (int i13 = 0; i13 < i12; i13++) {
            int d10 = d(i11);
            i11 += 2;
            while (true) {
                int i14 = d10 - 1;
                if (d10 > 0) {
                    i11 = a(dx.a(i13, c(i11, cArr), z10), i11 + 2, true, cArr);
                    d10 = i14;
                }
            }
        }
    }

    public final int a(Q2 q22, int i10, boolean z10, char[] cArr) {
        int d10 = d(i10);
        int i11 = i10 + 2;
        if (!z10) {
            while (true) {
                int i12 = d10 - 1;
                if (d10 <= 0) {
                    break;
                }
                i11 = a(q22, i11, (String) null, cArr);
                d10 = i12;
            }
        } else {
            while (true) {
                int i13 = d10 - 1;
                if (d10 <= 0) {
                    break;
                }
                i11 = a(q22, i11 + 2, c(i11, cArr), cArr);
                d10 = i13;
            }
        }
        if (q22 != null) {
            q22.a();
        }
        return i11;
    }

    public final int a(Q2 q22, int i10, String str, char[] cArr) {
        Object obj;
        int i11 = 0;
        if (q22 == null) {
            int i12 = this.f45107b[i10] & 255;
            if (i12 == 64) {
                return a((Q2) null, i10 + 3, true, cArr);
            }
            if (i12 != 91) {
                return i12 != 101 ? i10 + 3 : i10 + 5;
            }
            return a((Q2) null, i10 + 1, false, cArr);
        }
        int i13 = i10 + 1;
        int i14 = this.f45107b[i10] & 255;
        if (i14 != 64) {
            if (i14 != 70) {
                if (i14 == 83) {
                    q22.a(Short.valueOf((short) a(this.f45108c[d(i13)])), str);
                    return i10 + 3;
                }
                if (i14 == 99) {
                    String c10 = c(i13, cArr);
                    q22.a(C9663tt0.a(c10, 0, c10.length()), str);
                    return i10 + 3;
                }
                if (i14 == 101) {
                    q22.a(str, c(i13, cArr), c(i10 + 3, cArr));
                    return i10 + 5;
                }
                if (i14 == 115) {
                    q22.a(c(i13, cArr), str);
                    return i10 + 3;
                }
                if (i14 != 73 && i14 != 74) {
                    if (i14 == 90) {
                        if (a(this.f45108c[d(i13)]) == 0) {
                            obj = Boolean.FALSE;
                        } else {
                            obj = Boolean.TRUE;
                        }
                        q22.a(obj, str);
                        return i10 + 3;
                    }
                    if (i14 != 91) {
                        switch (i14) {
                            case 66:
                                q22.a(Byte.valueOf((byte) a(this.f45108c[d(i13)])), str);
                                return i10 + 3;
                            case 67:
                                q22.a(Character.valueOf((char) a(this.f45108c[d(i13)])), str);
                                return i10 + 3;
                            case 68:
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    } else {
                        int d10 = d(i13);
                        int i15 = i10 + 3;
                        if (d10 == 0) {
                            return a(q22.a(str), i13, false, cArr);
                        }
                        int i16 = this.f45107b[i15] & 255;
                        if (i16 == 70) {
                            float[] fArr = new float[d10];
                            while (i11 < d10) {
                                fArr[i11] = Float.intBitsToFloat(a(this.f45108c[d(i15 + 1)]));
                                i15 += 3;
                                i11++;
                            }
                            q22.a(fArr, str);
                            return i15;
                        }
                        if (i16 == 83) {
                            short[] sArr = new short[d10];
                            while (i11 < d10) {
                                sArr[i11] = (short) a(this.f45108c[d(i15 + 1)]);
                                i15 += 3;
                                i11++;
                            }
                            q22.a(sArr, str);
                            return i15;
                        }
                        if (i16 == 90) {
                            boolean[] zArr = new boolean[d10];
                            for (int i17 = 0; i17 < d10; i17++) {
                                zArr[i17] = a(this.f45108c[d(i15 + 1)]) != 0;
                                i15 += 3;
                            }
                            q22.a(zArr, str);
                            return i15;
                        }
                        if (i16 == 73) {
                            int[] iArr = new int[d10];
                            while (i11 < d10) {
                                iArr[i11] = a(this.f45108c[d(i15 + 1)]);
                                i15 += 3;
                                i11++;
                            }
                            q22.a(iArr, str);
                            return i15;
                        }
                        if (i16 != 74) {
                            switch (i16) {
                                case 66:
                                    byte[] bArr = new byte[d10];
                                    while (i11 < d10) {
                                        bArr[i11] = (byte) a(this.f45108c[d(i15 + 1)]);
                                        i15 += 3;
                                        i11++;
                                    }
                                    q22.a(bArr, str);
                                    return i15;
                                case 67:
                                    char[] cArr2 = new char[d10];
                                    while (i11 < d10) {
                                        cArr2[i11] = (char) a(this.f45108c[d(i15 + 1)]);
                                        i15 += 3;
                                        i11++;
                                    }
                                    q22.a(cArr2, str);
                                    return i15;
                                case 68:
                                    double[] dArr = new double[d10];
                                    while (i11 < d10) {
                                        dArr[i11] = Double.longBitsToDouble(b(this.f45108c[d(i15 + 1)]));
                                        i15 += 3;
                                        i11++;
                                    }
                                    q22.a(dArr, str);
                                    return i15;
                                default:
                                    return a(q22.a(str), i13, false, cArr);
                            }
                        }
                        long[] jArr = new long[d10];
                        while (i11 < d10) {
                            jArr[i11] = b(this.f45108c[d(i15 + 1)]);
                            i15 += 3;
                            i11++;
                        }
                        q22.a(jArr, str);
                        return i15;
                    }
                }
            }
            q22.a(b(d(i13), cArr), str);
            return i10 + 3;
        }
        return a(q22.a(str, c(i13, cArr)), i10 + 3, true, cArr);
    }

    public final int a(int i10, Object[] objArr, int i11, char[] cArr, XQ[] xqArr) {
        int i12 = i10 + 1;
        switch (this.f45107b[i10] & 255) {
            case 0:
                objArr[i11] = 0;
                return i12;
            case 1:
                objArr[i11] = 1;
                return i12;
            case 2:
                objArr[i11] = 2;
                return i12;
            case 3:
                objArr[i11] = 3;
                return i12;
            case 4:
                objArr[i11] = 4;
                return i12;
            case 5:
                objArr[i11] = 5;
                return i12;
            case 6:
                objArr[i11] = 6;
                return i12;
            case 7:
                objArr[i11] = a(i12, cArr);
                break;
            case 8:
                objArr[i11] = b(d(i12), xqArr);
                break;
            default:
                throw new IllegalArgumentException();
        }
        return i10 + 3;
    }

    public final int a() {
        int i10 = this.f45106a;
        int d10 = (d(i10 + 6) * 2) + i10 + 8;
        int d11 = d(d10);
        int i11 = d10 + 2;
        while (true) {
            int i12 = d11 - 1;
            if (d11 <= 0) {
                break;
            }
            int d12 = d(i11 + 6);
            i11 += 8;
            while (true) {
                int i13 = d12 - 1;
                if (d12 > 0) {
                    i11 += a(i11 + 2) + 6;
                    d12 = i13;
                }
            }
            d11 = i12;
        }
        int d13 = d(i11);
        int i14 = i11 + 2;
        while (true) {
            int i15 = d13 - 1;
            if (d13 <= 0) {
                return i14 + 2;
            }
            int d14 = d(i14 + 6);
            i14 += 8;
            while (true) {
                int i16 = d14 - 1;
                if (d14 > 0) {
                    i14 += a(i14 + 2) + 6;
                    d14 = i16;
                }
            }
            d13 = i15;
        }
    }

    public final K4 a(K4[] k4Arr, String str, int i10, int i11, char[] cArr, int i12, XQ[] xqArr) {
        for (K4 k42 : k4Arr) {
            if (k42.f41566a.equals(str)) {
                return k42.a(this, i10, i11);
            }
        }
        K4 k43 = new K4(str);
        byte[] bArr = new byte[i11];
        System.arraycopy(this.f45107b, i10, bArr, 0, i11);
        k43.f41567b = new C8874p8(bArr);
        return k43;
    }

    public final int a(int i10) {
        byte[] bArr = this.f45107b;
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public final String a(char[] cArr, int i10, int i11) {
        int i12;
        int i13 = i11 + i10;
        byte[] bArr = this.f45107b;
        int i14 = 0;
        while (i10 < i13) {
            int i15 = i10 + 1;
            byte b10 = bArr[i10];
            if ((b10 & 128) == 0) {
                cArr[i14] = (char) (b10 & Byte.MAX_VALUE);
                i14++;
                i10 = i15;
            } else {
                if ((b10 & 224) == 192) {
                    i12 = i14 + 1;
                    i10 += 2;
                    cArr[i14] = (char) (((b10 & 31) << 6) + (bArr[i15] & Opcodes.OPC_lstore_0));
                } else {
                    i12 = i14 + 1;
                    int i16 = i10 + 2;
                    i10 += 3;
                    cArr[i14] = (char) (((b10 & 15) << 12) + ((bArr[i15] & Opcodes.OPC_lstore_0) << 6) + (bArr[i16] & Opcodes.OPC_lstore_0));
                }
                i14 = i12;
            }
        }
        return new String(cArr, 0, i14);
    }

    public final String a(int i10, char[] cArr) {
        return c(this.f45108c[d(i10)], cArr);
    }
}
