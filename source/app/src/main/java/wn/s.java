package wn;

public class s {

    public static final int f127782a = 62;

    public static final int f127783b = u.f127816d;

    public static C16025c a(N ctx, int walkableHeight, int walkableClimb, C16030h hf2) {
        int i10;
        int i11;
        int i12;
        String str;
        int i13;
        boolean z10;
        C16030h c16030h = hf2;
        String str2 = "BUILD_COMPACTHEIGHTFIELD";
        ctx.f("BUILD_COMPACTHEIGHTFIELD");
        C16025c c16025c = new C16025c();
        int i14 = c16030h.f127709a;
        int i15 = c16030h.f127710b;
        int b10 = b(hf2);
        c16025c.f127670a = i14;
        c16025c.f127671b = i15;
        c16025c.f127675f = c16030h.f127716h;
        c16025c.f127672c = b10;
        c16025c.f127673d = walkableHeight;
        c16025c.f127674e = walkableClimb;
        int i16 = 0;
        c16025c.f127677h = 0;
        I.e(c16025c.f127678i, c16030h.f127711c);
        I.e(c16025c.f127679j, c16030h.f127712d);
        float[] fArr = c16025c.f127679j;
        boolean z11 = true;
        float f10 = fArr[1];
        float f11 = c16030h.f127714f;
        fArr[1] = f10 + (walkableHeight * f11);
        c16025c.f127680k = c16030h.f127713e;
        c16025c.f127681l = f11;
        c16025c.f127682m = new C16024b[i14 * i15];
        c16025c.f127683n = new C16026d[b10];
        c16025c.f127685p = new int[b10];
        int i17 = 0;
        while (true) {
            C16024b[] c16024bArr = c16025c.f127682m;
            if (i17 >= c16024bArr.length) {
                break;
            }
            c16024bArr[i17] = new C16024b();
            i17++;
        }
        int i18 = 0;
        while (true) {
            C16026d[] c16026dArr = c16025c.f127683n;
            if (i18 >= c16026dArr.length) {
                break;
            }
            c16026dArr[i18] = new C16026d();
            i18++;
        }
        int i19 = 0;
        int i20 = 0;
        while (i19 < i15) {
            int i21 = i16;
            while (i21 < i14) {
                int i22 = (i19 * i14) + i21;
                K k10 = c16030h.f127715g[i22];
                if (k10 != null) {
                    C16024b c16024b = c16025c.f127682m[i22];
                    c16024b.f127668a = i20;
                    c16024b.f127669b = i16;
                    while (k10 != null) {
                        if (k10.f127660c != 0) {
                            int i23 = k10.f127659b;
                            K k11 = k10.f127661d;
                            int i24 = k11 != null ? k11.f127658a : f127783b;
                            C16026d c16026d = c16025c.f127683n[i20];
                            int i25 = f127783b;
                            str = str2;
                            i13 = 0;
                            c16026d.f127686a = r.e(i23, 0, i25);
                            c16025c.f127683n[i20].f127689d = r.e(i24 - i23, 0, i25);
                            c16025c.f127685p[i20] = k10.f127660c;
                            i20++;
                            z10 = true;
                            c16024b.f127669b++;
                        } else {
                            str = str2;
                            i13 = i16;
                            z10 = z11;
                        }
                        k10 = k10.f127661d;
                        i16 = i13;
                        z11 = z10;
                        str2 = str;
                    }
                }
                i21++;
                c16030h = hf2;
                i16 = i16;
                z11 = z11;
                str2 = str2;
            }
            i19++;
            c16030h = hf2;
            str2 = str2;
        }
        String str3 = str2;
        int i26 = i16;
        int i27 = i26;
        int i28 = i27;
        while (i27 < i15) {
            int i29 = i26;
            while (i29 < i14) {
                C16024b c16024b2 = c16025c.f127682m[(i27 * i14) + i29];
                int i30 = c16024b2.f127668a;
                int i31 = c16024b2.f127669b + i30;
                while (i30 < i31) {
                    C16026d c16026d2 = c16025c.f127683n[i30];
                    int i32 = i26;
                    while (i32 < 4) {
                        r.d(c16026d2, i32, 63);
                        int b11 = r.b(i32) + i29;
                        int c10 = r.c(i32) + i27;
                        if (b11 >= 0 && c10 >= 0 && b11 < i14 && c10 < i15) {
                            C16024b c16024b3 = c16025c.f127682m[b11 + (c10 * i14)];
                            int i33 = c16024b3.f127668a;
                            int i34 = c16024b3.f127669b + i33;
                            while (i33 < i34) {
                                C16026d c16026d3 = c16025c.f127683n[i33];
                                i10 = i14;
                                i11 = i15;
                                i12 = i31;
                                int i35 = i34;
                                if (Math.min(c16026d2.f127686a + c16026d2.f127689d, c16026d3.f127686a + c16026d3.f127689d) - Math.max(c16026d2.f127686a, c16026d3.f127686a) >= walkableHeight && Math.abs(c16026d3.f127686a - c16026d2.f127686a) <= walkableClimb) {
                                    int i36 = i33 - c16024b3.f127668a;
                                    if (i36 >= 0 && i36 <= 62) {
                                        r.d(c16026d2, i32, i36);
                                        break;
                                    }
                                    i28 = Math.max(i28, i36);
                                }
                                i33++;
                                i14 = i10;
                                i15 = i11;
                                i31 = i12;
                                i34 = i35;
                            }
                        }
                        i10 = i14;
                        i11 = i15;
                        i12 = i31;
                        i32++;
                        i14 = i10;
                        i15 = i11;
                        i31 = i12;
                    }
                    i30++;
                    i26 = 0;
                }
                i29++;
                i26 = 0;
            }
            i27++;
            i26 = 0;
        }
        if (i28 <= 62) {
            ctx.g(str3);
            return c16025c;
        }
        throw new RuntimeException("rcBuildCompactHeightfield: Heightfield has too many layers " + i28 + " (max: 62)");
    }

    public static int b(C16030h hf2) {
        int i10 = hf2.f127709a;
        int i11 = hf2.f127710b;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            for (int i14 = 0; i14 < i10; i14++) {
                for (K k10 = hf2.f127715g[(i13 * i10) + i14]; k10 != null; k10 = k10.f127661d) {
                    if (k10.f127660c != 0) {
                        i12++;
                    }
                }
            }
        }
        return i12;
    }
}
