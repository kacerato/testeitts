package wn;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.lang.reflect.Array;
import java.util.function.Function;

public class B {

    public static final float f127614a = 1.0E-5f;

    public static final int[] f127615b = {0, 1, 0, 2, 0, 4, 1, 3, 1, 5, 2, 3, 2, 6, 3, 7, 4, 5, 4, 6, 5, 7, 6, 7};

    public static void A(C16030h hf2, final NativeFloatBuffer vertices, final NativeIntBuffer triangles, int area, int flagMergeThr, N ctx) {
        NativeIntBuffer nativeIntBuffer = triangles;
        String str = "RASTERIZE_CONVEX";
        ctx.f("RASTERIZE_CONVEX");
        float[] fArr = {vertices.get(0), vertices.get(1), vertices.get(2), vertices.get(0), vertices.get(1), vertices.get(2)};
        for (int i10 = 0; i10 < vertices.capacity(); i10 += 3) {
            fArr[0] = Math.min(fArr[0], vertices.get(i10));
            int i11 = i10 + 1;
            fArr[1] = Math.min(fArr[1], vertices.get(i11));
            int i12 = i10 + 2;
            fArr[2] = Math.min(fArr[2], vertices.get(i12));
            fArr[3] = Math.max(fArr[3], vertices.get(i10));
            fArr[4] = Math.max(fArr[4], vertices.get(i11));
            fArr[5] = Math.max(fArr[5], vertices.get(i12));
        }
        int[] iArr = {triangles.capacity(), 4};
        Class<Float> cls = Float.TYPE;
        final float[][] fArr2 = (float[][]) Array.newInstance(cls, iArr);
        float[][] fArr3 = (float[][]) Array.newInstance(cls, triangles.capacity() / 3, 4);
        int i13 = 0;
        int i14 = 0;
        while (i13 < triangles.capacity()) {
            int i15 = nativeIntBuffer.get(i13) * 3;
            int i16 = i13 + 1;
            int i17 = nativeIntBuffer.get(i16) * 3;
            int i18 = i13 + 2;
            int i19 = nativeIntBuffer.get(i18) * 3;
            int i20 = i17 + 1;
            int i21 = i15 + 1;
            int i22 = i17 + 2;
            int i23 = i15 + 2;
            float[] fArr4 = {vertices.get(i17) - vertices.get(i15), vertices.get(i20) - vertices.get(i21), vertices.get(i22) - vertices.get(i23)};
            float[][] fArr5 = fArr3;
            int i24 = i19 + 1;
            int i25 = i19 + 2;
            String str2 = str;
            float[] fArr6 = fArr;
            float[] fArr7 = {vertices.get(i19) - vertices.get(i15), vertices.get(i24) - vertices.get(i21), vertices.get(i25) - vertices.get(i23)};
            float[] fArr8 = {vertices.get(i19) - vertices.get(i17), vertices.get(i24) - vertices.get(i20), vertices.get(i25) - vertices.get(i22)};
            float[] fArr9 = {vertices.get(i15) - vertices.get(i19), vertices.get(i21) - vertices.get(i24), vertices.get(i23) - vertices.get(i25)};
            int i26 = i13;
            v(fArr2, i13, fArr4, fArr7, vertices, i15);
            v(fArr2, i16, fArr2[i26], fArr8, vertices, i17);
            v(fArr2, i18, fArr2[i26], fArr9, vertices, i19);
            float f10 = (vertices.get(i15) * fArr2[i16][0]) + (vertices.get(i21) * fArr2[i16][1]);
            float f11 = vertices.get(i23);
            float[] fArr10 = fArr2[i16];
            float f12 = fArr10[2];
            float f13 = fArr10[3];
            float f14 = 1.0f / ((f10 + (f11 * f12)) - f13);
            fArr10[0] = fArr10[0] * f14;
            fArr10[1] = fArr10[1] * f14;
            fArr10[2] = f12 * f14;
            fArr10[3] = f13 * f14;
            float f15 = (vertices.get(i17) * fArr2[i18][0]) + (vertices.get(i20) * fArr2[i18][1]);
            float f16 = vertices.get(i22);
            float[] fArr11 = fArr2[i18];
            float f17 = fArr11[2];
            float f18 = fArr11[3];
            float f19 = 1.0f / ((f15 + (f16 * f17)) - f18);
            fArr11[0] = fArr11[0] * f19;
            fArr11[1] = fArr11[1] * f19;
            fArr11[2] = f17 * f19;
            fArr11[3] = f18 * f19;
            fArr5[i14][0] = Math.min(Math.min(vertices.get(i15), vertices.get(i17)), vertices.get(i19));
            fArr5[i14][1] = Math.min(Math.min(vertices.get(i23), vertices.get(i22)), vertices.get(i25));
            fArr5[i14][2] = Math.max(Math.max(vertices.get(i15), vertices.get(i17)), vertices.get(i19));
            fArr5[i14][3] = Math.max(Math.max(vertices.get(i23), vertices.get(i22)), vertices.get(i25));
            int i27 = i26 + 3;
            i14++;
            fArr3 = fArr5;
            str = str2;
            fArr = fArr6;
            nativeIntBuffer = triangles;
            i13 = i27;
        }
        final float[][] fArr12 = fArr3;
        x(hf2, fArr, area, flagMergeThr, new Function() {
            @Override
            public final Object apply(Object obj) {
                float[] p10;
                p10 = B.p(NativeIntBuffer.this, vertices, fArr2, fArr12, (float[]) obj);
                return p10;
            }
        });
        ctx.g(str);
    }

