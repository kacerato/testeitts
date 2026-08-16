package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class u extends AbstractC11708h {

    public static final String f59434c = "com.bumptech.glide.load.resource.bitmap.FitCenter";

    public static final byte[] f59435d = f59434c.getBytes(C.e.f1956b);

    @Override
    public Bitmap a(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        return F.f(eVar, bitmap, i10, i11);
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof u;
    }

    @Override
    public int hashCode() {
        return 1572326941;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f59435d);
    }
}
