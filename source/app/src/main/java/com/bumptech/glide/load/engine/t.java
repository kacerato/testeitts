package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;

public interface t<Z> {
    @NonNull
    Class<Z> a();

    @NonNull
    Z get();

    int getSize();

    void recycle();
}