    public static void B(C16030h hf2, final float[] start, final float[] end, final float radius, int area, int flagMergeThr, N ctx) {
        ctx.f("RASTERIZE_CYLINDER");
        float[] fArr = {Math.min(start[0], end[0]) - radius, Math.min(start[1], end[1]) - radius, Math.min(start[2], end[2]) - radius, Math.max(start[0], end[0]) + radius, Math.max(start[1], end[1]) + radius, Math.max(start[2], end[2]) + radius};
        final float[] fArr2 = {end[0] - start[0], end[1] - start[1], end[2] - start[2]};
        x(hf2, fArr, area, flagMergeThr, new Function() {
            @Override
            public final Object apply(Object obj) {
                float[] q10;
                q10 = B.q(start, end, fArr2, radius, (float[]) obj);
                return q10;
            }
        });
        ctx.g("RASTERIZE_CYLINDER");
    }

    public static void C(C16030h hf2, final float[] center, final float radius, int area, int flagMergeThr, N ctx) {
        ctx.f("RASTERIZE_SPHERE");
        float f10 = center[0];
        float f11 = center[1];
        float f12 = center[2];
        x(hf2, new float[]{f10 - radius, f11 - radius, f12 - radius, f10 + radius, f11 + radius, f12 + radius}, area, flagMergeThr, new Function() {
            @Override
            public final Object apply(Object obj) {
                float[] r10;
                r10 = B.r(center, radius, (float[]) obj);
                return r10;
            }
        });
        ctx.g("RASTERIZE_SPHERE");
    }

    public static float[] D(float[] point, float[] start, float[] axis, float radiusSqr) {
        float[] fArr = {point[0] - start[0], point[1] - start[1], point[2] - start[2]};
        float h10 = I.h(fArr, axis);
        float f10 = axis[1];
        float h11 = I.h(axis, axis);
        float f11 = fArr[1];
        float f12 = h11 - (f10 * f10);
        float h12 = I.h(fArr, fArr) - radiusSqr;
        float f13 = (h11 * h12) - (h10 * h10);
        if (Math.abs(f12) < 1.0E-5f) {
            if (f13 > 0.0f) {
                return null;
            }
            float f14 = (-f11) / 1.0f;
            float f15 = (f10 - f11) / 1.0f;
            return new float[]{point[1] + Math.min(f14, f15), point[1] + Math.max(f14, f15)};
        }
        float f16 = (h11 * f11) - (f10 * h10);
        float f17 = (f16 * f16) - (f13 * f12);
        if (f17 < 0.0f) {
            return null;
        }
        float sqrt = (float) Math.sqrt(f17);
        float f18 = -f16;
        float f19 = (f18 - sqrt) / f12;
        float f20 = (f18 + sqrt) / f12;
        float f21 = (f19 * f10) + h10;
        if (f21 < 0.0f) {
            f19 = (-h10) / f10;
            if ((((f11 * 2.0f) + (f19 * 1.0f)) * f19) + h12 > 0.0f) {
                return null;
            }
        } else if (f21 > h11) {
            f19 = (h11 - h10) / f10;
            if (((h12 + h11) - (h10 * 2.0f)) + ((((f11 - f10) * 2.0f) + (f19 * 1.0f)) * f19) > 0.0f) {
                return null;
            }
        }
        float f22 = (f20 * f10) + h10;
        if (f22 < 0.0f) {
            f20 = (-h10) / f10;
            if (h12 + (((f11 * 2.0f) + (1.0f * f20)) * f20) > 0.0f) {
                return null;
            }
        } else if (f22 > h11) {
            f20 = (h11 - h10) / f10;
            if (((h12 + h11) - (h10 * 2.0f)) + ((((f11 - f10) * 2.0f) + (1.0f * f20)) * f20) > 0.0f) {
                return null;
            }
        }
        return new float[]{point[1] + Math.min(f19, f20), point[1] + Math.max(f19, f20)};
    }

    public static Float E(float[] point, int plane, float[][] planes) {
        float[] fArr = planes[plane];
        float[] fArr2 = {point[0], point[1] + ((fArr[3] - I.h(fArr, point)) / planes[plane][1]), point[2]};
        int i10 = plane + 1;
        float h10 = I.h(fArr2, planes[i10]) - planes[i10][3];
        if (h10 < 0.0f || h10 > 1.0f) {
            return null;
        }
        int i11 = plane + 2;
        float h11 = I.h(fArr2, planes[i11]) - planes[i11][3];
        if (h11 >= 0.0f && (1.0f - h10) - h11 >= 0.0f) {
            return Float.valueOf(fArr2[1]);
        }
        return null;
    }

