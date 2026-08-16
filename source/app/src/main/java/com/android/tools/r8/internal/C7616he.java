package com.android.tools.r8.internal;

import java.lang.classfile.Attributes;

public final class C7616he extends AbstractC7449ge {

    public int f48629A;

    public C8874p8 f48630B;

    public int f48631C;

    public C8874p8 f48632D;

    public C7778ic0 f48633E;

    public C7778ic0 f48634F;

    public K4 f48635G;

    public int f48636H;

    public int f48637c;

    public final C7988jr0 f48638d;

    public int f48639e;

    public int f48640f;

    public int f48641g;

    public int f48642h;

    public int[] f48643i;

    public C6112Vw f48644j;

    public C6112Vw f48645k;

    public EX f48646l;

    public EX f48647m;

    public int f48648n;

    public C8874p8 f48649o;

    public int f48650p;

    public int f48651q;

    public int f48652r;

    public int f48653s;

    public C8874p8 f48654t;

    public S2 f48655u;

    public S2 f48656v;

    public S2 f48657w;

    public S2 f48658x;

    public UX f48659y;

    public int f48660z;

    public C7616he() {
        super(null);
        this.f48638d = new C7988jr0(this);
        this.f48636H = 0;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b(String str) {
        if (this.f48630B == null) {
            this.f48630B = new C8874p8();
        }
        this.f48629A++;
        this.f48630B.d(this.f48638d.a(7, str).f48722a);
    }

    @Override
    public final void c(String str) {
        if (this.f48632D == null) {
            this.f48632D = new C8874p8();
        }
        this.f48631C++;
        this.f48632D.d(this.f48638d.a(7, str).f48722a);
    }

    @Override
    public final void a(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        this.f48637c = i10;
        this.f48639e = i11;
        C7988jr0 c7988jr0 = this.f48638d;
        int i12 = i10 & 65535;
        c7988jr0.f49371b = i12;
        c7988jr0.f49372c = str;
        this.f48640f = c7988jr0.a(7, str).f48722a;
        if (str2 != null) {
            this.f48652r = this.f48638d.a(str2);
        }
        this.f48641g = str3 == null ? 0 : this.f48638d.a(7, str3).f48722a;
        if (strArr.length > 0) {
            int length = strArr.length;
            this.f48642h = length;
            this.f48643i = new int[length];
            for (int i13 = 0; i13 < this.f48642h; i13++) {
                this.f48643i[i13] = this.f48638d.a(7, strArr[i13]).f48722a;
            }
        }
        if (this.f48636H != 1 || i12 < 51) {
            return;
        }
        this.f48636H = 2;
    }

    @Override
    public final AbstractC7611hc0 b(String str, String str2, String str3) {
        C7778ic0 c7778ic0 = new C7778ic0(this.f48638d, str, str2, str3);
        if (this.f48633E == null) {
            this.f48633E = c7778ic0;
        } else {
            this.f48634F.f48624a = c7778ic0;
        }
        this.f48634F = c7778ic0;
        return c7778ic0;
    }

    public final byte[] b() {
        int i10;
        int i11;
        String str;
        int i12;
        int i13;
        String str2;
        String str3;
        String str4;
        String str5;
        int i14;
        int i15;
        String str6;
        String str7;
        String str8;
        String str9;
        boolean z10;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23 = (this.f48642h * 2) + 24;
        int i24 = 0;
        for (C6112Vw c6112Vw = this.f48644j; c6112Vw != null; c6112Vw = (C6112Vw) c6112Vw.f44907b) {
            i24++;
            if (c6112Vw.f45218h != 0) {
                c6112Vw.f45213c.a("ConstantValue");
                i22 = 16;
            } else {
                i22 = 8;
            }
            int a10 = S2.a(c6112Vw.f45219i, c6112Vw.f45220j, c6112Vw.f45221k, c6112Vw.f45222l) + K4.a(c6112Vw.f45213c, c6112Vw.f45214d, c6112Vw.f45217g) + i22;
            K4 k42 = c6112Vw.f45223m;
            if (k42 != null) {
                C7988jr0 c7988jr0 = c6112Vw.f45213c;
                C7616he c7616he = c7988jr0.f49370a;
                int i25 = 0;
                while (k42 != null) {
                    c7988jr0.a(k42.f41566a);
                    if (k42.f41567b == null) {
                        k42.f41567b = k42.a();
                    }
                    i25 += k42.f41567b.f51447b + 6;
                    k42 = k42.f41568c;
                }
                a10 += i25;
            }
            i23 += a10;
        }
        EX ex = this.f48646l;
        int i26 = 0;
        while (true) {
            String str10 = "LocalVariableTypeTable";
            String str11 = "LocalVariableTable";
            String str12 = "LineNumberTable";
            String str13 = "Code";
            if (ex != null) {
                int i27 = i26 + 1;
                int i28 = ex.f39924k.f51447b;
                if (i28 <= 0) {
                    i19 = i27;
                    i20 = 8;
                } else if (i28 <= 65535) {
                    ex.f39916c.a("Code");
                    int i29 = ex.f39924k.f51447b + 16;
                    int i30 = 0;
                    for (C5887Rz c5887Rz = ex.f39925l; c5887Rz != null; c5887Rz = c5887Rz.f44046f) {
                        i30++;
                    }
                    int i31 = (i30 * 8) + 2 + i29 + 8;
                    if (ex.f39934u != null) {
                        C7988jr0 c7988jr02 = ex.f39916c;
                        i19 = i27;
                        c7988jr02.a(c7988jr02.f49371b >= 50 ? Attributes.NAME_STACK_MAP_TABLE : "StackMap");
                        i21 = 8;
                        i31 += ex.f39934u.f51447b + 8;
                    } else {
                        i21 = 8;
                        i19 = i27;
                    }
                    if (ex.f39928o != null) {
                        ex.f39916c.a("LineNumberTable");
                        i31 += ex.f39928o.f51447b + i21;
                    }
                    if (ex.f39930q != null) {
                        ex.f39916c.a("LocalVariableTable");
                        i31 += ex.f39930q.f51447b + i21;
                    }
                    if (ex.f39932s != null) {
                        ex.f39916c.a("LocalVariableTypeTable");
                        i31 += ex.f39932s.f51447b + i21;
                    }
                    S2 s22 = ex.f39935v;
                    i20 = s22 != null ? s22.b(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS) + i31 : i31;
                    S2 s23 = ex.f39936w;
                    if (s23 != null) {
                        i20 += s23.b(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
                    }
                } else {
                    throw new BX(ex.f39924k.f51447b, ex.f39916c.f49372c, ex.f39919f, ex.f39921h);
                }
                if (ex.f39937x > 0) {
                    ex.f39916c.a("Exceptions");
                    i20 += (ex.f39937x * 2) + 8;
                }
                int a11 = S2.a(ex.f39891A, ex.f39892B, ex.f39897G, ex.f39898H) + K4.a(ex.f39916c, ex.f39917d, ex.f39939z) + i20;
                S2[] s2Arr = ex.f39894D;
                if (s2Arr != null) {
                    int i32 = ex.f39893C;
                    if (i32 == 0) {
                        i32 = s2Arr.length;
                    }
                    int i33 = (i32 * 2) + 7;
                    for (int i34 = 0; i34 < i32; i34++) {
                        S2 s24 = s2Arr[i34];
                        i33 += s24 == null ? 0 : s24.b("RuntimeVisibleParameterAnnotations") - 8;
                    }
                    a11 += i33;
                }
                S2[] s2Arr2 = ex.f39896F;
                if (s2Arr2 != null) {
                    int i35 = ex.f39895E;
                    if (i35 == 0) {
                        i35 = s2Arr2.length;
                    }
                    int i36 = (i35 * 2) + 7;
                    for (int i37 = 0; i37 < i35; i37++) {
                        S2 s25 = s2Arr2[i37];
                        i36 += s25 == null ? 0 : s25.b("RuntimeInvisibleParameterAnnotations") - 8;
                    }
                    a11 += i36;
                }
                if (ex.f39899I != null) {
                    ex.f39916c.a("AnnotationDefault");
                    a11 += ex.f39899I.f51447b + 6;
                }
                if (ex.f39901K != null) {
                    ex.f39916c.a(Attributes.NAME_METHOD_PARAMETERS);
                    a11 += ex.f39901K.f51447b + 7;
                }
                K4 k43 = ex.f39902L;
                if (k43 != null) {
                    C7988jr0 c7988jr03 = ex.f39916c;
                    C7616he c7616he2 = c7988jr03.f49370a;
                    int i38 = 0;
                    while (k43 != null) {
                        c7988jr03.a(k43.f41566a);
                        if (k43.f41567b == null) {
                            k43.f41567b = k43.a();
                        }
                        i38 += k43.f41567b.f51447b + 6;
                        k43 = k43.f41568c;
                    }
                    a11 += i38;
                }
                i23 += a11;
                ex = (EX) ex.f39547b;
                i26 = i19;
            } else {
                C8874p8 c8874p8 = this.f48649o;
                if (c8874p8 != null) {
                    i23 += c8874p8.f51447b + 8;
                    this.f48638d.a("InnerClasses");
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (this.f48650p != 0) {
                    i10++;
                    i23 += 10;
                    this.f48638d.a("EnclosingMethod");
                }
                if ((this.f48639e & 4096) != 0 && (this.f48637c & 65535) < 49) {
                    i10++;
                    i23 += 6;
                    this.f48638d.a("Synthetic");
                }
                if (this.f48652r != 0) {
                    i10++;
                    i23 += 8;
                    this.f48638d.a("Signature");
                }
                if (this.f48653s != 0) {
                    i10++;
                    i23 += 8;
                    this.f48638d.a("SourceFile");
                }
                C8874p8 c8874p82 = this.f48654t;
                if (c8874p82 != null) {
                    i10++;
                    i23 += c8874p82.f51447b + 6;
                    this.f48638d.a("SourceDebugExtension");
                }
                if ((this.f48639e & 131072) != 0) {
                    i10++;
                    i23 += 6;
                    this.f48638d.a("Deprecated");
                }
                S2 s26 = this.f48655u;
                if (s26 != null) {
                    i10++;
                    i23 += s26.b("RuntimeVisibleAnnotations");
                }
                S2 s27 = this.f48656v;
                if (s27 != null) {
                    i10++;
                    i23 += s27.b("RuntimeInvisibleAnnotations");
                }
                S2 s28 = this.f48657w;
                if (s28 != null) {
                    i10++;
                    i23 += s28.b(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
                }
                S2 s29 = this.f48658x;
                if (s29 != null) {
                    i10++;
                    i23 += s29.b(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
                }
                C7988jr0 c7988jr04 = this.f48638d;
                C8874p8 c8874p83 = c7988jr04.f49378i;
                String str14 = Attributes.NAME_BOOTSTRAP_METHODS;
                if (c8874p83 != null) {
                    c7988jr04.a(Attributes.NAME_BOOTSTRAP_METHODS);
                    i11 = c7988jr04.f49378i.f51447b + 8;
                } else {
                    i11 = 0;
                }
                if (i11 > 0) {
                    i10++;
                    C7988jr0 c7988jr05 = this.f48638d;
                    if (c7988jr05.f49378i != null) {
                        c7988jr05.a(Attributes.NAME_BOOTSTRAP_METHODS);
                        i18 = c7988jr05.f49378i.f51447b + 8;
                    } else {
                        i18 = 0;
                    }
                    i23 += i18;
                }
                UX ux = this.f48659y;
                if (ux != null) {
                    int i39 = (ux.f44788p > 0 ? 1 : 0) + 1 + (ux.f44790r > 0 ? 1 : 0) + i10;
                    ux.f44774b.a(Attributes.NAME_MODULE);
                    int i40 = ux.f44779g.f51447b + 22 + ux.f44781i.f51447b + ux.f44783k.f51447b + ux.f44785m.f51447b + ux.f44787o.f51447b;
                    if (ux.f44788p > 0) {
                        C7988jr0 c7988jr06 = ux.f44774b;
                        str = Attributes.NAME_STACK_MAP_TABLE;
                        c7988jr06.a(Attributes.NAME_MODULE_PACKAGES);
                        i40 += ux.f44789q.f51447b + 8;
                    } else {
                        str = Attributes.NAME_STACK_MAP_TABLE;
                    }
                    if (ux.f44790r > 0) {
                        ux.f44774b.a(Attributes.NAME_MODULE_MAIN_CLASS);
                        i40 += 8;
                    }
                    i23 += i40;
                    i10 = i39;
                } else {
                    str = Attributes.NAME_STACK_MAP_TABLE;
                }
                if (this.f48660z != 0) {
                    i10++;
                    i23 += 8;
                    this.f48638d.a(Attributes.NAME_NEST_HOST);
                }
                C8874p8 c8874p84 = this.f48630B;
                if (c8874p84 != null) {
                    i10++;
                    i23 += c8874p84.f51447b + 8;
                    this.f48638d.a(Attributes.NAME_NEST_MEMBERS);
                }
                C8874p8 c8874p85 = this.f48632D;
                if (c8874p85 != null) {
                    i10++;
                    i23 += c8874p85.f51447b + 8;
                    this.f48638d.a(Attributes.NAME_PERMITTED_SUBCLASSES);
                }
                if ((this.f48639e & 65536) == 0 && this.f48633E == null) {
                    str2 = "LocalVariableTypeTable";
                    str3 = "LocalVariableTable";
                    str4 = "LineNumberTable";
                    str5 = Attributes.NAME_BOOTSTRAP_METHODS;
                    i12 = 0;
                    i13 = 0;
                } else {
                    C7778ic0 c7778ic0 = this.f48633E;
                    i12 = 0;
                    i13 = 0;
                    while (c7778ic0 != null) {
                        int i41 = i13 + 1;
                        String str15 = str14;
                        String str16 = str10;
                        String str17 = str11;
                        String str18 = str12;
                        int a12 = S2.a(c7778ic0.f48988f, c7778ic0.f48989g, c7778ic0.f48990h, c7778ic0.f48991i) + K4.a(c7778ic0.f48984b, 0, c7778ic0.f48987e) + 6;
                        K4 k44 = c7778ic0.f48992j;
                        if (k44 != null) {
                            C7988jr0 c7988jr07 = c7778ic0.f48984b;
                            C7616he c7616he3 = c7988jr07.f49370a;
                            int i42 = 0;
                            while (k44 != null) {
                                c7988jr07.a(k44.f41566a);
                                if (k44.f41567b == null) {
                                    k44.f41567b = k44.a();
                                }
                                i42 += k44.f41567b.f51447b + 6;
                                k44 = k44.f41568c;
                            }
                            a12 += i42;
                        }
                        i12 += a12;
                        c7778ic0 = (C7778ic0) c7778ic0.f48624a;
                        i13 = i41;
                        str14 = str15;
                        str10 = str16;
                        str11 = str17;
                        str12 = str18;
                    }
                    str2 = str10;
                    str3 = str11;
                    str4 = str12;
                    str5 = str14;
                    i10++;
                    i23 += i12 + 8;
                    this.f48638d.a(Attributes.NAME_RECORD);
                }
                K4 k45 = this.f48635G;
                if (k45 != null) {
                    int i43 = 0;
                    while (k45 != null) {
                        i43++;
                        k45 = k45.f41568c;
                    }
                    i10 += i43;
                    K4 k46 = this.f48635G;
                    C7988jr0 c7988jr08 = this.f48638d;
                    k46.getClass();
                    C7616he c7616he4 = c7988jr08.f49370a;
                    int i44 = 0;
                    while (k46 != null) {
                        c7988jr08.a(k46.f41566a);
                        if (k46.f41567b == null) {
                            k46.f41567b = k46.a();
                        }
                        i44 += k46.f41567b.f51447b + 6;
                        k46 = k46.f41568c;
                    }
                    i23 += i44;
                }
                C7988jr0 c7988jr09 = this.f48638d;
                int i45 = i23 + c7988jr09.f49376g.f51447b;
                int i46 = c7988jr09.f49375f;
                if (i46 <= 65535) {
                    C8874p8 c8874p86 = new C8874p8(i45);
                    c8874p86.c(-889275714).c(this.f48637c);
                    C7988jr0 c7988jr010 = this.f48638d;
                    C8874p8 d10 = c8874p86.d(c7988jr010.f49375f);
                    C8874p8 c8874p87 = c7988jr010.f49376g;
                    d10.a(c8874p87.f51446a, 0, c8874p87.f51447b);
                    c8874p86.d((~((this.f48637c & 65535) < 49 ? 4096 : 0)) & this.f48639e).d(this.f48640f).d(this.f48641g);
                    c8874p86.d(this.f48642h);
                    for (int i47 = 0; i47 < this.f48642h; i47++) {
                        c8874p86.d(this.f48643i[i47]);
                    }
                    c8874p86.d(i24);
                    for (C6112Vw c6112Vw2 = this.f48644j; c6112Vw2 != null; c6112Vw2 = (C6112Vw) c6112Vw2.f44907b) {
                        boolean z11 = c6112Vw2.f45213c.f49371b < 49;
                        c8874p86.d((~(z11 ? 4096 : 0)) & c6112Vw2.f45214d).d(c6112Vw2.f45215e).d(c6112Vw2.f45216f);
                        int i48 = c6112Vw2.f45218h != 0 ? 1 : 0;
                        int i49 = c6112Vw2.f45214d;
                        if ((i49 & 4096) != 0 && z11) {
                            i48++;
                        }
                        if (c6112Vw2.f45217g != 0) {
                            i48++;
                        }
                        if ((i49 & 131072) != 0) {
                            i48++;
                        }
                        if (c6112Vw2.f45219i != null) {
                            i48++;
                        }
                        if (c6112Vw2.f45220j != null) {
                            i48++;
                        }
                        if (c6112Vw2.f45221k != null) {
                            i48++;
                        }
                        if (c6112Vw2.f45222l != null) {
                            i48++;
                        }
                        K4 k47 = c6112Vw2.f45223m;
                        if (k47 != null) {
                            int i50 = 0;
                            while (k47 != null) {
                                i50++;
                                k47 = k47.f41568c;
                            }
                            i48 += i50;
                        }
                        c8874p86.d(i48);
                        if (c6112Vw2.f45218h != 0) {
                            c8874p86.d(c6112Vw2.f45213c.a("ConstantValue")).c(2).d(c6112Vw2.f45218h);
                        }
                        K4.a(c6112Vw2.f45213c, c6112Vw2.f45214d, c6112Vw2.f45217g, c8874p86);
                        S2.a(c6112Vw2.f45213c, c6112Vw2.f45219i, c6112Vw2.f45220j, c6112Vw2.f45221k, c6112Vw2.f45222l, c8874p86);
                        K4 k48 = c6112Vw2.f45223m;
                        if (k48 != null) {
                            C7988jr0 c7988jr011 = c6112Vw2.f45213c;
                            C7616he c7616he5 = c7988jr011.f49370a;
                            while (k48 != null) {
                                if (k48.f41567b == null) {
                                    k48.f41567b = k48.a();
                                }
                                C8874p8 c8874p88 = k48.f41567b;
                                c8874p86.d(c7988jr011.a(k48.f41566a)).c(c8874p88.f51447b);
                                c8874p86.a(c8874p88.f51446a, 0, c8874p88.f51447b);
                                k48 = k48.f41568c;
                            }
                        }
                    }
                    c8874p86.d(i26);
                    EX ex2 = this.f48646l;
                    boolean z12 = false;
                    boolean z13 = false;
                    while (ex2 != null) {
                        boolean z14 = z12 | (ex2.f39933t > 0);
                        z13 |= ex2.f39914X;
                        boolean z15 = ex2.f39916c.f49371b < 49;
                        c8874p86.d((~(z15 ? 4096 : 0)) & ex2.f39917d).d(ex2.f39918e).d(ex2.f39920g);
                        int i51 = ex2.f39924k.f51447b > 0 ? 1 : 0;
                        if (ex2.f39937x > 0) {
                            i51++;
                        }
                        int i52 = ex2.f39917d;
                        if ((i52 & 4096) != 0 && z15) {
                            i51++;
                        }
                        if (ex2.f39939z != 0) {
                            i51++;
                        }
                        if ((i52 & 131072) != 0) {
                            i51++;
                        }
                        if (ex2.f39891A != null) {
                            i51++;
                        }
                        if (ex2.f39892B != null) {
                            i51++;
                        }
                        if (ex2.f39894D != null) {
                            i51++;
                        }
                        if (ex2.f39896F != null) {
                            i51++;
                        }
                        if (ex2.f39897G != null) {
                            i51++;
                        }
                        if (ex2.f39898H != null) {
                            i51++;
                        }
                        if (ex2.f39899I != null) {
                            i51++;
                        }
                        if (ex2.f39901K != null) {
                            i51++;
                        }
                        K4 k49 = ex2.f39902L;
                        if (k49 != null) {
                            int i53 = 0;
                            while (k49 != null) {
                                i53++;
                                k49 = k49.f41568c;
                            }
                            i51 += i53;
                        }
                        c8874p86.d(i51);
                        int i54 = ex2.f39924k.f51447b;
                        if (i54 > 0) {
                            int i55 = i54 + 10;
                            int i56 = 0;
                            for (C5887Rz c5887Rz2 = ex2.f39925l; c5887Rz2 != null; c5887Rz2 = c5887Rz2.f44046f) {
                                i56++;
                            }
                            int i57 = (i56 * 8) + 2 + i55;
                            C8874p8 c8874p89 = ex2.f39934u;
                            if (c8874p89 != null) {
                                i16 = 8;
                                i57 += c8874p89.f51447b + 8;
                                i17 = 1;
                            } else {
                                i16 = 8;
                                i17 = 0;
                            }
                            C8874p8 c8874p810 = ex2.f39928o;
                            if (c8874p810 != null) {
                                i57 += c8874p810.f51447b + i16;
                                i17++;
                            }
                            C8874p8 c8874p811 = ex2.f39930q;
                            if (c8874p811 != null) {
                                i57 += c8874p811.f51447b + i16;
                                i17++;
                            }
                            C8874p8 c8874p812 = ex2.f39932s;
                            if (c8874p812 != null) {
                                i57 += c8874p812.f51447b + i16;
                                i17++;
                            }
                            S2 s210 = ex2.f39935v;
                            if (s210 != null) {
                                i57 += s210.b(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
                                i17++;
                            }
                            S2 s211 = ex2.f39936w;
                            if (s211 != null) {
                                i57 += s211.b(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
                                i17++;
                            }
                            C8874p8 c10 = c8874p86.d(ex2.f39916c.a(str13)).c(i57).d(ex2.f39922i).d(ex2.f39923j).c(ex2.f39924k.f51447b);
                            C8874p8 c8874p813 = ex2.f39924k;
                            c10.a(c8874p813.f51446a, 0, c8874p813.f51447b);
                            C5887Rz c5887Rz3 = ex2.f39925l;
                            int i58 = 0;
                            for (C5887Rz c5887Rz4 = c5887Rz3; c5887Rz4 != null; c5887Rz4 = c5887Rz4.f44046f) {
                                i58++;
                            }
                            c8874p86.d(i58);
                            while (c5887Rz3 != null) {
                                c8874p86.d(c5887Rz3.f44041a.f45690e).d(c5887Rz3.f44042b.f45690e).d(c5887Rz3.f44043c.f45690e).d(c5887Rz3.f44044d);
                                c5887Rz3 = c5887Rz3.f44046f;
                            }
                            c8874p86.d(i17);
                            if (ex2.f39934u != null) {
                                C7988jr0 c7988jr012 = ex2.f39916c;
                                C8874p8 d11 = c8874p86.d(c7988jr012.a(c7988jr012.f49371b >= 50 ? str : "StackMap")).c(ex2.f39934u.f51447b + 2).d(ex2.f39933t);
                                C8874p8 c8874p814 = ex2.f39934u;
                                d11.a(c8874p814.f51446a, 0, c8874p814.f51447b);
                            }
                            if (ex2.f39928o != null) {
                                str9 = str4;
                                C8874p8 d12 = c8874p86.d(ex2.f39916c.a(str9)).c(ex2.f39928o.f51447b + 2).d(ex2.f39927n);
                                C8874p8 c8874p815 = ex2.f39928o;
                                d12.a(c8874p815.f51446a, 0, c8874p815.f51447b);
                            } else {
                                str9 = str4;
                            }
                            if (ex2.f39930q != null) {
                                str8 = str3;
                                C8874p8 d13 = c8874p86.d(ex2.f39916c.a(str8)).c(ex2.f39930q.f51447b + 2).d(ex2.f39929p);
                                C8874p8 c8874p816 = ex2.f39930q;
                                str6 = str13;
                                d13.a(c8874p816.f51446a, 0, c8874p816.f51447b);
                            } else {
                                str6 = str13;
                                str8 = str3;
                            }
                            if (ex2.f39932s != null) {
                                str7 = str2;
                                C8874p8 d14 = c8874p86.d(ex2.f39916c.a(str7)).c(ex2.f39932s.f51447b + 2).d(ex2.f39931r);
                                C8874p8 c8874p817 = ex2.f39932s;
                                z10 = z14;
                                d14.a(c8874p817.f51446a, 0, c8874p817.f51447b);
                            } else {
                                str7 = str2;
                                z10 = z14;
                            }
                            S2 s212 = ex2.f39935v;
                            if (s212 != null) {
                                s212.a(ex2.f39916c.a(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS), c8874p86);
                            }
                            S2 s213 = ex2.f39936w;
                            if (s213 != null) {
                                s213.a(ex2.f39916c.a(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS), c8874p86);
                            }
                        } else {
                            str6 = str13;
                            str7 = str2;
                            str8 = str3;
                            str9 = str4;
                            z10 = z14;
                        }
                        if (ex2.f39937x > 0) {
                            c8874p86.d(ex2.f39916c.a("Exceptions")).c((ex2.f39937x * 2) + 2).d(ex2.f39937x);
                            for (int i59 : ex2.f39938y) {
                                c8874p86.d(i59);
                            }
                        }
                        K4.a(ex2.f39916c, ex2.f39917d, ex2.f39939z, c8874p86);
                        String str19 = str7;
                        S2.a(ex2.f39916c, ex2.f39891A, ex2.f39892B, ex2.f39897G, ex2.f39898H, c8874p86);
                        if (ex2.f39894D != null) {
                            int a13 = ex2.f39916c.a("RuntimeVisibleParameterAnnotations");
                            S2[] s2Arr3 = ex2.f39894D;
                            int i60 = ex2.f39893C;
                            if (i60 == 0) {
                                i60 = s2Arr3.length;
                            }
                            S2.a(a13, s2Arr3, i60, c8874p86);
                        }
                        if (ex2.f39896F != null) {
                            int a14 = ex2.f39916c.a("RuntimeInvisibleParameterAnnotations");
                            S2[] s2Arr4 = ex2.f39896F;
                            int i61 = ex2.f39895E;
                            if (i61 == 0) {
                                i61 = s2Arr4.length;
                            }
                            S2.a(a14, s2Arr4, i61, c8874p86);
                        }
                        if (ex2.f39899I != null) {
                            C8874p8 c11 = c8874p86.d(ex2.f39916c.a("AnnotationDefault")).c(ex2.f39899I.f51447b);
                            C8874p8 c8874p818 = ex2.f39899I;
                            c11.a(c8874p818.f51446a, 0, c8874p818.f51447b);
                        }
                        if (ex2.f39901K != null) {
                            C8874p8 b10 = c8874p86.d(ex2.f39916c.a(Attributes.NAME_METHOD_PARAMETERS)).c(ex2.f39901K.f51447b + 1).b(ex2.f39900J);
                            C8874p8 c8874p819 = ex2.f39901K;
                            b10.a(c8874p819.f51446a, 0, c8874p819.f51447b);
                        }
                        K4 k410 = ex2.f39902L;
                        if (k410 != null) {
                            C7988jr0 c7988jr013 = ex2.f39916c;
                            C7616he c7616he6 = c7988jr013.f49370a;
                            while (k410 != null) {
                                if (k410.f41567b == null) {
                                    k410.f41567b = k410.a();
                                }
                                C8874p8 c8874p820 = k410.f41567b;
                                c8874p86.d(c7988jr013.a(k410.f41566a)).c(c8874p820.f51447b);
                                c8874p86.a(c8874p820.f51446a, 0, c8874p820.f51447b);
                                k410 = k410.f41568c;
                            }
                        }
                        ex2 = (EX) ex2.f39547b;
                        str4 = str9;
                        str13 = str6;
                        z12 = z10;
                        str2 = str19;
                        str3 = str8;
                    }
                    c8874p86.d(i10);
                    if (this.f48649o != null) {
                        C8874p8 d15 = c8874p86.d(this.f48638d.a("InnerClasses")).c(this.f48649o.f51447b + 2).d(this.f48648n);
                        C8874p8 c8874p821 = this.f48649o;
                        d15.a(c8874p821.f51446a, 0, c8874p821.f51447b);
                    }
                    if (this.f48650p != 0) {
                        c8874p86.d(this.f48638d.a("EnclosingMethod")).c(4).d(this.f48650p).d(this.f48651q);
                    }
                    if ((this.f48639e & 4096) != 0 && (this.f48637c & 65535) < 49) {
                        c8874p86.d(this.f48638d.a("Synthetic")).c(0);
                    }
                    if (this.f48652r != 0) {
                        i14 = 2;
                        c8874p86.d(this.f48638d.a("Signature")).c(2).d(this.f48652r);
                    } else {
                        i14 = 2;
                    }
                    if (this.f48653s != 0) {
                        c8874p86.d(this.f48638d.a("SourceFile")).c(i14).d(this.f48653s);
                    }
                    C8874p8 c8874p822 = this.f48654t;
                    if (c8874p822 != null) {
                        int i62 = c8874p822.f51447b;
                        i15 = 0;
                        c8874p86.d(this.f48638d.a("SourceDebugExtension")).c(i62).a(this.f48654t.f51446a, 0, i62);
                    } else {
                        i15 = 0;
                    }
                    if ((this.f48639e & 131072) != 0) {
                        c8874p86.d(this.f48638d.a("Deprecated")).c(i15);
                    }
                    S2.a(this.f48638d, this.f48655u, this.f48656v, this.f48657w, this.f48658x, c8874p86);
                    C7988jr0 c7988jr014 = this.f48638d;
                    if (c7988jr014.f49378i != null) {
                        C8874p8 d16 = c8874p86.d(c7988jr014.a(str5)).c(c7988jr014.f49378i.f51447b + 2).d(c7988jr014.f49377h);
                        C8874p8 c8874p823 = c7988jr014.f49378i;
                        d16.a(c8874p823.f51446a, 0, c8874p823.f51447b);
                    }
                    UX ux2 = this.f48659y;
                    if (ux2 != null) {
                        C8874p8 d17 = c8874p86.d(ux2.f44774b.a(Attributes.NAME_MODULE)).c(ux2.f44779g.f51447b + 16 + ux2.f44781i.f51447b + ux2.f44783k.f51447b + ux2.f44785m.f51447b + ux2.f44787o.f51447b).d(ux2.f44775c).d(ux2.f44776d).d(ux2.f44777e).d(ux2.f44778f);
                        C8874p8 c8874p824 = ux2.f44779g;
                        C8874p8 d18 = d17.a(c8874p824.f51446a, 0, c8874p824.f51447b).d(ux2.f44780h);
                        C8874p8 c8874p825 = ux2.f44781i;
                        C8874p8 d19 = d18.a(c8874p825.f51446a, 0, c8874p825.f51447b).d(ux2.f44782j);
                        C8874p8 c8874p826 = ux2.f44783k;
                        C8874p8 d20 = d19.a(c8874p826.f51446a, 0, c8874p826.f51447b).d(ux2.f44784l);
                        C8874p8 c8874p827 = ux2.f44785m;
                        C8874p8 d21 = d20.a(c8874p827.f51446a, 0, c8874p827.f51447b).d(ux2.f44786n);
                        C8874p8 c8874p828 = ux2.f44787o;
                        d21.a(c8874p828.f51446a, 0, c8874p828.f51447b);
                        if (ux2.f44788p > 0) {
                            C8874p8 d22 = c8874p86.d(ux2.f44774b.a(Attributes.NAME_MODULE_PACKAGES)).c(ux2.f44789q.f51447b + 2).d(ux2.f44788p);
                            C8874p8 c8874p829 = ux2.f44789q;
                            d22.a(c8874p829.f51446a, 0, c8874p829.f51447b);
                        }
                        if (ux2.f44790r > 0) {
                            c8874p86.d(ux2.f44774b.a(Attributes.NAME_MODULE_MAIN_CLASS)).c(2).d(ux2.f44790r);
                        }
                    }
                    if (this.f48660z != 0) {
                        c8874p86.d(this.f48638d.a(Attributes.NAME_NEST_HOST)).c(2).d(this.f48660z);
                    }
                    if (this.f48630B != null) {
                        C8874p8 d23 = c8874p86.d(this.f48638d.a(Attributes.NAME_NEST_MEMBERS)).c(this.f48630B.f51447b + 2).d(this.f48629A);
                        C8874p8 c8874p830 = this.f48630B;
                        d23.a(c8874p830.f51446a, 0, c8874p830.f51447b);
                    }
                    if (this.f48632D != null) {
                        C8874p8 d24 = c8874p86.d(this.f48638d.a(Attributes.NAME_PERMITTED_SUBCLASSES)).c(this.f48632D.f51447b + 2).d(this.f48631C);
                        C8874p8 c8874p831 = this.f48632D;
                        d24.a(c8874p831.f51446a, 0, c8874p831.f51447b);
                    }
                    if ((this.f48639e & 65536) != 0 || this.f48633E != null) {
                        c8874p86.d(this.f48638d.a(Attributes.NAME_RECORD)).c(i12 + 2).d(i13);
                        for (C7778ic0 c7778ic02 = this.f48633E; c7778ic02 != null; c7778ic02 = (C7778ic0) c7778ic02.f48624a) {
                            c7778ic02.a(c8874p86);
                        }
                    }
                    K4 k411 = this.f48635G;
                    if (k411 != null) {
                        C7988jr0 c7988jr015 = this.f48638d;
                        C7616he c7616he7 = c7988jr015.f49370a;
                        while (k411 != null) {
                            if (k411.f41567b == null) {
                                k411.f41567b = k411.a();
                            }
                            C8874p8 c8874p832 = k411.f41567b;
                            c8874p86.d(c7988jr015.a(k411.f41566a)).c(c8874p832.f51447b);
                            c8874p86.a(c8874p832.f51446a, 0, c8874p832.f51447b);
                            k411 = k411.f41568c;
                        }
                    }
                    if (z13) {
                        return a(c8874p86.f51446a, z12);
                    }
                    return c8874p86.f51446a;
                }
                throw new C6449ae(i46, this.f48638d.f49372c);
            }
        }
    }

    @Override
    public final void a(String str, String str2) {
        if (str != null) {
            this.f48653s = this.f48638d.a(str);
        }
        if (str2 != null) {
            this.f48654t = new C8874p8().a(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override
    public final TX a(int i10, String str, String str2) {
        C7988jr0 c7988jr0 = this.f48638d;
        UX ux = new UX(c7988jr0, c7988jr0.a(19, str).f48722a, i10, str2 == null ? 0 : this.f48638d.a(str2));
        this.f48659y = ux;
        return ux;
    }

    @Override
    public final void a(String str) {
        this.f48660z = this.f48638d.a(7, str).f48722a;
    }

    @Override
    public final void a(String str, String str2, String str3) {
        this.f48650p = this.f48638d.a(7, str).f48722a;
        if (str2 == null || str3 == null) {
            return;
        }
        this.f48651q = this.f48638d.a(str2, str3);
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f48638d, str, this.f48655u);
            this.f48655u = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f48638d, str, this.f48656v);
        this.f48656v = a11;
        return a11;
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (z10) {
            S2 a10 = S2.a(this.f48638d, i10, c9666tu0, str, this.f48657w);
            this.f48657w = a10;
            return a10;
        }
        S2 a11 = S2.a(this.f48638d, i10, c9666tu0, str, this.f48658x);
        this.f48658x = a11;
        return a11;
    }

    @Override
    public final void a(K4 k42) {
        k42.f41568c = this.f48635G;
        this.f48635G = k42;
    }

    @Override
    public final void a(int i10, String str, String str2, String str3) {
        if (this.f48649o == null) {
            this.f48649o = new C8874p8();
        }
        C7656hr0 a10 = this.f48638d.a(7, str);
        if (a10.f48728g == 0) {
            this.f48648n++;
            this.f48649o.d(a10.f48722a);
            this.f48649o.d(str2 == null ? 0 : this.f48638d.a(7, str2).f48722a);
            this.f48649o.d(str3 != null ? this.f48638d.a(str3) : 0);
            this.f48649o.d(i10);
            a10.f48728g = this.f48648n;
        }
    }

    @Override
    public final AbstractC6055Uw a(int i10, String str, String str2, String str3, Object obj) {
        C6112Vw c6112Vw = new C6112Vw(this.f48638d, i10, str, str2, str3, obj);
        if (this.f48644j == null) {
            this.f48644j = c6112Vw;
        } else {
            this.f48645k.f44907b = c6112Vw;
        }
        this.f48645k = c6112Vw;
        return c6112Vw;
    }

    @Override
    public final DX a(int i10, String str, String str2, String str3, String[] strArr) {
        EX ex = new EX(this.f48638d, i10, str, str2, str3, strArr, this.f48636H);
        if (this.f48646l == null) {
            this.f48646l = ex;
        } else {
            this.f48647m.f39547b = ex;
        }
        this.f48647m = ex;
        return ex;
    }

    public final byte[] a(byte[] bArr, boolean z10) {
        J4 j42 = new J4();
        j42.a(this.f48635G);
        for (C6112Vw c6112Vw = this.f48644j; c6112Vw != null; c6112Vw = (C6112Vw) c6112Vw.f44907b) {
            j42.a(c6112Vw.f45223m);
        }
        for (EX ex = this.f48646l; ex != null; ex = (EX) ex.f39547b) {
            j42.a(ex.f39902L);
            j42.a(null);
        }
        for (C7778ic0 c7778ic0 = this.f48633E; c7778ic0 != null; c7778ic0 = (C7778ic0) c7778ic0.f48624a) {
            j42.a(c7778ic0.f48992j);
        }
        int i10 = j42.f41277a;
        K4[] k4Arr = new K4[i10];
        System.arraycopy(j42.f41278b, 0, k4Arr, 0, i10);
        this.f48644j = null;
        this.f48645k = null;
        this.f48646l = null;
        this.f48647m = null;
        this.f48655u = null;
        this.f48656v = null;
        this.f48657w = null;
        this.f48658x = null;
        this.f48659y = null;
        this.f48660z = 0;
        this.f48629A = 0;
        this.f48630B = null;
        this.f48631C = 0;
        this.f48632D = null;
        this.f48633E = null;
        this.f48634F = null;
        this.f48635G = null;
        this.f48636H = z10 ? 3 : 0;
        new C6072Vd(bArr, false).a(this, k4Arr, (z10 ? 8 : 0) | 256);
        return b();
    }
}
