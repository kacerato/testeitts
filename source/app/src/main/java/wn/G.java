package wn;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;

public class G {
    public static void a(C16030h hf2, int x10, int y10, int smin, int smax, int area, int flagMergeThr) {
        int i10 = x10 + (y10 * hf2.f127709a);
        K k10 = new K();
        k10.f127658a = smin;
        k10.f127659b = smax;
        k10.f127660c = area;
        k10.f127661d = null;
        K[] kArr = hf2.f127715g;
        K k11 = kArr[i10];
        if (k11 == null) {
            kArr[i10] = k10;
            return;
        }
        K k12 = null;
        K k13 = k11;
        while (k13 != null) {
            int i11 = k13.f127658a;
            int i12 = k10.f127659b;
            if (i11 > i12) {
                break;
            }
            int i13 = k13.f127659b;
            int i14 = k10.f127658a;
            if (i13 < i14) {
                k12 = k13;
                k13 = k13.f127661d;
            } else {
                if (i11 < i14) {
                    k10.f127658a = i11;
                }
                if (i13 > i12) {
                    k10.f127659b = i13;
                }
                if (Math.abs(k10.f127659b - k13.f127659b) <= flagMergeThr) {
                    k10.f127660c = Math.max(k10.f127660c, k13.f127660c);
                }
                k13 = k13.f127661d;
                if (k12 != null) {
                    k12.f127661d = k13;
                } else {
                    hf2.f127715g[i10] = k13;
                }
            }
        }
        if (k12 != null) {
            k10.f127661d = k12.f127661d;
            k12.f127661d = k10;
        } else {
            K[] kArr2 = hf2.f127715g;
            k10.f127661d = kArr2[i10];
            kArr2[i10] = k10;
        }
    }

    public static int[] b(float[] buf, int in2, int nin, int out1, int out2, float x10, int axis) {
        float[] fArr = new float[12];
        for (int i10 = 0; i10 < nin; i10++) {
            fArr[i10] = x10 - buf[(in2 + (i10 * 3)) + axis];
        }
        int i11 = 0;
        int i12 = 0;
        int i13 = nin - 1;
        for (int i14 = 0; i14 < nin; i14++) {
            float f10 = fArr[i13];
            boolean z10 = f10 >= 0.0f;
            float f11 = fArr[i14];
            if (z10 != (f11 >= 0.0f)) {
                float f12 = f10 / (f10 - f11);
                int i15 = out1 + (i11 * 3);
                int i16 = in2 + (i13 * 3);
                float f13 = buf[i16];
                int i17 = in2 + (i14 * 3);
                buf[i15] = f13 + ((buf[i17] - f13) * f12);
                float f14 = buf[i16 + 1];
                buf[i15 + 1] = f14 + ((buf[i17 + 1] - f14) * f12);
                float f15 = buf[i16 + 2];
                buf[i15 + 2] = f15 + ((buf[i17 + 2] - f15) * f12);
                I.c(buf, out2 + (i12 * 3), buf, i15);
                int i18 = i11 + 1;
                int i19 = i12 + 1;
                float f16 = fArr[i14];
                if (f16 > 0.0f) {
                    I.c(buf, out1 + (i18 * 3), buf, i17);
                    i18 = i11 + 2;
                } else if (f16 < 0.0f) {
                    I.c(buf, out2 + (i19 * 3), buf, i17);
                    i12 += 2;
                    i11 = i18;
                }
                i12 = i19;
                i11 = i18;
            } else {
                if (f11 >= 0.0f) {
                    I.c(buf, out1 + (i11 * 3), buf, in2 + (i14 * 3));
                    i11++;
                    if (fArr[i14] != 0.0f) {
                    }
                }
                I.c(buf, out2 + (i12 * 3), buf, in2 + (i14 * 3));
                i12++;
            }
            i13 = i14;
        }
        return new int[]{i11, i12};
    }

