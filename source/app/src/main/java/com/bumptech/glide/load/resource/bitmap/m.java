package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class m extends AbstractC11708h {

    public static final String f59397c = "com.bumptech.glide.load.resource.bitmap.CenterCrop";

    public static final byte[] f59398d = f59397c.getBytes(C.e.f1956b);

    @Override
    public Bitmap a(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        return F.b(eVar, bitmap, i10, i11);
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof m;
    }

    @Override
    public int hashCode() {
        return -599754482;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f59398d);
    }
}
