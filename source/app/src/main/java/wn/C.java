package wn;

public class C {
    public static void a(N ctx, int walkableHeight, int walkableClimb, C16030h solid) {
        int i10;
        int i11;
        int i12;
        N n10 = ctx;
        C16030h c16030h = solid;
        n10.f("FILTER_LEDGE");
        int i13 = c16030h.f127709a;
        int i14 = c16030h.f127710b;
        int i15 = 0;
        while (i15 < i14) {
            int i16 = 0;
            while (i16 < i13) {
                K k10 = c16030h.f127715g[(i15 * i13) + i16];
                while (k10 != null) {
                    if (k10.f127660c == 0) {
                        i10 = i14;
                    } else {
                        int i17 = k10.f127659b;
                        K k11 = k10.f127661d;
                        int i18 = k11 != null ? k11.f127658a : u.f127816d;
                        int i19 = u.f127816d;
                        int i20 = i17;
                        int i21 = i20;
                        int i22 = 0;
                        while (i22 < 4) {
                            int b10 = r.b(i22) + i16;
                            int c10 = i15 + r.c(i22);
                            if (b10 < 0 || c10 < 0 || b10 >= i13 || c10 >= i14) {
                                i12 = i14;
                                i19 = Math.min(i19, (-walkableClimb) - i17);
                            } else {
                                i12 = i14;
                                int i23 = b10 + (c10 * i13);
                                K k12 = c16030h.f127715g[i23];
                                int i24 = -walkableClimb;
                                if (Math.min(i18, k12 != null ? k12.f127658a : u.f127816d) - Math.max(i17, i24) > walkableHeight) {
                                    i19 = Math.min(i19, i24 - i17);
                                }
                                int i25 = i21;
                                for (K k13 = c16030h.f127715g[i23]; k13 != null; k13 = k13.f127661d) {
                                    int i26 = k13.f127659b;
                                    K k14 = k13.f127661d;
                                    if (Math.min(i18, k14 != null ? k14.f127658a : u.f127816d) - Math.max(i17, i26) > walkableHeight) {
                                        int i27 = i26 - i17;
                                        i19 = Math.min(i19, i27);
                                        if (Math.abs(i27) <= walkableClimb) {
                                            if (i26 < i20) {
                                                i20 = i26;
                                            }
                                            if (i26 > i25) {
                                                i25 = i26;
                                            }
                                        }
                                    }
                                }
                                i21 = i25;
                            }
                            i22++;
                            c16030h = solid;
                            i14 = i12;
                        }
                        i10 = i14;
                        if (i19 < (-walkableClimb)) {
                            i11 = 0;
                            k10.f127660c = 0;
                        } else {
                            i11 = 0;
                        }
                        if (i21 - i20 > walkableClimb) {
                            k10.f127660c = i11;
                        }
                    }
                    k10 = k10.f127661d;
                    c16030h = solid;
                    i14 = i10;
                }
                i16++;
                c16030h = solid;
            }
            i15++;
            n10 = ctx;
            c16030h = solid;
        }
        n10.g("FILTER_LEDGE");
    }

    public static void b(N ctx, int walkableClimb, C16030h solid) {
        ctx.f("FILTER_LOW_OBSTACLES");
        int i10 = solid.f127709a;
        int i11 = solid.f127710b;
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                K k10 = null;
                boolean z10 = false;
                int i14 = 0;
                for (K k11 = solid.f127715g[(i12 * i10) + i13]; k11 != null; k11 = k11.f127661d) {
                    boolean z11 = k11.f127660c != 0;
                    if (!z11 && z10 && Math.abs(k11.f127659b - k10.f127659b) <= walkableClimb) {
                        k11.f127660c = i14;
                    }
                    i14 = k11.f127660c;
                    z10 = z11;
                    k10 = k11;
                }
            }
        }
        ctx.g("FILTER_LOW_OBSTACLES");
    }

    public static void c(N ctx, int walkableHeight, C16030h solid) {
        ctx.f("FILTER_WALKABLE");
        int i10 = solid.f127709a;
        int i11 = solid.f127710b;
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                K k10 = solid.f127715g[(i12 * i10) + i13];
                while (k10 != null) {
                    int i14 = k10.f127659b;
                    K k11 = k10.f127661d;
                    if ((k11 != null ? k11.f127658a : u.f127816d) - i14 <= walkableHeight) {
                        k10.f127660c = 0;
                    }
                    k10 = k11;
                }
            }
        }
        ctx.g("FILTER_WALKABLE");
    }
}
