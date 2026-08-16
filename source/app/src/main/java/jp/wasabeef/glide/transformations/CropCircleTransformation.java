package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.F;
import java.security.MessageDigest;

@Deprecated
public class CropCircleTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.CropCircleTransformation.1";
    private static final int VERSION = 1;

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof CropCircleTransformation;
    }

    @Override
    public int hashCode() {
        return 1288474723;
    }

    public String toString() {
        return "CropCircleTransformation()";
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        return F.d(pool, toTransform, outWidth, outHeight);
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ID.getBytes(C.e.f1956b));
    }
}
