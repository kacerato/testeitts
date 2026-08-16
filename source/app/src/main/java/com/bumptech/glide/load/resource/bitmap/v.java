package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class v extends AbstractC11708h {

    public static final String f59436g = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners";

    public static final byte[] f59437h = f59436g.getBytes(C.e.f1956b);

    public final float f59438c;

    public final float f59439d;

    public final float f59440e;

    public final float f59441f;

    public v(float f10, float f11, float f12, float f13) {
        this.f59438c = f10;
        this.f59439d = f11;
        this.f59440e = f12;
        this.f59441f = f13;
    }

    @Override
    public Bitmap a(@NonNull F.e eVar, @NonNull Bitmap bitmap, int i10, int i11) {
        return F.p(eVar, bitmap, this.f59438c, this.f59439d, this.f59440e, this.f59441f);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f59438c == vVar.f59438c && this.f59439d == vVar.f59439d && this.f59440e == vVar.f59440e && this.f59441f == vVar.f59441f;
    }

    @Override
    public int hashCode() {
        return Y.m.m(this.f59441f, Y.m.m(this.f59440e, Y.m.m(this.f59439d, Y.m.o(-2013597734, Y.m.l(this.f59438c)))));
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f59437h);
        messageDigest.update(ByteBuffer.allocate(16).putFloat(this.f59438c).putFloat(this.f59439d).putFloat(this.f59440e).putFloat(this.f59441f).array());
    }
}
