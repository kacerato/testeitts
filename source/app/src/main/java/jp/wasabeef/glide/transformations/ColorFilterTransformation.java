package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class ColorFilterTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.ColorFilterTransformation.1";
    private static final int VERSION = 1;
    private final int color;

    public ColorFilterTransformation(int color) {
        this.color = color;
    }

    @Override
    public boolean equals(Object o10) {
        return (o10 instanceof ColorFilterTransformation) && ((ColorFilterTransformation) o10).color == this.color;
    }

    @Override
    public int hashCode() {
        return 705373712 + (this.color * 10);
    }

    public String toString() {
        return "ColorFilterTransformation(color=" + this.color + ")";
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        Bitmap f10 = pool.f(toTransform.getWidth(), toTransform.getHeight(), toTransform.getConfig() != null ? toTransform.getConfig() : Bitmap.Config.ARGB_8888);
        setCanvasBitmapDensity(toTransform, f10);
        Canvas canvas = new Canvas(f10);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColorFilter(new PorterDuffColorFilter(this.color, PorterDuff.Mode.SRC_ATOP));
        canvas.drawBitmap(toTransform, 0.0f, 0.0f, paint);
        return f10;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.color).getBytes(C.e.f1956b));
    }
}
