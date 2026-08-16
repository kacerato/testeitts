package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class CropTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.CropTransformation.1";
    private static final int VERSION = 1;
    private CropType cropType;
    private int height;
    private int width;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$jp$wasabeef$glide$transformations$CropTransformation$CropType;

        static {
            int[] iArr = new int[CropType.values().length];
            $SwitchMap$jp$wasabeef$glide$transformations$CropTransformation$CropType = iArr;
            try {
                iArr[CropType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$CropTransformation$CropType[CropType.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$CropTransformation$CropType[CropType.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum CropType {
        TOP,
        CENTER,
        BOTTOM
    }

    public CropTransformation(int width, int height) {
        this(width, height, CropType.CENTER);
    }

    private float getTop(float scaledHeight) {
        int i10 = AnonymousClass1.$SwitchMap$jp$wasabeef$glide$transformations$CropTransformation$CropType[this.cropType.ordinal()];
        if (i10 == 2) {
            return (this.height - scaledHeight) / 2.0f;
        }
        if (i10 != 3) {
            return 0.0f;
        }
        return this.height - scaledHeight;
    }

    @Override
    public boolean equals(Object o10) {
        if (o10 instanceof CropTransformation) {
            CropTransformation cropTransformation = (CropTransformation) o10;
            if (cropTransformation.width == this.width && cropTransformation.height == this.height && cropTransformation.cropType == this.cropType) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return (-1462327117) + (this.width * 100000) + (this.height * 1000) + (this.cropType.ordinal() * 10);
    }

    public String toString() {
        return "CropTransformation(width=" + this.width + ", height=" + this.height + ", cropType=" + ((Object) this.cropType) + ")";
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int i10 = this.width;
        if (i10 == 0) {
            i10 = toTransform.getWidth();
        }
        this.width = i10;
        int i11 = this.height;
        if (i11 == 0) {
            i11 = toTransform.getHeight();
        }
        this.height = i11;
        Bitmap f10 = pool.f(this.width, this.height, toTransform.getConfig() != null ? toTransform.getConfig() : Bitmap.Config.ARGB_8888);
        f10.setHasAlpha(true);
        float max = Math.max(this.width / toTransform.getWidth(), this.height / toTransform.getHeight());
        float width = toTransform.getWidth() * max;
        float height = max * toTransform.getHeight();
        float f11 = (this.width - width) / 2.0f;
        float top = getTop(height);
        RectF rectF = new RectF(f11, top, width + f11, height + top);
        setCanvasBitmapDensity(toTransform, f10);
        new Canvas(f10).drawBitmap(toTransform, (Rect) null, rectF, (Paint) null);
        return f10;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.width + this.height + ((Object) this.cropType)).getBytes(C.e.f1956b));
    }

    public CropTransformation(int width, int height, CropType cropType) {
        CropType cropType2 = CropType.CENTER;
        this.width = width;
        this.height = height;
        this.cropType = cropType;
    }
}
