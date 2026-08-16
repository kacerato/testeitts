package Rd;

import Rd.r;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class g implements b {

    @ColorInt
    public static final int f22721p = 0;

    public final Rd.a f22723d;

    public c f22724e;

    public Bitmap f22725f;

    public final View f22726g;

    public int f22727h;

    public final ViewGroup f22728i;

    public boolean f22733n;

    @Nullable
    public Drawable f22734o;

    public float f22722c = 16.0f;

    public final int[] f22729j = new int[2];

    public final int[] f22730k = new int[2];

    public final ViewTreeObserver.OnPreDrawListener f22731l = new a();

    public boolean f22732m = true;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override
        public boolean onPreDraw() {
            g.this.j();
            return true;
        }
    }

    public g(@NonNull View view, @NonNull ViewGroup viewGroup, @ColorInt int i10, Rd.a aVar) {
        this.f22728i = viewGroup;
        this.f22726g = view;
        this.f22727h = i10;
        this.f22723d = aVar;
        if (aVar instanceof p) {
            ((p) aVar).f(view.getContext());
        }
        h(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override
    public d a(boolean z10) {
        this.f22732m = z10;
        e(z10);
        this.f22726g.invalidate();
        return this;
    }

    @Override
    public void b() {
        h(this.f22726g.getMeasuredWidth(), this.f22726g.getMeasuredHeight());
    }

    @Override
    public d c(float f10) {
        this.f22722c = f10;
        return this;
    }

    @Override
    public d d(int i10) {
        if (this.f22727h != i10) {
            this.f22727h = i10;
            this.f22726g.invalidate();
        }
        return this;
    }

    @Override
    public void destroy() {
        e(false);
        this.f22723d.destroy();
        this.f22733n = false;
    }

    @Override
    public boolean draw(Canvas canvas) {
        if (this.f22732m && this.f22733n) {
            if (canvas instanceof c) {
                return false;
            }
            float width = this.f22726g.getWidth() / this.f22725f.getWidth();
            canvas.save();
            canvas.scale(width, this.f22726g.getHeight() / this.f22725f.getHeight());
            this.f22723d.d(canvas, this.f22725f);
            canvas.restore();
            int i10 = this.f22727h;
            if (i10 != 0) {
                canvas.drawColor(i10);
            }
        }
        return true;
    }

    @Override
    public d e(boolean z10) {
        this.f22728i.getViewTreeObserver().removeOnPreDrawListener(this.f22731l);
        if (z10) {
            this.f22728i.getViewTreeObserver().addOnPreDrawListener(this.f22731l);
        }
        return this;
    }

    @Override
    public d f(@Nullable Drawable drawable) {
        this.f22734o = drawable;
        return this;
    }

    public final void g() {
        this.f22725f = this.f22723d.e(this.f22725f, this.f22722c);
        if (this.f22723d.b()) {
            return;
        }
        this.f22724e.setBitmap(this.f22725f);
    }

    public void h(int i10, int i11) {
        e(true);
        r rVar = new r(this.f22723d.c());
        if (rVar.b(i10, i11)) {
            this.f22726g.setWillNotDraw(true);
            return;
        }
        this.f22726g.setWillNotDraw(false);
        r.a d10 = rVar.d(i10, i11);
        this.f22725f = Bitmap.createBitmap(d10.f22750a, d10.f22751b, this.f22723d.a());
        this.f22724e = new c(this.f22725f);
        this.f22733n = true;
        j();
    }

    public final void i() {
        this.f22728i.getLocationOnScreen(this.f22729j);
        this.f22726g.getLocationOnScreen(this.f22730k);
        int[] iArr = this.f22730k;
        int i10 = iArr[0];
        int[] iArr2 = this.f22729j;
        int i11 = i10 - iArr2[0];
        int i12 = iArr[1] - iArr2[1];
        float height = this.f22726g.getHeight() / this.f22725f.getHeight();
        float width = this.f22726g.getWidth() / this.f22725f.getWidth();
        this.f22724e.translate((-i11) / width, (-i12) / height);
        this.f22724e.scale(1.0f / width, 1.0f / height);
    }

    public void j() {
        if (this.f22732m && this.f22733n) {
            Drawable drawable = this.f22734o;
            if (drawable == null) {
                this.f22725f.eraseColor(0);
            } else {
                drawable.draw(this.f22724e);
            }
            this.f22724e.save();
            i();
            this.f22728i.draw(this.f22724e);
            this.f22724e.restore();
            g();
        }
    }
}
