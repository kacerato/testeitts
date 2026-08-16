package com.google.android.filament;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import org.tukaani.xz.BCJCoder;

public final class c {
    @NonNull
    @Size(min = 2)
    public static double[] a(@Nullable double[] dArr) {
        if (dArr == null) {
            return new double[2];
        }
        if (dArr.length >= 2) {
            return dArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 2");
    }

    public static double[] b(@Nullable double[] dArr) {
        if (dArr == null) {
            return new double[4];
        }
        if (dArr.length >= 4) {
            return dArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 4");
    }

    public static void c(@NonNull double[] dArr) {
        if (dArr.length < 4) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 4");
        }
    }

    @NonNull
    @Size(min = 2)
    public static float[] d(@Nullable float[] fArr) {
        if (fArr == null) {
            return new float[2];
        }
        if (fArr.length >= 2) {
            return fArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 2");
    }

    @NonNull
    @Size(min = 3)
    public static float[] e(@Nullable float[] fArr) {
        if (fArr == null) {
            return new float[3];
        }
        if (fArr.length >= 3) {
            return fArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 3");
    }

    public static void f(@NonNull float[] fArr) {
        if (fArr.length < 3) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 3");
        }
    }

    @NonNull
    @Size(min = 4)
    public static float[] g(@Nullable float[] fArr) {
        if (fArr == null) {
            return new float[4];
        }
        if (fArr.length >= 4) {
            return fArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 4");
    }

    public static void h(@NonNull float[] fArr) {
        if (fArr.length < 4) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 4");
        }
    }

    @NonNull
    @Size(min = BCJCoder.SPARC_FILTER_ID)
    public static float[] i(@Nullable float[] fArr) {
        if (fArr == null) {
            return new float[9];
        }
        if (fArr.length >= 9) {
            return fArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 9");
    }

    public static void j(@NonNull @Size(min = 9) float[] fArr) {
        if (fArr.length < 9) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 9");
        }
    }

    @NonNull
    @Size(min = 16)
    public static double[] k(@Nullable double[] dArr) {
        if (dArr == null) {
            return new double[16];
        }
        if (dArr.length >= 16) {
            return dArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
    }

    public static void l(@NonNull @Size(min = 16) double[] dArr) {
        if (dArr.length < 16) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
        }
    }

    @NonNull
    @Size(min = 16)
    public static double[] m(@Nullable double[] dArr) {
        if (dArr == null) {
            return new double[16];
        }
        if (dArr.length >= 16) {
            return dArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
    }

    public static void n(@NonNull @Size(min = 16) double[] dArr) {
        if (dArr.length < 16) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
        }
    }

    @NonNull
    @Size(min = 16)
    public static float[] o(@Nullable float[] fArr) {
        if (fArr == null) {
            return new float[16];
        }
        if (fArr.length >= 16) {
            return fArr;
        }
        throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
    }

    public static void p(@NonNull @Size(min = 16) float[] fArr) {
        if (fArr.length < 16) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
        }
    }
}
