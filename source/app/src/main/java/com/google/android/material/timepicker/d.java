package com.google.android.material.timepicker;

import a2.C3567j;
import a2.C3570m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import w1.C15879a;

public class d extends ConstraintLayout {

    public static final String f65283e = "skip";

    public final Runnable f65284b;

    public int f65285c;

    public C3567j f65286d;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            d.this.j();
        }
    }

    public d(@NonNull Context context) {
        this(context, null);
    }

    public static boolean i(View view) {
        return f65283e.equals(view.getTag());
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        k();
    }

    public final Drawable e() {
        C3567j c3567j = new C3567j();
        this.f65286d = c3567j;
        c3567j.k0(new C3570m(0.5f));
        this.f65286d.n0(ColorStateList.valueOf(-1));
        return this.f65286d;
    }

    @Dimension
    public int g() {
        return this.f65285c;
    }

    public void h(@Dimension int i10) {
        this.f65285c = i10;
        j();
    }

    public void j() {
        int childCount = getChildCount();
        int i10 = 1;
        for (int i11 = 0; i11 < childCount; i11++) {
            if (i(getChildAt(i11))) {
                i10++;
            }
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this);
        float f10 = 0.0f;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            int id2 = childAt.getId();
            int i13 = C15879a.h.f123596M0;
            if (id2 != i13 && !i(childAt)) {
                constraintSet.constrainCircle(childAt.getId(), i13, this.f65285c, f10);
                f10 += 360.0f / (childCount - i10);
            }
        }
        constraintSet.applyTo(this);
    }

    public final void k() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f65284b);
            handler.post(this.f65284b);
        }
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        j();
    }

    @Override
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        k();
    }

    @Override
    public void setBackgroundColor(@ColorInt int i10) {
        this.f65286d.n0(ColorStateList.valueOf(i10));
    }

    public d(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public d(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(C15879a.k.f123968Z, this);
        ViewCompat.setBackground(this, e());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.xp, i10, 0);
        this.f65285c = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.yp, 0);
        this.f65284b = new a();
        obtainStyledAttributes.recycle();
    }
}
