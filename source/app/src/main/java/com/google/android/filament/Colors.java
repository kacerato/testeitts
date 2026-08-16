package com.google.android.filament;

import androidx.annotation.NonNull;
import androidx.annotation.Size;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

public class Colors {

    public enum a {
        ACCURATE,
        FAST
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD, ElementType.LOCAL_VARIABLE, ElementType.FIELD})
    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    public enum c {
        SRGB,
        LINEAR
    }

    public enum d {
        SRGB,
        LINEAR,
        PREMULTIPLIED_SRGB,
        PREMULTIPLIED_LINEAR
    }

    @NonNull
    @Size(3)
    public static float[] a(float f10) {
        float[] fArr = new float[3];
        nCct(f10, fArr);
        return fArr;
    }

    @NonNull
    @Size(3)
    public static float[] b(float f10) {
        float[] fArr = new float[3];
        nIlluminantD(f10, fArr);
        return fArr;
    }

    @NonNull
    public static float[] c(@NonNull a aVar, @NonNull @Size(min = 3) float[] fArr) {
        int ordinal = aVar.ordinal();
        int i10 = 0;
        if (ordinal == 0) {
            while (i10 < 3) {
                float f10 = fArr[i10];
                fArr[i10] = f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d);
                i10++;
            }
        } else if (ordinal == 1) {
            while (i10 < 3) {
                fArr[i10] = (float) Math.sqrt(fArr[i10]);
                i10++;
            }
        }
        return fArr;
    }

    @NonNull
    @Size(3)
    public static float[] d(@NonNull c cVar, float f10, float f11, float f12) {
        return e(cVar, new float[]{f10, f11, f12});
    }

    @NonNull
    @Size(min = 3)
    public static float[] e(@NonNull c cVar, @NonNull @Size(min = 3) float[] fArr) {
        return cVar == c.LINEAR ? fArr : c(a.ACCURATE, fArr);
    }

    @NonNull
    @Size(4)
    public static float[] f(@NonNull d dVar, float f10, float f11, float f12, float f13) {
        return g(dVar, new float[]{f10, f11, f12, f13});
    }

    @NonNull
    @Size(min = 4)
    public static float[] g(@NonNull d dVar, @NonNull @Size(min = 4) float[] fArr) {
        int ordinal = dVar.ordinal();
        if (ordinal == 0) {
            c(a.ACCURATE, fArr);
        } else if (ordinal != 1) {
            return ordinal != 2 ? fArr : c(a.ACCURATE, fArr);
        }
        float f10 = fArr[3];
        fArr[0] = fArr[0] * f10;
        fArr[1] = fArr[1] * f10;
        fArr[2] = fArr[2] * f10;
        return fArr;
    }

    private static native void nCct(float f10, @NonNull @Size(3) float[] fArr);

    private static native void nIlluminantD(float f10, @NonNull @Size(3) float[] fArr);
}
