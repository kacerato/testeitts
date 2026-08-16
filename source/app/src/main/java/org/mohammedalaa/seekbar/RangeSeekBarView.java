package org.mohammedalaa.seekbar;

import Lf.g;
import Rf.d;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import dn.e;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mohammedalaa.seekbar.RangeSeekBarView;

@SuppressLint({"AppCompatCustomView"})
public final class RangeSeekBarView extends View {

    public static final int f102814A = -65536;

    public static final int f102815B = -12303292;

    public static final int f102816C = -16711936;

    public static final int f102817D = 0;

    public static final int f102818E = 0;

    public static final int f102819F = 100;

    public static final int f102820G = 0;

    @NotNull
    public static final a f102821y = new a(null);

    public static final int f102822z = -7829368;

    public float f102823b;

    public int f102824c;

    public int f102825d;

    public int f102826e;

    public int f102827f;

    @NotNull
    public Paint f102828g;

    @NotNull
    public Paint f102829h;

    @NotNull
    public Paint f102830i;

    @NotNull
    public Paint f102831j;

    @NotNull
    public dn.b f102832k;

    public boolean f102833l;

    public long f102834m;

    @Nullable
    public ValueAnimator f102835n;

    @Nullable
    public e f102836o;

    public int f102837p;

    public int f102838q;

    public int f102839r;

    public int f102840s;

    public int f102841t;

    public int f102842u;

    public int f102843v;

    public boolean f102844w;

