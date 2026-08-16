package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.F;
import java.security.MessageDigest;
import jp.wasabeef.glide.transformations.internal.Utils;

public class CropCircleWithBorderTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.CropCircleWithBorderTransformation.1";
    private static final int VERSION = 1;
    private final int borderColor;
    private final int borderSize;

    public CropCircleWithBorderTransformation() {
        this.borderSize = Utils.toDp(4);
        this.borderColor = -16777216;
    }

    @Override
    public boolean equals(Object o10) {
        if (o10 instanceof CropCircleWithBorderTransformation) {
            CropCircleWithBorderTransformation cropCircleWithBorderTransformation = (CropCircleWithBorderTransformation) o10;
            if (cropCircleWithBorderTransformation.borderSize == this.borderSize && cropCircleWithBorderTransformation.borderColor == this.borderColor) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 882652245 + (this.borderSize * 100) + this.borderColor + 10;
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        Bitmap d10 = F.d(pool, toTransform, outWidth, outHeight);
        setCanvasBitmapDensity(toTransform, d10);
        Paint paint = new Paint();
        paint.setColor(this.borderColor);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.borderSize);
        paint.setAntiAlias(true);
        new Canvas(d10).drawCircle(outWidth / 2.0f, outHeight / 2.0f, (Math.max(outWidth, outHeight) / 2.0f) - (this.borderSize / 2.0f), paint);
        return d10;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.borderSize + this.borderColor).getBytes(C.e.f1956b));
    }

    public CropCircleWithBorderTransformation(int borderSize, @ColorInt int borderColor) {
        this.borderSize = borderSize;
        this.borderColor = borderColor;
    }
}
