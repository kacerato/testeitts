package wn;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class v {

    public static class b implements Comparator<f> {
        public b() {
        }

        @Override
        public int compare(f va2, f vb2) {
            int i10 = va2.f127833a;
            int i11 = vb2.f127833a;
            if (i10 < i11) {
                return -1;
            }
            return i10 > i11 ? 1 : 0;
        }
    }

    public static class c implements Comparator<d> {
        public c() {
        }

        @Override
        public int compare(d a10, d b10) {
            int i10 = a10.f127827b;
            int i11 = b10.f127827b;
            if (i10 != i11) {
                if (i10 < i11) {
                    return -1;
                }
                return i10 > i11 ? 1 : 0;
            }
            int i12 = a10.f127828c;
            int i13 = b10.f127828c;
            if (i12 < i13) {
                return -1;
            }
            return i12 > i13 ? 1 : 0;
        }
    }

    public static class d {

        public int f127826a;

        public int f127827b;

        public int f127828c;

        public C16027e f127829d;

        public d() {
        }
    }

    public static class e {

        public C16027e f127830a;

        public d[] f127831b;

        public int f127832c;

        public e() {
        }
    }

    public static class f {

        public int f127833a;

        public int f127834b;

        public f() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C16028f a(N ctx, C16025c chf, float maxError, int maxEdgeLen, int buildFlags) {
        e eVar;
        int i10;
        int i11;
        int[] iArr;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        String str;
        int i17;
        int i18;
        C16025c c16025c = chf;
        int i19 = c16025c.f127670a;
        int i20 = c16025c.f127671b;
        int i21 = c16025c.f127675f;
        C16028f c16028f = new C16028f();
        String str2 = "CONTOURS";
        ctx.f("CONTOURS");
        int i22 = 0;
        I.f(c16028f.f127697b, c16025c.f127678i, 0);
        I.f(c16028f.f127698c, c16025c.f127679j, 0);
        if (i21 > 0) {
            float f10 = i21 * c16025c.f127680k;
            float[] fArr = c16028f.f127697b;
            fArr[0] = fArr[0] + f10;
            fArr[2] = fArr[2] + f10;
            float[] fArr2 = c16028f.f127698c;
            fArr2[0] = fArr2[0] - f10;
            fArr2[2] = fArr2[2] - f10;
        }
        c16028f.f127699d = c16025c.f127680k;
        c16028f.f127700e = c16025c.f127681l;
        int i23 = c16025c.f127670a;
        int i24 = c16025c.f127675f;
        c16028f.f127701f = i23 - (i24 * 2);
        c16028f.f127702g = c16025c.f127671b - (i24 * 2);
        c16028f.f127703h = i24;
        c16028f.f127704i = maxError;
        int[] iArr2 = new int[c16025c.f127672c];
        ctx.f("CONTOURS_TRACE");
        int i25 = 0;
        while (i25 < i20) {
            for (int i26 = i22; i26 < i19; i26++) {
                C16024b c16024b = c16025c.f127682m[i26 + (i25 * i19)];
                int i27 = c16024b.f127668a;
                int i28 = c16024b.f127669b + i27;
                while (i27 < i28) {
                    C16026d c16026d = c16025c.f127683n[i27];
                    int i29 = c16026d.f127687b;
                    if (i29 == 0 || (i29 & u.f127817e) != 0) {
                        i15 = i28;
                        i16 = i21;
                        str = str2;
                        iArr2[i27] = 0;
                    } else {
                        str = str2;
                        int i30 = 0;
                        int i31 = 0;
                        for (int i32 = 4; i30 < i32; i32 = 4) {
                            int i33 = i28;
                            if (r.a(c16026d, i30) != 63) {
                                i17 = i21;
                                i18 = c16025c.f127683n[c16025c.f127682m[r.b(i30) + i26 + ((r.c(i30) + i25) * i19)].f127668a + r.a(c16026d, i30)].f127687b;
                            } else {
                                i17 = i21;
                                i18 = 0;
                            }
                            if (i18 == c16025c.f127683n[i27].f127687b) {
                                i31 |= 1 << i30;
                            }
                            i30++;
                            i28 = i33;
                            i21 = i17;
                        }
                        i15 = i28;
                        i16 = i21;
                        iArr2[i27] = i31 ^ 15;
                    }
                    i27++;
                    str2 = str;
                    i28 = i15;
                    i21 = i16;
                }
            }
            i25++;
            i22 = 0;
        }
        int i34 = i21;
        String str3 = str2;
        ctx.g("CONTOURS_TRACE");
        ArrayList arrayList = new ArrayList(256);
        ArrayList arrayList2 = new ArrayList(64);
        int i35 = 0;
        while (i35 < i20) {
            int i36 = 0;
            while (i36 < i19) {
                C16024b c16024b2 = c16025c.f127682m[(i35 * i19) + i36];
                int i37 = c16024b2.f127668a;
                int i38 = i37 + c16024b2.f127669b;
                int i39 = i37;
                while (i39 < i38) {
                    int i40 = iArr2[i39];
                    if (i40 == 0) {
                        i10 = i39;
                        i11 = i38;
                        iArr = iArr2;
                        i12 = i19;
                        i13 = i20;
                        i14 = 0;
                    } else if (i40 == 15) {
                        i10 = i39;
                        i11 = i38;
                        iArr = iArr2;
                        i12 = i19;
                        i13 = i20;
                        i14 = 0;
                    } else {
                        int i41 = c16025c.f127683n[i39].f127687b;
                        if (i41 == 0 || (u.f127817e & i41) != 0) {
                            i10 = i39;
                            i11 = i38;
                            iArr = iArr2;
                            i12 = i19;
                            i13 = i20;
                        } else {
                            int i42 = c16025c.f127685p[i39];
                            arrayList.clear();
                            arrayList2.clear();
                            ctx.f("CONTOURS_WALK");
                            i12 = i19;
                            i13 = i20;
                            i10 = i39;
                            i11 = i38;
                            iArr = iArr2;
                            l(i36, i35, i39, chf, iArr2, arrayList);
                            ctx.g("CONTOURS_WALK");
                            ctx.f("CONTOURS_SIMPLIFY");
                            k(arrayList, arrayList2, maxError, maxEdgeLen, buildFlags);
                            j(arrayList2);
                            ctx.g("CONTOURS_SIMPLIFY");
                            if (arrayList2.size() / 4 >= 3) {
                                C16027e c16027e = new C16027e();
                                c16028f.f127696a.add(c16027e);
                                c16027e.f127691b = arrayList2.size() / 4;
                                c16027e.f127690a = new int[arrayList2.size()];
                                int i43 = 0;
                                while (true) {
                                    int[] iArr3 = c16027e.f127690a;
                                    if (i43 >= iArr3.length) {
                                        break;
                                    }
                                    iArr3[i43] = ((Integer) arrayList2.get(i43)).intValue();
                                    i43++;
                                }
                                if (i34 > 0) {
                                    for (int i44 = 0; i44 < c16027e.f127691b; i44++) {
                                        int[] iArr4 = c16027e.f127690a;
                                        int i45 = i44 * 4;
                                        iArr4[i45] = iArr4[i45] - i34;
                                        int i46 = i45 + 2;
                                        iArr4[i46] = iArr4[i46] - i34;
                                    }
                                }
                                c16027e.f127693d = arrayList.size() / 4;
                                c16027e.f127692c = new int[arrayList.size()];
                                int i47 = 0;
                                while (true) {
                                    int[] iArr5 = c16027e.f127692c;
                                    if (i47 >= iArr5.length) {
                                        break;
                                    }
                                    iArr5[i47] = ((Integer) arrayList.get(i47)).intValue();
                                    i47++;
                                }
                                if (i34 > 0) {
                                    for (int i48 = 0; i48 < c16027e.f127693d; i48++) {
                                        int[] iArr6 = c16027e.f127692c;
                                        int i49 = i48 * 4;
                                        iArr6[i49] = iArr6[i49] - i34;
                                        int i50 = i49 + 2;
                                        iArr6[i50] = iArr6[i50] - i34;
                                    }
                                }
                                c16027e.f127695f = i41;
                                c16027e.f127694e = i42;
                            }
                        }
                        i39 = i10 + 1;
                        c16025c = chf;
                        i19 = i12;
                        i20 = i13;
                        i38 = i11;
                        iArr2 = iArr;
                    }
                    iArr[i10] = i14;
                    i39 = i10 + 1;
                    c16025c = chf;
                    i19 = i12;
                    i20 = i13;
                    i38 = i11;
                    iArr2 = iArr;
                }
                i36++;
                c16025c = chf;
                i19 = i19;
            }
            i35++;
            c16025c = chf;
            i19 = i19;
        }
        if (c16028f.f127696a.size() > 0) {
            int[] iArr7 = new int[c16028f.f127696a.size()];
            int i51 = 0;
            for (int i52 = 0; i52 < c16028f.f127696a.size(); i52++) {
                C16027e c16027e2 = c16028f.f127696a.get(i52);
                int i53 = b(c16027e2.f127690a, c16027e2.f127691b) < 0 ? -1 : 1;
                iArr7[i52] = i53;
                if (i53 < 0) {
                    i51++;
                }
            }
            if (i51 > 0) {
                int i54 = chf.f127677h + 1;
                e[] eVarArr = new e[i54];
                int i55 = 0;
                while (true) {
                    if (i55 >= i54) {
                        break;
                    }
                    eVarArr[i55] = new e();
                    i55++;
                }
                for (int i56 = 0; i56 < c16028f.f127696a.size(); i56++) {
                    C16027e c16027e3 = c16028f.f127696a.get(i56);
                    if (iArr7[i56] > 0) {
                        e eVar2 = eVarArr[c16027e3.f127695f];
                        if (eVar2.f127830a != null) {
                            throw new RuntimeException("rcBuildContours: Multiple outlines for region " + c16027e3.f127695f + ".");
                        }
                        eVar2.f127830a = c16027e3;
                    } else {
                        eVarArr[c16027e3.f127695f].f127832c++;
                    }
                }
                for (int i57 = 0; i57 < i54; i57++) {
                    e eVar3 = eVarArr[i57];
                    int i58 = eVar3.f127832c;
                    if (i58 > 0) {
                        eVar3.f127831b = new d[i58];
                        int i59 = 0;
                        while (true) {
                            eVar = eVarArr[i57];
                            if (i59 >= eVar.f127832c) {
                                break;
                            }
                            eVar.f127831b[i59] = new d();
                            i59++;
                        }
                        eVar.f127832c = 0;
                    }
                }
                for (int i60 = 0; i60 < c16028f.f127696a.size(); i60++) {
                    C16027e c16027e4 = c16028f.f127696a.get(i60);
                    e eVar4 = eVarArr[c16027e4.f127695f];
                    if (iArr7[i60] < 0) {
                        d[] dVarArr = eVar4.f127831b;
                        int i61 = eVar4.f127832c;
                        eVar4.f127832c = i61 + 1;
                        dVarArr[i61].f127829d = c16027e4;
                    }
                }
                for (int i62 = 0; i62 < i54; i62++) {
                    e eVar5 = eVarArr[i62];
                    if (eVar5.f127832c != 0) {
                        if (eVar5.f127830a == null) {
                            throw new RuntimeException("rcBuildContours: Bad outline for region " + i62 + ", contour simplification is likely too aggressive.");
                        }
                        i(ctx, eVar5);
                    }
                }
            }
        }
        ctx.g(str3);
        return c16028f;
    }

    public static int b(int[] verts, int nverts) {
        int i10 = 0;
        int i11 = nverts - 1;
        for (int i12 = 0; i12 < nverts; i12++) {
            int i13 = i12 * 4;
            int i14 = i11 * 4;
            i10 += (verts[i13] * verts[i14 + 2]) - (verts[i14] * verts[i13 + 2]);
            i11 = i12;
        }
        return (i10 + 1) / 2;
    }

    public static float c(int x10, int z10, int px, int pz, int qx, int qz) {
        float f10 = qx - px;
        float f11 = qz - pz;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = ((x10 - px) * f10) + ((z10 - pz) * f11);
        float f14 = 0.0f;
        if (f12 > 0.0f) {
            f13 /= f12;
        }
        if (f13 >= 0.0f) {
            f14 = 1.0f;
            if (f13 <= 1.0f) {
                f14 = f13;
            }
        }
        float f15 = (px + (f10 * f14)) - x10;
        float f16 = (pz + (f14 * f11)) - z10;
        return (f15 * f15) + (f16 * f16);
    }

    public static int[] d(C16027e contour) {
        int[] iArr = contour.f127690a;
        int i10 = 0;
        int i11 = iArr[0];
        int i12 = iArr[2];
        for (int i13 = 1; i13 < contour.f127691b; i13++) {
            int[] iArr2 = contour.f127690a;
            int i14 = i13 * 4;
            int i15 = iArr2[i14];
            int i16 = iArr2[i14 + 2];
            if (i15 < i11 || (i15 == i11 && i16 < i12)) {
                i10 = i13;
                i12 = i16;
                i11 = i15;
            }
        }
        return new int[]{i11, i12, i10};
    }

    public static int e(int x10, int y10, int i10, int dir, C16025c chf, boolean isBorderVertex) {
        C16026d c16026d = chf.f127683n[i10];
        int i11 = c16026d.f127686a;
        int i12 = (dir + 1) & 3;
        int[] iArr = {0, 0, 0, 0};
        iArr[0] = c16026d.f127687b | (chf.f127685p[i10] << 16);
        if (r.a(c16026d, dir) != 63) {
            int b10 = x10 + r.b(dir);
            int c10 = y10 + r.c(dir);
            int a10 = chf.f127682m[(chf.f127670a * c10) + b10].f127668a + r.a(c16026d, dir);
            C16026d c16026d2 = chf.f127683n[a10];
            i11 = Math.max(i11, c16026d2.f127686a);
            iArr[1] = (chf.f127685p[a10] << 16) | chf.f127683n[a10].f127687b;
            if (r.a(c16026d2, i12) != 63) {
                int a11 = chf.f127682m[b10 + r.b(i12) + ((c10 + r.c(i12)) * chf.f127670a)].f127668a + r.a(c16026d2, i12);
                i11 = Math.max(i11, chf.f127683n[a11].f127686a);
                iArr[2] = (chf.f127685p[a11] << 16) | chf.f127683n[a11].f127687b;
            }
        }
        if (r.a(c16026d, i12) != 63) {
            int b11 = x10 + r.b(i12);
            int c11 = y10 + r.c(i12);
            int a12 = chf.f127682m[(chf.f127670a * c11) + b11].f127668a + r.a(c16026d, i12);
            C16026d c16026d3 = chf.f127683n[a12];
            i11 = Math.max(i11, c16026d3.f127686a);
            iArr[3] = chf.f127683n[a12].f127687b | (chf.f127685p[a12] << 16);
            if (r.a(c16026d3, dir) != 63) {
                int a13 = chf.f127682m[b11 + r.b(dir) + ((c11 + r.c(dir)) * chf.f127670a)].f127668a + r.a(c16026d3, dir);
                i11 = Math.max(i11, chf.f127683n[a13].f127686a);
                iArr[2] = chf.f127683n[a13].f127687b | (chf.f127685p[a13] << 16);
            }
        }
        int i13 = 0;
        while (i13 < 4) {
            int i14 = i13 + 1;
            int i15 = (i13 + 2) & 3;
            int i16 = (i13 + 3) & 3;
            int i17 = iArr[i13];
            int i18 = iArr[i14 & 3];
            int i19 = u.f127817e;
            boolean z10 = ((i17 & i18) & i19) != 0 && i17 == i18;
            int i20 = iArr[i15];
            int i21 = iArr[i16];
            boolean z11 = (i19 & (i20 | i21)) == 0;
            boolean z12 = (i20 >> 16) == (i21 >> 16);
            boolean z13 = (i17 == 0 || i18 == 0 || i20 == 0 || i21 == 0) ? false : true;
            if (z10 && z11 && z12 && z13) {
                break;
            }
            i13 = i14;
        }
        return i11;
    }

    public static boolean f(int i10, int n10, int[] verts, int pj2, int[] vertpj) {
        int i11 = i10 * 4;
        int x10 = E.x(i10, n10) * 4;
        int y10 = E.y(i10, n10) * 4;
        int[] iArr = new int[16];
        for (int i12 = 0; i12 < 4; i12++) {
            iArr[i12] = verts[i11 + i12];
            iArr[i12 + 4] = verts[x10 + i12];
            iArr[i12 + 8] = verts[y10 + i12];
            iArr[i12 + 12] = vertpj[pj2 + i12];
        }
        return E.u(iArr, 8, 0, 4) ? E.t(iArr, 0, 12, 8) && E.t(iArr, 12, 0, 4) : (E.u(iArr, 0, 12, 4) && E.u(iArr, 12, 0, 8)) ? false : true;
    }

    public static boolean g(int d02, int d12, int i10, int n10, int[] verts, int[] d0verts, int[] d1verts) {
        int[] iArr = new int[16];
        for (int i11 = 0; i11 < 4; i11++) {
            iArr[i11] = d0verts[d02 + i11];
            iArr[i11 + 4] = d1verts[d12 + i11];
        }
        for (int i12 = 0; i12 < n10; i12++) {
            int x10 = E.x(i12, n10);
            if (i10 != i12 && i10 != x10) {
                int i13 = i12 * 4;
                int i14 = x10 * 4;
                for (int i15 = 0; i15 < 4; i15++) {
                    iArr[i15 + 8] = verts[i13 + i15];
                    iArr[i15 + 12] = verts[i14 + i15];
                }
                if (!E.E(iArr, 0, 8) && !E.E(iArr, 4, 8) && !E.E(iArr, 0, 12) && !E.E(iArr, 4, 12) && E.r(iArr, 0, 4, 8, 12)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void h(C16027e ca2, C16027e cb2, int ia2, int ib2) {
        int[] iArr = new int[(ca2.f127691b + cb2.f127691b + 2) * 4];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = ca2.f127691b;
            if (i10 > i12) {
                break;
            }
            int i13 = i11 * 4;
            int i14 = ((ia2 + i10) % i12) * 4;
            int[] iArr2 = ca2.f127690a;
            iArr[i13] = iArr2[i14];
            iArr[i13 + 1] = iArr2[i14 + 1];
            iArr[i13 + 2] = iArr2[i14 + 2];
            iArr[i13 + 3] = iArr2[i14 + 3];
            i11++;
            i10++;
        }
        int i15 = 0;
        while (true) {
            int i16 = cb2.f127691b;
            if (i15 > i16) {
                ca2.f127690a = iArr;
                ca2.f127691b = i11;
                cb2.f127690a = null;
                cb2.f127691b = 0;
                return;
            }
            int i17 = i11 * 4;
            int i18 = ((ib2 + i15) % i16) * 4;
            int[] iArr3 = cb2.f127690a;
            iArr[i17] = iArr3[i18];
            iArr[i17 + 1] = iArr3[i18 + 1];
            iArr[i17 + 2] = iArr3[i18 + 2];
            iArr[i17 + 3] = iArr3[i18 + 3];
            i11++;
            i15++;
        }
    }

    public static void i(N ctx, e region) {
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i10 = 2;
            if (i14 >= region.f127832c) {
                break;
            }
            int[] d10 = d(region.f127831b[i14].f127829d);
            d dVar = region.f127831b[i14];
            dVar.f127827b = d10[0];
            dVar.f127828c = d10[1];
            dVar.f127826a = d10[2];
            i14++;
        }
        a aVar = null;
        Arrays.sort(region.f127831b, new c());
        int i15 = region.f127830a.f127691b;
        for (int i16 = 0; i16 < region.f127832c; i16++) {
            i15 += region.f127831b[i16].f127829d.f127691b;
        }
        f[] fVarArr = new f[i15];
        for (int i17 = 0; i17 < i15; i17++) {
            fVarArr[i17] = new f();
        }
        C16027e c16027e = region.f127830a;
        int i18 = 0;
        while (i18 < region.f127832c) {
            d dVar2 = region.f127831b[i18];
            C16027e c16027e2 = dVar2.f127829d;
            int i19 = dVar2.f127826a;
            int i20 = i13;
            int i21 = -1;
            while (true) {
                if (i20 >= c16027e2.f127691b) {
                    i11 = i13;
                    i12 = -1;
                    break;
                }
                int i22 = i19 * 4;
                int i23 = i13;
                int i24 = i23;
                while (true) {
                    int i25 = c16027e.f127691b;
                    if (i23 >= i25) {
                        break;
                    }
                    if (f(i23, i25, c16027e.f127690a, i22, c16027e2.f127690a)) {
                        int[] iArr = c16027e.f127690a;
                        int i26 = i23 * 4;
                        int i27 = iArr[i26];
                        int[] iArr2 = c16027e2.f127690a;
                        int i28 = i27 - iArr2[i22];
                        int i29 = iArr[i26 + i10] - iArr2[i22 + 2];
                        f fVar = fVarArr[i24];
                        fVar.f127834b = i23;
                        fVar.f127833a = (i28 * i28) + (i29 * i29);
                        i24++;
                    }
                    i23++;
                }
                i11 = 0;
                Arrays.sort(fVarArr, 0, i24, new b());
                int i30 = 0;
                while (true) {
                    if (i30 >= i24) {
                        i12 = -1;
                        i21 = -1;
                        break;
                    }
                    int i31 = fVarArr[i30].f127834b;
                    int i32 = i31 * 4;
                    int i33 = c16027e.f127691b;
                    int[] iArr3 = c16027e.f127690a;
                    int i34 = i24;
                    boolean g10 = g(i32, i22, i31, i33, iArr3, iArr3, c16027e2.f127690a);
                    for (int i35 = i18; i35 < region.f127832c && !g10; i35++) {
                        C16027e c16027e3 = region.f127831b[i35].f127829d;
                        g10 |= g(i32, i22, -1, c16027e3.f127691b, c16027e3.f127690a, c16027e.f127690a, c16027e2.f127690a);
                    }
                    if (!g10) {
                        i21 = fVarArr[i30].f127834b;
                        i12 = -1;
                        break;
                    } else {
                        i30++;
                        i24 = i34;
                    }
                }
                if (i21 != i12) {
                    break;
                }
                i19 = (i19 + 1) % c16027e2.f127691b;
                i20++;
                i13 = 0;
                i10 = 2;
                aVar = null;
            }
            if (i21 == i12) {
                ctx.h("mergeHoles: Failed to find merge points for");
            } else {
                h(region.f127830a, c16027e2, i21, i19);
            }
            i18++;
            i13 = i11;
            i10 = 2;
            aVar = null;
        }
    }

    public static void j(List<Integer> simplified) {
        int size = simplified.size() / 4;
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = i10 * 4;
            int x10 = E.x(i10, size) * 4;
            if (simplified.get(i11) == simplified.get(x10) && simplified.get(i11 + 2) == simplified.get(x10 + 2)) {
                simplified.remove(i11);
                simplified.remove(i11);
                simplified.remove(i11);
                simplified.remove(i11);
                size--;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0382 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0351 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void k(List<Integer> points, List<Integer> simplified, float maxError, int maxEdgeLen, int buildFlags) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = 0;
        while (true) {
            if (i18 >= points.size()) {
                break;
            }
            if ((points.get(i18 + 3).intValue() & u.f127821i) != 0) {
                int size = points.size() / 4;
                int i19 = 0;
                while (i19 < size) {
                    int i20 = i19 + 1;
                    int i21 = i19 * 4;
                    int i22 = i21 + 3;
                    int i23 = ((i20 % size) * 4) + 3;
                    boolean z10 = (points.get(i22).intValue() & u.f127821i) != (points.get(i23).intValue() & u.f127821i);
                    boolean z11 = (points.get(i22).intValue() & u.f127820h) != (points.get(i23).intValue() & u.f127820h);
                    if (z10 || z11) {
                        simplified.add(points.get(i21));
                        simplified.add(points.get(i21 + 1));
                        simplified.add(points.get(i21 + 2));
                        simplified.add(Integer.valueOf(i19));
                    }
                    i19 = i20;
                }
            } else {
                i18 += 4;
            }
        }
        if (simplified.size() == 0) {
            int intValue = points.get(0).intValue();
            int intValue2 = points.get(1).intValue();
            int intValue3 = points.get(2).intValue();
            int intValue4 = points.get(0).intValue();
            int intValue5 = points.get(1).intValue();
            int intValue6 = points.get(2).intValue();
            int i24 = 0;
            int i25 = 0;
            for (int i26 = 0; i26 < points.size(); i26 += 4) {
                int intValue7 = points.get(i26).intValue();
                int intValue8 = points.get(i26 + 1).intValue();
                int intValue9 = points.get(i26 + 2).intValue();
                if (intValue7 < intValue || (intValue7 == intValue && intValue9 < intValue3)) {
                    i24 = i26 / 4;
                    intValue3 = intValue9;
                    intValue = intValue7;
                    intValue2 = intValue8;
                }
                if (intValue7 > intValue4 || (intValue7 == intValue4 && intValue9 > intValue6)) {
                    i25 = i26 / 4;
                    intValue6 = intValue9;
                    intValue4 = intValue7;
                    intValue5 = intValue8;
                }
            }
            simplified.add(Integer.valueOf(intValue));
            simplified.add(Integer.valueOf(intValue2));
            simplified.add(Integer.valueOf(intValue3));
            simplified.add(Integer.valueOf(i24));
            simplified.add(Integer.valueOf(intValue4));
            simplified.add(Integer.valueOf(intValue5));
            simplified.add(Integer.valueOf(intValue6));
            simplified.add(Integer.valueOf(i25));
        }
        int size2 = points.size() / 4;
        int i27 = 0;
        while (i27 < simplified.size() / 4) {
            int i28 = i27 + 1;
            int size3 = i28 % (simplified.size() / 4);
            int i29 = i27 * 4;
            int intValue10 = simplified.get(i29).intValue();
            int intValue11 = simplified.get(i29 + 2).intValue();
            int intValue12 = simplified.get(i29 + 3).intValue();
            int i30 = size3 * 4;
            int intValue13 = simplified.get(i30).intValue();
            int intValue14 = simplified.get(i30 + 2).intValue();
            int intValue15 = simplified.get(i30 + 3).intValue();
            if (intValue13 > intValue10 || (intValue13 == intValue10 && intValue14 > intValue11)) {
                int i31 = (intValue12 + 1) % size2;
                i11 = 1;
                i12 = intValue10;
                i13 = intValue11;
                i14 = intValue13;
                i15 = intValue14;
                intValue12 = intValue15;
                i16 = i31;
            } else {
                int i32 = size2 - 1;
                i16 = (intValue15 + i32) % size2;
                i14 = intValue10;
                i15 = intValue11;
                i12 = intValue13;
                i13 = intValue14;
                i11 = i32;
            }
            int i33 = (i16 * 4) + 3;
            float f10 = 0.0f;
            if ((points.get(i33).intValue() & u.f127821i) == 0 || (points.get(i33).intValue() & u.f127820h) != 0) {
                int i34 = -1;
                float f11 = 0.0f;
                while (i16 != intValue12) {
                    int i35 = i16 * 4;
                    float c10 = c(points.get(i35).intValue(), points.get(i35 + 2).intValue(), i12, i13, i14, i15);
                    if (c10 > f11) {
                        i34 = i16;
                        f11 = c10;
                    }
                    i16 = (i16 + i11) % size2;
                }
                f10 = f11;
                i17 = i34;
            } else {
                i17 = -1;
            }
            if (i17 == -1 || f10 <= maxError * maxError) {
                i27 = i28;
            } else {
                int i36 = i28 * 4;
                int i37 = i17 * 4;
                simplified.add(i36, points.get(i37));
                simplified.add(i36 + 1, points.get(i37 + 1));
                simplified.add(i36 + 2, points.get(i37 + 2));
                simplified.add(i36 + 3, Integer.valueOf(i17));
            }
        }
        if (maxEdgeLen > 0 && (buildFlags & (u.f127823k | u.f127824l)) != 0) {
            int i38 = 0;
            while (i38 < simplified.size() / 4) {
                int i39 = i38 + 1;
                int size4 = i39 % (simplified.size() / 4);
                int i40 = i38 * 4;
                int intValue16 = simplified.get(i40).intValue();
                int intValue17 = simplified.get(i40 + 2).intValue();
                int intValue18 = simplified.get(i40 + 3).intValue();
                int i41 = size4 * 4;
                int intValue19 = simplified.get(i41).intValue();
                int intValue20 = simplified.get(i41 + 2).intValue();
                int intValue21 = simplified.get(i41 + 3).intValue();
                int i42 = (intValue18 + 1) % size2;
                boolean z12 = (buildFlags & u.f127823k) != 0 && (points.get((i42 * 4) + 3).intValue() & u.f127821i) == 0;
                if ((buildFlags & u.f127824l) != 0 && (points.get((i42 * 4) + 3).intValue() & u.f127820h) != 0) {
                    z12 = true;
                }
                if (z12) {
                    int i43 = intValue19 - intValue16;
                    int i44 = intValue20 - intValue17;
                    if ((i43 * i43) + (i44 * i44) > maxEdgeLen * maxEdgeLen) {
                        if (intValue21 < intValue18) {
                            intValue21 += size2;
                        }
                        int i45 = intValue21 - intValue18;
                        if (i45 > 1) {
                            i10 = (intValue19 > intValue16 || (intValue19 == intValue16 && intValue20 > intValue17)) ? (intValue18 + (i45 / 2)) % size2 : (intValue18 + ((i45 + 1) / 2)) % size2;
                            if (i10 == -1) {
                                int i46 = i39 * 4;
                                int i47 = i10 * 4;
                                simplified.add(i46, points.get(i47));
                                simplified.add(i46 + 1, points.get(i47 + 1));
                                simplified.add(i46 + 2, points.get(i47 + 2));
                                simplified.add(i46 + 3, Integer.valueOf(i10));
                            } else {
                                i38 = i39;
                            }
                        }
                    }
                }
                i10 = -1;
                if (i10 == -1) {
                }
            }
        }
        for (int i48 = 0; i48 < simplified.size() / 4; i48++) {
            int i49 = (i48 * 4) + 3;
            simplified.set(i49, Integer.valueOf((points.get((((simplified.get(i49).intValue() + 1) % size2) * 4) + 3).intValue() & (u.f127821i | u.f127820h)) | (points.get((simplified.get(i49).intValue() * 4) + 3).intValue() & u.f127819g)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void l(int x10, int y10, int i10, C16025c chf, int[] flags, List<Integer> points) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z10;
        int i18 = 0;
        while (true) {
            i11 = 1;
            if ((flags[i10] & (1 << i18)) != 0) {
                break;
            } else {
                i18++;
            }
        }
        int i19 = chf.f127685p[i10];
        int i20 = x10;
        int i21 = y10;
        int i22 = i10;
        int i23 = i18;
        int i24 = 0;
        while (true) {
            int i25 = i24 + 1;
            if (i25 >= 40000) {
                return;
            }
            int i26 = i11 << i23;
            if ((flags[i22] & i26) != 0) {
                i12 = i25;
                int i27 = i23;
                int e10 = e(i20, i21, i22, i23, chf, false);
                if (i27 == 0) {
                    i15 = i21 + 1;
                    i16 = i20;
                } else if (i27 != i11) {
                    i16 = i27 != 2 ? i20 : i20 + 1;
                    i15 = i21;
                } else {
                    i16 = i20 + 1;
                    i15 = i21 + 1;
                }
                C16026d c16026d = chf.f127683n[i22];
                if (r.a(c16026d, i27) != 63) {
                    i13 = i18;
                    int a10 = chf.f127682m[r.b(i27) + i20 + ((r.c(i27) + i21) * chf.f127670a)].f127668a + r.a(c16026d, i27);
                    i17 = chf.f127683n[a10].f127687b;
                    if (i19 != chf.f127685p[a10]) {
                        z10 = true;
                        if (z10) {
                            i17 |= u.f127820h;
                        }
                        points.add(Integer.valueOf(i16));
                        points.add(Integer.valueOf(e10));
                        points.add(Integer.valueOf(i15));
                        points.add(Integer.valueOf(i17));
                        flags[i22] = flags[i22] & (~i26);
                        i14 = i27 + 1;
                    }
                } else {
                    i13 = i18;
                    i17 = 0;
                }
                z10 = false;
                if (z10) {
                }
                points.add(Integer.valueOf(i16));
                points.add(Integer.valueOf(e10));
                points.add(Integer.valueOf(i15));
                points.add(Integer.valueOf(i17));
                flags[i22] = flags[i22] & (~i26);
                i14 = i27 + 1;
            } else {
                i12 = i25;
                int i28 = i23;
                i13 = i18;
                i20 += r.b(i28);
                i21 += r.c(i28);
                C16026d c16026d2 = chf.f127683n[i22];
                i22 = r.a(c16026d2, i28) != 63 ? chf.f127682m[(chf.f127670a * i21) + i20].f127668a + r.a(c16026d2, i28) : -1;
                if (i22 == -1) {
                    return;
                } else {
                    i14 = i28 + 3;
                }
            }
            i23 = i14 & 3;
            i18 = i13;
            if (i10 == i22 && i18 == i23) {
                return;
            }
            i24 = i12;
            i11 = 1;
        }
    }
}
