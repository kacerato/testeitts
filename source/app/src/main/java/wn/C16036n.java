package wn;

import java.util.Arrays;

public class C16036n {
    public static void a(N ctx, int radius, C16025c chf) {
        int i10;
        int i11;
        int i12 = chf.f127670a;
        int i13 = chf.f127671b;
        ctx.f("ERODE_AREA");
        int[] iArr = new int[chf.f127672c];
        Arrays.fill(iArr, 255);
        int i14 = 0;
        int i15 = 0;
        while (true) {
            int i16 = 63;
            if (i15 >= i13) {
                break;
            }
            int i17 = 0;
            while (i17 < i12) {
                C16024b c16024b = chf.f127682m[(i15 * i12) + i17];
                int i18 = c16024b.f127668a;
                int i19 = c16024b.f127669b + i18;
                while (i18 < i19) {
                    if (chf.f127685p[i18] == 0) {
                        iArr[i18] = 0;
                    } else {
                        C16026d c16026d = chf.f127683n[i18];
                        int i20 = 0;
                        int i21 = 0;
                        while (i20 < 4) {
                            if (r.a(c16026d, i20) != i16) {
                                if (chf.f127685p[chf.f127682m[r.b(i20) + i17 + ((i15 + r.c(i20)) * i12)].f127668a + r.a(c16026d, i20)] != 0) {
                                    i21++;
                                }
                            }
                            i20++;
                            i16 = 63;
                        }
                        if (i21 != 4) {
                            iArr[i18] = 0;
                        }
                    }
                    i18++;
                    i16 = 63;
                }
                i17++;
                i16 = 63;
            }
            i15++;
        }
        int i22 = 0;
        while (true) {
            int i23 = 2;
            if (i22 >= i13) {
                break;
            }
            int i24 = i14;
            while (i24 < i12) {
                C16024b c16024b2 = chf.f127682m[(i22 * i12) + i24];
                int i25 = c16024b2.f127668a;
                int i26 = c16024b2.f127669b + i25;
                while (i25 < i26) {
                    C16026d c16026d2 = chf.f127683n[i25];
                    if (r.a(c16026d2, i14) != 63) {
                        int b10 = r.b(i14) + i24;
                        int c10 = r.c(i14) + i22;
                        int a10 = chf.f127682m[b10 + (c10 * i12)].f127668a + r.a(c16026d2, i14);
                        C16026d c16026d3 = chf.f127683n[a10];
                        int min = Math.min(iArr[a10] + i23, 255);
                        if (min < iArr[i25]) {
                            iArr[i25] = min;
                        }
                        i11 = 3;
                        i10 = i26;
                        if (r.a(c16026d3, 3) != 63) {
                            int min2 = Math.min(iArr[chf.f127682m[b10 + r.b(3) + ((c10 + r.c(3)) * i12)].f127668a + r.a(c16026d3, 3)] + 3, 255);
                            if (min2 < iArr[i25]) {
                                iArr[i25] = min2;
                            }
                        }
                    } else {
                        i10 = i26;
                        i11 = 3;
                    }
                    if (r.a(c16026d2, i11) != 63) {
                        int b11 = r.b(i11) + i24;
                        int c11 = r.c(i11) + i22;
                        int a11 = chf.f127682m[(c11 * i12) + b11].f127668a + r.a(c16026d2, i11);
                        C16026d c16026d4 = chf.f127683n[a11];
                        int min3 = Math.min(iArr[a11] + 2, 255);
                        if (min3 < iArr[i25]) {
                            iArr[i25] = min3;
                        }
                        if (r.a(c16026d4, 2) != 63) {
                            int min4 = Math.min(iArr[chf.f127682m[b11 + r.b(2) + ((c11 + r.c(2)) * i12)].f127668a + r.a(c16026d4, 2)] + 3, 255);
                            if (min4 < iArr[i25]) {
                                iArr[i25] = min4;
                            }
                        }
                    }
                    i25++;
                    i26 = i10;
                    i14 = 0;
                    i23 = 2;
                }
                i24++;
                i14 = 0;
                i23 = 2;
            }
            i22++;
            i14 = 0;
        }
        for (int i27 = i13 - 1; i27 >= 0; i27--) {
            for (int i28 = i12 - 1; i28 >= 0; i28--) {
                C16024b c16024b3 = chf.f127682m[(i27 * i12) + i28];
                int i29 = c16024b3.f127668a;
                int i30 = c16024b3.f127669b + i29;
                while (i29 < i30) {
                    C16026d c16026d5 = chf.f127683n[i29];
                    if (r.a(c16026d5, 2) != 63) {
                        int b12 = r.b(2) + i28;
                        int c12 = r.c(2) + i27;
                        int a12 = chf.f127682m[(c12 * i12) + b12].f127668a + r.a(c16026d5, 2);
                        C16026d c16026d6 = chf.f127683n[a12];
                        int min5 = Math.min(iArr[a12] + 2, 255);
                        if (min5 < iArr[i29]) {
                            iArr[i29] = min5;
                        }
                        if (r.a(c16026d6, 1) != 63) {
                            int min6 = Math.min(iArr[chf.f127682m[b12 + r.b(1) + ((c12 + r.c(1)) * i12)].f127668a + r.a(c16026d6, 1)] + 3, 255);
                            if (min6 < iArr[i29]) {
                                iArr[i29] = min6;
                            }
                        }
                    }
                    if (r.a(c16026d5, 1) != 63) {
                        int b13 = r.b(1) + i28;
                        int c13 = r.c(1) + i27;
                        int a13 = chf.f127682m[(c13 * i12) + b13].f127668a + r.a(c16026d5, 1);
                        C16026d c16026d7 = chf.f127683n[a13];
                        int min7 = Math.min(iArr[a13] + 2, 255);
                        if (min7 < iArr[i29]) {
                            iArr[i29] = min7;
                        }
                        if (r.a(c16026d7, 0) != 63) {
                            int min8 = Math.min(iArr[chf.f127682m[b13 + r.b(0) + ((c13 + r.c(0)) * i12)].f127668a + r.a(c16026d7, 0)] + 3, 255);
                            if (min8 < iArr[i29]) {
                                iArr[i29] = min8;
                            }
                            i29++;
                        }
                    }
                    i29++;
                }
            }
        }
        int i31 = radius * 2;
        for (int i32 = 0; i32 < chf.f127672c; i32++) {
            if (iArr[i32] < i31) {
                chf.f127685p[i32] = 0;
            }
        }
        ctx.g("ERODE_AREA");
    }

