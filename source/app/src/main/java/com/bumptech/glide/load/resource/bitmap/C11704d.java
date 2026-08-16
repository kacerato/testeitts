package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

@Deprecated
public class C11704d implements C.l<BitmapDrawable> {

    public final C.l<Drawable> f59386c;

    public C11704d(C.l<Bitmap> lVar) {
        this.f59386c = (C.l) Y.k.d(new s(lVar, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static com.bumptech.glide.load.engine.t<BitmapDrawable> a(com.bumptech.glide.load.engine.t<Drawable> tVar) {
        if (tVar.get() instanceof BitmapDrawable) {
            return tVar;
        }
        throw new IllegalArgumentException("Wrapped transformation unexpectedly returned a non BitmapDrawable resource: " + tVar.get());
    }

    public static com.bumptech.glide.load.engine.t<Drawable> b(com.bumptech.glide.load.engine.t<BitmapDrawable> tVar) {
        return tVar;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof C11704d) {
            return this.f59386c.equals(((C11704d) obj).f59386c);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.f59386c.hashCode();
    }

    @Override
    @NonNull
    public com.bumptech.glide.load.engine.t<BitmapDrawable> transform(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.t<BitmapDrawable> tVar, int i10, int i11) {
        return a(this.f59386c.transform(context, b(tVar), i10, i11));
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f59386c.updateDiskCacheKey(messageDigest);
    }
}
