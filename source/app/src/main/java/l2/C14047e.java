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
public final class C14047e implements w {

    public static final float f95932b = 0.35f;

    public float f95933a = 0.35f;

    public static class a implements ValueAnimator.AnimatorUpdateListener {

        public final View f95934a;

        public final float f95935b;

        public final float f95936c;

        public final float f95937d;

        public final float f95938e;

        public a(View view, float f10, float f11, float f12, float f13) {
            this.f95934a = view;
            this.f95935b = f10;
            this.f95936c = f11;
            this.f95937d = f12;
            this.f95938e = f13;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f95934a.setAlpha(v.l(this.f95935b, this.f95936c, this.f95937d, this.f95938e, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    public static class b extends AnimatorListenerAdapter {

        public final View f95939a;

        public final float f95940b;

        public b(View view, float f10) {
            this.f95939a = view;
            this.f95940b = f10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f95939a.setAlpha(this.f95940b);
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
        return c(view, alpha, 0.0f, 0.0f, this.f95933a, alpha);
    }

    @Override
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return c(view, 0.0f, alpha, this.f95933a, 1.0f, alpha);
    }

    public float d() {
        return this.f95933a;
    }

    public void e(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f95933a = f10;
    }
}
