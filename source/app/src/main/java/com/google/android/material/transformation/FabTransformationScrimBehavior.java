package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import x1.C16047b;
import x1.i;

@Deprecated
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    public static final long f65356h = 75;

    public static final long f65357i = 150;

    public static final long f65358j = 0;

    public static final long f65359k = 150;

    public final i f65360f;

    public final i f65361g;

    public class a extends AnimatorListenerAdapter {

        public final boolean f65362a;

        public final View f65363b;

        public a(boolean z10, View view) {
            this.f65362a = z10;
            this.f65363b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.f65362a) {
                return;
            }
            this.f65363b.setVisibility(4);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (this.f65362a) {
                this.f65363b.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.f65360f = new i(75L, 150L);
        this.f65361g = new i(0L, 150L);
    }

    @Override
    @NonNull
    public AnimatorSet g(@NonNull View view, @NonNull View view2, boolean z10, boolean z11) {
        ArrayList arrayList = new ArrayList();
        h(view2, z10, z11, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        C16047b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2));
        return animatorSet;
    }

    public final void h(@NonNull View view, boolean z10, boolean z11, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        i iVar = z10 ? this.f65360f : this.f65361g;
        if (z10) {
            if (!z11) {
                view.setAlpha(0.0f);
            }
            ofFloat = ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view, View.ALPHA, 0.0f);
        }
        iVar.a(ofFloat);
        list.add(ofFloat);
    }

    @Override
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(coordinatorLayout, view, motionEvent);
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65360f = new i(75L, 150L);
        this.f65361g = new i(0L, 150L);
    }
}
