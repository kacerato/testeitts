package V1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import x1.C16048c;

public final class e extends k<ObjectAnimator> {

    public static final int f26469l = 4;

    public static final int f26470m = 5400;

    public static final int f26471n = 667;

    public static final int f26472o = 667;

    public static final int f26473p = 333;

    public static final int f26474q = 333;

    public static final int f26478u = -20;

    public static final int f26479v = 250;

    public static final int f26480w = 1520;

    public ObjectAnimator f26483d;

    public ObjectAnimator f26484e;

    public final FastOutSlowInInterpolator f26485f;

    public final V1.c f26486g;

    public int f26487h;

    public float f26488i;

    public float f26489j;

    public Animatable2Compat.AnimationCallback f26490k;

    public static final int[] f26475r = {0, 1350, 2700, 4050};

    public static final int[] f26476s = {667, 2017, 3367, 4717};

    public static final int[] f26477t = {1000, 2350, 3700, 5050};

    public static final Property<e, Float> f26481x = new c(Float.class, "animationFraction");

    public static final Property<e, Float> f26482y = new d(Float.class, "completeEndFraction");

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            e eVar = e.this;
            eVar.f26487h = (eVar.f26487h + 4) % e.this.f26486g.f26461c.length;
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            e.this.a();
            e eVar = e.this;
            Animatable2Compat.AnimationCallback animationCallback = eVar.f26490k;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(eVar.f26528a);
            }
        }
    }

    public static class c extends Property<e, Float> {
        public c(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(e eVar) {
            return Float.valueOf(eVar.o());
        }

        @Override
        public void set(e eVar, Float f10) {
            eVar.t(f10.floatValue());
        }
    }

    public static class d extends Property<e, Float> {
        public d(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(e eVar) {
            return Float.valueOf(eVar.p());
        }

        @Override
        public void set(e eVar, Float f10) {
            eVar.u(f10.floatValue());
        }
    }

    public e(@NonNull g gVar) {
        super(1);
        this.f26487h = 0;
        this.f26490k = null;
        this.f26486g = gVar;
        this.f26485f = new FastOutSlowInInterpolator();
    }

    @Override
    public void a() {
        ObjectAnimator objectAnimator = this.f26483d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override
    public void c() {
        s();
    }

    @Override
    public void d(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f26490k = animationCallback;
    }

    @Override
    public void f() {
        if (this.f26484e.isRunning()) {
            return;
        }
        if (this.f26528a.isVisible()) {
            this.f26484e.start();
        } else {
            a();
        }
    }

    @Override
    public void g() {
        q();
        s();
        this.f26483d.start();
    }

    @Override
    public void h() {
        this.f26490k = null;
    }

    public final float o() {
        return this.f26488i;
    }

    public final float p() {
        return this.f26489j;
    }

    public final void q() {
        if (this.f26483d == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f26481x, 0.0f, 1.0f);
            this.f26483d = ofFloat;
            ofFloat.setDuration(5400L);
            this.f26483d.setInterpolator(null);
            this.f26483d.setRepeatCount(-1);
            this.f26483d.addListener(new a());
        }
        if (this.f26484e == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f26482y, 0.0f, 1.0f);
            this.f26484e = ofFloat2;
            ofFloat2.setDuration(333L);
            this.f26484e.setInterpolator(this.f26485f);
            this.f26484e.addListener(new b());
        }
    }

    public final void r(int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            float b10 = b(i10, f26477t[i11], 333);
            if (b10 >= 0.0f && b10 <= 1.0f) {
                int i12 = i11 + this.f26487h;
                int[] iArr = this.f26486g.f26461c;
                int length = i12 % iArr.length;
                int length2 = (length + 1) % iArr.length;
                this.f26530c[0] = C16048c.b().evaluate(this.f26485f.getInterpolation(b10), Integer.valueOf(J1.a.a(iArr[length], this.f26528a.getAlpha())), Integer.valueOf(J1.a.a(this.f26486g.f26461c[length2], this.f26528a.getAlpha()))).intValue();
                return;
            }
        }
    }

    @VisibleForTesting
    public void s() {
        this.f26487h = 0;
        this.f26530c[0] = J1.a.a(this.f26486g.f26461c[0], this.f26528a.getAlpha());
        this.f26489j = 0.0f;
    }

    @VisibleForTesting
    public void t(float f10) {
        this.f26488i = f10;
        int i10 = (int) (f10 * 5400.0f);
        v(i10);
        r(i10);
        this.f26528a.invalidateSelf();
    }

    public final void u(float f10) {
        this.f26489j = f10;
    }

    public final void v(int i10) {
        float[] fArr = this.f26529b;
        float f10 = this.f26488i;
        fArr[0] = (f10 * 1520.0f) - 20.0f;
        fArr[1] = f10 * 1520.0f;
        for (int i11 = 0; i11 < 4; i11++) {
            float b10 = b(i10, f26475r[i11], 667);
            float[] fArr2 = this.f26529b;
            fArr2[1] = fArr2[1] + (this.f26485f.getInterpolation(b10) * 250.0f);
            float b11 = b(i10, f26476s[i11], 667);
            float[] fArr3 = this.f26529b;
            fArr3[0] = fArr3[0] + (this.f26485f.getInterpolation(b11) * 250.0f);
        }
        float[] fArr4 = this.f26529b;
        float f11 = fArr4[0];
        float f12 = fArr4[1];
        float f13 = f11 + ((f12 - f11) * this.f26489j);
        fArr4[0] = f13;
        fArr4[0] = f13 / 360.0f;
        fArr4[1] = f12 / 360.0f;
    }
}
