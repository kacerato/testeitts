package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.F;
import java.security.MessageDigest;

public class CropSquareTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.CropSquareTransformation.1";
    private static final int VERSION = 1;
    private int size;

    @Override
    public boolean equals(Object o10) {
        return (o10 instanceof CropSquareTransformation) && ((CropSquareTransformation) o10).size == this.size;
    }

    @Override
    public int hashCode() {
        return (-789843280) + (this.size * 10);
    }

    public String toString() {
        return "CropSquareTransformation(size=" + this.size + ")";
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int max = Math.max(outWidth, outHeight);
        this.size = max;
        return F.b(pool, toTransform, max, max);
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.size).getBytes(C.e.f1956b));
    }
}
