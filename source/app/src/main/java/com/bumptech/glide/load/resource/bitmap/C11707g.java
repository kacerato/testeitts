package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class C11707g implements com.bumptech.glide.load.engine.t<Bitmap>, com.bumptech.glide.load.engine.p {

    public final Bitmap f59393b;

    public final F.e f59394c;

    public C11707g(@NonNull Bitmap bitmap, @NonNull F.e eVar) {
        this.f59393b = (Bitmap) Y.k.e(bitmap, "Bitmap must not be null");
        this.f59394c = (F.e) Y.k.e(eVar, "BitmapPool must not be null");
    }

    @Nullable
    public static C11707g c(@Nullable Bitmap bitmap, @NonNull F.e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new C11707g(bitmap, eVar);
    }

    @Override
    @NonNull
    public Class<Bitmap> a() {
        return Bitmap.class;
    }

    @Override
    @NonNull
    public Bitmap get() {
        return this.f59393b;
    }

    @Override
    public int getSize() {
        return Y.m.h(this.f59393b);
    }

    @Override
    public void initialize() {
        this.f59393b.prepareToDraw();
    }

    @Override
    public void recycle() {
        this.f59394c.d(this.f59393b);
    }
}
