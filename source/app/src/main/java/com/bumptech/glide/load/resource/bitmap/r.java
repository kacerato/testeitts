package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;

public final class r {

    public static final String f59430a = "DrawableToBitmap";

    public static final F.e f59431b = new a();

    public class a extends F.f {
        @Override
        public void d(Bitmap bitmap) {
        }
    }

    @Nullable
    public static com.bumptech.glide.load.engine.t<Bitmap> a(F.e eVar, Drawable drawable, int i10, int i11) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z10 = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else {
            bitmap = b(eVar, current, i10, i11);
            z10 = true;
        }
        if (!z10) {
            eVar = f59431b;
        }
        return C11707g.c(bitmap, eVar);
    }

    @Nullable
    public static Bitmap b(F.e eVar, Drawable drawable, int i10, int i11) {
        if (i10 == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable(f59430a, 5)) {
                Log.w(f59430a, "Unable to draw " + ((Object) drawable) + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            return null;
        }
        if (i11 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (Log.isLoggable(f59430a, 5)) {
                Log.w(f59430a, "Unable to draw " + ((Object) drawable) + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
            }
            return null;
        }
        if (drawable.getIntrinsicWidth() > 0) {
            i10 = drawable.getIntrinsicWidth();
        }
        if (drawable.getIntrinsicHeight() > 0) {
            i11 = drawable.getIntrinsicHeight();
        }
        Lock i12 = F.i();
        i12.lock();
        Bitmap f10 = eVar.f(i10, i11, Bitmap.Config.ARGB_8888);
        try {
            Canvas canvas = new Canvas(f10);
            drawable.setBounds(0, 0, i10, i11);
            drawable.draw(canvas);
            canvas.setBitmap(null);
            return f10;
        } finally {
            i12.unlock();
        }
    }
}
