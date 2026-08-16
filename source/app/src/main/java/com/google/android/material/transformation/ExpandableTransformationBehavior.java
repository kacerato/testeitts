package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@Deprecated
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    @Nullable
    public AnimatorSet f65335e;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f65335e = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    @Override
    @CallSuper
    public boolean e(View view, View view2, boolean z10, boolean z11) {
        AnimatorSet animatorSet = this.f65335e;
        boolean z12 = animatorSet != null;
        if (z12) {
            animatorSet.cancel();
        }
        AnimatorSet g10 = g(view, view2, z10, z12);
        this.f65335e = g10;
        g10.addListener(new a());
        this.f65335e.start();
        if (!z11) {
            this.f65335e.end();
        }
        return true;
    }

    @NonNull
    public abstract AnimatorSet g(View view, View view2, boolean z10, boolean z11);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
