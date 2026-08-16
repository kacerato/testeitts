package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import x1.C16046a;

public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    public static final int f63863e = 225;

    public static final int f63864f = 175;

    public static final int f63865g = 1;

    public static final int f63866h = 2;

    public int f63867a;

    public int f63868b;

    public int f63869c;

    @Nullable
    public ViewPropertyAnimator f63870d;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f63870d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.f63867a = 0;
        this.f63868b = 2;
        this.f63869c = 0;
    }

    public final void b(@NonNull V v10, int i10, long j10, TimeInterpolator timeInterpolator) {
        this.f63870d = v10.animate().translationY(i10).setInterpolator(timeInterpolator).setDuration(j10).setListener(new a());
    }

    public void c(@NonNull V v10, @Dimension int i10) {
        this.f63869c = i10;
        if (this.f63868b == 1) {
            v10.setTranslationY(this.f63867a + i10);
        }
    }

    public void d(@NonNull V v10) {
        if (this.f63868b == 1) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f63870d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v10.clearAnimation();
        }
        this.f63868b = 1;
        b(v10, this.f63867a + this.f63869c, 175L, C16046a.f127890c);
    }

    public void e(@NonNull V v10) {
        if (this.f63868b == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f63870d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v10.clearAnimation();
        }
        this.f63868b = 2;
        b(v10, 0, 225L, C16046a.f127891d);
    }

    @Override
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        this.f63867a = v10.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v10.getLayoutParams()).bottomMargin;
        return super.onLayoutChild(coordinatorLayout, v10, i10);
    }

    @Override
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
        if (i11 > 0) {
            d(v10);
        } else if (i11 < 0) {
            e(v10);
        }
    }

    @Override
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, @NonNull View view2, int i10, int i11) {
        return i10 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f63867a = 0;
        this.f63868b = 2;
        this.f63869c = 0;
    }
}
