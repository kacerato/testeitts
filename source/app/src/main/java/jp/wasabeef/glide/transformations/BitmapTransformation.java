package jp.wasabeef.glide.transformations;

import C.l;
import F.e;
import Y.m;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.b;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.C11707g;
import java.security.MessageDigest;

public abstract class BitmapTransformation implements l<Bitmap> {
    @Override
    public abstract boolean equals(Object o10);

    @Override
    public abstract int hashCode();

    public void setCanvasBitmapDensity(@NonNull Bitmap toTransform, @NonNull Bitmap canvasBitmap) {
        canvasBitmap.setDensity(toTransform.getDensity());
    }

    public abstract Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight);

    @Override
    @NonNull
    public final t<Bitmap> transform(@NonNull Context context, @NonNull t<Bitmap> resource, int outWidth, int outHeight) {
        if (m.v(outWidth, outHeight)) {
            e g10 = b.d(context).g();
            Bitmap bitmap = resource.get();
            if (outWidth == Integer.MIN_VALUE) {
                outWidth = bitmap.getWidth();
            }
            int i10 = outWidth;
            if (outHeight == Integer.MIN_VALUE) {
                outHeight = bitmap.getHeight();
            }
            Bitmap transform = transform(context.getApplicationContext(), g10, bitmap, i10, outHeight);
            return bitmap.equals(transform) ? resource : C11707g.c(transform, g10);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + outWidth + " or height: " + outHeight + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }

    @Override
    public abstract void updateDiskCacheKey(@NonNull MessageDigest messageDigest);
}
