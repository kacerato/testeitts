package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
public class y implements z {

    public final ViewOverlay f64783a;

    public y(@NonNull View view) {
        this.f64783a = view.getOverlay();
    }

    @Override
    public void add(@NonNull Drawable drawable) {
        this.f64783a.add(drawable);
    }

    @Override
    public void remove(@NonNull Drawable drawable) {
        this.f64783a.remove(drawable);
    }
}
