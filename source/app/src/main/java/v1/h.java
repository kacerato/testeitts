package V1;

import V1.c;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

public final class h<S extends c> extends i {

    public static final int f26499x = 10000;

    public static final float f26500y = 50.0f;

    public static final FloatPropertyCompat<h> f26501z = new a("indicatorLevel");

    public j<S> f26502s;

    public final SpringForce f26503t;

    public final SpringAnimation f26504u;

    public float f26505v;

    public boolean f26506w;

    public static class a extends FloatPropertyCompat<h> {
        public a(String str) {
            super(str);
        }

        @Override
        public float getValue(h hVar) {
            return hVar.A() * 10000.0f;
        }

        @Override
        public void setValue(h hVar, float f10) {
            hVar.D(f10 / 10000.0f);
        }
    }

    public h(@NonNull Context context, @NonNull c cVar, @NonNull j<S> jVar) {
        super(context, cVar);
        this.f26506w = false;
        C(jVar);
        SpringForce springForce = new SpringForce();
        this.f26503t = springForce;
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(50.0f);
        SpringAnimation springAnimation = new SpringAnimation(this, f26501z);
        this.f26504u = springAnimation;
        springAnimation.setSpring(springForce);
        m(1.0f);
    }

    @NonNull
    public static h<g> x(@NonNull Context context, @NonNull g gVar) {
        return new h<>(context, gVar, new d(gVar));
    }

    @NonNull
    public static h<q> y(@NonNull Context context, @NonNull q qVar) {
        return new h<>(context, qVar, new m(qVar));
    }

    public final float A() {
        return this.f26505v;
    }

    public void B(@NonNull DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.f26504u.removeEndListener(onAnimationEndListener);
    }

    public void C(@NonNull j<S> jVar) {
        this.f26502s = jVar;
        jVar.f(this);
    }

    public final void D(float f10) {
        this.f26505v = f10;
        invalidateSelf();
    }

    public void E(float f10) {
        setLevel((int) (f10 * 10000.0f));
    }

    @Override
    public void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f26502s.g(canvas, g());
            this.f26502s.c(canvas, this.f26522n);
            this.f26502s.b(canvas, this.f26522n, 0.0f, A(), J1.a.a(this.f26511c.f26461c[0], getAlpha()));
            canvas.restore();
        }
    }

    @Override
    public int getAlpha() {
        return super.getAlpha();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f26502s.d();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f26502s.e();
    }

    @Override
    public int getOpacity() {
        return super.getOpacity();
    }

    @Override
    public boolean i() {
        return super.i();
    }

    @Override
    public boolean isRunning() {
        return super.isRunning();
    }

    @Override
    public boolean j() {
        return super.j();
    }

    @Override
    public void jumpToCurrentState() {
        this.f26504u.skipToEnd();
        D(getLevel() / 10000.0f);
    }

    @Override
    public boolean k() {
        return super.k();
    }

    @Override
    public boolean onLevelChange(int i10) {
        if (this.f26506w) {
            this.f26504u.skipToEnd();
            D(i10 / 10000.0f);
            return true;
        }
        this.f26504u.setStartValue(A() * 10000.0f);
        this.f26504u.animateToFinalPosition(i10);
        return true;
    }

    @Override
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        super.registerAnimationCallback(animationCallback);
    }

    @Override
    public boolean s(boolean z10, boolean z11, boolean z12) {
        return super.s(z10, z11, z12);
    }

    @Override
    public void setAlpha(int i10) {
        super.setAlpha(i10);
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11);
    }

    @Override
    public void start() {
        super.start();
    }

    @Override
    public void stop() {
        super.stop();
    }

    @Override
    public boolean t(boolean z10, boolean z11, boolean z12) {
        boolean t10 = super.t(z10, z11, z12);
        float a10 = this.f26512d.a(this.f26510b.getContentResolver());
        if (a10 == 0.0f) {
            this.f26506w = true;
        } else {
            this.f26506w = false;
            this.f26503t.setStiffness(50.0f / a10);
        }
        return t10;
    }

    @Override
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }

    public void w(@NonNull DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.f26504u.addEndListener(onAnimationEndListener);
    }

    @NonNull
    public j<S> z() {
        return this.f26502s;
    }
}
