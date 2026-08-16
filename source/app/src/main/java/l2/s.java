package l2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
public final class s implements w {

    public float f96087a;

    public float f96088b;

    public float f96089c;

    public float f96090d;

    public boolean f96091e;

    public boolean f96092f;

    public static class a extends AnimatorListenerAdapter {

        public final View f96093a;

        public final float f96094b;

        public final float f96095c;

        public a(View view, float f10, float f11) {
            this.f96093a = view;
            this.f96094b = f10;
            this.f96095c = f11;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f96093a.setScaleX(this.f96094b);
            this.f96093a.setScaleY(this.f96095c);
        }
    }

    public s() {
        this(true);
    }

    public static Animator c(View view, float f10, float f11) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.SCALE_X, scaleX * f10, scaleX * f11), PropertyValuesHolder.ofFloat(View.SCALE_Y, f10 * scaleY, f11 * scaleY));
        ofPropertyValuesHolder.addListener(new a(view, scaleX, scaleY));
        return ofPropertyValuesHolder;
    }

    @Override
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f96092f) {
            return this.f96091e ? c(view, this.f96087a, this.f96088b) : c(view, this.f96090d, this.f96089c);
        }
        return null;
    }

    @Override
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f96091e ? c(view, this.f96089c, this.f96090d) : c(view, this.f96088b, this.f96087a);
    }

    public float d() {
        return this.f96090d;
    }

    public float e() {
        return this.f96089c;
    }

    public float f() {
        return this.f96088b;
    }

    public float g() {
        return this.f96087a;
    }

    public boolean h() {
        return this.f96091e;
    }

    public boolean i() {
        return this.f96092f;
    }

    public void j(boolean z10) {
        this.f96091e = z10;
    }

    public void k(float f10) {
        this.f96090d = f10;
    }

    public void l(float f10) {
        this.f96089c = f10;
    }

    public void m(float f10) {
        this.f96088b = f10;
    }

    public void n(float f10) {
        this.f96087a = f10;
    }

    public void o(boolean z10) {
        this.f96092f = z10;
    }

    public s(boolean z10) {
        this.f96087a = 1.0f;
        this.f96088b = 1.1f;
        this.f96089c = 0.8f;
        this.f96090d = 1.0f;
        this.f96092f = true;
        this.f96091e = z10;
    }
}
