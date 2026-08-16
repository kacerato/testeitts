package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class s implements C.l<Drawable> {

    public final C.l<Bitmap> f59432c;

    public final boolean f59433d;

    public s(C.l<Bitmap> lVar, boolean z10) {
        this.f59432c = lVar;
        this.f59433d = z10;
    }

    public C.l<BitmapDrawable> a() {
        return this;
    }

    public final com.bumptech.glide.load.engine.t<Drawable> b(Context context, com.bumptech.glide.load.engine.t<Bitmap> tVar) {
        return z.c(context.getResources(), tVar);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof s) {
            return this.f59432c.equals(((s) obj).f59432c);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.f59432c.hashCode();
    }

    @Override
    @NonNull
    public com.bumptech.glide.load.engine.t<Drawable> transform(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.t<Drawable> tVar, int i10, int i11) {
        F.e g10 = com.bumptech.glide.b.d(context).g();
        Drawable drawable = tVar.get();
        com.bumptech.glide.load.engine.t<Bitmap> a10 = r.a(g10, drawable, i10, i11);
        if (a10 != null) {
            com.bumptech.glide.load.engine.t<Bitmap> transform = this.f59432c.transform(context, a10, i10, i11);
            if (!transform.equals(a10)) {
                return b(context, transform);
            }
            transform.recycle();
            return tVar;
        }
        if (!this.f59433d) {
            return tVar;
        }
        throw new IllegalArgumentException("Unable to convert " + ((Object) drawable) + " to a Bitmap");
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f59432c.updateDiskCacheKey(messageDigest);
    }
}
