package com.bumptech.glide.load.resource.bitmap;

import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;

public class C11703c extends N.b<BitmapDrawable> implements com.bumptech.glide.load.engine.p {

    public final F.e f59385c;

    public C11703c(BitmapDrawable bitmapDrawable, F.e eVar) {
        super(bitmapDrawable);
        this.f59385c = eVar;
    }

    @Override
    @NonNull
    public Class<BitmapDrawable> a() {
        return BitmapDrawable.class;
    }

    @Override
    public int getSize() {
        return Y.m.h(((BitmapDrawable) this.f15451b).getBitmap());
    }

    @Override
    public void initialize() {
        ((BitmapDrawable) this.f15451b).getBitmap().prepareToDraw();
    }

    @Override
    public void recycle() {
        this.f59385c.d(((BitmapDrawable) this.f15451b).getBitmap());
    }
}
