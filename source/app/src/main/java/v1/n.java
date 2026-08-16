package V1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.Arrays;

public final class n extends k<ObjectAnimator> {

    public static final int f26536j = 667;

    public static final int f26537k = 333;

    public static final Property<n, Float> f26538l = new b(Float.class, "animationFraction");

    public ObjectAnimator f26539d;

    public FastOutSlowInInterpolator f26540e;

    public final c f26541f;

    public int f26542g;

    public boolean f26543h;

    public float f26544i;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            n nVar = n.this;
            nVar.f26542g = (nVar.f26542g + 1) % n.this.f26541f.f26461c.length;
            n.this.f26543h = true;
        }
    }

    public static class b extends Property<n, Float> {
        public b(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(n nVar) {
            return Float.valueOf(nVar.n());
        }

        @Override
        public void set(n nVar, Float f10) {
            nVar.r(f10.floatValue());
        }
    }

    public n(@NonNull q qVar) {
        super(3);
        this.f26542g = 1;
        this.f26541f = qVar;
        this.f26540e = new FastOutSlowInInterpolator();
    }

    public float n() {
        return this.f26544i;
    }

    private void o() {
        if (this.f26539d == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f26538l, 0.0f, 1.0f);
            this.f26539d = ofFloat;
            ofFloat.setDuration(333L);
            this.f26539d.setInterpolator(null);
            this.f26539d.setRepeatCount(-1);
            this.f26539d.addListener(new a());
        }
    }

    private void s(int i10) {
        this.f26529b[0] = 0.0f;
        float b10 = b(i10, 0, 667);
        float[] fArr = this.f26529b;
        float interpolation = this.f26540e.getInterpolation(b10);
        fArr[2] = interpolation;
        fArr[1] = interpolation;
        float[] fArr2 = this.f26529b;
        float interpolation2 = this.f26540e.getInterpolation(b10 + 0.49925038f);
        fArr2[4] = interpolation2;
        fArr2[3] = interpolation2;
        this.f26529b[5] = 1.0f;
    }

    @Override
    public void a() {
        ObjectAnimator objectAnimator = this.f26539d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override
    public void c() {
        q();
    }

    @Override
    public void d(@Nullable Animatable2Compat.AnimationCallback animationCallback) {
    }

    @Override
    public void f() {
    }

    @Override
    public void g() {
        o();
        q();
        this.f26539d.start();
    }

    @Override
    public void h() {
    }

    public final void p() {
        if (!this.f26543h || this.f26529b[3] >= 1.0f) {
            return;
        }
        int[] iArr = this.f26530c;
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        iArr[0] = J1.a.a(this.f26541f.f26461c[this.f26542g], this.f26528a.getAlpha());
        this.f26543h = false;
    }

    @VisibleForTesting
    public void q() {
        this.f26543h = true;
        this.f26542g = 1;
        Arrays.fill(this.f26530c, J1.a.a(this.f26541f.f26461c[0], this.f26528a.getAlpha()));
    }

    @VisibleForTesting
    public void r(float f10) {
        this.f26544i = f10;
        s((int) (f10 * 333.0f));
        p();
        this.f26528a.invalidateSelf();
    }
}