    public static float[] F(float[] rectangle, float[] start, float[] end, float[] axis, float radiusSqr, float[] s10) {
        float min = Math.min(start[0], end[0]);
        float f10 = rectangle[0];
        if (min < f10) {
            s10 = t(s10, G(rectangle, start, axis, radiusSqr, f10));
        }
        float max = Math.max(start[0], end[0]);
        float f11 = rectangle[2];
        if (max > f11) {
            s10 = t(s10, G(rectangle, start, axis, radiusSqr, f11));
        }
        float min2 = Math.min(start[2], end[2]);
        float f12 = rectangle[1];
        if (min2 < f12) {
            s10 = t(s10, J(rectangle, start, axis, radiusSqr, f12));
        }
        float max2 = Math.max(start[2], end[2]);
        float f13 = rectangle[3];
        return max2 > f13 ? t(s10, J(rectangle, start, axis, radiusSqr, f13)) : s10;
    }

    public static float[] G(float[] rectangle, float[] start, float[] axis, float radiusSqr, float x10) {
        return D(H(rectangle, start, axis, x10), start, axis, radiusSqr);
    }

    public static float[] H(float[] rectangle, float[] start, float[] direction, float x10) {
        return new float[]{x10, rectangle[4], f(start[2] + (((x10 - start[0]) / direction[0]) * direction[2]), rectangle[1], rectangle[3])};
    }

    public static Float I(float[] rectangle, float x10, float y10, float z10, float dx, float dy, float dz, float slabX) {
        float f10 = x10 + dx;
        if ((x10 >= slabX || f10 <= slabX) && (x10 <= slabX || f10 >= slabX)) {
            return null;
        }
        float f11 = (slabX - x10) / dx;
        float f12 = z10 + (dz * f11);
        if (f12 < rectangle[1] || f12 > rectangle[3]) {
            return null;
        }
        return Float.valueOf(y10 + (dy * f11));
    }

    public static float[] J(float[] rectangle, float[] start, float[] axis, float radiusSqr, float z10) {
        return D(K(rectangle, start, axis, z10), start, axis, radiusSqr);
    }

    public static float[] K(float[] rectangle, float[] start, float[] direction, float z10) {
        return new float[]{f(start[0] + (((z10 - start[2]) / direction[2]) * direction[0]), rectangle[0], rectangle[2]), rectangle[4], z10};
    }

    public static Float L(float[] rectangle, float x10, float y10, float z10, float dx, float dy, float dz, float slabZ) {
        float f10 = z10 + dz;
        if ((z10 >= slabZ || f10 <= slabZ) && (z10 <= slabZ || f10 >= slabZ)) {
            return null;
        }
        float f11 = (slabZ - z10) / dz;
        float f12 = x10 + (dx * f11);
        if (f12 < rectangle[0] || f12 > rectangle[2]) {
            return null;
        }
        return Float.valueOf(y10 + (dy * f11));
    }

    public static float f(float v10, float min, float max) {
        return Math.max(Math.min(max, v10), min);
    }

    public static float[] g(float[] start, float radiusSqr, float[] s10, int i10, float[][] rectangleOnPlane) {
        float[] fArr = rectangleOnPlane[i10];
        float f10 = fArr[0];
        float f11 = f10 - start[0];
        float f12 = fArr[1];
        float f13 = f12 - start[1];
        float f14 = fArr[2];
        float[] fArr2 = {f11, f13, f14 - start[2]};
        float[] fArr3 = rectangleOnPlane[(i10 + 1) % 4];
        float[] fArr4 = {fArr3[0] - f10, fArr3[1] - f12, fArr3[2] - f14};
        float h10 = I.h(fArr4, fArr4);
        float h11 = I.h(fArr2, fArr4) / h10;
        float h12 = (h11 * h11) - ((I.h(fArr2, fArr2) - radiusSqr) / h10);
        if (h12 <= 1.0E-5f) {
            return s10;
        }
        float sqrt = (float) Math.sqrt(h12);
        float f15 = -h11;
        float f16 = f15 - sqrt;
        float f17 = f15 + sqrt;
        if (f16 > 1.0f || f17 < 0.0f) {
            return s10;
        }
        float max = Math.max(0.0f, f16);
        float min = Math.min(1.0f, f17);
        float f18 = rectangleOnPlane[i10][1];
        float f19 = fArr4[1];
        float f20 = (max * f19) + f18;
        float f21 = f18 + (min * f19);
        return t(s10, new float[]{Math.min(f20, f21), Math.max(f20, f21)});
    }