    public static void c(N ctx, float[] verts, float hmin, float hmax, C16023a areaMod, C16025c chf) {
        int i10;
        int i11;
        int i12;
        char c10;
        int i13;
        int i14 = 1;
        ctx.f("MARK_CONVEXPOLY_AREA");
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        char c11 = 0;
        I.f(fArr, verts, 0);
        I.f(fArr2, verts, 0);
        for (int i15 = 3; i15 < verts.length; i15 += 3) {
            I.l(fArr, verts, i15);
            I.j(fArr2, verts, i15);
        }
        fArr[1] = hmin;
        fArr2[1] = hmax;
        float f10 = fArr[0];
        float[] fArr3 = chf.f127678i;
        float f11 = fArr3[0];
        float f12 = chf.f127680k;
        int i16 = (int) ((f10 - f11) / f12);
        float f13 = fArr[1];
        float f14 = fArr3[1];
        float f15 = chf.f127681l;
        int i17 = (int) ((f13 - f14) / f15);
        float f16 = fArr[2];
        float f17 = fArr3[2];
        int i18 = (int) ((f16 - f17) / f12);
        int i19 = (int) ((fArr2[0] - f11) / f12);
        int i20 = (int) ((hmax - f14) / f15);
        int i21 = (int) ((fArr2[2] - f17) / f12);
        if (i19 >= 0 && i16 < (i10 = chf.f127670a) && i21 >= 0 && i18 < (i11 = chf.f127671b)) {
            if (i16 < 0) {
                i16 = 0;
            }
            if (i19 >= i10) {
                i19 = i10 - 1;
            }
            if (i18 < 0) {
                i18 = 0;
            }
            if (i21 >= i11) {
                i21 = i11 - 1;
            }
            while (i18 <= i21) {
                int i22 = i16;
                while (i22 <= i19) {
                    C16024b c16024b = chf.f127682m[(chf.f127670a * i18) + i22];
                    int i23 = c16024b.f127668a;
                    int i24 = c16024b.f127669b + i23;
                    while (i23 < i24) {
                        C16026d c16026d = chf.f127683n[i23];
                        if (chf.f127685p[i23] == 0) {
                            i12 = i20;
                            c10 = c11;
                            i13 = 1;
                        } else {
                            int i25 = c16026d.f127686a;
                            if (i25 < i17 || i25 > i20) {
                                i12 = i20;
                                c10 = c11;
                            } else {
                                float[] fArr4 = chf.f127678i;
                                float f18 = fArr4[c11];
                                i12 = i20;
                                float f19 = chf.f127680k;
                                c10 = 0;
                                if (g(verts, new float[]{f18 + ((i22 + 0.5f) * f19), 0.0f, fArr4[2] + ((i18 + 0.5f) * f19)})) {
                                    int[] iArr = chf.f127685p;
                                    iArr[i23] = areaMod.a(iArr[i23]);
                                }
                            }
                            i13 = 1;
                        }
                        i23 += i13;
                        i20 = i12;
                        i14 = i13;
                        c11 = c10;
                    }
                    int i26 = i14;
                    i22 += i26;
                    i20 = i20;
                    i14 = i26;
                }
                int i27 = i14;
                i18 += i27;
                i20 = i20;
                i14 = i27;
            }
            ctx.g("MARK_CONVEXPOLY_AREA");
        }
    }

