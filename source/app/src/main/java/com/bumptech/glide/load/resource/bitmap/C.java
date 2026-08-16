package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public class C extends AbstractC11708h {

    public static final String f59312d = "com.bumptech.glide.load.resource.bitmap.Rotate";

    public static final byte[] f59313e = f59312d.getBytes(C.e.f1956b);

    public final int f59314c;

    public C(int i10) {
        this.f59314c = i10;
    }

    @Override
    public Bitmap a(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        return F.n(bitmap, this.f59314c);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof C) && this.f59314c == ((C) obj).f59314c;
    }

    @Override
    public int hashCode() {
        return Y.m.o(-950519196, Y.m.n(this.f59314c));
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f59313e);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f59314c).array());
    }
}
