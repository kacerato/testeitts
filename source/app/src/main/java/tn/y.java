package tn;

import java.util.Optional;
import java.util.function.BiFunction;
import wn.C16030h;
import wn.K;

public class y {

    public final float[] f117814a;

    public final float f117815b;

    public final float f117816c;

    public final BiFunction<Integer, Integer, Optional<C16030h>> f117817d;

    public y(float[] origin, float tileWidth, float tileDepth, BiFunction<Integer, Integer, Optional<C16030h>> heightfieldProvider) {
        this.f117814a = origin;
        this.f117815b = tileWidth;
        this.f117816c = tileDepth;
        this.f117817d = heightfieldProvider;
    }

    public Optional<Float> a(float[] start, float[] end) {
        return c(start, end);
    }

    public final Optional<Float> b(int x10, int z10, float[] start, float[] end, float tMin, float tMax) {
        float f10;
        int i10;
        Optional<C16030h> apply = this.f117817d.apply(Integer.valueOf(x10), Integer.valueOf(z10));
        if (apply.isPresent()) {
            C16030h c16030h = apply.get();
            float f11 = end[0];
            float f12 = start[0];
            float f13 = f11 - f12;
            float f14 = end[1];
            float f15 = start[1];
            float f16 = f14 - f15;
            float f17 = end[2];
            float f18 = start[2];
            float f19 = f17 - f18;
            float[] fArr = {(tMin * f13) + f12, (tMin * f16) + f15, (tMin * f19) + f18};
            float[] fArr2 = {f12 + (tMax * f13), f15 + (tMax * f16), f18 + (tMax * f19)};
            float f20 = fArr[0];
            float[] fArr3 = c16030h.f127711c;
            float f21 = f20 - fArr3[0];
            float f22 = fArr[2] - fArr3[2];
            int floor = (int) Math.floor(f21 / c16030h.f127713e);
            int floor2 = (int) Math.floor(f22 / c16030h.f127713e);
            int floor3 = (int) Math.floor((fArr2[0] - c16030h.f127711c[0]) / c16030h.f127713e);
            int floor4 = (int) Math.floor((fArr2[2] - c16030h.f127711c[2]) / c16030h.f127713e);
            int i11 = floor3 - floor;
            int i12 = floor4 - floor2;
            int i13 = i11 < 0 ? -1 : 1;
            int i14 = i12 >= 0 ? 1 : -1;
            float f23 = c16030h.f127713e;
            float f24 = ((f21 % f23) + f23) % f23;
            float f25 = ((f22 % f23) + f23) % f23;
            float f26 = 0.0f;
            if (f13 >= 0.0f) {
                f24 = f23 - f24;
            }
            float abs = Math.abs(f24);
            if (f19 >= 0.0f) {
                f25 = c16030h.f127713e - f25;
            }
            float abs2 = Math.abs(f25);
            float abs3 = Math.abs(f13);
            float abs4 = Math.abs(f19);
            float f27 = abs / abs3;
            float f28 = abs2 / abs4;
            float f29 = c16030h.f127713e;
            float f30 = f29 / abs3;
            float f31 = f29 / abs4;
            while (true) {
                if (floor < 0 || floor >= c16030h.f127709a || floor2 < 0 || floor2 >= c16030h.f127710b) {
                    f10 = f16;
                    i10 = i14;
                } else {
                    float f32 = start[1];
                    float f33 = tMin + f26;
                    float f34 = (f32 + (f16 * f33)) - c16030h.f127711c[1];
                    f10 = f16;
                    float min = (f32 + ((tMin + Math.min(f27, f28)) * f16)) - c16030h.f127711c[1];
                    i10 = i14;
                    float min2 = Math.min(f34, min) / c16030h.f127714f;
                    float max = Math.max(f34, min) / c16030h.f127714f;
                    for (K k10 = c16030h.f127715g[(c16030h.f127709a * floor2) + floor]; k10 != null; k10 = k10.f127661d) {
                        if (k10.f127658a <= min2 && k10.f127659b >= max) {
                            return Optional.of(Float.valueOf(Math.min(1.0f, f33)));
                        }
                    }
                }
                if (i11 <= 0 ? floor <= floor3 : floor >= floor3) {
                    if (i12 > 0) {
                        if (floor2 >= floor4) {
                            break;
                        }
                    } else if (floor2 <= floor4) {
                        break;
                    }
                }
                if (f27 < f28) {
                    floor += i13;
                    f16 = f10;
                    i14 = i10;
                    f26 = f27;
                    f27 += f30;
                } else {
                    floor2 += i10;
                    f16 = f10;
                    i14 = i10;
                    f26 = f28;
                    f28 += f31;
                }
            }
        }
        return Optional.empty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d1, code lost:
    
        return java.util.Optional.empty();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Optional<Float> c(float[] start, float[] end) {
        float f10 = start[0];
        float[] fArr = this.f117814a;
        float f11 = f10 - fArr[0];
        float f12 = start[2] - fArr[2];
        int floor = (int) Math.floor(f11 / this.f117815b);
        int floor2 = (int) Math.floor(f12 / this.f117816c);
        int floor3 = (int) Math.floor((end[0] - this.f117814a[0]) / this.f117815b);
        int floor4 = (int) Math.floor((end[2] - this.f117814a[2]) / this.f117816c);
        int i10 = floor3 - floor;
        int i11 = floor4 - floor2;
        int i12 = i10 < 0 ? -1 : 1;
        int i13 = i11 >= 0 ? 1 : -1;
        float f13 = this.f117815b;
        float f14 = ((f11 % f13) + f13) % f13;
        float f15 = this.f117816c;
        float f16 = ((f12 % f15) + f15) % f15;
        float f17 = end[0] - start[0];
        float f18 = end[2] - start[2];
        if (f17 >= 0.0f) {
            f14 = f13 - f14;
        }
        float abs = Math.abs(f14);
        if (f18 >= 0.0f) {
            f16 = this.f117816c - f16;
        }
        float abs2 = Math.abs(f16);
        float abs3 = Math.abs(f17);
        float abs4 = Math.abs(f18);
        float f19 = abs2 / abs4;
        float f20 = this.f117815b / abs3;
        float f21 = this.f117816c / abs4;
        float f22 = abs / abs3;
        float f23 = 0.0f;
        int i14 = floor2;
        int i15 = floor;
        while (true) {
            int i16 = i14;
            float f24 = f19;
            int i17 = i13;
            int i18 = i15;
            float f25 = f23;
            f23 = f22;
            Optional<Float> b10 = b(i15, i14, start, end, f25, Math.min(1.0f, Math.min(f22, f19)));
            if (b10.isPresent()) {
                return b10;
            }
            if (i10 <= 0 ? i18 <= floor3 : i18 >= floor3) {
                if (i11 <= 0) {
                    if (i16 <= floor4) {
                        break;
                    }
                } else if (i16 >= floor4) {
                    break;
                }
            }
            if (f23 < f24) {
                f22 = f23 + f20;
                i15 = i18 + i12;
                i14 = i16;
                f19 = f24;
            } else {
                f19 = f24 + f21;
                i14 = i16 + i17;
                i15 = i18;
                f22 = f23;
                f23 = f24;
            }
            i13 = i17;
        }
    }
}
