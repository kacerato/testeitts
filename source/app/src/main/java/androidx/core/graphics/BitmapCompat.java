package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;

public final class BitmapCompat {

    public static class Api17Impl {
        private Api17Impl() {
        }

        public static boolean hasMipMap(Bitmap bitmap) {
            return bitmap.hasMipMap();
        }

        public static void setHasMipMap(Bitmap bitmap, boolean z10) {
            bitmap.setHasMipMap(z10);
        }
    }

    public static class Api19Impl {
        private Api19Impl() {
        }

        public static int getAllocationByteCount(Bitmap bitmap) {
            return bitmap.getAllocationByteCount();
        }
    }

    public static class Api27Impl {
        private Api27Impl() {
        }

        public static Bitmap copyBitmapIfHardware(Bitmap bitmap) {
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                return bitmap;
            }
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            if (Build.VERSION.SDK_INT >= 31) {
                config = Api31Impl.getHardwareBitmapConfig(bitmap);
            }
            return bitmap.copy(config, true);
        }

        public static Bitmap createBitmapWithSourceColorspace(int i10, int i11, Bitmap bitmap, boolean z10) {
            Bitmap.Config config = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z10 && !bitmap.getColorSpace().equals(colorSpace2)) {
                config = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                config = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config = Api31Impl.getHardwareBitmapConfig(bitmap);
                }
            }
            return Bitmap.createBitmap(i10, i11, config, bitmap.hasAlpha(), colorSpace);
        }

        public static boolean isAlreadyF16AndLinear(Bitmap bitmap) {
            return bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB));
        }
    }

    public static class Api29Impl {
        private Api29Impl() {
        }

        public static void setPaintBlendMode(Paint paint) {
            paint.setBlendMode(BlendMode.SRC);
        }
    }

    public static class Api31Impl {
        private Api31Impl() {
        }

        public static Bitmap.Config getHardwareBitmapConfig(Bitmap bitmap) {
            return bitmap.getHardwareBuffer().getFormat() == 22 ? Bitmap.Config.RGBA_F16 : Bitmap.Config.ARGB_8888;
        }
    }

    private BitmapCompat() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x01a9, code lost:
    
        if (androidx.core.graphics.BitmapCompat.Api27Impl.isAlreadyF16AndLinear(r11) == false) goto L124;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap createScaledBitmap(Bitmap bitmap, int i10, int i11, Rect rect, boolean z10) {
        Paint paint;
        double floor;
        Paint paint2;
        Bitmap bitmap2;
        int i12;
        Rect rect2;
        Bitmap bitmap3;
        if (i10 <= 0 || i11 <= 0) {
            throw new IllegalArgumentException("dstW and dstH must be > 0!");
        }
        if (rect != null && (rect.isEmpty() || rect.left < 0 || rect.right > bitmap.getWidth() || rect.top < 0 || rect.bottom > bitmap.getHeight())) {
            throw new IllegalArgumentException("srcRect must be contained by srcBm!");
        }
        int i13 = Build.VERSION.SDK_INT;
        Bitmap copyBitmapIfHardware = i13 >= 27 ? Api27Impl.copyBitmapIfHardware(bitmap) : bitmap;
        int width = rect != null ? rect.width() : bitmap.getWidth();
        int height = rect != null ? rect.height() : bitmap.getHeight();
        float f10 = i10 / width;
        float f11 = i11 / height;
        int i14 = rect != null ? rect.left : 0;
        int i15 = rect != null ? rect.top : 0;
        if (i14 == 0 && i15 == 0 && i10 == bitmap.getWidth() && i11 == bitmap.getHeight()) {
            return (bitmap.isMutable() && bitmap == copyBitmapIfHardware) ? bitmap.copy(bitmap.getConfig(), true) : copyBitmapIfHardware;
        }
        Paint paint3 = new Paint(1);
        paint3.setFilterBitmap(true);
        if (i13 >= 29) {
            Api29Impl.setPaintBlendMode(paint3);
        } else {
            paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        if (width == i10 && height == i11) {
            Bitmap createBitmap = Bitmap.createBitmap(i10, i11, copyBitmapIfHardware.getConfig());
            new Canvas(createBitmap).drawBitmap(copyBitmapIfHardware, -i14, -i15, paint3);
            return createBitmap;
        }
        double log = Math.log(2.0d);
        if (f10 > 1.0f) {
            paint = paint3;
            floor = Math.ceil(Math.log(f10) / log);
        } else {
            paint = paint3;
            floor = Math.floor(Math.log(f10) / log);
        }
        int i16 = (int) floor;
        int ceil = (int) (f11 > 1.0f ? Math.ceil(Math.log(f11) / log) : Math.floor(Math.log(f11) / log));
        if (!z10 || i13 < 27 || Api27Impl.isAlreadyF16AndLinear(bitmap)) {
            paint2 = paint;
            bitmap2 = null;
            i12 = 0;
        } else {
            Bitmap createBitmapWithSourceColorspace = Api27Impl.createBitmapWithSourceColorspace(i16 > 0 ? sizeAtStep(width, i10, 1, i16) : width, ceil > 0 ? sizeAtStep(height, i11, 1, ceil) : height, bitmap, true);
            paint2 = paint;
            new Canvas(createBitmapWithSourceColorspace).drawBitmap(copyBitmapIfHardware, -i14, -i15, paint2);
            i12 = 1;
            i15 = 0;
            i14 = 0;
            bitmap2 = copyBitmapIfHardware;
            copyBitmapIfHardware = createBitmapWithSourceColorspace;
        }
        Rect rect3 = new Rect(i14, i15, width, height);
        Rect rect4 = new Rect();
        int i17 = i16;
        int i18 = ceil;
        while (true) {
            if (i17 == 0 && i18 == 0) {
                break;
            }
            if (i17 < 0) {
                i17++;
            } else if (i17 > 0) {
                i17--;
            }
            if (i18 < 0) {
                i18++;
            } else if (i18 > 0) {
                i18--;
            }
            int i19 = i18;
            Paint paint4 = paint2;
            Rect rect5 = rect3;
            rect4.set(0, 0, sizeAtStep(width, i10, i17, i16), sizeAtStep(height, i11, i19, ceil));
            boolean z11 = i17 == 0 && i19 == 0;
            boolean z12 = bitmap2 != null && bitmap2.getWidth() == i10 && bitmap2.getHeight() == i11;
            if (bitmap2 == null || bitmap2 == bitmap) {
                rect2 = rect4;
            } else {
                if (z10) {
                    rect2 = rect4;
                    if (Build.VERSION.SDK_INT >= 27) {
                    }
                } else {
                    rect2 = rect4;
                }
                if (!z11 || (z12 && i12 == 0)) {
                    bitmap3 = bitmap2;
                    Rect rect6 = rect2;
                    new Canvas(bitmap3).drawBitmap(copyBitmapIfHardware, rect5, rect6, paint4);
                    rect5.set(rect6);
                    i18 = i19;
                    Bitmap bitmap4 = copyBitmapIfHardware;
                    copyBitmapIfHardware = bitmap3;
                    rect4 = rect6;
                    rect3 = rect5;
                    paint2 = paint4;
                    bitmap2 = bitmap4;
                }
            }
            if (bitmap2 != bitmap && bitmap2 != null) {
                bitmap2.recycle();
            }
            int sizeAtStep = sizeAtStep(width, i10, i17 > 0 ? i12 : i17, i16);
            int sizeAtStep2 = sizeAtStep(height, i11, i19 > 0 ? i12 : i19, ceil);
            if (Build.VERSION.SDK_INT >= 27) {
                bitmap3 = Api27Impl.createBitmapWithSourceColorspace(sizeAtStep, sizeAtStep2, bitmap, z10 && !z11);
            } else {
                bitmap3 = Bitmap.createBitmap(sizeAtStep, sizeAtStep2, copyBitmapIfHardware.getConfig());
            }
            Rect rect62 = rect2;
            new Canvas(bitmap3).drawBitmap(copyBitmapIfHardware, rect5, rect62, paint4);
            rect5.set(rect62);
            i18 = i19;
            Bitmap bitmap42 = copyBitmapIfHardware;
            copyBitmapIfHardware = bitmap3;
            rect4 = rect62;
            rect3 = rect5;
            paint2 = paint4;
            bitmap2 = bitmap42;
        }
        if (bitmap2 != bitmap && bitmap2 != null) {
            bitmap2.recycle();
        }
        return copyBitmapIfHardware;
    }

    public static int getAllocationByteCount(Bitmap bitmap) {
        return Api19Impl.getAllocationByteCount(bitmap);
    }

    public static boolean hasMipMap(Bitmap bitmap) {
        return Api17Impl.hasMipMap(bitmap);
    }

    public static void setHasMipMap(Bitmap bitmap, boolean z10) {
        Api17Impl.setHasMipMap(bitmap, z10);
    }

    public static int sizeAtStep(int i10, int i11, int i12, int i13) {
        return i12 == 0 ? i11 : i12 > 0 ? i10 * (1 << (i13 - i12)) : i11 << ((-i12) - 1);
    }
}
