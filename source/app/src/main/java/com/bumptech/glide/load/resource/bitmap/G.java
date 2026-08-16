package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

public final class G implements C.j<Bitmap, Bitmap> {

    public static final class a implements com.bumptech.glide.load.engine.t<Bitmap> {

        public final Bitmap f59361b;

        public a(@NonNull Bitmap bitmap) {
            this.f59361b = bitmap;
        }

        @Override
        @NonNull
        public Class<Bitmap> a() {
            return Bitmap.class;
        }

        @Override
        @NonNull
        public Bitmap get() {
            return this.f59361b;
        }

        @Override
        public int getSize() {
            return Y.m.h(this.f59361b);
        }

        @Override
        public void recycle() {
        }
    }

    @Override
    public com.bumptech.glide.load.engine.t<Bitmap> a(@NonNull Bitmap bitmap, int i10, int i11, @NonNull C.h hVar) {
        return new a(bitmap);
    }

    @Override
    public boolean b(@NonNull Bitmap bitmap, @NonNull C.h hVar) {
        return true;
    }
}
