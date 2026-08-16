package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class D extends AbstractC11708h {

    public static final String f59315d = "com.bumptech.glide.load.resource.bitmap.RoundedCorners";

    public static final byte[] f59316e = f59315d.getBytes(C.e.f1956b);

    public final int f59317c;

    public D(int i10) {
        Y.k.a(i10 > 0, "roundingRadius must be greater than 0.");
        this.f59317c = i10;
    }

    @Override
    public Bitmap a(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        return F.q(eVar, bitmap, this.f59317c);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof D) && this.f59317c == ((D) obj).f59317c;
    }

    @Override
    public int hashCode() {
        return Y.m.o(-569625254, Y.m.n(this.f59317c));
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f59316e);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f59317c).array());
    }
}