    public static boolean c(float[] amin, float[] amax, float[] bmin, float[] bmax) {
        boolean z10 = amin[0] <= bmax[0] && amax[0] >= bmin[0];
        if (amin[1] > bmax[1] || amax[1] < bmin[1]) {
            z10 = false;
        }
        if (amin[2] > bmax[2] || amax[2] < bmin[2]) {
            return false;
        }
        return z10;
    }

    public static void d(NativeFloatBuffer verts, int v02, int v12, int v22, int area, C16030h hf2, float[] bmin, float[] bmax, float cs, float ics, float ich, int flagMergeThr) {
        float[] fArr;
        int i10;
        int i11;
        int i12;
        int i13;
        float[] fArr2;
        int i14;
        int i15;
        int i16;
        int i17 = hf2.f127709a;
        int i18 = hf2.f127710b;
        int i19 = 3;
        float[] fArr3 = new float[3];
        float[] fArr4 = new float[3];
        int i20 = 1;
        float f10 = bmax[1] - bmin[1];
        int i21 = v02 * 3;
        I.d(fArr3, verts, i21);
        I.d(fArr4, verts, i21);
        int i22 = v12 * 3;
        I.k(fArr3, verts, i22);
        int i23 = v22 * 3;
        I.k(fArr3, verts, i23);
        I.i(fArr4, verts, i22);
        I.i(fArr4, verts, i23);
        if (c(bmin, bmax, fArr3, fArr4)) {
            char c10 = 2;
            float f11 = fArr3[2];
            float f12 = bmin[2];
            int i24 = (int) ((f11 - f12) * ics);
            int i25 = (int) ((fArr4[2] - f12) * ics);
            int i26 = i18 - 1;
            int i27 = -1;
            int e10 = r.e(i24, -1, i26);
            int i28 = 0;
            int e11 = r.e(i25, 0, i26);
            float[] fArr5 = new float[84];
            I.b(fArr5, 0, verts, i21);
            I.b(fArr5, 3, verts, i22);
            I.b(fArr5, 6, verts, i23);
            int i29 = 21;
            int i30 = 63;
            int i31 = e10;
            int i32 = 0;
            int i33 = 42;
            int i34 = 3;
            while (i31 <= e11) {
                int[] b10 = b(fArr5, i32, i34, i29, i33, bmin[c10] + (i31 * cs) + cs, 2);
                int i35 = b10[i28];
                int i36 = b10[i20];
                if (i35 >= i19 && i31 >= 0) {
                    float f13 = fArr5[i29];
                    float f14 = f13;
                    for (int i37 = i20; i37 < i35; i37++) {
                        float f15 = fArr5[i29 + (i37 * 3)];
                        f13 = Math.min(f13, f15);
                        f14 = Math.max(f14, f15);
                    }
                    float f16 = bmin[i28];
                    int i38 = (int) ((f13 - f16) * ics);
                    int i39 = (int) ((f14 - f16) * ics);
                    if (i39 < 0 || i38 >= i17) {
                        fArr = fArr5;
                        i10 = e11;
                        i11 = i28;
                        i12 = 1;
                        i13 = 3;
                    } else {
                        int i40 = i17 - 1;
                        int e12 = r.e(i38, i27, i40);
                        int e13 = r.e(i39, i28, i40);
                        int i41 = i29;
                        int i42 = i35;
                        int i43 = i30;
                        int i44 = e12;
                        while (i44 <= e13) {
                            int[] b11 = b(fArr5, i41, i42, i32, i43, bmin[i28] + (i44 * cs) + cs, 0);
                            int i45 = b11[i28];
                            i42 = b11[1];
                            if (i45 >= 3 && i44 >= 0) {
                                float f17 = fArr5[i32 + 1];
                                float f18 = f17;
                                for (int i46 = 1; i46 < i45; i46++) {
                                    int i47 = i32 + (i46 * 3) + 1;
                                    f17 = Math.min(f17, fArr5[i47]);
                                    f18 = Math.max(f18, fArr5[i47]);
                                }
                                float f19 = bmin[1];
                                float f20 = f17 - f19;
                                float f21 = f18 - f19;
                                if (f21 >= 0.0f && f20 <= f10) {
                                    if (f20 < 0.0f) {
                                        f20 = 0.0f;
                                    }
                                    if (f21 > f10) {
                                        f21 = f10;
                                    }
                                    int e14 = r.e((int) Math.floor(f20 * ich), 0, u.f127816d);
                                    int e15 = r.e((int) Math.ceil(f21 * ich), e14 + 1, u.f127816d);
                                    fArr2 = fArr5;
                                    i14 = e11;
                                    i15 = 0;
                                    i16 = i44;
                                    a(hf2, i44, i31, e14, e15, area, flagMergeThr);
                                } else {
                                    fArr2 = fArr5;
                                    i14 = e11;
                                    i16 = i44;
                                    i15 = 0;
                                }
                            } else {
                                fArr2 = fArr5;
                                i14 = e11;
                                i15 = i28;
                                i16 = i44;
                            }
                            i44 = i16 + 1;
                            i28 = i15;
                            fArr5 = fArr2;
                            e11 = i14;
                            int i48 = i43;
                            i43 = i41;
                            i41 = i48;
                        }
                        fArr = fArr5;
                        i10 = e11;
                        i11 = i28;
                        i12 = 1;
                        i13 = 3;
                        i29 = i41;
                        i30 = i43;
                    }
                } else {
                    fArr = fArr5;
                    i10 = e11;
                    i11 = i28;
                    i13 = i19;
                    i12 = i20;
                }
                i31++;
                i28 = i11;
                fArr5 = fArr;
                i20 = i12;
                e11 = i10;
                i19 = i13;
                i34 = i36;
                c10 = 2;
                i27 = -1;
                int i49 = i33;
                i33 = i32;
                i32 = i49;
            }
        }
    }

