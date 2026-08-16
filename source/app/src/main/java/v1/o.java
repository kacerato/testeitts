package V1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat;
import java.util.Arrays;
import w1.C15879a;

public final class o extends k<ObjectAnimator> {

    public static final int f26546l = 1800;

    public static final int[] f26547m = {533, 567, 850, 750};

    public static final int[] f26548n = {1267, 1000, 333, 0};

    public static final Property<o, Float> f26549o = new b(Float.class, "animationFraction");

    public ObjectAnimator f26550d;

    public final Interpolator[] f26551e;

    public final c f26552f;

    public int f26553g;

    public boolean f26554h;

    public float f26555i;

    public boolean f26556j;

    public Animatable2Compat.AnimationCallback f26557k;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (o.this.f26556j) {
                o.this.f26550d.setRepeatCount(-1);
                o oVar = o.this;
                oVar.f26557k.onAnimationEnd(oVar.f26528a);
                o.this.f26556j = false;
            }
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            o oVar = o.this;
            oVar.f26553g = (oVar.f26553g + 1) % o.this.f26552f.f26461c.length;
            o.this.f26554h = true;
        }
    }

    public static class b extends Property<o, Float> {
        public b(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(o oVar) {
            return Float.valueOf(oVar.q());
        }

        @Override
        public void set(o oVar, Float f10) {
            oVar.u(f10.floatValue());
        }
    }

    public o(@NonNull Context context, @NonNull q qVar) {
        super(2);
        this.f26553g = 0;
        this.f26557k = null;
        this.f26552f = qVar;
        this.f26551e = new Interpolator[]{AnimationUtilsCompat.loadInterpolator(context, C15879a.b.f121806d), AnimationUtilsCompat.loadInterpolator(context, C15879a.b.f121807e), AnimationUtilsCompat.loadInterpolator(context, C15879a.b.f121808f), AnimationUtilsCompat.loadInterpolator(context, C15879a.b.f121809g)};
    }

    public float q() {
        return this.f26555i;
    }

    private void r() {
        if (this.f26550d == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f26549o, 0.0f, 1.0f);
            this.f26550d = ofFloat;
            ofFloat.setDuration(1800L);
            this.f26550d.setInterpolator(null);
            this.f26550d.setRepeatCount(-1);
            this.f26550d.addListener(new a());
        }
    }

    private void s() {
        if (this.f26554h) {
            Arrays.fill(this.f26530c, J1.a.a(this.f26552f.f26461c[this.f26553g], this.f26528a.getAlpha()));
            this.f26554h = false;
        }
    }

    private void v(int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            this.f26529b[i11] = Math.max(0.0f, Math.min(1.0f, this.f26551e[i11].getInterpolation(b(i10, f26548n[i11], f26547m[i11]))));
        }
    }

    @Override
    public void a() {
        ObjectAnimator objectAnimator = this.f26550d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override
    public void c() {
        t();
    }

    @Override
    public void d(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f26557k = animationCallback;
    }

    @Override
    public void f() {
        if (!this.f26528a.isVisible()) {
            a();
        } else {
            this.f26556j = true;
            this.f26550d.setRepeatCount(0);
        }
    }

    @Override
    public void g() {
        r();
        t();
        this.f26550d.start();
    }

    @Override
    public void h() {
        this.f26557k = null;
    }

    @VisibleForTesting
    public void t() {
        this.f26553g = 0;
        int a10 = J1.a.a(this.f26552f.f26461c[0], this.f26528a.getAlpha());
        int[] iArr = this.f26530c;
        iArr[0] = a10;
        iArr[1] = a10;
    }

    @VisibleForTesting
    public void u(float f10) {
        this.f26555i = f10;
        v((int) (f10 * 1800.0f));
        s();
        this.f26528a.invalidateSelf();
    }
}