    public int f102845x;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public static final class b extends View.BaseSavedState {

        public int f102847b;

        @NotNull
        public static final C1930b f102846c = new C1930b(null);

        @g
        @NotNull
        public static final Parcelable.Creator<b> CREATOR = new a();

        public static final class a implements Parcelable.Creator<b> {
            @Override
            public b createFromParcel(Parcel in2) {
                M.p(in2, "in");
                return new b(in2, null);
            }

            @Override
            public b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public static final class C1930b {
            public C1930b(C14026x c14026x) {
                this();
            }

            public C1930b() {
            }
        }

        public b(Parcel parcel, C14026x c14026x) {
            this(parcel);
        }

        public final int b() {
            return this.f102847b;
        }

        public final void c(int i10) {
            this.f102847b = i10;
        }

        @Override
        public void writeToParcel(@NotNull Parcel out, int i10) {
            M.p(out, "out");
            super.writeToParcel(out, i10);
            out.writeInt(this.f102847b);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull Parcelable superState) {
            super(superState);
            M.p(superState, "superState");
        }

        public b(Parcel parcel) {
            super(parcel);
            this.f102847b = parcel.readInt();
        }
    }

    public static final class c {

        public static final int[] f102848a;

        static {
            int[] iArr = new int[dn.b.values().length];
            try {
                iArr[dn.b.TOP_TO_BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[dn.b.BOTTOM_TO_TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[dn.b.LEFT_TO_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[dn.b.RIGHT_TO_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f102848a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RangeSeekBarView(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        this.f102827f = 15;
        this.f102828g = new Paint(1);
        this.f102829h = new Paint(1);
        this.f102830i = new Paint(1);
        this.f102831j = new Paint(1);
        this.f102832k = dn.b.LEFT_TO_RIGHT;
        this.f102834m = Ld.a.f11703k;
        this.f102838q = 100;
        this.f102840s = -7829368;
        this.f102841t = -65536;
        this.f102842u = -12303292;
        this.f102843v = -16711936;
        this.f102844w = true;
    }

    public static final void b(RangeSeekBarView rangeSeekBarView, ValueAnimator valueAnimator) {
        M.p(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        M.n(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        rangeSeekBarView.f102823b = floatValue;
        e eVar = rangeSeekBarView.f102836o;
        if (eVar != null) {
            eVar.b(rangeSeekBarView, (int) floatValue, true);
        }
        rangeSeekBarView.invalidate();
    }

    public final int c(int i10, int i11, int i12) {
        try {
            return ((i10 - i11) * 100) / (i12 - i11);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public final void d(Canvas canvas, dn.b bVar) {
        float width = (getWidth() - getPaddingRight()) - getPaddingLeft();
        float height = getHeight() / 2;
        float f10 = this.f102824c / 2;
        float f11 = height - f10;
        float f12 = height + f10;
        float paddingLeft = getPaddingLeft();
        float paddingLeft2 = getPaddingLeft() + width;
        canvas.drawRoundRect(new RectF(paddingLeft, f11, paddingLeft2, f12), f10, f10, this.f102828g);
        float c10 = (width * (c((int) this.f102823b, this.f102839r, this.f102838q) / 100)) + paddingLeft;
        canvas.drawRoundRect(c.f102848a[bVar.ordinal()] == 3 ? new RectF(paddingLeft, f11, c10, f12) : new RectF(c10, f11, paddingLeft2, f12), f10, f10, this.f102829h);
        canvas.drawCircle(c10, height, this.f102825d, this.f102830i);
        Rect rect = new Rect();
        String valueOf = String.valueOf(Math.round(this.f102823b));
        this.f102831j.getTextBounds(valueOf, 0, valueOf.length(), rect);
        canvas.drawText(valueOf, c10, height + (rect.height() / 2), this.f102831j);
    }

    public final void e(Canvas canvas, dn.b bVar) {
        float paddingBottom;
        RectF rectF;
        float height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        float width = getWidth() / 2;
        float f10 = this.f102824c / 2;
        float paddingTop = getPaddingTop();
        float paddingTop2 = getPaddingTop() + height;
        float f11 = width - f10;
        float f12 = f10 + width;
        canvas.drawRoundRect(new RectF(f11, paddingTop, f12, paddingTop2), width, width, this.f102828g);
        float c10 = height * (c((int) this.f102823b, this.f102839r, this.f102838q) / 100);
        if (c.f102848a[bVar.ordinal()] == 1) {
            paddingBottom = c10 + getPaddingTop();
            rectF = new RectF(f11, paddingTop, f12, paddingBottom);
        } else {
            paddingBottom = c10 + getPaddingBottom();
            rectF = new RectF(f11, paddingBottom, f12, paddingTop2);
        }
        canvas.drawRoundRect(rectF, width, width, this.f102829h);
        canvas.drawCircle(width, paddingBottom, this.f102825d, this.f102830i);
        Rect rect = new Rect();
        String valueOf = String.valueOf(Math.round(this.f102823b));
        this.f102831j.getTextBounds(valueOf, 0, valueOf.length(), rect);
        canvas.drawText(valueOf, width, paddingBottom + (rect.height() / 2), this.f102831j);
    }

    public final void f(AttributeSet attributeSet) {
        i(attributeSet);
        this.f102828g.setColor(this.f102840s);
        this.f102829h.setColor(this.f102841t);
        Paint paint = this.f102831j;
        paint.setTextSize(this.f102826e);
        paint.setColor(this.f102842u);
        paint.setTextAlign(Paint.Align.CENTER);
        this.f102830i.setColor(this.f102843v);
        k();
    }

    public final int g(int i10) {
        return View.resolveSizeAndState(getPaddingTop() + getPaddingBottom() + Math.max(this.f102824c, this.f102825d), i10, 0);
    }

    public final int getBarHeight() {
        return this.f102824c;
    }

    public final int getBaseColor() {
        return this.f102840s;
    }

    public final int getCircleFillColor() {
        return this.f102843v;
    }

    public final int getCircleRadius() {
        return this.f102825d;
    }

    public final int getCircleTextColor() {
        return this.f102842u;
    }

    public final int getCircleTextSize() {
        return this.f102826e;
    }

    public final int getCurrentValue() {
        return this.f102845x;
    }

    public final int getDefaultPadding() {
        return this.f102827f;
    }

    public final int getFillColor() {
        return this.f102841t;
    }

    public final int getMaxValue() {
        return this.f102838q;
    }

    public final int getMinValue() {
        return this.f102839r;
    }

    public final int getStep() {
        return this.f102837p;
    }

    public final int h(int i10) {
        return View.resolveSizeAndState(getPaddingLeft() + getPaddingRight(), i10, 0);
    }

    public final void i(AttributeSet attributeSet) {
        int i10 = this.f102827f;
        setPadding(i10, i10, i10, i10);
    }

    public final void j(boolean z10, long j10) {
        this.f102833l = z10;
        this.f102834m = j10;
    }

    public final void k() {
        setSaveEnabled(true);
        setBackgroundColor(0);
        int i10 = this.f102845x;
        if (i10 < this.f102839r || i10 > this.f102838q) {
            throw new RuntimeException("Value must be in range   (min <= value <= max) ");
        }
        dn.b bVar = this.f102832k;
        if (bVar == dn.b.BOTTOM_TO_TOP || bVar == dn.b.RIGHT_TO_LEFT) {
            l();
        }
    }

    public final void l() {
        int i10 = this.f102838q;
        setMaxValue(this.f102839r);
        setMinValue(i10);
    }

    public final void m(int i10) {
        int L02 = d.L0((i10 * (this.f102838q - this.f102839r)) / 100) + this.f102839r;
        int i11 = this.f102837p;
        setCurrentValue((L02 / i11) * i11);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        try {
            int i10 = c.f102848a[this.f102832k.ordinal()];
            if (i10 == 1) {
                super.onDraw(canvas);
                e(canvas, dn.b.TOP_TO_BOTTOM);
                return;
            }
            if (i10 == 2) {
                super.onDraw(canvas);
                e(canvas, dn.b.BOTTOM_TO_TOP);
            } else if (i10 == 3) {
                super.onDraw(canvas);
                d(canvas, dn.b.LEFT_TO_RIGHT);
            } else {
                if (i10 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                super.onDraw(canvas);
                d(canvas, dn.b.RIGHT_TO_LEFT);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        setMeasuredDimension(h(i10), g(i11));
    }

    @Override
    public void onRestoreInstanceState(@NotNull Parcelable state) {
        M.p(state, "state");
        b bVar = (b) state;
        setCurrentValue(bVar.b());
        this.f102823b = this.f102845x;
        super.onRestoreInstanceState(bVar.getSuperState());
    }

    @Override
    @NotNull
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        M.m(onSaveInstanceState);
        b bVar = new b(onSaveInstanceState);
        bVar.c(this.f102845x);
        return bVar;
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        double y10;
        int height;
        int paddingBottom;
        M.p(event, "event");
        if (!this.f102844w) {
            return false;
        }
        int action = event.getAction();
        int i10 = c.f102848a[this.f102832k.ordinal()];
        if (i10 == 1 || i10 == 2) {
            y10 = event.getY();
            height = getHeight() - getPaddingTop();
            paddingBottom = getPaddingBottom();
        } else {
            if (i10 != 3 && i10 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            y10 = event.getX();
            height = getWidth() - getPaddingStart();
            paddingBottom = getPaddingEnd();
        }
        double d10 = height - paddingBottom;
        if (y10 < 0.0d) {
            y10 = 0.0d;
        } else if (y10 > d10) {
            y10 = d10;
        }
        if (action == 0) {
            e eVar = this.f102836o;
            if (eVar != null) {
                eVar.c(this, this.f102845x);
            }
        } else if (action == 1) {
            m((int) ((y10 / d10) * 100));
            e eVar2 = this.f102836o;
            if (eVar2 != null) {
                eVar2.a(this, this.f102845x);
            }
        } else if (action == 2) {
            m((int) ((y10 / d10) * 100));
            e eVar3 = this.f102836o;
            if (eVar3 != null) {
                eVar3.b(this, this.f102845x, true);
            }
        }
        return true;
    }

    @Override
    public boolean performClick() {
        super.performClick();
        return true;
    }

    public final void setBarHeight(int i10) {
        this.f102824c = i10;
        invalidate();
        requestLayout();
    }

    public final void setBaseColor(@ColorInt int i10) {
        this.f102840s = i10;
        this.f102828g.setColor(i10);
        invalidate();
    }

    public final void setCircleFillColor(@ColorInt int i10) {
        this.f102843v = i10;
        this.f102830i.setColor(i10);
        invalidate();
    }

    public final void setCircleRadius(int i10) {
        this.f102825d = i10;
        invalidate();
        requestLayout();
    }

    public final void setCircleTextColor(@ColorInt int i10) {
        this.f102842u = i10;
        this.f102831j.setColor(i10);
        invalidate();
    }

    public final void setCircleTextSize(int i10) {
        this.f102826e = i10;
        invalidate();
        requestLayout();
    }

    public final void setCurrentValue(int i10) {
        float f10;
        float f11;
        int i11;
        int i12 = this.f102845x;
        this.f102845x = i10;
        if (i10 < this.f102839r || i10 > this.f102838q) {
            this.f102845x = i10;
        }
        if (i10 % this.f102837p == 0) {
            this.f102845x = i10;
        }
        ValueAnimator valueAnimator = this.f102835n;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.f102833l) {
            this.f102835n = ValueAnimator.ofFloat(i12, this.f102845x);
            int abs = Math.abs(this.f102845x - i12);
            dn.b bVar = this.f102832k;
            if (bVar == dn.b.BOTTOM_TO_TOP || bVar == dn.b.RIGHT_TO_LEFT) {
                f10 = (float) this.f102834m;
                f11 = abs;
                i11 = this.f102839r;
            } else {
                f10 = (float) this.f102834m;
                f11 = abs;
                i11 = this.f102838q;
            }
            long j10 = f10 * (f11 / i11);
            ValueAnimator valueAnimator2 = this.f102835n;
            if (valueAnimator2 != null) {
                valueAnimator2.setDuration(j10);
            }
            ValueAnimator valueAnimator3 = this.f102835n;
            if (valueAnimator3 != null) {
                valueAnimator3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                        RangeSeekBarView.b(RangeSeekBarView.this, valueAnimator4);
                    }
                });
            }
            ValueAnimator valueAnimator4 = this.f102835n;
            M.m(valueAnimator4);
            valueAnimator4.start();
        } else {
            float f12 = this.f102845x;
            this.f102823b = f12;
            e eVar = this.f102836o;
            if (eVar != null) {
                eVar.b(this, (int) f12, true);
            }
        }
        invalidate();
    }

    public final void setDefaultPadding(int i10) {
        this.f102827f = i10;
        invalidate();
        requestLayout();
    }

    public final void setFillColor(@ColorInt int i10) {
        this.f102841t = i10;
        this.f102829h.setColor(i10);
        invalidate();
    }

    public final void setMaxValue(int i10) {
        this.f102838q = i10;
        invalidate();
        requestLayout();
    }

    public final void setMinValue(int i10) {
        this.f102839r = i10;
        invalidate();
        requestLayout();
    }

    public final void setOnRangeSeekBarViewChangeListener(@NotNull e l10) {
        M.p(l10, "l");
        this.f102836o = l10;
    }

    public final void setStep(int i10) {
        this.f102837p = i10;
        invalidate();
        requestLayout();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RangeSeekBarView(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        M.p(context, "context");
        M.p(attrs, "attrs");
        this.f102827f = 15;
        this.f102828g = new Paint(1);
        this.f102829h = new Paint(1);
        this.f102830i = new Paint(1);
        this.f102831j = new Paint(1);
        this.f102832k = dn.b.LEFT_TO_RIGHT;
        this.f102834m = Ld.a.f11703k;
        this.f102838q = 100;
        this.f102840s = -7829368;
        this.f102841t = -65536;
        this.f102842u = -12303292;
        this.f102843v = -16711936;
        this.f102844w = true;
        f(attrs);
    }
}
