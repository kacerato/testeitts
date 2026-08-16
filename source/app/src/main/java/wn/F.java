package wn;

import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class F {

    public static int f127630a = 127;

    public static int f127631b = 255;

    public static int f127632c = 32;

    public static int f127633d = u.f127816d;

    public static int f127634e = -1;

    public static int f127635f = -2;

    public static final int f127636g = 256;

    public static class b {

        public int f127637a;

        public int f127638b;

        public int f127639c;

        public int f127640d;

        public int[] f127641e;

        public b() {
        }
    }

    public static float A(float[] verts, int p12, int p22, int p32) {
        float f10 = verts[p22];
        float f11 = verts[p12];
        float f12 = verts[p22 + 2];
        float f13 = verts[p12 + 2];
        return ((f10 - f11) * (verts[p32 + 2] - f13)) - ((f12 - f13) * (verts[p32] - f11));
    }

    public static float B(float[] p12, float[] p22, float[] p32) {
        float f10 = p22[0];
        float f11 = p12[0];
        float f12 = p22[2];
        float f13 = p12[2];
        return ((f10 - f11) * (p32[2] - f13)) - ((f12 - f13) * (p32[0] - f11));
    }

    public static float C(float[] verts, int p10, int q10) {
        return (float) Math.sqrt(F(verts, p10, q10));
    }

    public static float D(float[] p10, float[] q10) {
        return (float) Math.sqrt(G(p10, q10));
    }

    public static float E(float[] p10, float[] verts, int q10) {
        return (float) Math.sqrt(H(p10, verts, q10));
    }

    public static float F(float[] verts, int p10, int q10) {
        float f10 = verts[q10] - verts[p10];
        float f11 = verts[q10 + 2] - verts[p10 + 2];
        return (f10 * f10) + (f11 * f11);
    }

    public static float G(float[] p10, float[] q10) {
        float f10 = q10[0] - p10[0];
        float f11 = q10[2] - p10[2];
        return (f10 * f10) + (f11 * f11);
    }

    public static float H(float[] p10, float[] verts, int q10) {
        float f10 = verts[q10] - p10[0];
        float f11 = verts[q10 + 2] - p10[2];
        return (f10 * f10) + (f11 * f11);
    }

    public static float I(float[] a10, float[] b10) {
        return (a10[0] * b10[0]) + (a10[2] * b10[2]);
    }

    public static void a(N ctx, List<Integer> edges, int maxEdges, int s10, int t10, int l10, int r10) {
        if (edges.size() / 4 < maxEdges) {
            if (l(edges, s10, t10) == f127634e) {
                edges.add(Integer.valueOf(s10));
                edges.add(Integer.valueOf(t10));
                edges.add(Integer.valueOf(l10));
                edges.add(Integer.valueOf(r10));
                return;
            }
            return;
        }
        throw new RuntimeException("addEdge: Too many edges (" + (edges.size() / 4) + "/" + maxEdges + ").");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int b(N ctx, float[] in2, int nin, float sampleDist, float sampleMaxError, int heightSearchRadius, C16025c chf, b hp, float[] verts, List<Integer> tris) {
        float f10;
        ArrayList arrayList;
        int i10;
        int i11;
        List<Integer> list;
        int i12;
        ArrayList arrayList2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17 = nin;
        C16025c c16025c = chf;
        ArrayList arrayList3 = new ArrayList(512);
        int i18 = 1;
        float[] fArr = new float[(f127632c + 1) * 3];
        int[] iArr = new int[f127630a];
        for (int i19 = 0; i19 < i17; i19++) {
            int i20 = i19 * 3;
            I.c(verts, i20, in2, i20);
        }
        tris.clear();
        float f11 = c16025c.f127680k;
        float f12 = 1.0f / f11;
        float v10 = v(verts, i17);
        if (sampleDist > 0.0f) {
            int i21 = i17;
            int i22 = i17 - 1;
            int i23 = 0;
            i11 = 0;
            while (i23 < i17) {
                int i24 = i22 * 3;
                int i25 = i23 * 3;
                if (Math.abs(in2[i24] - in2[i25]) >= 1.0E-6f ? in2[i24] <= in2[i25] : in2[i24 + 2] <= in2[i25 + 2]) {
                    i14 = i24;
                    i24 = i25;
                    i15 = 0;
                } else {
                    i15 = i18;
                    i14 = i25;
                }
                float f13 = in2[i24] - in2[i14];
                int i26 = i14 + 1;
                float f14 = in2[i24 + 1] - in2[i26];
                int i27 = i14 + 2;
                float f15 = in2[i24 + 2] - in2[i27];
                ArrayList arrayList4 = arrayList3;
                int floor = ((int) Math.floor(((float) Math.sqrt((f13 * f13) + (f15 * f15))) / sampleDist)) + i18;
                int i28 = f127632c;
                if (floor >= i28) {
                    floor = i28 - 1;
                }
                int i29 = i21 + floor;
                int i30 = f127630a;
                if (i29 >= i30) {
                    floor = (i30 - i18) - i21;
                }
                int i31 = 0;
                while (i31 <= floor) {
                    float f16 = i31 / floor;
                    int i32 = i31 * 3;
                    fArr[i32] = in2[i14] + (f13 * f16);
                    int i33 = i32 + 1;
                    fArr[i33] = in2[i26] + (f14 * f16);
                    fArr[i32 + 2] = in2[i27] + (f16 * f15);
                    fArr[i33] = n(fArr[i32], fArr[i33], r18, f11, f12, c16025c.f127681l, heightSearchRadius, hp) * c16025c.f127681l;
                    i31++;
                    i18 = 1;
                }
                int i34 = i18;
                int[] iArr2 = new int[f127632c];
                iArr2[0] = 0;
                iArr2[i34] = floor;
                int i35 = 0;
                int i36 = 2;
                while (true) {
                    i16 = i36 - 1;
                    if (i35 >= i16) {
                        break;
                    }
                    int i37 = iArr2[i35];
                    int i38 = i35 + 1;
                    float f17 = f11;
                    int i39 = iArr2[i38];
                    int i40 = i37 * 3;
                    int i41 = i39 * 3;
                    int i42 = i37 + 1;
                    float f18 = 0.0f;
                    int i43 = -1;
                    while (i42 < i39) {
                        int i44 = i39;
                        float j10 = j(fArr, i42 * 3, i40, i41);
                        if (j10 > f18) {
                            f18 = j10;
                            i43 = i42;
                        }
                        i42++;
                        i39 = i44;
                    }
                    if (i43 == -1 || f18 <= sampleMaxError * sampleMaxError) {
                        i35 = i38;
                    } else {
                        for (int i45 = i36; i45 > i35; i45--) {
                            iArr2[i45] = iArr2[i45 - 1];
                        }
                        iArr2[i38] = i43;
                        i36++;
                    }
                    f11 = f17;
                }
                float f19 = f11;
                int i46 = i11 + 1;
                iArr[i11] = i22;
                if (i15 != 0) {
                    int i47 = i36 - 2;
                    while (i47 > 0) {
                        I.c(verts, i21 * 3, fArr, iArr2[i47] * 3);
                        iArr[i46] = i21;
                        i21++;
                        i47--;
                        i46++;
                    }
                } else {
                    int i48 = i34;
                    while (i48 < i16) {
                        I.c(verts, i21 * 3, fArr, iArr2[i48] * 3);
                        iArr[i46] = i21;
                        i21++;
                        i48++;
                        i46++;
                    }
                }
                i11 = i46;
                i17 = nin;
                c16025c = chf;
                i22 = i23;
                i23++;
                f11 = f19;
                arrayList3 = arrayList4;
                i18 = 1;
            }
            f10 = f11;
            arrayList = arrayList3;
            i10 = i21;
        } else {
            f10 = f11;
            arrayList = arrayList3;
            i10 = nin;
            i11 = 0;
        }
        if (v10 < sampleDist * 2.0f) {
            y(i10, verts, i11, iArr, nin, tris);
            return i10;
        }
        float f20 = f10;
        int i49 = 3;
        y(i10, verts, i11, iArr, nin, tris);
        if (tris.size() == 0) {
            throw new RuntimeException("buildPolyDetail: Could not triangulate polygon (" + i10 + ") verts).");
        }
        if (sampleDist > 0.0f) {
            float[] fArr2 = new float[3];
            float[] fArr3 = new float[3];
            I.f(fArr2, in2, 0);
            I.f(fArr3, in2, 0);
            for (int i50 = 1; i50 < nin; i50++) {
                int i51 = i50 * 3;
                I.l(fArr2, in2, i51);
                I.j(fArr3, in2, i51);
            }
            int floor2 = (int) Math.floor(fArr2[0] / sampleDist);
            int ceil = (int) Math.ceil(fArr3[0] / sampleDist);
            int floor3 = (int) Math.floor(fArr2[2] / sampleDist);
            int ceil2 = (int) Math.ceil(fArr3[2] / sampleDist);
            arrayList.clear();
            while (floor3 < ceil2) {
                int i52 = floor2;
                while (i52 < ceil) {
                    float f21 = (fArr3[1] + fArr2[1]) * 0.5f;
                    float[] fArr4 = fArr2;
                    float[] fArr5 = new float[i49];
                    fArr5[0] = i52 * sampleDist;
                    fArr5[1] = f21;
                    fArr5[2] = floor3 * sampleDist;
                    if (h(nin, in2, fArr5) > (-sampleDist) / 2.0f) {
                        i13 = 1;
                        arrayList2 = arrayList;
                    } else {
                        arrayList2 = arrayList;
                        arrayList2.add(Integer.valueOf(i52));
                        arrayList2.add(Integer.valueOf(n(fArr5[0], fArr5[1], fArr5[2], f20, f12, chf.f127681l, heightSearchRadius, hp)));
                        arrayList2.add(Integer.valueOf(floor3));
                        arrayList2.add(0);
                        i13 = 1;
                    }
                    i52 += i13;
                    arrayList = arrayList2;
                    fArr2 = fArr4;
                    i49 = 3;
                }
                floor3++;
                fArr2 = fArr2;
                i49 = 3;
            }
            ArrayList arrayList5 = arrayList;
            int size = arrayList5.size() / 4;
            int i53 = i10;
            int i54 = 0;
            while (i54 < size && i53 < f127630a) {
                int i55 = 3;
                float[] fArr6 = new float[3];
                float f22 = 0.0f;
                int i56 = -1;
                int i57 = 0;
                while (i57 < size) {
                    if (((Integer) arrayList5.get((i57 * 4) + 3)).intValue() != 0) {
                        i12 = size;
                    } else {
                        float[] fArr7 = new float[i55];
                        fArr7[0] = (((Integer) arrayList5.get(r10)).intValue() * sampleDist) + (p(i57) * f20 * 0.1f);
                        i12 = size;
                        fArr7[1] = ((Integer) arrayList5.get(r10 + 1)).intValue() * chf.f127681l;
                        fArr7[2] = (((Integer) arrayList5.get(r10 + 2)).intValue() * sampleDist) + (q(i57) * f20 * 0.1f);
                        float i58 = i(fArr7, verts, i53, tris, tris.size() / 4);
                        if (i58 >= 0.0f && i58 > f22) {
                            f22 = i58;
                            i56 = i57;
                            fArr6 = fArr7;
                        }
                    }
                    i57++;
                    size = i12;
                    i55 = 3;
                }
                list = tris;
                int i59 = size;
                if (f22 <= sampleMaxError || i56 == -1) {
                    break;
                }
                arrayList5.set((i56 * 4) + 3, 1);
                I.c(verts, i53 * 3, fArr6, 0);
                int i60 = i53 + 1;
                f(ctx, i60, verts, i11, iArr, tris);
                i54++;
                size = i59;
                i53 = i60;
            }
            list = tris;
            i10 = i53;
        } else {
            list = tris;
        }
        int size2 = tris.size() / 4;
        int i61 = f127631b;
        if (size2 <= i61) {
            return i10;
        }
        List<Integer> subList = list.subList(0, i61 * 4);
        tris.clear();
        list.addAll(subList);
        throw new RuntimeException("rcBuildPolyMeshDetail: Shrinking triangle count from " + size2 + " to max " + f127631b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C16034l c(N ctx, C16033k mesh, C16025c chf, float sampleDist, float sampleMaxError) {
        int i10;
        int i11;
        int i12;
        int i13;
        float[] fArr;
        float f10;
        String str = "POLYMESHDETAIL";
        ctx.f("POLYMESHDETAIL");
        if (mesh.f127737e == 0 || mesh.f127738f == 0) {
            return null;
        }
        C16034l c16034l = new C16034l();
        int i14 = mesh.f127739g;
        float f11 = mesh.f127744l;
        float f12 = mesh.f127745m;
        float[] fArr2 = mesh.f127742j;
        int i15 = mesh.f127746n;
        int max = (int) Math.max(1.0d, Math.ceil(mesh.f127747o));
        ArrayList arrayList = new ArrayList(512);
        b bVar = new b();
        int[] iArr = new int[mesh.f127738f * 4];
        float[] fArr3 = new float[i14 * 3];
        float[] fArr4 = new float[768];
        ArrayList arrayList2 = arrayList;
        int i16 = max;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i10 = mesh.f127738f;
            if (i19 >= i10) {
                break;
            }
            int i21 = i19 * i14 * 2;
            int i22 = i19 * 4;
            int i23 = i15;
            iArr[i22] = chf.f127670a;
            int i24 = i22 + 1;
            iArr[i24] = 0;
            int i25 = i22 + 2;
            float[] fArr5 = fArr2;
            iArr[i25] = chf.f127671b;
            int i26 = i22 + 3;
            iArr[i26] = 0;
            String str2 = str;
            int i27 = 0;
            while (true) {
                if (i27 >= i14) {
                    fArr = fArr3;
                    f10 = f12;
                    break;
                }
                f10 = f12;
                int i28 = mesh.f127734b[i21 + i27];
                int i29 = i21;
                if (i28 == u.f127822j) {
                    fArr = fArr3;
                    break;
                }
                int i30 = i28 * 3;
                iArr[i22] = Math.min(iArr[i22], mesh.f127733a[i30]);
                iArr[i24] = Math.max(iArr[i24], mesh.f127733a[i30]);
                int i31 = i30 + 2;
                iArr[i25] = Math.min(iArr[i25], mesh.f127733a[i31]);
                iArr[i26] = Math.max(iArr[i26], mesh.f127733a[i31]);
                i20++;
                i27++;
                f12 = f10;
                i21 = i29;
                fArr3 = fArr3;
            }
            iArr[i22] = Math.max(0, iArr[i22] - 1);
            iArr[i24] = Math.min(chf.f127670a, iArr[i24] + 1);
            iArr[i25] = Math.max(0, iArr[i25] - 1);
            int min = Math.min(chf.f127671b, iArr[i26] + 1);
            iArr[i26] = min;
            int i32 = iArr[i22];
            int i33 = iArr[i24];
            if (i32 < i33 && iArr[i25] < min) {
                int max2 = Math.max(i17, i33 - i32);
                i18 = Math.max(i18, iArr[i26] - iArr[i25]);
                i17 = max2;
            }
            i19++;
            i15 = i23;
            fArr2 = fArr5;
            str = str2;
            f12 = f10;
            fArr3 = fArr;
        }
        float[] fArr6 = fArr3;
        int i34 = i15;
        float[] fArr7 = fArr2;
        float f13 = f12;
        String str3 = str;
        bVar.f127641e = new int[i17 * i18];
        c16034l.f127751d = i10;
        c16034l.f127752e = 0;
        c16034l.f127753f = 0;
        c16034l.f127748a = new int[i10 * 4];
        int i35 = i20 + (i20 / 2);
        c16034l.f127752e = 0;
        c16034l.f127749b = new float[i35 * 3];
        c16034l.f127753f = 0;
        c16034l.f127750c = new int[i35 * 8];
        int i36 = i35 * 2;
        int i37 = i35;
        int i38 = 0;
        while (i38 < mesh.f127738f) {
            int i39 = i38 * i14 * 2;
            int i40 = 0;
            int i41 = 0;
            while (i40 < i14) {
                int i42 = mesh.f127734b[i39 + i40];
                if (i42 == u.f127822j) {
                    break;
                }
                int i43 = i42 * 3;
                int i44 = i40 * 3;
                int[] iArr2 = mesh.f127733a;
                fArr6[i44] = iArr2[i43] * f11;
                fArr6[i44 + 1] = iArr2[i43 + 1] * f13;
                fArr6[i44 + 2] = iArr2[i43 + 2] * f11;
                i41++;
                i40++;
                i36 = i36;
                i14 = i14;
            }
            int i45 = i36;
            int i46 = i14;
            int i47 = i38 * 4;
            int i48 = iArr[i47];
            bVar.f127637a = i48;
            int i49 = i47 + 2;
            int i50 = iArr[i49];
            bVar.f127638b = i50;
            int i51 = i47 + 1;
            bVar.f127639c = iArr[i51] - i48;
            int i52 = i47 + 3;
            bVar.f127640d = iArr[i52] - i50;
            int[] iArr3 = iArr;
            b bVar2 = bVar;
            float[] fArr8 = fArr4;
            ArrayList arrayList3 = arrayList2;
            int i53 = i16;
            int i54 = i34;
            int i55 = i41;
            int i56 = i38;
            o(ctx, chf, mesh.f127734b, i39, i41, mesh.f127733a, i54, bVar2, mesh.f127735c[i38]);
            float f14 = f11;
            int b10 = b(ctx, fArr6, i55, sampleDist, sampleMaxError, i53, chf, bVar2, fArr8, arrayList3);
            for (int i57 = 0; i57 < b10; i57++) {
                int i58 = i57 * 3;
                fArr8[i58] = fArr8[i58] + fArr7[0];
                int i59 = i58 + 1;
                fArr8[i59] = fArr8[i59] + fArr7[1] + chf.f127681l;
                int i60 = i58 + 2;
                fArr8[i60] = fArr8[i60] + fArr7[2];
            }
            for (int i61 = 0; i61 < i55; i61++) {
                int i62 = i61 * 3;
                fArr6[i62] = fArr6[i62] + fArr7[0];
                int i63 = i62 + 1;
                fArr6[i63] = fArr6[i63] + fArr7[1];
                int i64 = i62 + 2;
                fArr6[i64] = fArr6[i64] + fArr7[2];
            }
            int size = arrayList3.size() / 4;
            int[] iArr4 = c16034l.f127748a;
            int i65 = c16034l.f127752e;
            iArr4[i47] = i65;
            iArr4[i51] = b10;
            iArr4[i49] = c16034l.f127753f;
            iArr4[i52] = size;
            if (i65 + b10 > i37) {
                while (true) {
                    i13 = c16034l.f127752e;
                    if (i13 + b10 <= i37) {
                        break;
                    }
                    i37 += 256;
                }
                float[] fArr9 = new float[i37 * 3];
                if (i13 != 0) {
                    System.arraycopy(c16034l.f127749b, 0, fArr9, 0, i13 * 3);
                }
                c16034l.f127749b = fArr9;
            }
            for (int i66 = 0; i66 < b10; i66++) {
                float[] fArr10 = c16034l.f127749b;
                int i67 = c16034l.f127752e;
                int i68 = i66 * 3;
                fArr10[i67 * 3] = fArr8[i68];
                fArr10[(i67 * 3) + 1] = fArr8[i68 + 1];
                fArr10[(i67 * 3) + 2] = fArr8[i68 + 2];
                c16034l.f127752e = i67 + 1;
            }
            if (c16034l.f127753f + size > i45) {
                i36 = i45;
                while (true) {
                    i12 = c16034l.f127753f;
                    if (i12 + size <= i36) {
                        break;
                    }
                    i36 += 256;
                }
                int[] iArr5 = new int[i36 * 4];
                if (i12 != 0) {
                    i11 = 0;
                    System.arraycopy(c16034l.f127750c, 0, iArr5, 0, i12 * 4);
                } else {
                    i11 = 0;
                }
                c16034l.f127750c = iArr5;
            } else {
                i11 = 0;
                i36 = i45;
            }
            for (int i69 = i11; i69 < size; i69++) {
                int i70 = i69 * 4;
                c16034l.f127750c[c16034l.f127753f * 4] = ((Integer) arrayList3.get(i70)).intValue();
                int i71 = i70 + 1;
                c16034l.f127750c[(c16034l.f127753f * 4) + 1] = ((Integer) arrayList3.get(i71)).intValue();
                int i72 = i70 + 2;
                c16034l.f127750c[(c16034l.f127753f * 4) + 2] = ((Integer) arrayList3.get(i72)).intValue();
                c16034l.f127750c[(c16034l.f127753f * 4) + 3] = r(fArr8, ((Integer) arrayList3.get(i70)).intValue() * 3, ((Integer) arrayList3.get(i71)).intValue() * 3, ((Integer) arrayList3.get(i72)).intValue() * 3, fArr6, i55);
                c16034l.f127753f++;
            }
            i38 = i56 + 1;
            arrayList2 = arrayList3;
            i14 = i46;
            f11 = f14;
            iArr = iArr3;
            bVar = bVar2;
            fArr4 = fArr8;
            i16 = i53;
            i34 = i54;
        }
        ctx.g(str3);
        return c16034l;
    }

    public static boolean d(float[] verts, int p12, int p22, int p32, float[] c10, AtomicReference<Float> r10) {
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        float[] fArr3 = new float[3];
        I.o(fArr2, verts, p22, p12);
        I.o(fArr3, verts, p32, p12);
        float B10 = B(fArr, fArr2, fArr3);
        if (Math.abs(B10) <= 1.0E-6f) {
            I.f(c10, verts, p12);
            r10.set(Float.valueOf(0.0f));
            return false;
        }
        float I10 = I(fArr, fArr);
        float I11 = I(fArr2, fArr2);
        float I12 = I(fArr3, fArr3);
        float f10 = fArr2[2];
        float f11 = fArr3[2];
        float f12 = fArr[2];
        float f13 = B10 * 2.0f;
        c10[0] = ((((f10 - f11) * I10) + ((f11 - f12) * I11)) + ((f12 - f10) * I12)) / f13;
        c10[1] = 0.0f;
        float f14 = fArr3[0];
        float f15 = fArr2[0];
        float f16 = fArr[0];
        c10[2] = (((I10 * (f14 - f15)) + (I11 * (f16 - f14))) + (I12 * (f15 - f16))) / f13;
        r10.set(Float.valueOf(D(c10, fArr)));
        I.a(c10, c10, verts, p12);
        return true;
    }

    public static int e(N ctx, float[] pts, int npts, List<Integer> edges, int maxEdges, int nfaces, int e10) {
        int intValue;
        int intValue2;
        int i10;
        int i11 = e10 * 4;
        if (edges.get(i11 + 2).intValue() == f127634e) {
            intValue = edges.get(i11).intValue();
            intValue2 = edges.get(i11 + 1).intValue();
        } else {
            if (edges.get(i11 + 3).intValue() != f127634e) {
                return nfaces;
            }
            intValue = edges.get(i11 + 1).intValue();
            intValue2 = edges.get(i11).intValue();
        }
        int i12 = intValue;
        int i13 = intValue2;
        float[] fArr = new float[3];
        AtomicReference atomicReference = new AtomicReference(Float.valueOf(-1.0f));
        int i14 = npts;
        for (int i15 = 0; i15 < npts; i15++) {
            if (i15 != i12 && i15 != i13) {
                int i16 = i12 * 3;
                int i17 = i13 * 3;
                int i18 = i15 * 3;
                if (A(pts, i16, i17, i18) > 1.0E-5f) {
                    if (((Float) atomicReference.get()).floatValue() < 0.0f) {
                        d(pts, i16, i17, i18, fArr, atomicReference);
                    } else {
                        float E10 = E(fArr, pts, i18);
                        if (E10 <= ((Float) atomicReference.get()).floatValue() * 1.001f) {
                            if (E10 < ((Float) atomicReference.get()).floatValue() * 0.999f) {
                                d(pts, i16, i17, i18, fArr, atomicReference);
                            } else if (!t(pts, edges, i12, i15) && !t(pts, edges, i13, i15)) {
                                d(pts, i16, i17, i18, fArr, atomicReference);
                            }
                        }
                    }
                    i14 = i15;
                }
            }
        }
        if (i14 >= npts) {
            z(edges, i11, i12, i13, f127635f);
            return nfaces;
        }
        z(edges, i11, i12, i13, nfaces);
        int l10 = l(edges, i14, i12);
        int i19 = f127634e;
        if (l10 == i19) {
            i10 = i14;
            a(ctx, edges, maxEdges, i14, i12, nfaces, i19);
        } else {
            i10 = i14;
            z(edges, l10 * 4, i10, i12, nfaces);
        }
        int l11 = l(edges, i13, i10);
        int i20 = f127634e;
        if (l11 == i20) {
            a(ctx, edges, maxEdges, i13, i10, nfaces, i20);
        } else {
            z(edges, l11 * 4, i13, i10, nfaces);
        }
        return nfaces + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(N ctx, int npts, float[] pts, int nhull, int[] hull, List<Integer> tris) {
        int i10 = npts * 10;
        ArrayList arrayList = new ArrayList(64);
        int i11 = nhull - 1;
        int i12 = 0;
        int i13 = 0;
        while (i13 < nhull) {
            a(ctx, arrayList, i10, hull[i11], hull[i13], f127635f, f127634e);
            int i14 = i13;
            i13++;
            i11 = i14;
        }
        int i15 = 0;
        for (int i16 = 0; i16 < arrayList.size() / 4; i16++) {
            int i17 = i16 * 4;
            if (((Integer) arrayList.get(i17 + 2)).intValue() == f127634e) {
                i15 = e(ctx, pts, npts, arrayList, i10, i15, i16);
            }
            if (((Integer) arrayList.get(i17 + 3)).intValue() == f127634e) {
                i15 = e(ctx, pts, npts, arrayList, i10, i15, i16);
            }
        }
        tris.clear();
        for (int i18 = 0; i18 < i15 * 4; i18++) {
            tris.add(-1);
        }
        for (int i19 = 0; i19 < arrayList.size() / 4; i19++) {
            int i20 = i19 * 4;
            int i21 = i20 + 3;
            if (((Integer) arrayList.get(i21)).intValue() >= 0) {
                int intValue = ((Integer) arrayList.get(i21)).intValue() * 4;
                if (tris.get(intValue).intValue() == -1) {
                    tris.set(intValue, (Integer) arrayList.get(i20));
                    tris.set(intValue + 1, (Integer) arrayList.get(i20 + 1));
                } else {
                    int i22 = i20 + 1;
                    if (tris.get(intValue) == arrayList.get(i22)) {
                        tris.set(intValue + 2, (Integer) arrayList.get(i20));
                    } else if (tris.get(intValue + 1) == arrayList.get(i20)) {
                        tris.set(intValue + 2, (Integer) arrayList.get(i22));
                    }
                }
            }
            int i23 = i20 + 2;
            if (((Integer) arrayList.get(i23)).intValue() >= 0) {
                int intValue2 = ((Integer) arrayList.get(i23)).intValue() * 4;
                if (tris.get(intValue2).intValue() == -1) {
                    tris.set(intValue2, (Integer) arrayList.get(i20 + 1));
                    tris.set(intValue2 + 1, (Integer) arrayList.get(i20));
                } else if (tris.get(intValue2) == arrayList.get(i20)) {
                    tris.set(intValue2 + 2, (Integer) arrayList.get(i20 + 1));
                } else if (tris.get(intValue2 + 1) == arrayList.get(i20 + 1)) {
                    tris.set(intValue2 + 2, (Integer) arrayList.get(i20));
                }
            }
        }
        while (i12 < tris.size() / 4) {
            int i24 = i12 * 4;
            if (tris.get(i24).intValue() == -1 || tris.get(i24 + 1).intValue() == -1 || tris.get(i24 + 2).intValue() == -1) {
                PrintStream printStream = System.err;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Dangling! ");
                sb2.append((Object) tris.get(i24));
                sb2.append(" ");
                int i25 = i24 + 1;
                sb2.append((Object) tris.get(i25));
                sb2.append(GlideException.a.f59088e);
                int i26 = i24 + 2;
                sb2.append((Object) tris.get(i26));
                printStream.println(sb2.toString());
                tris.set(i24, tris.get(tris.size() - 4));
                tris.set(i25, tris.get(tris.size() - 3));
                tris.set(i26, tris.get(tris.size() - 2));
                tris.set(i24 + 3, tris.get(tris.size() - 1));
                tris.remove(tris.size() - 1);
                tris.remove(tris.size() - 1);
                tris.remove(tris.size() - 1);
                tris.remove(tris.size() - 1);
                i12--;
            }
            i12++;
        }
    }

    public static float g(float[] p10, float[] verts, int a10, int b10, int c10) {
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        float[] fArr3 = new float[3];
        I.o(fArr, verts, c10, a10);
        I.o(fArr2, verts, b10, a10);
        I.p(fArr3, p10, verts, a10);
        float I10 = I(fArr, fArr);
        float I11 = I(fArr, fArr2);
        float I12 = I(fArr, fArr3);
        float I13 = I(fArr2, fArr2);
        float I14 = I(fArr2, fArr3);
        float f10 = 1.0f / ((I10 * I13) - (I11 * I11));
        float f11 = ((I13 * I12) - (I11 * I14)) * f10;
        float f12 = ((I10 * I14) - (I11 * I12)) * f10;
        if (f11 < -1.0E-4f || f12 < -1.0E-4f || f11 + f12 > 1.0001f) {
            return Float.MAX_VALUE;
        }
        return Math.abs(((verts[a10 + 1] + (fArr[1] * f11)) + (fArr2[1] * f12)) - p10[1]);
    }

    public static float h(int nvert, float[] verts, float[] p10) {
        float f10 = Float.MAX_VALUE;
        boolean z10 = false;
        int i10 = nvert - 1;
        for (int i11 = 0; i11 < nvert; i11++) {
            int i12 = i11 * 3;
            int i13 = i10 * 3;
            float f11 = verts[i12 + 2];
            float f12 = p10[2];
            boolean z11 = f11 > f12;
            float f13 = verts[i13 + 2];
            if (z11 != (f13 > f12)) {
                float f14 = p10[0];
                float f15 = verts[i13];
                float f16 = verts[i12];
                if (f14 < (((f15 - f16) * (f12 - f11)) / (f13 - f11)) + f16) {
                    z10 = !z10;
                }
            }
            f10 = Math.min(f10, k(p10, 0, verts, i13, i12));
            i10 = i11;
        }
        return z10 ? -f10 : f10;
    }

    public static float i(float[] p10, float[] verts, int nverts, List<Integer> tris, int ntris) {
        float f10 = Float.MAX_VALUE;
        for (int i10 = 0; i10 < ntris; i10++) {
            int i11 = i10 * 4;
            float g10 = g(p10, verts, tris.get(i11).intValue() * 3, tris.get(i11 + 1).intValue() * 3, tris.get(i11 + 2).intValue() * 3);
            if (g10 < f10) {
                f10 = g10;
            }
        }
        if (f10 == Float.MAX_VALUE) {
            return -1.0f;
        }
        return f10;
    }

    public static float j(float[] verts, int pt, int p10, int q10) {
        float f10 = verts[q10];
        float f11 = verts[p10];
        float f12 = f10 - f11;
        float f13 = verts[q10 + 1];
        float f14 = verts[p10 + 1];
        float f15 = f13 - f14;
        float f16 = verts[q10 + 2];
        float f17 = verts[p10 + 2];
        float f18 = f16 - f17;
        float f19 = verts[pt];
        float f20 = verts[pt + 1];
        float f21 = verts[pt + 2];
        float f22 = (f12 * f12) + (f15 * f15) + (f18 * f18);
        float f23 = ((f19 - f11) * f12) + ((f20 - f14) * f15) + ((f21 - f17) * f18);
        float f24 = 0.0f;
        if (f22 > 0.0f) {
            f23 /= f22;
        }
        if (f23 >= 0.0f) {
            f24 = 1.0f;
            if (f23 <= 1.0f) {
                f24 = f23;
            }
        }
        float f25 = (f11 + (f12 * f24)) - f19;
        float f26 = (f14 + (f15 * f24)) - f20;
        float f27 = (f17 + (f24 * f18)) - f21;
        return (f25 * f25) + (f26 * f26) + (f27 * f27);
    }

    public static float k(float[] verts, int pt, float[] poly, int p10, int q10) {
        float f10 = poly[q10];
        float f11 = poly[p10];
        float f12 = f10 - f11;
        float f13 = poly[q10 + 2];
        float f14 = poly[p10 + 2];
        float f15 = f13 - f14;
        float f16 = verts[pt];
        float f17 = verts[pt + 2];
        float f18 = (f12 * f12) + (f15 * f15);
        float f19 = ((f16 - f11) * f12) + ((f17 - f14) * f15);
        float f20 = 0.0f;
        if (f18 > 0.0f) {
            f19 /= f18;
        }
        if (f19 >= 0.0f) {
            f20 = 1.0f;
            if (f19 <= 1.0f) {
                f20 = f19;
            }
        }
        float f21 = (f11 + (f12 * f20)) - f16;
        float f22 = (f14 + (f20 * f15)) - f17;
        return (f21 * f21) + (f22 * f22);
    }

    public static int l(List<Integer> edges, int s10, int t10) {
        for (int i10 = 0; i10 < edges.size() / 4; i10++) {
            int i11 = i10 * 4;
            if ((edges.get(i11).intValue() == s10 && edges.get(i11 + 1).intValue() == t10) || (edges.get(i11).intValue() == t10 && edges.get(i11 + 1).intValue() == s10)) {
                return i10;
            }
        }
        return f127634e;
    }

    public static int m(float[] verts, int va2, int vb2, float[] vpoly, int npoly) {
        int i10 = npoly - 1;
        for (int i11 = 0; i11 < npoly; i11++) {
            int i12 = i10 * 3;
            int i13 = i11 * 3;
            if (k(verts, va2, vpoly, i12, i13) < 1.0000001E-6f && k(verts, vb2, vpoly, i12, i13) < 1.0000001E-6f) {
                return 1;
            }
            i10 = i11;
        }
        return 0;
    }

    public static int n(float fx, float fy, float fz, float cs, float ics, float ch2, int radius, b hp) {
        int i10;
        int i11;
        int i12;
        int floor = (int) Math.floor((fx * ics) + 0.01f);
        int floor2 = (int) Math.floor((fz * ics) + 0.01f);
        int i13 = 1;
        int e10 = r.e(floor - hp.f127637a, 0, hp.f127639c - 1);
        int e11 = r.e(floor2 - hp.f127638b, 0, hp.f127640d - 1);
        int i14 = hp.f127641e[(hp.f127639c * e11) + e10];
        if (i14 == f127633d) {
            int i15 = (radius * 2) + 1;
            int i16 = (i15 * i15) - 1;
            int i17 = 8;
            int i18 = 16;
            float f10 = Float.MAX_VALUE;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 1;
            while (i19 < i16) {
                int i23 = e10 + i13;
                int i24 = e11 + i20;
                if (i23 < 0 || i24 < 0 || i23 >= (i11 = hp.f127639c)) {
                    i10 = e10;
                } else {
                    i10 = e10;
                    if (i24 < hp.f127640d && (i12 = hp.f127641e[i23 + (i24 * i11)]) != f127633d) {
                        float abs = Math.abs((i12 * ch2) - fy);
                        if (abs < f10) {
                            i14 = i12;
                            f10 = abs;
                        }
                    }
                }
                i19++;
                if (i19 == i17) {
                    if (i14 != f127633d) {
                        break;
                    }
                    i17 += i18;
                    i18 += 8;
                }
                if (i13 == i20 || ((i13 < 0 && i13 == (-i20)) || (i13 > 0 && i13 == 1 - i20))) {
                    int i25 = -i21;
                    i21 = i22;
                    i22 = i25;
                }
                i13 += i22;
                i20 += i21;
                e10 = i10;
            }
        }
        return i14;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void o(N ctx, C16025c chf, int[] meshpolys, int poly, int npoly, int[] verts, int bs, b hp, int region) {
        int i10;
        List arrayList = new ArrayList(512);
        int i11 = 0;
        Arrays.fill(hp.f127641e, 0, hp.f127639c * hp.f127640d, f127633d);
        int i12 = 63;
        int i13 = 4;
        boolean z10 = true;
        if (region != u.f127818f) {
            int i14 = 0;
            while (i14 < hp.f127640d) {
                int i15 = hp.f127638b + i14 + bs;
                int i16 = i11;
                while (i16 < hp.f127639c) {
                    int i17 = hp.f127637a + i16 + bs;
                    C16024b c16024b = chf.f127682m[(chf.f127670a * i15) + i17];
                    int i18 = c16024b.f127668a;
                    int i19 = c16024b.f127669b + i18;
                    while (true) {
                        if (i18 < i19) {
                            C16026d c16026d = chf.f127683n[i18];
                            if (c16026d.f127687b == region) {
                                hp.f127641e[(hp.f127639c * i14) + i16] = c16026d.f127686a;
                                int i20 = i11;
                                while (true) {
                                    if (i20 >= 4) {
                                        break;
                                    }
                                    if (r.a(c16026d, i20) != i12) {
                                        if (chf.f127683n[chf.f127682m[r.b(i20) + i17 + ((r.c(i20) + i15) * chf.f127670a)].f127668a + r.a(c16026d, i20)].f127687b != region) {
                                            w(arrayList, i17, i15, i18);
                                            break;
                                        }
                                    }
                                    i20++;
                                    i12 = 63;
                                }
                                z10 = false;
                            } else {
                                i18++;
                                i11 = 0;
                                i12 = 63;
                            }
                        }
                    }
                    i16++;
                    i11 = 0;
                    i12 = 63;
                }
                i14++;
                i11 = 0;
                i12 = 63;
            }
        }
        if (z10) {
            x(ctx, chf, meshpolys, poly, npoly, verts, bs, hp, arrayList);
        }
        int i21 = 0;
        while (true) {
            int i22 = i21 * 3;
            if (i22 >= arrayList.size()) {
                return;
            }
            int intValue = ((Integer) arrayList.get(i22)).intValue();
            int intValue2 = ((Integer) arrayList.get(i22 + 1)).intValue();
            int intValue3 = ((Integer) arrayList.get(i22 + 2)).intValue();
            i21++;
            if (i21 >= 256) {
                arrayList = arrayList.subList(768, arrayList.size());
                i21 = 0;
            }
            C16026d c16026d2 = chf.f127683n[intValue3];
            int i23 = 0;
            while (i23 < i13) {
                if (r.a(c16026d2, i23) != 63) {
                    int b10 = r.b(i23) + intValue;
                    int c10 = r.c(i23) + intValue2;
                    int i24 = (b10 - hp.f127637a) - bs;
                    int i25 = (c10 - hp.f127638b) - bs;
                    if (i24 >= 0 && i24 < (i10 = hp.f127639c) && i25 >= 0 && i25 < hp.f127640d && hp.f127641e[(i10 * i25) + i24] == f127633d) {
                        int a10 = chf.f127682m[(chf.f127670a * c10) + b10].f127668a + r.a(c16026d2, i23);
                        hp.f127641e[i24 + (i25 * hp.f127639c)] = chf.f127683n[a10].f127686a;
                        w(arrayList, b10, c10, a10);
                    }
                }
                i23++;
                i13 = 4;
            }
        }
    }

    public static float p(int i10) {
        return ((((i10 * (-1918454973)) & 65535) / 65535.0f) * 2.0f) - 1.0f;
    }

    public static float q(int i10) {
        return ((((i10 * (-669632447)) & 65535) / 65535.0f) * 2.0f) - 1.0f;
    }

    public static int r(float[] verts, int va2, int vb2, int vc2, float[] vpoly, int npoly) {
        return (m(verts, vc2, va2, vpoly, npoly) << 4) | (m(verts, vb2, vc2, vpoly, npoly) << 2) | m(verts, va2, vb2, vpoly, npoly);
    }

    public static boolean t(float[] pts, List<Integer> edges, int s12, int t12) {
        for (int i10 = 0; i10 < edges.size() / 4; i10++) {
            int i11 = i10 * 4;
            int intValue = edges.get(i11).intValue();
            int intValue2 = edges.get(i11 + 1).intValue();
            if (intValue != s12 && intValue != t12 && intValue2 != s12 && intValue2 != t12 && u(pts, intValue * 3, intValue2 * 3, s12 * 3, t12 * 3)) {
                return true;
            }
        }
        return false;
    }

    public static boolean u(float[] verts, int a10, int b10, int c10, int d10) {
        float A10 = A(verts, a10, b10, d10);
        float A11 = A(verts, a10, b10, c10);
        if (A10 * A11 >= 0.0f) {
            return false;
        }
        float A12 = A(verts, c10, d10, a10);
        return A12 * ((A11 + A12) - A10) < 0.0f;
    }

    public static float v(float[] verts, int nverts) {
        float f10 = Float.MAX_VALUE;
        int i10 = 0;
        while (i10 < nverts) {
            int i11 = i10 + 1;
            int i12 = i11 % nverts;
            int i13 = i10 * 3;
            int i14 = i12 * 3;
            float f11 = 0.0f;
            for (int i15 = 0; i15 < nverts; i15++) {
                if (i15 != i10 && i15 != i12) {
                    f11 = Math.max(f11, k(verts, i15 * 3, verts, i13, i14));
                }
            }
            f10 = Math.min(f10, f11);
            i10 = i11;
        }
        return (float) Math.sqrt(f10);
    }

    public static void w(List<Integer> queue, int v12, int v22, int v32) {
        queue.add(Integer.valueOf(v12));
        queue.add(Integer.valueOf(v22));
        queue.add(Integer.valueOf(v32));
    }

    public static void x(N ctx, C16025c chf, int[] meshpoly, int poly, int npoly, int[] verts, int bs, b hp, List<Integer> array) {
        int i10;
        int f10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = 2;
        int i17 = 3;
        int i18 = 1;
        int[] iArr = {0, 0, -1, -1, 0, -1, 1, -1, 1, 0, 1, 1, 0, 1, -1, 1, -1, 0};
        int i19 = f127633d;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = -1;
        while (i20 < npoly && i19 > 0) {
            int i24 = 0;
            while (i24 < 9 && i19 > 0) {
                int i25 = meshpoly[poly + i20];
                int i26 = i24 * 2;
                int i27 = verts[i25 * 3] + iArr[i26];
                int i28 = verts[(i25 * 3) + 1];
                int i29 = verts[(i25 * i17) + i16] + iArr[i26 + 1];
                int i30 = hp.f127637a;
                if (i27 >= i30 && i27 < i30 + hp.f127639c && i29 >= (i15 = hp.f127638b) && i29 < i15 + hp.f127640d) {
                    C16024b c16024b = chf.f127682m[i27 + bs + ((i29 + bs) * chf.f127670a)];
                    int i31 = c16024b.f127668a;
                    int i32 = c16024b.f127669b + i31;
                    while (i31 < i32 && i19 > 0) {
                        int abs = Math.abs(i28 - chf.f127683n[i31].f127686a);
                        if (abs < i19) {
                            i23 = i31;
                            i22 = i29;
                            i21 = i27;
                            i19 = abs;
                        }
                        i31++;
                    }
                    i18 = 1;
                }
                i24 += i18;
                i16 = 2;
                i17 = 3;
            }
            i20 += i18;
            i16 = 2;
            i17 = 3;
        }
        int i33 = 0;
        int i34 = 0;
        for (int i35 = 0; i35 < npoly; i35++) {
            int i36 = meshpoly[poly + i35];
            i33 += verts[i36 * 3];
            i34 += verts[(i36 * 3) + 2];
        }
        int i37 = i33 / npoly;
        int i38 = i34 / npoly;
        array.clear();
        array.add(Integer.valueOf(i21));
        array.add(Integer.valueOf(i22));
        array.add(Integer.valueOf(i23));
        int i39 = 4;
        int i40 = 3;
        int[] iArr2 = {0, 1, 2, 3};
        Arrays.fill(hp.f127641e, 0, hp.f127639c * hp.f127640d, 0);
        int i41 = -1;
        int i42 = -1;
        int i43 = -1;
        while (true) {
            if (array.size() < i40) {
                ctx.h("Walk towards polygon center failed to reach center");
                break;
            }
            i43 = array.remove(array.size() - 1).intValue();
            int intValue = array.remove(array.size() - 1).intValue();
            int intValue2 = array.remove(array.size() - 1).intValue();
            if (intValue2 == i37 && intValue == i38) {
                i42 = intValue;
                i41 = intValue2;
                break;
            }
            if (intValue2 == i37) {
                i10 = 0;
                f10 = r.f(0, i38 > intValue ? 1 : -1);
            } else {
                i10 = 0;
                f10 = r.f(i37 > intValue2 ? 1 : -1, 0);
            }
            int i44 = iArr2[3];
            iArr2[3] = iArr2[f10];
            iArr2[f10] = i44;
            C16026d c16026d = chf.f127683n[i43];
            int i45 = i10;
            while (i45 < i39) {
                int i46 = iArr2[i45];
                if (r.a(c16026d, i46) == 63) {
                    i11 = i37;
                    i12 = i38;
                    i13 = intValue;
                } else {
                    int b10 = r.b(i46) + intValue2;
                    int c10 = r.c(i46) + intValue;
                    i11 = i37;
                    int i47 = b10 - hp.f127637a;
                    i12 = i38;
                    int i48 = c10 - hp.f127638b;
                    i13 = intValue;
                    if (i47 >= 0 && i47 < (i14 = hp.f127639c) && i48 >= 0 && i48 < hp.f127640d) {
                        int[] iArr3 = hp.f127641e;
                        if (iArr3[i47 + (i48 * i14)] == 0) {
                            iArr3[i47 + (i48 * i14)] = 1;
                            array.add(Integer.valueOf(b10));
                            array.add(Integer.valueOf(c10));
                            array.add(Integer.valueOf(chf.f127682m[b10 + bs + ((c10 + bs) * chf.f127670a)].f127668a + r.a(c16026d, i46)));
                        }
                    }
                }
                i45++;
                i37 = i11;
                i38 = i12;
                intValue = i13;
                i39 = 4;
            }
            int i49 = i38;
            int i50 = intValue;
            int i51 = iArr2[3];
            iArr2[3] = iArr2[f10];
            iArr2[f10] = i51;
            i38 = i49;
            i40 = 3;
            i41 = intValue2;
            i39 = 4;
            i37 = i37;
            i42 = i50;
        }
        array.clear();
        array.add(Integer.valueOf(i41 + bs));
        array.add(Integer.valueOf(i42 + bs));
        array.add(Integer.valueOf(i43));
        Arrays.fill(hp.f127641e, 0, hp.f127639c * hp.f127640d, f127633d);
        hp.f127641e[(i41 - hp.f127637a) + ((i42 - hp.f127638b) * hp.f127639c)] = chf.f127683n[i43].f127686a;
    }

    public static void y(int nverts, float[] verts, int nhull, int[] hull, int nin, List<Integer> tris) {
        int i10 = nhull - 1;
        float f10 = Float.MAX_VALUE;
        int i11 = 1;
        int i12 = 0;
        for (int i13 = 0; i13 < nhull; i13++) {
            if (hull[i13] < nin) {
                int y10 = E.y(i13, nhull);
                int x10 = E.x(i13, nhull);
                int i14 = hull[y10] * 3;
                int i15 = hull[i13] * 3;
                int i16 = hull[x10] * 3;
                float C10 = C(verts, i14, i15) + C(verts, i15, i16) + C(verts, i16, i14);
                if (C10 < f10) {
                    i12 = i13;
                    i10 = y10;
                    i11 = x10;
                    f10 = C10;
                }
            }
        }
        tris.add(Integer.valueOf(hull[i12]));
        tris.add(Integer.valueOf(hull[i11]));
        tris.add(Integer.valueOf(hull[i10]));
        tris.add(0);
        while (E.x(i11, nhull) != i10) {
            int x11 = E.x(i11, nhull);
            int y11 = E.y(i10, nhull);
            int i17 = hull[i11] * 3;
            int i18 = hull[x11] * 3;
            int i19 = hull[i10] * 3;
            int i20 = hull[y11] * 3;
            if (C(verts, i17, i18) + C(verts, i18, i19) < C(verts, i19, i20) + C(verts, i17, i20)) {
                tris.add(Integer.valueOf(hull[i11]));
                tris.add(Integer.valueOf(hull[x11]));
                tris.add(Integer.valueOf(hull[i10]));
                tris.add(0);
                i11 = x11;
            } else {
                tris.add(Integer.valueOf(hull[i11]));
                tris.add(Integer.valueOf(hull[y11]));
                tris.add(Integer.valueOf(hull[i10]));
                tris.add(0);
                i10 = y11;
            }
        }
    }

    public static void z(List<Integer> edges, int e10, int s10, int t10, int f10) {
        if (edges.get(e10).intValue() == s10 && edges.get(e10 + 1).intValue() == t10) {
            int i10 = e10 + 2;
            if (edges.get(i10).intValue() == f127634e) {
                edges.set(i10, Integer.valueOf(f10));
                return;
            }
        }
        if (edges.get(e10 + 1).intValue() == s10 && edges.get(e10).intValue() == t10) {
            int i11 = e10 + 3;
            if (edges.get(i11).intValue() == f127634e) {
                edges.set(i11, Integer.valueOf(f10));
            }
        }
    }

    public C16034l s(N ctx, C16034l[] meshes, int nmeshes) {
        C16034l c16034l = new C16034l();
        ctx.f("MERGE_POLYMESHDETAIL");
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < nmeshes; i13++) {
            C16034l c16034l2 = meshes[i13];
            if (c16034l2 != null) {
                i12 += c16034l2.f127752e;
                i11 += c16034l2.f127753f;
                i10 += c16034l2.f127751d;
            }
        }
        c16034l.f127751d = 0;
        c16034l.f127748a = new int[i10 * 4];
        c16034l.f127753f = 0;
        c16034l.f127750c = new int[i11 * 4];
        c16034l.f127752e = 0;
        c16034l.f127749b = new float[i12 * 3];
        for (int i14 = 0; i14 < nmeshes; i14++) {
            C16034l c16034l3 = meshes[i14];
            if (c16034l3 != null) {
                for (int i15 = 0; i15 < c16034l3.f127751d; i15++) {
                    int i16 = c16034l.f127751d;
                    int i17 = i16 * 4;
                    int i18 = i15 * 4;
                    int[] iArr = c16034l.f127748a;
                    int i19 = c16034l.f127752e;
                    int[] iArr2 = c16034l3.f127748a;
                    iArr[i17] = i19 + iArr2[i18];
                    iArr[i17 + 1] = iArr2[i18 + 1];
                    iArr[i17 + 2] = c16034l.f127753f + iArr2[i18 + 2];
                    iArr[i17 + 3] = iArr2[i18 + 3];
                    c16034l.f127751d = i16 + 1;
                }
                for (int i20 = 0; i20 < c16034l3.f127752e; i20++) {
                    I.c(c16034l.f127749b, c16034l.f127752e * 3, c16034l3.f127749b, i20 * 3);
                    c16034l.f127752e++;
                }
                for (int i21 = 0; i21 < c16034l3.f127753f; i21++) {
                    int[] iArr3 = c16034l.f127750c;
                    int i22 = c16034l.f127753f;
                    int[] iArr4 = c16034l3.f127750c;
                    int i23 = i21 * 4;
                    iArr3[i22 * 4] = iArr4[i23];
                    iArr3[(i22 * 4) + 1] = iArr4[i23 + 1];
                    iArr3[(i22 * 4) + 2] = iArr4[i23 + 2];
                    iArr3[(i22 * 4) + 3] = iArr4[i23 + 3];
                    c16034l.f127753f = i22 + 1;
                }
            }
        }
        ctx.g("MERGE_POLYMESHDETAIL");
        return c16034l;
    }
}