    public static float[] h(float[] rectangle, float[] vertices, float[][] planes) {
        float f10 = Float.POSITIVE_INFINITY;
        float f11 = Float.NEGATIVE_INFINITY;
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = i10 * 3;
            float f12 = vertices[i11];
            if (f12 >= rectangle[0] && f12 < rectangle[2]) {
                float f13 = vertices[i11 + 2];
                if (f13 >= rectangle[1] && f13 < rectangle[3]) {
                    int i12 = i11 + 1;
                    f10 = Math.min(f10, vertices[i12]);
                    f11 = Math.max(f11, vertices[i12]);
                }
            }
        }
        float[] fArr = {0.0f, rectangle[1], 0.0f};
        for (int i13 = 0; i13 < 4; i13++) {
            fArr[0] = (i13 & 1) == 0 ? rectangle[0] : rectangle[2];
            fArr[2] = (i13 & 2) == 0 ? rectangle[1] : rectangle[3];
            for (int i14 = 0; i14 < 6; i14++) {
                if (Math.abs(planes[i14][1]) > 1.0E-5f) {
                    float h10 = I.h(planes[i14], fArr);
                    float[] fArr2 = planes[i14];
                    float f14 = fArr[1] + ((fArr2[3] - h10) / fArr2[1]);
                    int i15 = 0;
                    while (true) {
                        if (i15 >= 6) {
                            f10 = Math.min(f10, f14);
                            f11 = Math.max(f11, f14);
                            break;
                        }
                        if (i15 != i14) {
                            float f15 = fArr[0];
                            float[] fArr3 = planes[i15];
                            if ((f15 * fArr3[0]) + (fArr3[1] * f14) + (fArr[2] * fArr3[2]) > fArr3[3]) {
                                break;
                            }
                        }
                        i15++;
                    }
                }
            }
        }
        float f16 = f10;
        float f17 = f11;
        int i16 = 0;
        while (true) {
            int[] iArr = f127615b;
            if (i16 >= iArr.length) {
                break;
            }
            int i17 = iArr[i16] * 3;
            int i18 = iArr[i16 + 1] * 3;
            float f18 = vertices[i17];
            float f19 = vertices[i17 + 2];
            float f20 = vertices[i17 + 1];
            float f21 = vertices[i18] - f18;
            float f22 = vertices[i18 + 1] - f20;
            float f23 = vertices[i18 + 2] - f19;
            if (Math.abs(f21) > 1.0E-5f) {
                Float I10 = I(rectangle, f18, f20, f19, f21, f22, f23, rectangle[0]);
                if (I10 != null) {
                    f16 = Math.min(f16, I10.floatValue());
                    f17 = Math.max(f17, I10.floatValue());
                }
                Float I11 = I(rectangle, f18, f20, f19, f21, f22, f23, rectangle[2]);
                if (I11 != null) {
                    f16 = Math.min(f16, I11.floatValue());
                    f17 = Math.max(f17, I11.floatValue());
                }
            }
            if (Math.abs(f23) > 1.0E-5f) {
                Float L10 = L(rectangle, f18, f20, f19, f21, f22, f23, rectangle[1]);
                if (L10 != null) {
                    f16 = Math.min(f16, L10.floatValue());
                    f17 = Math.max(f17, L10.floatValue());
                }
                Float L11 = L(rectangle, f18, f20, f19, f21, f22, f23, rectangle[3]);
                if (L11 != null) {
                    float min = Math.min(f16, L11.floatValue());
                    f17 = Math.max(f17, L11.floatValue());
                    f16 = min;
                }
            }
            i16 += 2;
        }
        if (f16 <= f17) {
            return new float[]{f16, f17};
        }
        return null;
    }

    public static float[] i(float[] rectangle, float[] start, float[] end, float[] axis, float radiusSqr) {
        float[] t10 = t(m(rectangle, start, radiusSqr), m(rectangle, end, radiusSqr));
        float f10 = axis[0];
        float f11 = axis[2];
        return (f10 * f10) + (f11 * f11) > 1.0E-5f ? F(rectangle, start, end, axis, radiusSqr, t10) : t10;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static float[] j(float[] rectangle, NativeIntBuffer triangles, NativeFloatBuffer verts, float[][] planes, float[][] triBounds) {
        float f10;
        float f11;
        int i10 = 3;
        float f12 = Float.POSITIVE_INFINITY;
        float f13 = Float.NEGATIVE_INFINITY;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < triangles.capacity()) {
            float[] fArr = triBounds[i13];
            if (fArr[i11] <= rectangle[2] && fArr[2] >= rectangle[i11] && fArr[1] <= rectangle[i10] && fArr[i10] >= rectangle[1] && Math.abs(planes[i12][1]) >= 1.0E-5f) {
                int i14 = i11;
                while (i14 < i10) {
                    int i15 = triangles.get(i12 + i14) * i10;
                    int i16 = i14 + 1;
                    int i17 = triangles.get((i16 % 3) + i12) * i10;
                    float f14 = verts.get(i15);
                    float f15 = verts.get(i15 + 2);
                    if (f14 >= rectangle[i11] && f14 <= rectangle[2] && f15 >= rectangle[1] && f15 <= rectangle[i10]) {
                        int i18 = i15 + 1;
                        f12 = Math.min(f12, verts.get(i18));
                        f13 = Math.max(f13, verts.get(i18));
                    }
                    float f16 = f12;
                    float f17 = f13;
                    float f18 = verts.get(i15 + 1);
                    float f19 = verts.get(i17) - f14;
                    float f20 = verts.get(i17 + 1) - f18;
                    float f21 = verts.get(i17 + 2) - f15;
                    if (Math.abs(f19) > 1.0E-5f) {
                        float f22 = rectangle[i11];
                        f10 = f17;
                        f11 = f16;
                        Float I10 = I(rectangle, f14, f18, f15, f19, f20, f21, f22);
                        if (I10 != null) {
                            float min = Math.min(f11, I10.floatValue());
                            f10 = Math.max(f10, I10.floatValue());
                            f11 = min;
                        }
                        Float I11 = I(rectangle, f14, f18, f15, f19, f20, f21, rectangle[2]);
                        if (I11 != null) {
                            f16 = Math.min(f11, I11.floatValue());
                            f17 = Math.max(f10, I11.floatValue());
                        }
                        if (Math.abs(f21) > 1.0E-5f) {
                            Float L10 = L(rectangle, f14, f18, f15, f19, f20, f21, rectangle[1]);
                            if (L10 != null) {
                                f11 = Math.min(f11, L10.floatValue());
                                f10 = Math.max(f10, L10.floatValue());
                            }
                            Float L11 = L(rectangle, f14, f18, f15, f19, f20, f21, rectangle[3]);
                            if (L11 != null) {
                                float min2 = Math.min(f11, L11.floatValue());
                                f13 = Math.max(f10, L11.floatValue());
                                f12 = min2;
                                i14 = i16;
                                i10 = 3;
                                i11 = 0;
                            }
                        }
                        f12 = f11;
                        f13 = f10;
                        i14 = i16;
                        i10 = 3;
                        i11 = 0;
                    }
                    f10 = f17;
                    f11 = f16;
                    if (Math.abs(f21) > 1.0E-5f) {
                    }
                    f12 = f11;
                    f13 = f10;
                    i14 = i16;
                    i10 = 3;
                    i11 = 0;
                }
                float[] fArr2 = new float[i10];
                char c10 = 0;
                fArr2[0] = 0.0f;
                fArr2[1] = rectangle[1];
                fArr2[2] = 0.0f;
                int i19 = 0;
                while (i19 < 4) {
                    fArr2[c10] = (i19 & 1) == 0 ? rectangle[c10] : rectangle[2];
                    fArr2[2] = (i19 & 2) == 0 ? rectangle[1] : rectangle[3];
                    Float E10 = E(fArr2, i12, planes);
                    if (E10 != null) {
                        f12 = Math.min(f12, E10.floatValue());
                        f13 = Math.max(f13, E10.floatValue());
                    }
                    i19++;
                    c10 = 0;
                }
            }
            i13++;
            i12 += 3;
            i10 = 3;
            i11 = 0;
        }
        if (f12 < f13) {
            return new float[]{f12, f13};
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static float[] k(float[] rectangle, int[] triangles, float[] verts, float[][] planes, float[][] triBounds) {
        float f10;
        float f11;
        int i10 = 3;
        float f12 = Float.POSITIVE_INFINITY;
        float f13 = Float.NEGATIVE_INFINITY;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < triangles.length) {
            float[] fArr = triBounds[i13];
            if (fArr[i11] <= rectangle[2] && fArr[2] >= rectangle[i11] && fArr[1] <= rectangle[i10] && fArr[i10] >= rectangle[1] && Math.abs(planes[i12][1]) >= 1.0E-5f) {
                int i14 = i11;
                while (i14 < i10) {
                    int i15 = triangles[i12 + i14] * i10;
                    int i16 = i14 + 1;
                    int i17 = triangles[(i16 % 3) + i12] * i10;
                    float f14 = verts[i15];
                    float f15 = verts[i15 + 2];
                    if (f14 >= rectangle[i11] && f14 <= rectangle[2] && f15 >= rectangle[1] && f15 <= rectangle[i10]) {
                        int i18 = i15 + 1;
                        f12 = Math.min(f12, verts[i18]);
                        f13 = Math.max(f13, verts[i18]);
                    }
                    float f16 = f12;
                    float f17 = f13;
                    float f18 = verts[i15 + 1];
                    float f19 = verts[i17] - f14;
                    float f20 = verts[i17 + 1] - f18;
                    float f21 = verts[i17 + 2] - f15;
                    if (Math.abs(f19) > 1.0E-5f) {
                        float f22 = rectangle[i11];
                        f10 = f17;
                        f11 = f16;
                        Float I10 = I(rectangle, f14, f18, f15, f19, f20, f21, f22);
                        if (I10 != null) {
                            float min = Math.min(f11, I10.floatValue());
                            f10 = Math.max(f10, I10.floatValue());
                            f11 = min;
                        }
                        Float I11 = I(rectangle, f14, f18, f15, f19, f20, f21, rectangle[2]);
                        if (I11 != null) {
                            f16 = Math.min(f11, I11.floatValue());
                            f17 = Math.max(f10, I11.floatValue());
                        }
                        if (Math.abs(f21) > 1.0E-5f) {
                            Float L10 = L(rectangle, f14, f18, f15, f19, f20, f21, rectangle[1]);
                            if (L10 != null) {
                                f11 = Math.min(f11, L10.floatValue());
                                f10 = Math.max(f10, L10.floatValue());
                            }
                            Float L11 = L(rectangle, f14, f18, f15, f19, f20, f21, rectangle[3]);
                            if (L11 != null) {
                                float min2 = Math.min(f11, L11.floatValue());
                                f13 = Math.max(f10, L11.floatValue());
                                f12 = min2;
                                i14 = i16;
                                i10 = 3;
                                i11 = 0;
                            }
                        }
                        f12 = f11;
                        f13 = f10;
                        i14 = i16;
                        i10 = 3;
                        i11 = 0;
                    }
                    f10 = f17;
                    f11 = f16;
                    if (Math.abs(f21) > 1.0E-5f) {
                    }
                    f12 = f11;
                    f13 = f10;
                    i14 = i16;
                    i10 = 3;
                    i11 = 0;
                }
                float[] fArr2 = new float[i10];
                char c10 = 0;
                fArr2[0] = 0.0f;
                fArr2[1] = rectangle[1];
                fArr2[2] = 0.0f;
                int i19 = 0;
                while (i19 < 4) {
                    fArr2[c10] = (i19 & 1) == 0 ? rectangle[c10] : rectangle[2];
                    fArr2[2] = (i19 & 2) == 0 ? rectangle[1] : rectangle[3];
                    Float E10 = E(fArr2, i12, planes);
                    if (E10 != null) {
                        f12 = Math.min(f12, E10.floatValue());
                        f13 = Math.max(f13, E10.floatValue());
                    }
                    i19++;
                    c10 = 0;
                }
            }
            i13++;
            i12 += 3;
            i10 = 3;
            i11 = 0;
        }
        if (f12 < f13) {
            return new float[]{f12, f13};
        }
        return null;
    }

    public static float[] l(float[] rectangle, float[] start, float[] end, float[] axis, float radiusSqr) {
        int i10 = 4;
        D(new float[]{f(start[0], rectangle[0], rectangle[2]), rectangle[4], f(start[2], rectangle[1], rectangle[3])}, start, axis, radiusSqr);
        float[] D10 = D(new float[]{f(end[0], rectangle[0], rectangle[2]), rectangle[4], f(end[2], rectangle[1], rectangle[3])}, start, axis, radiusSqr);
        float f10 = axis[0];
        float f11 = axis[2];
        if ((f10 * f10) + (f11 * f11) > 1.0E-5f) {
            D10 = F(rectangle, start, end, axis, radiusSqr, D10);
        }
        float f12 = axis[1];
        if (f12 * f12 > 1.0E-5f) {
            Class<Float> cls = Float.TYPE;
            float[][] fArr = (float[][]) Array.newInstance(cls, 4, 3);
            float[][] fArr2 = (float[][]) Array.newInstance(cls, 4, 3);
            float h10 = I.h(axis, start);
            float h11 = I.h(axis, end);
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 + 1;
                float f13 = rectangle[i12 & 2];
                float f14 = rectangle[(i11 & 2) + 1];
                float h12 = I.h(axis, new float[]{f13, rectangle[i10], f14});
                float f15 = (h10 - h12) / axis[1];
                float[] fArr3 = fArr[i11];
                fArr3[0] = f13;
                float f16 = rectangle[4];
                fArr3[1] = f16 + f15;
                fArr3[2] = f14;
                float f17 = (h11 - h12) / axis[1];
                float[] fArr4 = fArr2[i11];
                fArr4[0] = f13;
                fArr4[1] = f16 + f17;
                fArr4[2] = f14;
                i11 = i12;
                i10 = 4;
            }
            int i13 = i10;
            for (int i14 = 0; i14 < i13; i14++) {
                D10 = g(end, radiusSqr, g(start, radiusSqr, D10, i14, fArr), i14, fArr2);
            }
        }
        return D10;
    }

    public static float[] m(float[] rectangle, float[] center, float radiusSqr) {
        float max = Math.max(rectangle[0], Math.min(center[0], rectangle[2]));
        float f10 = rectangle[4];
        float max2 = Math.max(rectangle[1], Math.min(center[2], rectangle[3]));
        float f11 = max - center[0];
        float f12 = f10 - center[1];
        float s10 = s(f11, f12, max2 - center[2]) - radiusSqr;
        if (s10 > 0.0f && f12 > 0.0f) {
            return null;
        }
        float f13 = (f12 * f12) - s10;
        if (f13 < 0.0f) {
            return null;
        }
        float sqrt = (float) Math.sqrt(f13);
        float f14 = -f12;
        float f15 = f14 - sqrt;
        return new float[]{(f15 >= 0.0f ? f15 : 0.0f) + f10, f10 + f14 + sqrt};
    }

    public static float[] n(float[] fArr, float[][] fArr2, float[] fArr3) {
        return h(fArr3, fArr, fArr2);
    }

    public static float[] o(float[] fArr, float[] fArr2, float[] fArr3, float f10, float[] fArr4) {
        return i(fArr4, fArr, fArr2, fArr3, f10 * f10);
    }

    public static float[] p(NativeIntBuffer nativeIntBuffer, NativeFloatBuffer nativeFloatBuffer, float[][] fArr, float[][] fArr2, float[] fArr3) {
        return j(fArr3, nativeIntBuffer, nativeFloatBuffer, fArr, fArr2);
    }

    public static float[] q(float[] fArr, float[] fArr2, float[] fArr3, float f10, float[] fArr4) {
        return l(fArr4, fArr, fArr2, fArr3, f10 * f10);
    }

    public static float[] r(float[] fArr, float f10, float[] fArr2) {
        return m(fArr2, fArr, f10 * f10);
    }

    public static float s(float dx, float dy, float dz) {
        return (dx * dx) + (dy * dy) + (dz * dz);
    }

    public static float[] t(float[] s12, float[] s22) {
        if (s12 == null && s22 == null) {
            return null;
        }
        return s12 == null ? s22 : s22 == null ? s12 : new float[]{Math.min(s12[0], s22[0]), Math.max(s12[1], s22[1])};
    }

    public static boolean u(float[] amin, float[] amax, float[] bounds) {
        boolean z10 = amin[0] <= bounds[3] && amax[0] >= bounds[0];
        if (amin[1] > bounds[4]) {
            z10 = false;
        }
        if (amin[2] > bounds[5] || amax[2] < bounds[2]) {
            return false;
        }
        return z10;
    }

    public static void v(float[][] planes, int p10, float[] v12, float[] v22, NativeFloatBuffer vertices, int vert) {
        I.g(planes[p10], v12, v22);
        float[] fArr = planes[p10];
        fArr[3] = (fArr[0] * vertices.get(vert)) + (planes[p10][1] * vertices.get(vert + 1)) + (planes[p10][2] * vertices.get(vert + 2));
    }

    public static void w(float[][] planes, int p10, float[] v12, float[] v22, float[] vertices, int vert) {
        I.g(planes[p10], v12, v22);
        float[] fArr = planes[p10];
        fArr[3] = (fArr[0] * vertices[vert]) + (fArr[1] * vertices[vert + 1]) + (fArr[2] * vertices[vert + 2]);
    }

    public static void x(C16030h hf2, float[] bounds, int area, int flagMergeThr, Function<float[], float[]> intersection) {
        int i10;
        int i11;
        float[] fArr;
        int floor;
        int ceil;
        if (u(hf2.f127711c, hf2.f127712d, bounds)) {
            bounds[3] = Math.min(bounds[3], hf2.f127712d[0]);
            char c10 = 2;
            bounds[5] = Math.min(bounds[5], hf2.f127712d[2]);
            bounds[0] = Math.max(bounds[0], hf2.f127711c[0]);
            float max = Math.max(bounds[2], hf2.f127711c[2]);
            bounds[2] = max;
            float f10 = bounds[3];
            float f11 = bounds[0];
            if (f10 > f11) {
                char c11 = 1;
                if (bounds[4] <= bounds[1] || bounds[5] <= max) {
                    return;
                }
                float f12 = 1.0f / hf2.f127713e;
                float f13 = 1.0f / hf2.f127714f;
                float[] fArr2 = hf2.f127711c;
                float f14 = fArr2[0];
                int i12 = (int) ((f11 - f14) * f12);
                int i13 = (int) ((max - fArr2[2]) * f12);
                int min = Math.min(hf2.f127709a - 1, (int) ((f10 - f14) * f12));
                int min2 = Math.min(hf2.f127710b - 1, (int) ((bounds[5] - hf2.f127711c[2]) * f12));
                float[] fArr3 = new float[5];
                fArr3[4] = hf2.f127711c[1];
                int i14 = i12;
                while (i14 <= min) {
                    int i15 = i13;
                    while (i15 <= min2) {
                        float f15 = hf2.f127713e;
                        float[] fArr4 = hf2.f127711c;
                        float f16 = (i14 * f15) + fArr4[0];
                        fArr3[0] = f16;
                        float f17 = (i15 * f15) + fArr4[c10];
                        fArr3[c11] = f17;
                        fArr3[c10] = f16 + f15;
                        fArr3[3] = f17 + f15;
                        if (intersection.apply(fArr3) == null || (floor = (int) Math.floor((r0[0] - hf2.f127711c[c11]) * f13)) == (ceil = (int) Math.ceil((r0[c11] - hf2.f127711c[c11]) * f13))) {
                            i10 = i15;
                            i11 = i14;
                            fArr = fArr3;
                        } else {
                            int e10 = r.e(floor, 0, u.f127816d);
                            int e11 = r.e(ceil, e10 + 1, u.f127816d);
                            i10 = i15;
                            i11 = i14;
                            fArr = fArr3;
                            G.a(hf2, i14, i15, e10, e11, area, flagMergeThr);
                        }
                        i15 = i10 + 1;
                        i14 = i11;
                        fArr3 = fArr;
                        c10 = 2;
                        c11 = 1;
                    }
                    i14++;
                    c10 = 2;
                    c11 = 1;
                }
            }
        }
    }

    public static void y(C16030h hf2, float[] center, float[][] halfEdges, int area, int flagMergeThr, N ctx) {
        ctx.f("RASTERIZE_BOX");
        float[] fArr = halfEdges[0];
        float[] fArr2 = {fArr[0], fArr[1], fArr[2]};
        float[] fArr3 = halfEdges[1];
        float[] fArr4 = {fArr3[0], fArr3[1], fArr3[2]};
        float[] fArr5 = halfEdges[2];
        float[][] fArr6 = {fArr2, fArr4, new float[]{fArr5[0], fArr5[1], fArr5[2]}};
        I.m(fArr6[0]);
        I.m(fArr6[1]);
        I.m(fArr6[2]);
        final float[] fArr7 = new float[24];
        float[] fArr8 = {Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY};
        int i10 = 0;
        while (true) {
            float f10 = -1.0f;
            if (i10 >= 8) {
                break;
            }
            float f11 = (i10 & 1) != 0 ? 1.0f : -1.0f;
            float f12 = (i10 & 2) != 0 ? 1.0f : -1.0f;
            if ((i10 & 4) != 0) {
                f10 = 1.0f;
            }
            int i11 = i10 * 3;
            float f13 = center[0];
            float[] fArr9 = halfEdges[0];
            float f14 = f13 + (fArr9[0] * f11);
            float[] fArr10 = halfEdges[1];
            float f15 = f14 + (fArr10[0] * f12);
            float[] fArr11 = halfEdges[2];
            fArr7[i11] = f15 + (fArr11[0] * f10);
            int i12 = i11 + 1;
            fArr7[i12] = center[1] + (fArr9[1] * f11) + (fArr10[1] * f12) + (fArr11[1] * f10);
            int i13 = i11 + 2;
            fArr7[i13] = center[2] + (f11 * fArr9[2]) + (f12 * fArr10[2]) + (f10 * fArr11[2]);
            fArr8[0] = Math.min(fArr8[0], fArr7[i11]);
            fArr8[1] = Math.min(fArr8[1], fArr7[i12]);
            fArr8[2] = Math.min(fArr8[2], fArr7[i13]);
            fArr8[3] = Math.max(fArr8[3], fArr7[i11]);
            fArr8[4] = Math.max(fArr8[4], fArr7[i12]);
            fArr8[5] = Math.max(fArr8[5], fArr7[i13]);
            i10++;
        }
        final float[][] fArr12 = (float[][]) Array.newInstance(Float.TYPE, 6, 4);
        int i14 = 0;
        while (i14 < 6) {
            float f16 = i14 < 3 ? -1.0f : 1.0f;
            int i15 = i14 < 3 ? 0 : 7;
            float[] fArr13 = fArr12[i14];
            float[] fArr14 = fArr6[i14 % 3];
            float f17 = fArr14[0] * f16;
            fArr13[0] = f17;
            float f18 = fArr14[1] * f16;
            fArr13[1] = f18;
            float f19 = f16 * fArr14[2];
            fArr13[2] = f19;
            int i16 = i15 * 3;
            fArr13[3] = (fArr7[i16] * f17) + (fArr7[i16 + 1] * f18) + (fArr7[i16 + 2] * f19);
            i14++;
        }
        x(hf2, fArr8, area, flagMergeThr, new Function() {
            @Override
            public final Object apply(Object obj) {
                float[] n10;
                n10 = B.n(fArr7, fArr12, (float[]) obj);
                return n10;
            }
        });
        ctx.g("RASTERIZE_BOX");
    }

    public static void z(C16030h hf2, final float[] start, final float[] end, final float radius, int area, int flagMergeThr, N ctx) {
        ctx.f("RASTERIZE_CAPSULE");
        float[] fArr = {Math.min(start[0], end[0]) - radius, Math.min(start[1], end[1]) - radius, Math.min(start[2], end[2]) - radius, Math.max(start[0], end[0]) + radius, Math.max(start[1], end[1]) + radius, Math.max(start[2], end[2]) + radius};
        final float[] fArr2 = {end[0] - start[0], end[1] - start[1], end[2] - start[2]};
        x(hf2, fArr, area, flagMergeThr, new Function() {
            @Override
            public final Object apply(Object obj) {
                float[] o10;
                o10 = B.o(start, end, fArr2, radius, (float[]) obj);
                return o10;
            }
        });
        ctx.g("RASTERIZE_CAPSULE");
    }
}
