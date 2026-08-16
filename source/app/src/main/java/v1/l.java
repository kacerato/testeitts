package V1;

import V1.c;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

public final class l<S extends c> extends i {

    public j<S> f26531s;

    public k<ObjectAnimator> f26532t;

    public l(@NonNull Context context, @NonNull c cVar, @NonNull j<S> jVar, @NonNull k<ObjectAnimator> kVar) {
        super(context, cVar);
        z(jVar);
        y(kVar);
    }

    @NonNull
    public static l<g> u(@NonNull Context context, @NonNull g gVar) {
        return new l<>(context, gVar, new d(gVar), new e(gVar));
    }

    @NonNull
    public static l<q> v(@NonNull Context context, @NonNull q qVar) {
        return new l<>(context, qVar, new m(qVar), qVar.f26566g == 0 ? new n(qVar) : new o(context, qVar));
    }

    @Override
    public void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        this.f26531s.g(canvas, g());
        this.f26531s.c(canvas, this.f26522n);
        int i10 = 0;
        while (true) {
            k<ObjectAnimator> kVar = this.f26532t;
            int[] iArr = kVar.f26530c;
            if (i10 >= iArr.length) {
                canvas.restore();
                return;
            }
            j<S> jVar = this.f26531s;
            Paint paint = this.f26522n;
            float[] fArr = kVar.f26529b;
            int i11 = i10 * 2;
            jVar.b(canvas, paint, fArr[i11], fArr[i11 + 1], iArr[i10]);
            i10++;
        }
    }

    @Override
    public int getAlpha() {
        return super.getAlpha();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f26531s.d();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f26531s.e();
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
    public boolean k() {
        return super.k();
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
        if (!isRunning()) {
            this.f26532t.a();
        }
        this.f26512d.a(this.f26510b.getContentResolver());
        if (z10 && z12) {
            this.f26532t.g();
        }
        return t10;
    }

    @Override
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }

    @NonNull
    public k<ObjectAnimator> w() {
        return this.f26532t;
    }

    @NonNull
    public j<S> x() {
        return this.f26531s;
    }

    public void y(@NonNull k<ObjectAnimator> kVar) {
        this.f26532t = kVar;
        kVar.e(this);
    }

    public void z(@NonNull j<S> jVar) {
        this.f26531s = jVar;
        jVar.f(this);
    }
}