    public static boolean g(float[] verts, float[] p10) {
        int length = verts.length - 3;
        boolean z10 = false;
        for (int i10 = 0; i10 < verts.length; i10 += 3) {
            float f10 = verts[i10 + 2];
            float f11 = p10[2];
            boolean z11 = f10 > f11;
            float f12 = verts[length + 2];
            if (z11 != (f12 > f11)) {
                float f13 = p10[0];
                float f14 = verts[length];
                float f15 = verts[i10];
                if (f13 < (((f14 - f15) * (f11 - f10)) / (f12 - f10)) + f15) {
                    z10 = !z10;
                }
            }
            length = i10;
        }
        return z10;
    }

    public void b(N ctx, float[] bmin, float[] bmax, C16023a areaMod, C16025c chf) {
        int i10;
        int i11;
        int[] iArr;
        int i12;
        ctx.f("MARK_BOX_AREA");
        float f10 = bmin[0];
        float[] fArr = chf.f127678i;
        float f11 = fArr[0];
        float f12 = chf.f127680k;
        int i13 = (int) ((f10 - f11) / f12);
        float f13 = bmin[1];
        float f14 = fArr[1];
        float f15 = chf.f127681l;
        int i14 = (int) ((f13 - f14) / f15);
        float f16 = bmin[2];
        float f17 = fArr[2];
        int i15 = (int) ((f16 - f17) / f12);
        int i16 = (int) ((bmax[0] - f11) / f12);
        int i17 = (int) ((bmax[1] - f14) / f15);
        int i18 = (int) ((bmax[2] - f17) / f12);
        if (i16 >= 0 && i13 < (i10 = chf.f127670a) && i18 >= 0 && i15 < (i11 = chf.f127671b)) {
            if (i13 < 0) {
                i13 = 0;
            }
            if (i16 >= i10) {
                i16 = i10 - 1;
            }
            if (i18 >= i11) {
                i18 = i11 - 1;
            }
            for (int i19 = i15 >= 0 ? i15 : 0; i19 <= i18; i19++) {
                for (int i20 = i13; i20 <= i16; i20++) {
                    C16024b c16024b = chf.f127682m[(chf.f127670a * i19) + i20];
                    int i21 = c16024b.f127668a;
                    int i22 = c16024b.f127669b + i21;
                    while (i21 < i22) {
                        int i23 = chf.f127683n[i21].f127686a;
                        if (i23 >= i14 && i23 <= i17 && (i12 = (iArr = chf.f127685p)[i21]) != 0) {
                            iArr[i21] = areaMod.a(i12);
                        }
                        i21++;
                    }
                }
            }
            ctx.g("MARK_BOX_AREA");
        }
    }