    public static void e(C16030h solid, NativeFloatBuffer verts, int v02, int v12, int v22, int area, int flagMergeThr, N ctx) {
        ctx.f("RASTERIZE_TRIANGLES");
        float f10 = solid.f127713e;
        float f11 = 1.0f / solid.f127714f;
        d(verts, v02, v12, v22, area, solid, solid.f127711c, solid.f127712d, f10, 1.0f / f10, f11, flagMergeThr);
        ctx.g("RASTERIZE_TRIANGLES");
    }

    public static void f(C16030h solid, NativeFloatBuffer verts, NativeIntBuffer tris, int[] areas, int nt, int flagMergeThr, N ctx) {
        ctx.f("RASTERIZE_TRIANGLES");
        float f10 = 1.0f / solid.f127713e;
        float f11 = 1.0f / solid.f127714f;
        int i10 = nt;
        int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 * 3;
            d(verts, tris.get(i12), tris.get(i12 + 1), tris.get(i12 + 2), areas[i11], solid, solid.f127711c, solid.f127712d, solid.f127713e, f10, f11, flagMergeThr);
            i11++;
            i10 = nt;
        }
        ctx.g("RASTERIZE_TRIANGLES");
    }

    public static void g(C16030h solid, NativeFloatBuffer verts, int[] areas, int nt, int flagMergeThr, N ctx) {
        ctx.f("RASTERIZE_TRIANGLES");
        float f10 = 1.0f / solid.f127713e;
        float f11 = 1.0f / solid.f127714f;
        int i10 = nt;
        int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 * 3;
            d(verts, i12, i12 + 1, i12 + 2, areas[i11], solid, solid.f127711c, solid.f127712d, solid.f127713e, f10, f11, flagMergeThr);
            i11++;
            i10 = nt;
        }
        ctx.g("RASTERIZE_TRIANGLES");
    }
}
