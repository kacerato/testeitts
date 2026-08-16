package com.itsmagic.engine.Activities.Editor.Utils;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.constraintlayout.widget.ConstraintLayout;

public class l {

    public int f72142a;

    public a f72143b;

    public b f72144c;

    public enum a {
        Linear,
        Bounce,
        Accelerate,
        Anticipate,
        AccelerateDecelerate,
        Overshoot,
        AnticipateOvershoot
    }

    public interface b {
        void a(int value);
    }

    public l() {
        this.f72142a = 500;
        this.f72143b = a.Linear;
    }

    public final void c(View view, ScrollView scrollView, float f10, ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        view.getLayoutParams().height = intValue;
        if (scrollView != null) {
            scrollView.scrollTo(0, scrollView.getScrollY() + ((int) (((Integer) valueAnimator.getAnimatedValue()).intValue() * f10)));
        }
        view.requestLayout();
        b bVar = this.f72144c;
        if (bVar != null) {
            bVar.a(intValue);
        }
    }

    public final void d(View view, ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        view.getLayoutParams().width = intValue;
        view.requestLayout();
        b bVar = this.f72144c;
        if (bVar != null) {
            bVar.a(intValue);
        }
    }

    public void e(View view, int from, int to) {
        g(view, from, to, this.f72142a, null, 1.0f);
    }

    public void f(View view, int from, int to, int duration) {
        g(view, from, to, duration, null, 1.0f);
    }

    public void g(final View view, int from, int to, int duration, final ScrollView scrollView, final float mult) {
        ValueAnimator duration2 = ValueAnimator.ofInt(from, to).setDuration(duration);
        duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                l.this.c(view, scrollView, mult, valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(duration2);
        a aVar = this.f72143b;
        if (aVar == a.Linear) {
            animatorSet.setInterpolator(new LinearInterpolator());
        } else if (aVar == a.Accelerate) {
            animatorSet.setInterpolator(new AccelerateInterpolator());
        } else if (aVar == a.Bounce) {
            animatorSet.setInterpolator(new BounceInterpolator());
        } else if (aVar == a.Anticipate) {
            animatorSet.setInterpolator(new AnticipateInterpolator());
        } else if (aVar == a.AccelerateDecelerate) {
            animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        } else if (aVar == a.Overshoot) {
            animatorSet.setInterpolator(new OvershootInterpolator());
        } else if (aVar == a.AnticipateOvershoot) {
            animatorSet.setInterpolator(new AnticipateOvershootInterpolator());
        }
        animatorSet.start();
    }

    public void h(View view, int from, int to, ScrollView scrollView) {
        g(view, from, to, this.f72142a, scrollView, 1.0f);
    }

    public void i(View view, int from, int to, ScrollView scrollView, float mult) {
        g(view, from, to, this.f72142a, scrollView, mult);
    }

    public void j(View view, int from) {
        int i10;
        if (view.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            view.measure(-1, -2);
            i10 = view.getMeasuredHeight();
        } else if (view.getLayoutParams() instanceof ConstraintLayout.LayoutParams) {
            view.measure(-1, -2);
            i10 = view.getMeasuredHeight();
        } else {
            i10 = 0;
        }
        g(view, from, i10, this.f72142a, null, 1.0f);
    }

    public void k(View view, int from, int to) {
        l(view, from, to, this.f72142a);
    }

    public void l(final View view, int from, int to, int duration) {
        ValueAnimator duration2 = ValueAnimator.ofInt(from, to).setDuration(duration);
        duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                l.this.d(view, valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(duration2);
        a aVar = this.f72143b;
        if (aVar == a.Linear) {
            animatorSet.setInterpolator(new LinearInterpolator());
        } else if (aVar == a.Accelerate) {
            animatorSet.setInterpolator(new AccelerateInterpolator());
        } else if (aVar == a.Bounce) {
            animatorSet.setInterpolator(new BounceInterpolator());
        } else if (aVar == a.Anticipate) {
            animatorSet.setInterpolator(new AnticipateInterpolator());
        } else if (aVar == a.AccelerateDecelerate) {
            animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        } else if (aVar == a.Overshoot) {
            animatorSet.setInterpolator(new OvershootInterpolator());
        } else if (aVar == a.AnticipateOvershoot) {
            animatorSet.setInterpolator(new AnticipateOvershootInterpolator());
        }
        animatorSet.start();
    }

    public void m(b onValueUpdate) {
        this.f72144c = onValueUpdate;
    }

    public l(int globalDuration) {
        this.f72142a = globalDuration;
        this.f72143b = a.Linear;
    }

    public l(a interpolator) {
        this.f72142a = 500;
        this.f72143b = interpolator;
    }

    public l(int globalDuration, a interpolator) {
        this.f72142a = globalDuration;
        this.f72143b = interpolator;
    }
}
