package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.M;

public final class DrawableKt {
    public static final Bitmap toBitmap(Drawable drawable, int i10, int i11, Bitmap.Config config) {
        M.p(drawable, "<this>");
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() == null) {
                throw new IllegalArgumentException("bitmap is null");
            }
            if (config == null || bitmapDrawable.getBitmap().getConfig() == config) {
                if (i10 == bitmapDrawable.getBitmap().getWidth() && i11 == bitmapDrawable.getBitmap().getHeight()) {
                    Bitmap bitmap = bitmapDrawable.getBitmap();
                    M.o(bitmap, "bitmap");
                    return bitmap;
                }
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), i10, i11, true);
                M.o(createScaledBitmap, "createScaledBitmap(bitmap, width, height, true)");
                return createScaledBitmap;
            }
        }
        Rect bounds = drawable.getBounds();
        M.o(bounds, "bounds");
        int i12 = bounds.left;
        int i13 = bounds.top;
        int i14 = bounds.right;
        int i15 = bounds.bottom;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmap2 = Bitmap.createBitmap(i10, i11, config);
        drawable.setBounds(0, 0, i10, i11);
        drawable.draw(new Canvas(bitmap2));
        drawable.setBounds(i12, i13, i14, i15);
        M.o(bitmap2, "bitmap");
        return bitmap2;
    }

    public static Bitmap toBitmap$default(Drawable drawable, int i10, int i11, Bitmap.Config config, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = drawable.getIntrinsicWidth();
        }
        if ((i12 & 2) != 0) {
            i11 = drawable.getIntrinsicHeight();
        }
        if ((i12 & 4) != 0) {
            config = null;
        }
        return toBitmap(drawable, i10, i11, config);
    }

    public static final Bitmap toBitmapOrNull(Drawable drawable, int i10, int i11, Bitmap.Config config) {
        M.p(drawable, "<this>");
        if ((drawable instanceof BitmapDrawable) && ((BitmapDrawable) drawable).getBitmap() == null) {
            return null;
        }
        return toBitmap(drawable, i10, i11, config);
    }

    public static Bitmap toBitmapOrNull$default(Drawable drawable, int i10, int i11, Bitmap.Config config, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = drawable.getIntrinsicWidth();
        }
        if ((i12 & 2) != 0) {
            i11 = drawable.getIntrinsicHeight();
        }
        if ((i12 & 4) != 0) {
            config = null;
        }
        return toBitmapOrNull(drawable, i10, i11, config);
    }

    public static final void updateBounds(Drawable drawable, int i10, int i11, int i12, int i13) {
        M.p(drawable, "<this>");
        drawable.setBounds(i10, i11, i12, i13);
    }

    public static void updateBounds$default(Drawable drawable, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = drawable.getBounds().left;
        }
        if ((i14 & 2) != 0) {
            i11 = drawable.getBounds().top;
        }
        if ((i14 & 4) != 0) {
            i12 = drawable.getBounds().right;
        }
        if ((i14 & 8) != 0) {
            i13 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, i10, i11, i12, i13);
    }
}
