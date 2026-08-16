package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class GrayscaleTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.GrayscaleTransformation.1";
    private static final int VERSION = 1;

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof GrayscaleTransformation;
    }

    @Override
    public int hashCode() {
        return -1580689316;
    }

    public String toString() {
        return "GrayscaleTransformation()";
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        Bitmap f10 = pool.f(toTransform.getWidth(), toTransform.getHeight(), toTransform.getConfig() != null ? toTransform.getConfig() : Bitmap.Config.ARGB_8888);
        setCanvasBitmapDensity(toTransform, f10);
        Canvas canvas = new Canvas(f10);
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(toTransform, 0.0f, 0.0f, paint);
        return f10;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ID.getBytes(C.e.f1956b));
    }
}
