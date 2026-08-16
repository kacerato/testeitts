package P;

import C.l;
import P.g;
import Y.k;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public class c extends Drawable implements g.b, Animatable, Animatable2Compat {

    public static final int f20569m = -1;

    public static final int f20570n = 0;

    public static final int f20571o = 119;

    public final a f20572b;

    public boolean f20573c;

    public boolean f20574d;

    public boolean f20575e;

    public boolean f20576f;

    public int f20577g;

    public int f20578h;

    public boolean f20579i;

    public Paint f20580j;

    public Rect f20581k;

    public List<Animatable2Compat.AnimationCallback> f20582l;

    public static final class a extends Drawable.ConstantState {

        @VisibleForTesting
        public final g f20583a;

        public a(g gVar) {
            this.f20583a = gVar;
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override
        @NonNull
        public Drawable newDrawable() {
            return new c(this);
        }
    }

    @Deprecated
    public c(Context context, B.a aVar, F.e eVar, l<Bitmap> lVar, int i10, int i11, Bitmap bitmap) {
        this(context, aVar, lVar, i10, i11, bitmap);
    }

    @Override
    public void a() {
        if (b() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (g() == f() - 1) {
            this.f20577g++;
        }
        int i10 = this.f20578h;
        if (i10 == -1 || this.f20577g < i10) {
            return;
        }
        l();
        stop();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Drawable.Callback b() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    public ByteBuffer c() {
        return this.f20572b.f20583a.b();
    }

    @Override
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f20582l;
        if (list != null) {
            list.clear();
        }
    }

    public final Rect d() {
        if (this.f20581k == null) {
            this.f20581k = new Rect();
        }
        return this.f20581k;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        if (this.f20575e) {
            return;
        }
        if (this.f20579i) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
            this.f20579i = false;
        }
        canvas.drawBitmap(this.f20572b.f20583a.c(), (Rect) null, d(), i());
    }

    public Bitmap e() {
        return this.f20572b.f20583a.e();
    }

    public int f() {
        return this.f20572b.f20583a.f();
    }

    public int g() {
        return this.f20572b.f20583a.d();
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        return this.f20572b;
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f20572b.f20583a.i();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f20572b.f20583a.m();
    }

    @Override
    public int getOpacity() {
        return -2;
    }

    public l<Bitmap> h() {
        return this.f20572b.f20583a.h();
    }

    public final Paint i() {
        if (this.f20580j == null) {
            this.f20580j = new Paint(2);
        }
        return this.f20580j;
    }

    @Override
    public boolean isRunning() {
        return this.f20573c;
    }

    public int j() {
        return this.f20572b.f20583a.l();
    }

    public boolean k() {
        return this.f20575e;
    }

    public final void l() {
        List<Animatable2Compat.AnimationCallback> list = this.f20582l;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f20582l.get(i10).onAnimationEnd(this);
            }
        }
    }

    public void m() {
        this.f20575e = true;
        this.f20572b.f20583a.a();
    }

    public final void n() {
        this.f20577g = 0;
    }

    public void o(l<Bitmap> lVar, Bitmap bitmap) {
        this.f20572b.f20583a.q(lVar, bitmap);
    }

    @Override
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f20579i = true;
    }

    public void p(boolean z10) {
        this.f20573c = z10;
    }

    public void q(int i10) {
        if (i10 <= 0 && i10 != -1 && i10 != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i10 != 0) {
            this.f20578h = i10;
        } else {
            int j10 = this.f20572b.f20583a.j();
            this.f20578h = j10 != 0 ? j10 : -1;
        }
    }

    public void r() {
        k.a(!this.f20573c, "You cannot restart a currently running animation.");
        this.f20572b.f20583a.r();
        start();
    }

    @Override
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f20582l == null) {
            this.f20582l = new ArrayList();
        }
        this.f20582l.add(animationCallback);
    }

    public final void s() {
        k.a(!this.f20575e, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f20572b.f20583a.f() == 1) {
            invalidateSelf();
        } else {
            if (this.f20573c) {
                return;
            }
            this.f20573c = true;
            this.f20572b.f20583a.v(this);
            invalidateSelf();
        }
    }

    @Override
    public void setAlpha(int i10) {
        i().setAlpha(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        i().setColorFilter(colorFilter);
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        k.a(!this.f20575e, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f20576f = z10;
        if (!z10) {
            t();
        } else if (this.f20574d) {
            s();
        }
        return super.setVisible(z10, z11);
    }

    @Override
    public void start() {
        this.f20574d = true;
        n();
        if (this.f20576f) {
            s();
        }
    }

    @Override
    public void stop() {
        this.f20574d = false;
        t();
    }

    public final void t() {
        this.f20573c = false;
        this.f20572b.f20583a.w(this);
    }

    @Override
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f20582l;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    public c(Context context, B.a aVar, l<Bitmap> lVar, int i10, int i11, Bitmap bitmap) {
        this(new a(new g(com.bumptech.glide.b.d(context), aVar, i10, i11, lVar, bitmap)));
    }

    public c(a aVar) {
        this.f20576f = true;
        this.f20578h = -1;
        this.f20572b = (a) k.d(aVar);
    }

    @VisibleForTesting
    public c(g gVar, Paint paint) {
        this(new a(gVar));
        this.f20580j = paint;
    }
}
