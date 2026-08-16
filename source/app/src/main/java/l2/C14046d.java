package l2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
public final class C14046d implements w {

    public float f95924a = 1.0f;

    public static class a implements ValueAnimator.AnimatorUpdateListener {

        public final View f95925a;

        public final float f95926b;

        public final float f95927c;

        public final float f95928d;

        public final float f95929e;

        public a(View view, float f10, float f11, float f12, float f13) {
            this.f95925a = view;
            this.f95926b = f10;
            this.f95927c = f11;
            this.f95928d = f12;
            this.f95929e = f13;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f95925a.setAlpha(v.l(this.f95926b, this.f95927c, this.f95928d, this.f95929e, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    public static class b extends AnimatorListenerAdapter {

        public final View f95930a;

        public final float f95931b;

        public b(View view, float f10) {
            this.f95930a = view;
            this.f95931b = f10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f95930a.setAlpha(this.f95931b);
        }
    }

    public static Animator c(View view, float f10, float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12, @FloatRange(from = 0.0d, to = 1.0d) float f13, float f14) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new a(view, f10, f11, f12, f13));
        ofFloat.addListener(new b(view, f14));
        return ofFloat;
    }

    @Override
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, alpha, 0.0f, 0.0f, 1.0f, alpha);
    }

    @Override
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, 0.0f, alpha, 0.0f, this.f95924a, alpha);
    }

    public float d() {
        return this.f95924a;
    }

    public void e(float f10) {
        this.f95924a = f10;
    }
}
