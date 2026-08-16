package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class n extends AbstractC11708h {

    public static final String f59399c = "com.bumptech.glide.load.resource.bitmap.CenterInside";

    public static final byte[] f59400d = f59399c.getBytes(C.e.f1956b);

    @Override
    public Bitmap a(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        return F.c(eVar, bitmap, i10, i11);
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof n;
    }

    @Override
    public int hashCode() {
        return -670243078;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f59400d);
    }
}
