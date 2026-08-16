package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
public class v implements w {

    public final ViewGroupOverlay f64775a;

    public v(@NonNull ViewGroup viewGroup) {
        this.f64775a = viewGroup.getOverlay();
    }

    @Override
    public void add(@NonNull Drawable drawable) {
        this.f64775a.add(drawable);
    }

    @Override
    public void remove(@NonNull Drawable drawable) {
        this.f64775a.remove(drawable);
    }

    @Override
    public void add(@NonNull View view) {
        this.f64775a.add(view);
    }

    @Override
    public void remove(@NonNull View view) {
        this.f64775a.remove(view);
    }
}
