package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class z implements com.bumptech.glide.load.engine.t<BitmapDrawable>, com.bumptech.glide.load.engine.p {

    public final Resources f59461b;

    public final com.bumptech.glide.load.engine.t<Bitmap> f59462c;

    public z(@NonNull Resources resources, @NonNull com.bumptech.glide.load.engine.t<Bitmap> tVar) {
        this.f59461b = (Resources) Y.k.d(resources);
        this.f59462c = (com.bumptech.glide.load.engine.t) Y.k.d(tVar);
    }

    @Nullable
    public static com.bumptech.glide.load.engine.t<BitmapDrawable> c(@NonNull Resources resources, @Nullable com.bumptech.glide.load.engine.t<Bitmap> tVar) {
        if (tVar == null) {
            return null;
        }
        return new z(resources, tVar);
    }

    @Deprecated
    public static z d(Context context, Bitmap bitmap) {
        return (z) c(context.getResources(), C11707g.c(bitmap, com.bumptech.glide.b.d(context).g()));
    }

    @Deprecated
    public static z e(Resources resources, F.e eVar, Bitmap bitmap) {
        return (z) c(resources, C11707g.c(bitmap, eVar));
    }

    @Override
    @NonNull
    public Class<BitmapDrawable> a() {
        return BitmapDrawable.class;
    }

    @Override
    @NonNull
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f59461b, this.f59462c.get());
    }

    @Override
    public int getSize() {
        return this.f59462c.getSize();
    }

    @Override
    public void initialize() {
        com.bumptech.glide.load.engine.t<Bitmap> tVar = this.f59462c;
        if (tVar instanceof com.bumptech.glide.load.engine.p) {
            ((com.bumptech.glide.load.engine.p) tVar).initialize();
        }
    }

    @Override
    public void recycle() {
        this.f59462c.recycle();
    }
}
