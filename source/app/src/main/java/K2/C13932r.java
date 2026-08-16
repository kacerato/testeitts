package k2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C13932r implements v {

    public float f94802a;

    public float f94803b;

    public float f94804c;

    public float f94805d;

    public boolean f94806e;

    public boolean f94807f;

    public static class a extends AnimatorListenerAdapter {

        public final View f94808a;

        public final float f94809b;

        public final float f94810c;

        public a(View view, float f10, float f11) {
            this.f94808a = view;
            this.f94809b = f10;
            this.f94810c = f11;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f94808a.setScaleX(this.f94809b);
            this.f94808a.setScaleY(this.f94810c);
        }
    }

    public C13932r() {
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
        if (this.f94807f) {
            return this.f94806e ? c(view, this.f94802a, this.f94803b) : c(view, this.f94805d, this.f94804c);
        }
        return null;
    }

    @Override
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f94806e ? c(view, this.f94804c, this.f94805d) : c(view, this.f94803b, this.f94802a);
    }

    public float d() {
        return this.f94805d;
    }

    public float e() {
        return this.f94804c;
    }

    public float f() {
        return this.f94803b;
    }

    public float g() {
        return this.f94802a;
    }

    public boolean h() {
        return this.f94806e;
    }

    public boolean i() {
        return this.f94807f;
    }

    public void j(boolean z10) {
        this.f94806e = z10;
    }

    public void k(float f10) {
        this.f94805d = f10;
    }

    public void l(float f10) {
        this.f94804c = f10;
    }

    public void m(float f10) {
        this.f94803b = f10;
    }

    public void n(float f10) {
        this.f94802a = f10;
    }

    public void o(boolean z10) {
        this.f94807f = z10;
    }

    public C13932r(boolean z10) {
        this.f94802a = 1.0f;
        this.f94803b = 1.1f;
        this.f94804c = 0.8f;
        this.f94805d = 1.0f;
        this.f94807f = true;
        this.f94806e = z10;
    }
}