    public void d(N ctx, float[] pos, float r10, float h10, C16023a areaMod, C16025c chf) {
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z10;
        char c10;
        int i14;
        ctx.f("MARK_CYLINDER_AREA");
        boolean z11 = false;
        float f10 = pos[0];
        int i15 = 1;
        float f11 = pos[1];
        char c11 = 2;
        float f12 = pos[2];
        float[] fArr = {f10 - r10, f11, f12 - r10};
        float[] fArr2 = {f10 + r10, f11 + h10, f12 + r10};
        float f13 = r10 * r10;
        float f14 = fArr[0];
        float[] fArr3 = chf.f127678i;
        float f15 = fArr3[0];
        float f16 = chf.f127680k;
        int i16 = (int) ((f14 - f15) / f16);
        float f17 = fArr[1];
        float f18 = fArr3[1];
        float f19 = chf.f127681l;
        int i17 = (int) ((f17 - f18) / f19);
        float f20 = fArr[2];
        float f21 = fArr3[2];
        int i18 = (int) ((f20 - f21) / f16);
        int i19 = (int) ((fArr2[0] - f15) / f16);
        int i20 = (int) ((fArr2[1] - f18) / f19);
        int i21 = (int) ((fArr2[2] - f21) / f16);
        if (i19 >= 0 && i16 < (i10 = chf.f127670a) && i21 >= 0 && i18 < (i11 = chf.f127671b)) {
            if (i16 < 0) {
                i16 = 0;
            }
            if (i19 >= i10) {
                i19 = i10 - 1;
            }
            if (i18 < 0) {
                i18 = 0;
            }
            if (i21 >= i11) {
                i21 = i11 - 1;
            }
            while (i18 <= i21) {
                int i22 = i16;
                while (i22 <= i19) {
                    C16024b c16024b = chf.f127682m[(chf.f127670a * i18) + i22];
                    int i23 = c16024b.f127668a;
                    int i24 = c16024b.f127669b + i23;
                    while (i23 < i24) {
                        C16026d c16026d = chf.f127683n[i23];
                        int[] iArr = chf.f127685p;
                        int i25 = iArr[i23];
                        if (i25 == 0) {
                            i12 = i21;
                            i13 = i16;
                            i14 = 1;
                            z10 = false;
                            c10 = 2;
                        } else {
                            int i26 = c16026d.f127686a;
                            if (i26 < i17 || i26 > i20) {
                                i12 = i21;
                                i13 = i16;
                                z10 = false;
                                c10 = 2;
                            } else {
                                float[] fArr4 = chf.f127678i;
                                float f22 = fArr4[0];
                                i12 = i21;
                                i13 = i16;
                                float f23 = chf.f127680k;
                                float f24 = fArr4[2] + ((i18 + 0.5f) * f23);
                                z10 = false;
                                float f25 = (f22 + ((i22 + 0.5f) * f23)) - pos[0];
                                c10 = 2;
                                float f26 = f24 - pos[2];
                                if ((f25 * f25) + (f26 * f26) < f13) {
                                    iArr[i23] = areaMod.a(i25);
                                }
                            }
                            i14 = 1;
                        }
                        i23 += i14;
                        i15 = i14;
                        z11 = z10;
                        c11 = c10;
                        i21 = i12;
                        i16 = i13;
                    }
                    int i27 = i21;
                    boolean z12 = z11;
                    int i28 = i15;
                    i22 += i28;
                    i15 = i28;
                    z11 = z12;
                    i21 = i27;
                    i16 = i16;
                }
                int i29 = i21;
                boolean z13 = z11;
                int i30 = i15;
                i18 += i30;
                i15 = i30;
                z11 = z13;
                i21 = i29;
                i16 = i16;
            }
            ctx.g("MARK_CYLINDER_AREA");
        }
    }

