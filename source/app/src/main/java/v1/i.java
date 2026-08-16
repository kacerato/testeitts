package V1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import x1.C16046a;

public abstract class i extends Drawable implements Animatable2Compat {

    public static final boolean f26507p = false;

    public static final int f26508q = 500;

    public static final Property<i, Float> f26509r = new c(Float.class, "growFraction");

    public final Context f26510b;

    public final V1.c f26511c;

    public ValueAnimator f26513e;

    public ValueAnimator f26514f;

    public boolean f26515g;

    public boolean f26516h;

    public float f26517i;

    public List<Animatable2Compat.AnimationCallback> f26518j;

    public Animatable2Compat.AnimationCallback f26519k;

    public boolean f26520l;

    public float f26521m;

    public int f26523o;

    public final Paint f26522n = new Paint();

    public V1.a f26512d = new V1.a();

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            i.this.e();
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            i.super.setVisible(false, false);
            i.this.d();
        }
    }

    public static class c extends Property<i, Float> {
        public c(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(i iVar) {
            return Float.valueOf(iVar.g());
        }

        @Override
        public void set(i iVar, Float f10) {
            iVar.m(f10.floatValue());
        }
    }

    public i(@NonNull Context context, @NonNull V1.c cVar) {
        this.f26510b = context;
        this.f26511c = cVar;
        setAlpha(255);
    }

    public void d() {
        Animatable2Compat.AnimationCallback animationCallback = this.f26519k;
        if (animationCallback != null) {
            animationCallback.onAnimationEnd(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f26518j;
        if (list == null || this.f26520l) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it = list.iterator();
        while (it.hasNext()) {
            it.next().onAnimationEnd(this);
        }
    }

    public void e() {
        Animatable2Compat.AnimationCallback animationCallback = this.f26519k;
        if (animationCallback != null) {
            animationCallback.onAnimationStart(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f26518j;
        if (list == null || this.f26520l) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it = list.iterator();
        while (it.hasNext()) {
            it.next().onAnimationStart(this);
        }
    }

    public void clearAnimationCallbacks() {
        this.f26518j.clear();
        this.f26518j = null;
    }

    public final void f(@NonNull ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f26520l;
        this.f26520l = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f26520l = z10;
    }

    public float g() {
        if (this.f26511c.b() || this.f26511c.a()) {
            return (this.f26516h || this.f26515g) ? this.f26517i : this.f26521m;
        }
        return 1.0f;
    }

    @Override
    public int getAlpha() {
        return this.f26523o;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @NonNull
    public ValueAnimator h() {
        return this.f26514f;
    }

    public boolean i() {
        return s(false, false, false);
    }

    public boolean isRunning() {
        return k() || j();
    }

    public boolean j() {
        ValueAnimator valueAnimator = this.f26514f;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f26516h;
    }

    public boolean k() {
        ValueAnimator valueAnimator = this.f26513e;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f26515g;
    }

    public final void l() {
        if (this.f26513e == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f26509r, 0.0f, 1.0f);
            this.f26513e = ofFloat;
            ofFloat.setDuration(500L);
            this.f26513e.setInterpolator(C16046a.f127889b);
            r(this.f26513e);
        }
        if (this.f26514f == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f26509r, 1.0f, 0.0f);
            this.f26514f = ofFloat2;
            ofFloat2.setDuration(500L);
            this.f26514f.setInterpolator(C16046a.f127889b);
            n(this.f26514f);
        }
    }

    public void m(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f26521m != f10) {
            this.f26521m = f10;
            invalidateSelf();
        }
    }

    public final void n(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f26514f;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f26514f = valueAnimator;
        valueAnimator.addListener(new b());
    }

    public void o(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f26519k = animationCallback;
    }

    @VisibleForTesting
    public void p(boolean z10, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f26516h = z10;
        this.f26517i = f10;
    }

    @VisibleForTesting
    public void q(boolean z10, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f26515g = z10;
        this.f26517i = f10;
    }

    public final void r(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f26513e;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f26513e = valueAnimator;
        valueAnimator.addListener(new a());
    }

    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (this.f26518j == null) {
            this.f26518j = new ArrayList();
        }
        if (this.f26518j.contains(animationCallback)) {
            return;
        }
        this.f26518j.add(animationCallback);
    }

    public boolean s(boolean z10, boolean z11, boolean z12) {
        return t(z10, z11, z12 && this.f26512d.a(this.f26510b.getContentResolver()) > 0.0f);
    }

    @Override
    public void setAlpha(int i10) {
        this.f26523o = i10;
        invalidateSelf();
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f26522n.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        return s(z10, z11, true);
    }

    public void start() {
        t(true, true, false);
    }

    public void stop() {
        t(false, true, false);
    }

    public boolean t(boolean z10, boolean z11, boolean z12) {
        l();
        if (!isVisible() && !z10) {
            return false;
        }
        ValueAnimator valueAnimator = z10 ? this.f26513e : this.f26514f;
        if (!z12) {
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                f(valueAnimator);
            }
            return super.setVisible(z10, false);
        }
        if (z12 && valueAnimator.isRunning()) {
            return false;
        }
        boolean z13 = !z10 || super.setVisible(z10, false);
        if (!(z10 ? this.f26511c.b() : this.f26511c.a())) {
            f(valueAnimator);
            return z13;
        }
        if (z11 || !valueAnimator.isPaused()) {
            valueAnimator.start();
        } else {
            valueAnimator.resume();
        }
        return z13;
    }

    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f26518j;
        if (list == null || !list.contains(animationCallback)) {
            return false;
        }
        this.f26518j.remove(animationCallback);
        if (!this.f26518j.isEmpty()) {
            return true;
        }
        this.f26518j = null;
        return true;
    }
}
