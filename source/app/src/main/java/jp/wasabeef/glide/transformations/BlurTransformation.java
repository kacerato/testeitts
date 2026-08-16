package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.renderscript.RSRuntimeException;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.wasabeef.glide.transformations.internal.FastBlur;
import jp.wasabeef.glide.transformations.internal.RSBlur;

public class BlurTransformation extends BitmapTransformation {
    private static final int DEFAULT_DOWN_SAMPLING = 1;
    private static final String ID = "jp.wasabeef.glide.transformations.BlurTransformation.1";
    private static final int MAX_RADIUS = 25;
    private static final int VERSION = 1;
    private final int radius;
    private final int sampling;

    public BlurTransformation() {
        this(25, 1);
    }

    @Override
    public boolean equals(Object o10) {
        if (o10 instanceof BlurTransformation) {
            BlurTransformation blurTransformation = (BlurTransformation) o10;
            if (blurTransformation.radius == this.radius && blurTransformation.sampling == this.sampling) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 737513610 + (this.radius * 1000) + (this.sampling * 10);
    }

    public String toString() {
        return "BlurTransformation(radius=" + this.radius + ", sampling=" + this.sampling + ")";
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int width = toTransform.getWidth();
        int height = toTransform.getHeight();
        int i10 = this.sampling;
        Bitmap f10 = pool.f(width / i10, height / i10, Bitmap.Config.ARGB_8888);
        setCanvasBitmapDensity(toTransform, f10);
        Canvas canvas = new Canvas(f10);
        int i11 = this.sampling;
        canvas.scale(1.0f / i11, 1.0f / i11);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(toTransform, 0.0f, 0.0f, paint);
        try {
            return RSBlur.blur(context, f10, this.radius);
        } catch (RSRuntimeException unused) {
            return FastBlur.blur(f10, this.radius, true);
        }
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.radius + this.sampling).getBytes(C.e.f1956b));
    }

    public BlurTransformation(int radius) {
        this(radius, 1);
    }

    public BlurTransformation(int radius, int sampling) {
        this.radius = radius;
        this.sampling = sampling;
    }
}
