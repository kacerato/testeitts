package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class MaskTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.MaskTransformation.1";
    private static final int VERSION = 1;
    private static final Paint paint;
    private final int maskId;

    static {
        Paint paint2 = new Paint();
        paint = paint2;
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    public MaskTransformation(int maskId) {
        this.maskId = maskId;
    }

    @Override
    public boolean equals(Object o10) {
        return (o10 instanceof MaskTransformation) && ((MaskTransformation) o10).maskId == this.maskId;
    }

    @Override
    public int hashCode() {
        return (-1949385457) + (this.maskId * 10);
    }

    public String toString() {
        return "MaskTransformation(maskId=" + this.maskId + ")";
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int width = toTransform.getWidth();
        int height = toTransform.getHeight();
        Bitmap f10 = pool.f(width, height, Bitmap.Config.ARGB_8888);
        f10.setHasAlpha(true);
        Drawable drawable = context.getDrawable(this.maskId);
        setCanvasBitmapDensity(toTransform, f10);
        Canvas canvas = new Canvas(f10);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        canvas.drawBitmap(toTransform, 0.0f, 0.0f, paint);
        return f10;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.maskId).getBytes(C.e.f1956b));
    }
}
