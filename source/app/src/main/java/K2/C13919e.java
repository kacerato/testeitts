package k2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C13919e implements v {

    public static final float f94659b = 0.35f;

    public float f94660a = 0.35f;

    public static class a implements ValueAnimator.AnimatorUpdateListener {

        public final View f94661a;

        public final float f94662b;

        public final float f94663c;

        public final float f94664d;

        public final float f94665e;

        public a(View view, float f10, float f11, float f12, float f13) {
            this.f94661a = view;
            this.f94662b = f10;
            this.f94663c = f11;
            this.f94664d = f12;
            this.f94665e = f13;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f94661a.setAlpha(u.l(this.f94662b, this.f94663c, this.f94664d, this.f94665e, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    public static class b extends AnimatorListenerAdapter {

        public final View f94666a;

        public final float f94667b;

        public b(View view, float f10) {
            this.f94666a = view;
            this.f94667b = f10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f94666a.setAlpha(this.f94667b);
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
        return c(view, alpha, 0.0f, 0.0f, this.f94660a, alpha);
    }

    @Override
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, 0.0f, alpha, this.f94660a, 1.0f, alpha);
    }

    public float d() {
        return this.f94660a;
    }

    public void e(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f94660a = f10;
    }
}