    public boolean e(N ctx, C16025c chf) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = chf.f127670a;
        int i15 = chf.f127671b;
        ctx.f("MEDIAN_AREA");
        int[] iArr = new int[chf.f127672c];
        for (int i16 = 0; i16 < i15; i16++) {
            for (int i17 = 0; i17 < i14; i17++) {
                C16024b c16024b = chf.f127682m[(i16 * i14) + i17];
                int i18 = c16024b.f127668a;
                int i19 = c16024b.f127669b + i18;
                while (i18 < i19) {
                    C16026d c16026d = chf.f127683n[i18];
                    int i20 = chf.f127685p[i18];
                    if (i20 == 0) {
                        iArr[i18] = i20;
                        i10 = i15;
                        i11 = i19;
                    } else {
                        int[] iArr2 = new int[9];
                        for (int i21 = 0; i21 < 9; i21++) {
                            iArr2[i21] = chf.f127685p[i18];
                        }
                        int i22 = 0;
                        while (i22 < 4) {
                            if (r.a(c16026d, i22) != 63) {
                                int b10 = r.b(i22) + i17;
                                int c10 = i16 + r.c(i22);
                                int a10 = chf.f127682m[b10 + (c10 * i14)].f127668a + r.a(c16026d, i22);
                                int i23 = chf.f127685p[a10];
                                if (i23 != 0) {
                                    iArr2[i22 * 2] = i23;
                                }
                                C16026d c16026d2 = chf.f127683n[a10];
                                int i24 = (i22 + 1) & 3;
                                i12 = i15;
                                i13 = i19;
                                if (r.a(c16026d2, i24) != 63) {
                                    int i25 = chf.f127685p[chf.f127682m[b10 + r.b(i24) + ((c10 + r.c(i24)) * i14)].f127668a + r.a(c16026d2, i24)];
                                    if (i25 != 0) {
                                        iArr2[(i22 * 2) + 1] = i25;
                                    }
                                }
                            } else {
                                i12 = i15;
                                i13 = i19;
                            }
                            i22++;
                            i15 = i12;
                            i19 = i13;
                        }
                        i10 = i15;
                        i11 = i19;
                        Arrays.sort(iArr2);
                        iArr[i18] = iArr2[4];
                    }
                    i18++;
                    i15 = i10;
                    i19 = i11;
                }
            }
        }
        chf.f127685p = iArr;
        ctx.g("MEDIAN_AREA");
        return true;
    }

    public int f(float[] verts, int nverts, float offset, float[] outVerts, int maxOutVerts) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < nverts) {
            int i12 = i10 + 1;
            int i13 = (((i10 + nverts) - 1) % nverts) * 3;
            int i14 = i10 * 3;
            int i15 = (i12 % nverts) * 3;
            float f10 = verts[i14] - verts[i13];
            int i16 = i14 + 2;
            float f11 = verts[i16] - verts[i13 + 2];
            float f12 = (f10 * f10) + (f11 * f11);
            if (f12 > 1.0E-6f) {
                float sqrt = (float) (1.0d / Math.sqrt(f12));
                f10 *= sqrt;
                f11 *= sqrt;
            }
            float f13 = verts[i15] - verts[i14];
            float f14 = verts[i15 + 2] - verts[i16];
            float f15 = (f13 * f13) + (f14 * f14);
            if (f15 > 1.0E-6f) {
                float sqrt2 = (float) (1.0d / Math.sqrt(f15));
                f13 *= sqrt2;
                f14 *= sqrt2;
            }
            float f16 = -f11;
            float f17 = -f14;
            float f18 = (f13 * f11) - (f10 * f14);
            float f19 = (f16 + f17) * 0.5f;
            float f20 = (f10 + f13) * 0.5f;
            float f21 = (f19 * f19) + (f20 * f20);
            boolean z10 = (f21 * 1.2f) * 1.2f < 1.0f;
            if (f21 > 1.0E-6f) {
                float f22 = 1.0f / f21;
                f19 *= f22;
                f20 *= f22;
            }
            if (!z10 || f18 >= 0.0f) {
                int i17 = i11 + 1;
                if (i17 >= maxOutVerts) {
                    return 0;
                }
                int i18 = i11 * 3;
                outVerts[i18] = verts[i14] - (f19 * offset);
                outVerts[i18 + 1] = verts[i14 + 1];
                outVerts[i18 + 2] = verts[i16] - (f20 * offset);
                i11 = i17;
            } else {
                if (i11 + 2 >= maxOutVerts) {
                    return 0;
                }
                float f23 = (1.0f - ((f10 * f13) + (f11 * f14))) * 0.5f;
                int i19 = i11 * 3;
                outVerts[i19] = verts[i14] + (((-f16) + (f10 * f23)) * offset);
                int i20 = i14 + 1;
                outVerts[i19 + 1] = verts[i20];
                outVerts[i19 + 2] = verts[i16] + (((-f10) + (f11 * f23)) * offset);
                int i21 = (i11 + 1) * 3;
                outVerts[i21] = verts[i14] + (((-f17) - (f13 * f23)) * offset);
                outVerts[i21 + 1] = verts[i20];
                outVerts[i21 + 2] = verts[i16] + (((-f13) - (f14 * f23)) * offset);
                i11 += 2;
            }
            i10 = i12;
        }
        return i11;
    }
}
