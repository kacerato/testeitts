package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;

@SuppressLint({"AppCompatCustomView"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class B extends ImageButton {

    public int f64578b;

    public B(Context context) {
        this(context, null);
    }

    public final void c(int i10, boolean z10) {
        super.setVisibility(i10);
        if (z10) {
            this.f64578b = i10;
        }
    }

    public final int getUserSetVisibility() {
        return this.f64578b;
    }

    @Override
    public void setVisibility(int i10) {
        c(i10, true);
    }

    public B(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public B(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f64578b = getVisibility();
    }
}
