package com.google.android.filament.android;

import android.graphics.Bitmap;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.filament.Engine;
import com.google.android.filament.Texture;

public final class TextureHelper {

    public static final int f60325a = 0;

    public static final int f60326b = 1;

    public static final int f60327c = 2;

    public static final int f60328d = 3;

    public static final int f60329e = 4;

    public static final int f60330f = 5;

    public static class a {

        public static final int[] f60331a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f60331a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f60331a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f60331a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f60331a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f60331a[Bitmap.Config.RGBA_F16.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f60331a[Bitmap.Config.HARDWARE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static void a(@NonNull Engine engine, @NonNull Texture texture, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @IntRange(from = 0) int i14, @NonNull Bitmap bitmap) {
        int e10 = e(bitmap.getConfig());
        if (e10 == 2 || e10 == 5) {
            throw new IllegalArgumentException("Unsupported config: ARGB_4444 or HARDWARE");
        }
        nSetBitmap(texture.getNativeObject(), engine.getNativeObject(), i10, i11, i12, i13, i14, bitmap, e10);
    }

    public static void b(@NonNull Engine engine, @NonNull Texture texture, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @IntRange(from = 0) int i14, @NonNull Bitmap bitmap, Object obj, Runnable runnable) {
        int e10 = e(bitmap.getConfig());
        if (e10 == 2 || e10 == 5) {
            throw new IllegalArgumentException("Unsupported config: ARGB_4444 or HARDWARE");
        }
        nSetBitmapWithCallback(texture.getNativeObject(), engine.getNativeObject(), i10, i11, i12, i13, i14, bitmap, e10, obj, runnable);
    }

    public static void c(@NonNull Engine engine, @NonNull Texture texture, @IntRange(from = 0) int i10, @NonNull Bitmap bitmap) {
        a(engine, texture, i10, 0, 0, texture.y(i10), texture.t(i10), bitmap);
    }

    public static void d(@NonNull Engine engine, @NonNull Texture texture, @IntRange(from = 0) int i10, @NonNull Bitmap bitmap, Object obj, Runnable runnable) {
        b(engine, texture, i10, 0, 0, texture.y(i10), texture.t(i10), bitmap, obj, runnable);
    }

    public static int e(Bitmap.Config config) {
        int i10 = a.f60331a[config.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 3) {
            return 2;
        }
        if (i10 != 5) {
            return i10 != 6 ? 3 : 5;
        }
        return 4;
    }

    private static native void nSetBitmap(long j10, long j11, int i10, int i11, int i12, int i13, int i14, Bitmap bitmap, int i15);

    private static native void nSetBitmapWithCallback(long j10, long j11, int i10, int i11, int i12, int i13, int i14, Bitmap bitmap, int i15, Object obj, Runnable runnable);
}
