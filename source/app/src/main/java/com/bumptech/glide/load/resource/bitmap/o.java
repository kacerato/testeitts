package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class o extends AbstractC11708h {

    public static final int f59401c = 1;

    public static final String f59402d = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1";

    public static final byte[] f59403e = f59402d.getBytes(C.e.f1956b);

    @Override
    public Bitmap a(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        return F.d(eVar, bitmap, i10, i11);
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof o;
    }

    @Override
    public int hashCode() {
        return 1101716364;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f59403e);
    }
}
