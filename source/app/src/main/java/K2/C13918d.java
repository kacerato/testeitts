package k2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C13918d implements v {

    public float f94651a = 1.0f;

    public static class a implements ValueAnimator.AnimatorUpdateListener {

        public final View f94652a;

        public final float f94653b;

        public final float f94654c;

        public final float f94655d;

        public final float f94656e;

        public a(View view, float f10, float f11, float f12, float f13) {
            this.f94652a = view;
            this.f94653b = f10;
            this.f94654c = f11;
            this.f94655d = f12;
            this.f94656e = f13;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f94652a.setAlpha(u.l(this.f94653b, this.f94654c, this.f94655d, this.f94656e, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    public static class b extends AnimatorListenerAdapter {

        public final View f94657a;

        public final float f94658b;

        public b(View view, float f10) {
            this.f94657a = view;
            this.f94658b = f10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f94657a.setAlpha(this.f94658b);
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
        return c(view, 0.0f, alpha, 0.0f, this.f94651a, alpha);
    }

    public float d() {
        return this.f94651a;
    }

    public void e(float f10) {
        this.f94651a = f10;
    }
}
