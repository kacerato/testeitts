package com.bozapro.circularsliderrange;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.bozapro.circularsliderrange.a;
import x.EnumC16038b;

public class CircularSliderRange extends View {

    public static final int f58746C = -1;

    public Rect f58747A;

    public a f58748B;

    public int f58749b;

    public int f58750c;

    public int f58751d;

    public int f58752e;

    public int f58753f;

    public int f58754g;

    public int f58755h;

    public Drawable f58756i;

    public Drawable f58757j;

    public int f58758k;

    public int f58759l;

    public int f58760m;

    public int f58761n;

    public int f58762o;

    public int f58763p;

    public int f58764q;

    public int f58765r;

    public int f58766s;

    public double f58767t;

    public double f58768u;

    public boolean f58769v;

    public boolean f58770w;

    public Paint f58771x;

    public Paint f58772y;

    public RectF f58773z;

    public interface a {
        void a(EnumC16038b enumC16038b);

        void b(double d10);

        void c(double d10);

        void d(EnumC16038b enumC16038b);
    }

    public enum b {
        START,
        END
    }

    public CircularSliderRange(Context context) {
        this(context, null);
    }

    public final double a(double d10) {
        return -Math.toRadians(d10);
    }

    public final void b(Context context, AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.b.f58787a, i10, 0);
        float f10 = obtainStyledAttributes.getFloat(a.b.f58796j, 90.0f);
        float f11 = obtainStyledAttributes.getFloat(a.b.f58792f, 60.0f);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.b.f58800n, 50);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(a.b.f58799m, -1);
        int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(a.b.f58795i, -1);
        int color = obtainStyledAttributes.getColor(a.b.f58797k, -7829368);
        int color2 = obtainStyledAttributes.getColor(a.b.f58793g, -7829368);
        int dimensionPixelSize4 = obtainStyledAttributes.getDimensionPixelSize(a.b.f58791e, 20);
        int dimensionPixelSize5 = obtainStyledAttributes.getDimensionPixelSize(a.b.f58789c, 60);
        int color3 = obtainStyledAttributes.getColor(a.b.f58788b, 0);
        int color4 = obtainStyledAttributes.getColor(a.b.f58790d, -65536);
        Drawable drawable = obtainStyledAttributes.getDrawable(a.b.f58798l);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(a.b.f58794h);
        setStartAngle(f10);
        setEndAngle(f11);
        setBorderThickness(dimensionPixelSize4);
        setBorderColor(color4);
        setThumbSize(dimensionPixelSize);
        setStartThumbSize(dimensionPixelSize2);
        setEndThumbSize(dimensionPixelSize3);
        setStartThumbImage(drawable);
        setEndThumbImage(drawable2);
        setStartThumbColor(color);
        setEndThumbColor(color2);
        setArcColor(color3);
        setArcDashSize(dimensionPixelSize5);
        setPadding((((((getPaddingLeft() + getPaddingRight()) + getPaddingBottom()) + getPaddingTop()) + getPaddingEnd()) + getPaddingStart()) / 6);
        obtainStyledAttributes.recycle();
        isInEditMode();
    }

    public final float c(double d10) {
        double degrees = Math.toDegrees(d10);
        return (float) (d10 > 0.0d ? 360.0d - degrees : -degrees);
    }

    public final void d(int i10, int i11, b bVar) {
        int i12 = i10 - this.f58753f;
        int i13 = this.f58754g - i11;
        double d10 = i12;
        double acos = Math.acos(d10 / Math.sqrt(Math.pow(d10, 2.0d) + Math.pow(i13, 2.0d)));
        if (i13 < 0) {
            acos = -acos;
        }
        b bVar2 = b.START;
        if (bVar == bVar2) {
            this.f58767t = acos;
        } else {
            this.f58768u = acos;
        }
        a aVar = this.f58748B;
        if (aVar != null) {
            if (bVar == bVar2) {
                aVar.c(c(acos));
            } else {
                aVar.b(c(acos));
            }
        }
    }

    public int getEndThumbSize() {
        return this.f58760m;
    }

    public int getStartThumbSize() {
        return this.f58759l;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f58771x.setColor(this.f58763p);
        Paint paint = this.f58771x;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f58771x.setStrokeWidth(this.f58764q);
        this.f58771x.setAntiAlias(true);
        canvas.drawCircle(this.f58753f, this.f58754g, this.f58755h, this.f58771x);
        this.f58749b = (int) (this.f58753f + (this.f58755h * Math.cos(this.f58767t)));
        this.f58750c = (int) (this.f58754g - (this.f58755h * Math.sin(this.f58767t)));
        this.f58751d = (int) (this.f58753f + (this.f58755h * Math.cos(this.f58768u)));
        this.f58752e = (int) (this.f58754g - (this.f58755h * Math.sin(this.f58768u)));
        Paint paint2 = this.f58772y;
        int i10 = this.f58766s;
        if (i10 == 0) {
            i10 = -65536;
        }
        paint2.setColor(i10);
        this.f58772y.setStyle(style);
        this.f58772y.setStrokeWidth(this.f58765r);
        this.f58772y.setAntiAlias(true);
        this.f58772y.setTextSize(50.0f);
        Rect rect = this.f58747A;
        int i11 = this.f58753f;
        int i12 = this.f58755h;
        int i13 = this.f58754g;
        rect.set(i11 - i12, i13 + i12, i11 + i12, i13 - i12);
        this.f58773z.set(this.f58747A);
        this.f58773z.sort();
        float c10 = c(this.f58767t);
        canvas.drawArc(this.f58773z, c10, ((c(this.f58768u) + 360.0f) - c10) % 360.0f, false, this.f58772y);
        int startThumbSize = getStartThumbSize();
        Drawable drawable = this.f58756i;
        if (drawable != null) {
            int i14 = this.f58749b;
            int i15 = startThumbSize / 2;
            int i16 = this.f58750c;
            drawable.setBounds(i14 - i15, i16 - i15, i14 + i15, i16 + i15);
            this.f58756i.draw(canvas);
        } else {
            this.f58771x.setColor(this.f58761n);
            this.f58771x.setStyle(Paint.Style.FILL);
            canvas.drawCircle(this.f58749b, this.f58750c, startThumbSize / 2, this.f58771x);
        }
        int endThumbSize = getEndThumbSize();
        Drawable drawable2 = this.f58757j;
        if (drawable2 == null) {
            this.f58771x.setStyle(Paint.Style.FILL);
            this.f58771x.setColor(this.f58762o);
            canvas.drawCircle(this.f58751d, this.f58752e, endThumbSize / 2, this.f58771x);
        } else {
            int i17 = this.f58751d;
            int i18 = endThumbSize / 2;
            int i19 = this.f58752e;
            drawable2.setBounds(i17 - i18, i19 - i18, i17 + i18, i19 + i18);
            this.f58757j.draw(canvas);
        }
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        int i14 = i10 > i11 ? i11 : i10;
        int i15 = ((i10 - i14) / 2) + i14;
        int i16 = ((i11 - i14) / 2) + i14;
        this.f58753f = (i15 / 2) + ((i10 - i15) / 2);
        this.f58754g = (i16 / 2) + ((i11 - i16) / 2);
        this.f58755h = ((i14 / 2) - (this.f58764q / 2)) - this.f58758k;
        super.onSizeChanged(i10, i11, i12, i13);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        int endThumbSize;
        int i10;
        a aVar;
        int i11;
        int action = motionEvent.getAction();
        boolean z11 = false;
        if (action == 0) {
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            int startThumbSize = getStartThumbSize();
            int i12 = this.f58749b;
            if (x10 < i12 + startThumbSize && x10 > i12 - startThumbSize) {
                int i13 = this.f58750c;
                if (y10 < i13 + startThumbSize && y10 > i13 - startThumbSize) {
                    z10 = true;
                    endThumbSize = getEndThumbSize();
                    i10 = this.f58751d;
                    if (x10 < i10 + endThumbSize && x10 > i10 - endThumbSize) {
                        i11 = this.f58752e;
                        if (y10 < i11 + endThumbSize && y10 > i11 - endThumbSize) {
                            z11 = true;
                        }
                    }
                    if (!z10) {
                        this.f58769v = true;
                        d(x10, y10, b.START);
                    } else if (z11) {
                        this.f58770w = true;
                        d(x10, y10, b.END);
                    }
                    aVar = this.f58748B;
                    if (aVar != null) {
                        if (this.f58769v) {
                            aVar.d(EnumC16038b.THUMB_PRESSED);
                        }
                        if (this.f58770w) {
                            this.f58748B.a(EnumC16038b.THUMB_PRESSED);
                        }
                    }
                }
            }
            z10 = false;
            endThumbSize = getEndThumbSize();
            i10 = this.f58751d;
            if (x10 < i10 + endThumbSize) {
                i11 = this.f58752e;
                if (y10 < i11 + endThumbSize) {
                    z11 = true;
                }
            }
            if (!z10) {
            }
            aVar = this.f58748B;
            if (aVar != null) {
            }
        } else if (action == 1) {
            a aVar2 = this.f58748B;
            if (aVar2 != null) {
                if (this.f58769v) {
                    aVar2.d(EnumC16038b.THUMB_RELEASED);
                }
                if (this.f58770w) {
                    this.f58748B.a(EnumC16038b.THUMB_RELEASED);
                }
            }
            this.f58769v = false;
            this.f58770w = false;
        } else if (action == 2) {
            if (this.f58769v) {
                d((int) motionEvent.getX(), (int) motionEvent.getY(), b.START);
            } else if (this.f58770w) {
                d((int) motionEvent.getX(), (int) motionEvent.getY(), b.END);
            }
        }
        invalidate();
        return true;
    }

    public void setArcColor(int i10) {
        this.f58766s = i10;
    }

    public void setArcDashSize(int i10) {
        this.f58765r = i10;
    }

    public void setBorderColor(int i10) {
        this.f58763p = i10;
    }

    public void setBorderThickness(int i10) {
        this.f58764q = i10;
    }

    public void setEndAngle(double d10) {
        this.f58768u = a(d10);
    }

    public void setEndThumbColor(int i10) {
        this.f58762o = i10;
    }

    public void setEndThumbImage(Drawable drawable) {
        this.f58757j = drawable;
    }

    public void setEndThumbSize(int i10) {
        if (i10 == -1) {
            return;
        }
        this.f58760m = i10;
    }

    public void setOnSliderRangeMovedListener(a aVar) {
        this.f58748B = aVar;
    }

    public void setPadding(int i10) {
        this.f58758k = i10;
    }

    public void setStartAngle(double d10) {
        this.f58767t = a(d10);
    }

    public void setStartThumbColor(int i10) {
        this.f58761n = i10;
    }

    public void setStartThumbImage(Drawable drawable) {
        this.f58756i = drawable;
    }

    public void setStartThumbSize(int i10) {
        if (i10 == -1) {
            return;
        }
        this.f58759l = i10;
    }

    public void setThumbSize(int i10) {
        setStartThumbSize(i10);
        setEndThumbSize(i10);
    }

    public CircularSliderRange(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircularSliderRange(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f58769v = false;
        this.f58770w = false;
        this.f58771x = new Paint();
        this.f58772y = new Paint();
        this.f58773z = new RectF();
        this.f58747A = new Rect();
        b(context, attributeSet, i10);
    }

    @TargetApi(21)
    public CircularSliderRange(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f58769v = false;
        this.f58770w = false;
        this.f58771x = new Paint();
        this.f58772y = new Paint();
        this.f58773z = new RectF();
        this.f58747A = new Rect();
        b(context, attributeSet, i10);
    }
}
