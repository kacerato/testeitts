package V1;

import V1.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import w1.C15879a;

public abstract class b<S extends V1.c> extends ProgressBar {

    public static final int f26431p = 0;

    public static final int f26432q = 1;

    public static final int f26433r = 2;

    public static final int f26434s = 0;

    public static final int f26435t = 1;

    public static final int f26436u = 2;

    public static final int f26437v = C15879a.n.f124693nc;

    public static final float f26438w = 0.2f;

    public static final int f26439x = 255;

    public static final int f26440y = 1000;

    public S f26441b;

    public int f26442c;

    public boolean f26443d;

    public boolean f26444e;

    public final int f26445f;

    public final int f26446g;

    public long f26447h;

    public V1.a f26448i;

    public boolean f26449j;

    public int f26450k;

    public final Runnable f26451l;

    public final Runnable f26452m;

    public final Animatable2Compat.AnimationCallback f26453n;

    public final Animatable2Compat.AnimationCallback f26454o;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            b.this.l();
        }
    }

    public class RunnableC0728b implements Runnable {
        public RunnableC0728b() {
        }

        @Override
        public void run() {
            b.this.k();
            b.this.f26447h = -1L;
        }
    }

    public class c extends Animatable2Compat.AnimationCallback {
        public c() {
        }

        @Override
        public void onAnimationEnd(Drawable drawable) {
            b.this.setIndeterminate(false);
            b bVar = b.this;
            bVar.p(bVar.f26442c, b.this.f26443d);
        }
    }

    public class d extends Animatable2Compat.AnimationCallback {
        public d() {
        }

        @Override
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            if (b.this.f26449j) {
                return;
            }
            b bVar = b.this;
            bVar.setVisibility(bVar.f26450k);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface e {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface f {
    }

    public b(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(C13421a.c(context, attributeSet, i10, f26437v), attributeSet, i10);
        this.f26447h = -1L;
        this.f26449j = false;
        this.f26450k = 4;
        this.f26451l = new a();
        this.f26452m = new RunnableC0728b();
        this.f26453n = new c();
        this.f26454o = new d();
        Context context2 = getContext();
        this.f26441b = i(context2, attributeSet);
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125716j4, i10, i11, new int[0]);
        this.f26445f = j10.getInt(C15879a.o.f125867p4, -1);
        this.f26446g = Math.min(j10.getInt(C15879a.o.f125817n4, -1), 1000);
        j10.recycle();
        this.f26448i = new V1.a();
        this.f26444e = true;
    }

    @Nullable
    private j<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().x();
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().z();
    }

    @Nullable
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f26441b.f26464f;
    }

    @NonNull
    public int[] getIndicatorColor() {
        return this.f26441b.f26461c;
    }

    public int getShowAnimationBehavior() {
        return this.f26441b.f26463e;
    }

    @ColorInt
    public int getTrackColor() {
        return this.f26441b.f26462d;
    }

    @Px
    public int getTrackCornerRadius() {
        return this.f26441b.f26460b;
    }

    @Px
    public int getTrackThickness() {
        return this.f26441b.f26459a;
    }

    public void h(boolean z10) {
        if (this.f26444e) {
            ((i) getCurrentDrawable()).s(s(), false, z10);
        }
    }

    public abstract S i(@NonNull Context context, @NonNull AttributeSet attributeSet);

    @Override
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    public void j() {
        if (getVisibility() != 0) {
            removeCallbacks(this.f26451l);
            return;
        }
        removeCallbacks(this.f26452m);
        long uptimeMillis = SystemClock.uptimeMillis() - this.f26447h;
        int i10 = this.f26446g;
        if (uptimeMillis >= i10) {
            this.f26452m.run();
        } else {
            postDelayed(this.f26452m, i10 - uptimeMillis);
        }
    }

    public final void k() {
        ((i) getCurrentDrawable()).s(false, false, true);
        if (n()) {
            setVisibility(4);
        }
    }

    public final void l() {
        if (this.f26446g > 0) {
            this.f26447h = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    public boolean m() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    public final boolean n() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    public final void o() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().w().d(this.f26453n);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().registerAnimationCallback(this.f26454o);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().registerAnimationCallback(this.f26454o);
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        o();
        if (s()) {
            l();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        removeCallbacks(this.f26452m);
        removeCallbacks(this.f26451l);
        ((i) getCurrentDrawable()).i();
        r();
        super.onDetachedFromWindow();
    }

    @Override
    public synchronized void onDraw(@NonNull Canvas canvas) {
        try {
            int save = canvas.save();
            if (getPaddingLeft() == 0) {
                if (getPaddingTop() != 0) {
                }
                if (getPaddingRight() == 0 || getPaddingBottom() != 0) {
                    canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
                }
                getCurrentDrawable().draw(canvas);
                canvas.restoreToCount(save);
            }
            canvas.translate(getPaddingLeft(), getPaddingTop());
            if (getPaddingRight() == 0) {
            }
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(save);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void onMeasure(int i10, int i11) {
        try {
            super.onMeasure(i10, i11);
            j<S> currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            int e10 = currentDrawingDelegate.e();
            int d10 = currentDrawingDelegate.d();
            setMeasuredDimension(e10 < 0 ? getMeasuredWidth() : e10 + getPaddingLeft() + getPaddingRight(), d10 < 0 ? getMeasuredHeight() : d10 + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        h(i10 == 0);
    }

    @Override
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        h(false);
    }

    public void p(int i10, boolean z10) {
        if (!isIndeterminate()) {
            super.setProgress(i10);
            if (getProgressDrawable() == null || z10) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f26442c = i10;
            this.f26443d = z10;
            this.f26449j = true;
            if (!getIndeterminateDrawable().isVisible() || this.f26448i.a(getContext().getContentResolver()) == 0.0f) {
                this.f26453n.onAnimationEnd(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().w().f();
            }
        }
    }

    public void q() {
        if (this.f26445f <= 0) {
            this.f26451l.run();
        } else {
            removeCallbacks(this.f26451l);
            postDelayed(this.f26451l, this.f26445f);
        }
    }

    public final void r() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(this.f26454o);
            getIndeterminateDrawable().w().h();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(this.f26454o);
        }
    }

    public boolean s() {
        return ViewCompat.isAttachedToWindow(this) && getWindowVisibility() == 0 && m();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setAnimatorDurationScaleProvider(@NonNull V1.a aVar) {
        this.f26448i = aVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f26512d = aVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f26512d = aVar;
        }
    }

    public void setHideAnimationBehavior(int i10) {
        this.f26441b.f26464f = i10;
        invalidate();
    }

    @Override
    public synchronized void setIndeterminate(boolean z10) {
        try {
            if (z10 == isIndeterminate()) {
                return;
            }
            i iVar = (i) getCurrentDrawable();
            if (iVar != null) {
                iVar.i();
            }
            super.setIndeterminate(z10);
            i iVar2 = (i) getCurrentDrawable();
            if (iVar2 != null) {
                iVar2.s(s(), false, false);
            }
            if ((iVar2 instanceof l) && s()) {
                ((l) iVar2).w().g();
            }
            this.f26449j = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof l)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((i) drawable).i();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(@ColorInt int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{J1.a.b(getContext(), C15879a.c.f122060N2, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f26441b.f26461c = iArr;
        getIndeterminateDrawable().w().c();
        invalidate();
    }

    @Override
    public synchronized void setProgress(int i10) {
        if (isIndeterminate()) {
            return;
        }
        p(i10, false);
    }

    @Override
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof h)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            h hVar = (h) drawable;
            hVar.i();
            super.setProgressDrawable(hVar);
            hVar.E(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i10) {
        this.f26441b.f26463e = i10;
        invalidate();
    }

    public void setTrackColor(@ColorInt int i10) {
        S s10 = this.f26441b;
        if (s10.f26462d != i10) {
            s10.f26462d = i10;
            invalidate();
        }
    }

    public void setTrackCornerRadius(@Px int i10) {
        S s10 = this.f26441b;
        if (s10.f26460b != i10) {
            s10.f26460b = Math.min(i10, s10.f26459a / 2);
        }
    }

    public void setTrackThickness(@Px int i10) {
        S s10 = this.f26441b;
        if (s10.f26459a != i10) {
            s10.f26459a = i10;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i10) {
        if (i10 != 0 && i10 != 4 && i10 != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f26450k = i10;
    }

    @Override
    @Nullable
    public l<S> getIndeterminateDrawable() {
        return (l) super.getIndeterminateDrawable();
    }

    @Override
    @Nullable
    public h<S> getProgressDrawable() {
        return (h) super.getProgressDrawable();
    }
}
