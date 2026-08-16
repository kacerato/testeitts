package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import w1.C15879a;

public class ClockHandView extends View {

    public static final int f65213s = 200;

    public ValueAnimator f65214b;

    public boolean f65215c;

    public float f65216d;

    public float f65217e;

    public boolean f65218f;

    public int f65219g;

    public final List<d> f65220h;

    public final int f65221i;

    public final float f65222j;

    public final Paint f65223k;

    public final RectF f65224l;

    @Px
    public final int f65225m;

    public float f65226n;

    public boolean f65227o;

    public c f65228p;

    public double f65229q;

    public int f65230r;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.n(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface c {
        void b(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10);
    }

    public interface d {
        void f(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    public void b(d dVar) {
        this.f65220h.add(dVar);
    }

    public final void c(Canvas canvas) {
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float cos = (this.f65230r * ((float) Math.cos(this.f65229q))) + width;
        float f10 = height;
        float sin = (this.f65230r * ((float) Math.sin(this.f65229q))) + f10;
        this.f65223k.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.f65221i, this.f65223k);
        double sin2 = Math.sin(this.f65229q);
        double cos2 = Math.cos(this.f65229q);
        this.f65223k.setStrokeWidth(this.f65225m);
        canvas.drawLine(width, f10, r1 + ((int) (cos2 * r6)), height + ((int) (r6 * sin2)), this.f65223k);
        canvas.drawCircle(width, f10, this.f65222j, this.f65223k);
    }

    public RectF d() {
        return this.f65224l;
    }

    public final int e(float f10, float f11) {
        int degrees = (int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)));
        int i10 = degrees + 90;
        return i10 < 0 ? degrees + 450 : i10;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public float f() {
        return this.f65226n;
    }

    public int g() {
        return this.f65221i;
    }

    public final Pair<Float, Float> h(float f10) {
        float f11 = f();
        if (Math.abs(f11 - f10) > 180.0f) {
            if (f11 > 180.0f && f10 < 180.0f) {
                f10 += 360.0f;
            }
            if (f11 < 180.0f && f10 > 180.0f) {
                f11 += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(f11), Float.valueOf(f10));
    }

    public final boolean i(float f10, float f11, boolean z10, boolean z11, boolean z12) {
        float e10 = e(f10, f11);
        boolean z13 = false;
        boolean z14 = f() != e10;
        if (z11 && z14) {
            return true;
        }
        if (!z14 && !z10) {
            return false;
        }
        if (z12 && this.f65215c) {
            z13 = true;
        }
        m(e10, z13);
        return true;
    }

    public void j(boolean z10) {
        this.f65215c = z10;
    }

    public void k(@Dimension int i10) {
        this.f65230r = i10;
        invalidate();
    }

    public void l(@FloatRange(from = 0.0d, to = 360.0d) float f10) {
        m(f10, false);
    }

    public void m(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10) {
        ValueAnimator valueAnimator = this.f65214b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z10) {
            n(f10, false);
            return;
        }
        Pair<Float, Float> h10 = h(f10);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(h10.first.floatValue(), h10.second.floatValue());
        this.f65214b = ofFloat;
        ofFloat.setDuration(200L);
        this.f65214b.addUpdateListener(new a());
        this.f65214b.addListener(new b());
        this.f65214b.start();
    }

    public final void n(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10) {
        float f11 = f10 % 360.0f;
        this.f65226n = f11;
        this.f65229q = Math.toRadians(f11 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.f65230r * ((float) Math.cos(this.f65229q)));
        float sin = height + (this.f65230r * ((float) Math.sin(this.f65229q)));
        RectF rectF = this.f65224l;
        int i10 = this.f65221i;
        rectF.set(width - i10, sin - i10, width + i10, sin + i10);
        Iterator<d> it = this.f65220h.iterator();
        while (it.hasNext()) {
            it.next().f(f11, z10);
        }
        invalidate();
    }

    public void o(c cVar) {
        this.f65228p = cVar;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c(canvas);
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        l(f());
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        c cVar;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (actionMasked == 0) {
            this.f65216d = x10;
            this.f65217e = y10;
            this.f65218f = true;
            this.f65227o = false;
            z10 = false;
            z11 = false;
            z12 = true;
        } else if (actionMasked == 1 || actionMasked == 2) {
            int i10 = (int) (x10 - this.f65216d);
            int i11 = (int) (y10 - this.f65217e);
            this.f65218f = (i10 * i10) + (i11 * i11) > this.f65219g;
            boolean z13 = this.f65227o;
            z10 = actionMasked == 1;
            z12 = false;
            z11 = z13;
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
        }
        boolean i12 = i(x10, y10, z11, z12, z10) | this.f65227o;
        this.f65227o = i12;
        if (i12 && z10 && (cVar = this.f65228p) != null) {
            cVar.b(e(x10, y10), this.f65218f);
        }
        return true;
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122381fa);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f65220h = new ArrayList();
        Paint paint = new Paint();
        this.f65223k = paint;
        this.f65224l = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.f126094y6, i10, C15879a.n.f124302Lc);
        this.f65230r = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.f124869A6, 0);
        this.f65221i = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.f124893B6, 0);
        this.f65225m = getResources().getDimensionPixelSize(C15879a.f.f123196d2);
        this.f65222j = r6.getDimensionPixelSize(C15879a.f.f123178b2);
        int color = obtainStyledAttributes.getColor(C15879a.o.f126118z6, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        l(0.0f);
        this.f65219g = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        obtainStyledAttributes.recycle();
    }
}
