package androidx.core.graphics;

import Mf.l;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.PointF;
import kotlin.jvm.internal.M;
import nf.P0;

public final class BitmapKt {
    public static final Bitmap applyCanvas(Bitmap bitmap, l<? super Canvas, P0> block) {
        M.p(bitmap, "<this>");
        M.p(block, "block");
        block.invoke(new Canvas(bitmap));
        return bitmap;
    }

    public static final boolean contains(Bitmap bitmap, Point p10) {
        int i10;
        M.p(bitmap, "<this>");
        M.p(p10, "p");
        int width = bitmap.getWidth();
        int i11 = p10.f32423x;
        return i11 >= 0 && i11 < width && (i10 = p10.f32424y) >= 0 && i10 < bitmap.getHeight();
    }

    public static final Bitmap createBitmap(int i10, int i11, Bitmap.Config config) {
        M.p(config, "config");
        Bitmap createBitmap = Bitmap.createBitmap(i10, i11, config);
        M.o(createBitmap, "createBitmap(width, height, config)");
        return createBitmap;
    }

    public static Bitmap createBitmap$default(int i10, int i11, Bitmap.Config config, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        M.p(config, "config");
        Bitmap createBitmap = Bitmap.createBitmap(i10, i11, config);
        M.o(createBitmap, "createBitmap(width, height, config)");
        return createBitmap;
    }

    public static final int get(Bitmap bitmap, int i10, int i11) {
        M.p(bitmap, "<this>");
        return bitmap.getPixel(i10, i11);
    }

    public static final Bitmap scale(Bitmap bitmap, int i10, int i11, boolean z10) {
        M.p(bitmap, "<this>");
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, z10);
        M.o(createScaledBitmap, "createScaledBitmap(this, width, height, filter)");
        return createScaledBitmap;
    }

    public static Bitmap scale$default(Bitmap bitmap, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            z10 = true;
        }
        M.p(bitmap, "<this>");
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, z10);
        M.o(createScaledBitmap, "createScaledBitmap(this, width, height, filter)");
        return createScaledBitmap;
    }

    public static final void set(Bitmap bitmap, int i10, int i11, int i12) {
        M.p(bitmap, "<this>");
        bitmap.setPixel(i10, i11, i12);
    }

    public static final boolean contains(Bitmap bitmap, PointF p10) {
        M.p(bitmap, "<this>");
        M.p(p10, "p");
        float f10 = p10.f32425x;
        if (f10 >= 0.0f && f10 < bitmap.getWidth()) {
            float f11 = p10.f32426y;
            if (f11 >= 0.0f && f11 < bitmap.getHeight()) {
                return true;
            }
        }
        return false;
    }

    public static final Bitmap createBitmap(int i10, int i11, Bitmap.Config config, boolean z10, ColorSpace colorSpace) {
        M.p(config, "config");
        M.p(colorSpace, "colorSpace");
        Bitmap createBitmap = Bitmap.createBitmap(i10, i11, config, z10, colorSpace);
        M.o(createBitmap, "createBitmap(width, heig\u2026ig, hasAlpha, colorSpace)");
        return createBitmap;
    }

    public static Bitmap createBitmap$default(int i10, int i11, Bitmap.Config config, boolean z10, ColorSpace colorSpace, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        if ((i12 & 8) != 0) {
            z10 = true;
        }
        if ((i12 & 16) != 0) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            M.o(colorSpace, "get(ColorSpace.Named.SRGB)");
        }
        M.p(config, "config");
        M.p(colorSpace, "colorSpace");
        Bitmap createBitmap = Bitmap.createBitmap(i10, i11, config, z10, colorSpace);
        M.o(createBitmap, "createBitmap(width, heig\u2026ig, hasAlpha, colorSpace)");
        return createBitmap;
    }
}
