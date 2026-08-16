package com.google.android.material.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

public class u extends x implements w {
    public u(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    public static u b(ViewGroup viewGroup) {
        return (u) x.a(viewGroup);
    }

    @Override
    public void add(@NonNull View view) {
        this.f64776a.b(view);
    }

    @Override
    public void remove(@NonNull View view) {
        this.f64776a.h(view);
    }
}
