package Q1;

import X1.c;
import a2.C3567j;
import a2.C3572o;
import a2.C3573p;
import a2.InterfaceC3576s;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import h2.C13421a;
import w1.C15879a;

public class a extends AppCompatImageView implements InterfaceC3576s {

    public static final int f21872t = C15879a.n.f124707oc;

    public static final int f21873u = Integer.MIN_VALUE;

    public final C3573p f21874b;

    public final RectF f21875c;

    public final RectF f21876d;

    public final Paint f21877e;

    public final Paint f21878f;

    public final Path f21879g;

    @Nullable
    public ColorStateList f21880h;

    @Nullable
    public C3567j f21881i;

    public C3572o f21882j;

    @Dimension
    public float f21883k;

    public Path f21884l;

    @Dimension
    public int f21885m;

    @Dimension
    public int f21886n;

    @Dimension
    public int f21887o;

    @Dimension
    public int f21888p;

    @Dimension
    public int f21889q;

    @Dimension
    public int f21890r;

    public boolean f21891s;

    @TargetApi(21)
    public class C0525a extends ViewOutlineProvider {

        public final Rect f21892a = new Rect();

        public C0525a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            if (a.this.f21882j == null) {
                return;
            }
            if (a.this.f21881i == null) {
                a.this.f21881i = new C3567j(a.this.f21882j);
            }
            a.this.f21875c.round(this.f21892a);
            a.this.f21881i.setBounds(this.f21892a);
            a.this.f21881i.getOutline(outline);
        }
    }

    public a(Context context) {
        this(context, null, 0);
    }

    private boolean g() {
        return getLayoutDirection() == 1;
    }

    public final void e(Canvas canvas) {
        if (this.f21880h == null) {
            return;
        }
        this.f21877e.setStrokeWidth(this.f21883k);
        int colorForState = this.f21880h.getColorForState(getDrawableState(), this.f21880h.getDefaultColor());
        if (this.f21883k <= 0.0f || colorForState == 0) {
            return;
        }
        this.f21877e.setColor(colorForState);
        canvas.drawPath(this.f21879g, this.f21877e);
    }

    public final boolean f() {
        return (this.f21889q == Integer.MIN_VALUE && this.f21890r == Integer.MIN_VALUE) ? false : true;
    }

    @Dimension
    public int getContentPaddingBottom() {
        return this.f21888p;
    }

    @Dimension
    public final int getContentPaddingEnd() {
        int i10 = this.f21890r;
        return i10 != Integer.MIN_VALUE ? i10 : g() ? this.f21885m : this.f21887o;
    }

    @Dimension
    public int getContentPaddingLeft() {
        int i10;
        int i11;
        if (f()) {
            if (g() && (i11 = this.f21890r) != Integer.MIN_VALUE) {
                return i11;
            }
            if (!g() && (i10 = this.f21889q) != Integer.MIN_VALUE) {
                return i10;
            }
        }
        return this.f21885m;
    }

    @Dimension
    public int getContentPaddingRight() {
        int i10;
        int i11;
        if (f()) {
            if (g() && (i11 = this.f21889q) != Integer.MIN_VALUE) {
                return i11;
            }
            if (!g() && (i10 = this.f21890r) != Integer.MIN_VALUE) {
                return i10;
            }
        }
        return this.f21887o;
    }

    @Dimension
    public final int getContentPaddingStart() {
        int i10 = this.f21889q;
        return i10 != Integer.MIN_VALUE ? i10 : g() ? this.f21887o : this.f21885m;
    }

    @Dimension
    public int getContentPaddingTop() {
        return this.f21886n;
    }

    @Override
    @Dimension
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override
    @Dimension
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override
    @Dimension
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override
    @Dimension
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override
    @Dimension
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override
    @Dimension
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    @Override
    @NonNull
    public C3572o getShapeAppearanceModel() {
        return this.f21882j;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f21880h;
    }

    @Dimension
    public float getStrokeWidth() {
        return this.f21883k;
    }

    public void h(@Dimension int i10, @Dimension int i11, @Dimension int i12, @Dimension int i13) {
        this.f21889q = Integer.MIN_VALUE;
        this.f21890r = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.f21885m) + i10, (super.getPaddingTop() - this.f21886n) + i11, (super.getPaddingRight() - this.f21887o) + i12, (super.getPaddingBottom() - this.f21888p) + i13);
        this.f21885m = i10;
        this.f21886n = i11;
        this.f21887o = i12;
        this.f21888p = i13;
    }

    @RequiresApi(17)
    public void i(@Dimension int i10, @Dimension int i11, @Dimension int i12, @Dimension int i13) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i10, (super.getPaddingTop() - this.f21886n) + i11, (super.getPaddingEnd() - getContentPaddingEnd()) + i12, (super.getPaddingBottom() - this.f21888p) + i13);
        this.f21885m = g() ? i12 : i10;
        this.f21886n = i11;
        if (!g()) {
            i10 = i12;
        }
        this.f21887o = i10;
        this.f21888p = i13;
    }

    public final void j(int i10, int i11) {
        this.f21875c.set(getPaddingLeft(), getPaddingTop(), i10 - getPaddingRight(), i11 - getPaddingBottom());
        this.f21874b.e(this.f21882j, 1.0f, this.f21875c, this.f21879g);
        this.f21884l.rewind();
        this.f21884l.addPath(this.f21879g);
        this.f21876d.set(0.0f, 0.0f, i10, i11);
        this.f21884l.addRect(this.f21876d, Path.Direction.CCW);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override
    public void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f21884l, this.f21878f);
        e(canvas);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.f21891s && isLayoutDirectionResolved()) {
            this.f21891s = true;
            if (isPaddingRelative() || f()) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        j(i10, i11);
    }

    @Override
    public void setPadding(@Dimension int i10, @Dimension int i11, @Dimension int i12, @Dimension int i13) {
        super.setPadding(i10 + getContentPaddingLeft(), i11 + getContentPaddingTop(), i12 + getContentPaddingRight(), i13 + getContentPaddingBottom());
    }

    @Override
    public void setPaddingRelative(@Dimension int i10, @Dimension int i11, @Dimension int i12, @Dimension int i13) {
        super.setPaddingRelative(i10 + getContentPaddingStart(), i11 + getContentPaddingTop(), i12 + getContentPaddingEnd(), i13 + getContentPaddingBottom());
    }

    @Override
    public void setShapeAppearanceModel(@NonNull C3572o c3572o) {
        this.f21882j = c3572o;
        C3567j c3567j = this.f21881i;
        if (c3567j != null) {
            c3567j.setShapeAppearanceModel(c3572o);
        }
        j(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f21880h = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(@ColorRes int i10) {
        setStrokeColor(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setStrokeWidth(@Dimension float f10) {
        if (this.f21883k != f10) {
            this.f21883k = f10;
            invalidate();
        }
    }

    public void setStrokeWidthResource(@DimenRes int i10) {
        setStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public a(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r0), attributeSet, i10);
        int i11 = f21872t;
        this.f21874b = C3573p.k();
        this.f21879g = new Path();
        this.f21891s = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f21878f = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f21875c = new RectF();
        this.f21876d = new RectF();
        this.f21884l = new Path();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C15879a.o.zq, i10, i11);
        this.f21880h = c.a(context2, obtainStyledAttributes, C15879a.o.Jq);
        this.f21883k = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Kq, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Aq, 0);
        this.f21885m = dimensionPixelSize;
        this.f21886n = dimensionPixelSize;
        this.f21887o = dimensionPixelSize;
        this.f21888p = dimensionPixelSize;
        this.f21885m = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Dq, dimensionPixelSize);
        this.f21886n = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Gq, dimensionPixelSize);
        this.f21887o = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Eq, dimensionPixelSize);
        this.f21888p = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Bq, dimensionPixelSize);
        this.f21889q = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Fq, Integer.MIN_VALUE);
        this.f21890r = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Cq, Integer.MIN_VALUE);
        obtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f21877e = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.f21882j = C3572o.e(context2, attributeSet, i10, i11).m();
        setOutlineProvider(new C0525a());
    }
}
