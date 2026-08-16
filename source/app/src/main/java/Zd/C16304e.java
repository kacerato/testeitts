package zd;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import zd.C16301b;
import zd.C16303d;

public class C16304e extends LinearLayout {

    public static final int f131252A = 1;

    public static final int f131253B = 2;

    public static final int f131254C = -1;

    public static final int f131255D = 0;

    public static final byte f131256E = 38;

    public static final int f131257F = 2;

    public static final byte f131258G = 38;

    public static final int f131259H = 8;

    public static final int f131260I = -13388315;

    public static final float f131261J = 0.0f;

    public static final int f131262K = 1;

    public static final byte f131263L = 32;

    public static final float f131264M = 0.5f;

    public static final boolean f131265N = false;

    public static final boolean f131266O = false;

    public static final boolean f131267P = false;

    public static final int f131268Q = 0;

    public static final boolean f131269R = false;

    public static final int f131270z = 0;

    public final int f131271b;

    public final int f131272c;

    public final int f131273d;

    public final int f131274e;

    public final Paint f131275f;

    public final RectF f131276g;

    public final boolean f131277h;

    public final boolean f131278i;

    public final boolean f131279j;

    public final int f131280k;

    public final int f131281l;

    public final int f131282m;

    public final float f131283n;

    public final Paint f131284o;

    public final int f131285p;

    public final Paint f131286q;

    public final float f131287r;

    public final b f131288s;

    public final boolean f131289t;

    public int f131290u;

    public int f131291v;

    public float f131292w;

    public AbstractC16302c f131293x;

    public C16303d.g f131294y;

    public static class b implements C16303d.g {

        public int[] f131295a;

        public int[] f131296b;

        public b() {
        }

        @Override
        public final int a(int i10) {
            int[] iArr = this.f131295a;
            return iArr[i10 % iArr.length];
        }

        @Override
        public final int b(int i10) {
            int[] iArr = this.f131296b;
            return iArr[i10 % iArr.length];
        }

        public void c(int... iArr) {
            this.f131296b = iArr;
        }

        public void d(int... iArr) {
            this.f131295a = iArr;
        }
    }

    public C16304e(Context context, AttributeSet attributeSet) {
        super(context);
        int i10;
        int[] intArray;
        int[] intArray2;
        this.f131276g = new RectF();
        setWillNotDraw(false);
        float f10 = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorForeground, typedValue, true);
        int i11 = typedValue.data;
        float f11 = 0.0f * f10;
        int j10 = j(i11, (byte) 38);
        int i12 = (int) f11;
        int j11 = j(i11, (byte) 38);
        int j12 = j(i11, (byte) 32);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C16301b.j.f131164a0);
        boolean z10 = obtainStyledAttributes.getBoolean(C16301b.j.f131194p0, false);
        boolean z11 = obtainStyledAttributes.getBoolean(C16301b.j.f131212y0, false);
        boolean z12 = obtainStyledAttributes.getBoolean(C16301b.j.f131204u0, false);
        int i13 = obtainStyledAttributes.getInt(C16301b.j.f131206v0, 0);
        int i14 = obtainStyledAttributes.getInt(C16301b.j.f131202t0, 0);
        int color = obtainStyledAttributes.getColor(C16301b.j.f131196q0, f131260I);
        int resourceId = obtainStyledAttributes.getResourceId(C16301b.j.f131198r0, -1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C16301b.j.f131208w0, (int) (8.0f * f10));
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C16301b.j.f131210x0, -1);
        float dimension = obtainStyledAttributes.getDimension(C16301b.j.f131200s0, f11);
        int color2 = obtainStyledAttributes.getColor(C16301b.j.f131214z0, j10);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(C16301b.j.f131134A0, i12);
        int color3 = obtainStyledAttributes.getColor(C16301b.j.f131138C0, j11);
        int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(C16301b.j.f131140D0, (int) (2.0f * f10));
        int color4 = obtainStyledAttributes.getColor(C16301b.j.f131186l0, j12);
        int resourceId2 = obtainStyledAttributes.getResourceId(C16301b.j.f131188m0, -1);
        int dimensionPixelSize4 = obtainStyledAttributes.getDimensionPixelSize(C16301b.j.f131190n0, (int) (f10 * 1.0f));
        boolean z13 = obtainStyledAttributes.getBoolean(C16301b.j.f131192o0, false);
        obtainStyledAttributes.recycle();
        if (resourceId == -1) {
            i10 = 1;
            intArray = new int[]{color};
        } else {
            i10 = 1;
            intArray = getResources().getIntArray(resourceId);
        }
        if (resourceId2 == -1) {
            intArray2 = new int[i10];
            intArray2[0] = color4;
        } else {
            intArray2 = getResources().getIntArray(resourceId2);
        }
        b bVar = new b();
        this.f131288s = bVar;
        bVar.d(intArray);
        bVar.c(intArray2);
        this.f131271b = dimensionPixelSize2;
        this.f131272c = color2;
        this.f131273d = dimensionPixelSize3;
        this.f131274e = color3;
        this.f131275f = new Paint(1);
        this.f131278i = z10;
        this.f131277h = z11;
        this.f131279j = z12;
        this.f131280k = dimensionPixelSize;
        this.f131281l = layoutDimension;
        this.f131284o = new Paint(1);
        this.f131283n = dimension;
        this.f131282m = i14;
        this.f131287r = 0.5f;
        Paint paint = new Paint(1);
        this.f131286q = paint;
        paint.setStrokeWidth(dimensionPixelSize4);
        this.f131285p = dimensionPixelSize4;
        this.f131289t = z13;
        this.f131293x = AbstractC16302c.d(i13);
    }

    public static int a(int i10, int i11, float f10) {
        float f11 = 1.0f - f10;
        return Color.rgb((int) ((Color.red(i10) * f10) + (Color.red(i11) * f11)), (int) ((Color.green(i10) * f10) + (Color.green(i11) * f11)), (int) ((Color.blue(i10) * f10) + (Color.blue(i11) * f11)));
    }

    public static int j(int i10, byte b10) {
        return Color.argb((int) b10, Color.red(i10), Color.green(i10), Color.blue(i10));
    }

    public final void b(Canvas canvas) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int height = getHeight();
        int width = getWidth();
        int childCount = getChildCount();
        C16303d.g g10 = g();
        boolean n10 = C16305f.n(this);
        if (this.f131279j) {
            d(canvas, 0, width);
            f(canvas, 0, width, height);
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.f131291v);
            int k10 = C16305f.k(childAt, this.f131277h);
            int b10 = C16305f.b(childAt, this.f131277h);
            if (n10) {
                k10 = b10;
                b10 = k10;
            }
            int a10 = g10.a(this.f131291v);
            float f10 = this.f131280k;
            if (this.f131292w <= 0.0f || this.f131291v >= getChildCount() - 1) {
                i10 = a10;
                int i15 = k10;
                i11 = b10;
                i12 = i15;
            } else {
                int a11 = g10.a(this.f131291v + 1);
                if (a10 != a11) {
                    a10 = a(a11, a10, this.f131292w);
                }
                float a12 = this.f131293x.a(this.f131292w);
                float b11 = this.f131293x.b(this.f131292w);
                float c10 = this.f131293x.c(this.f131292w);
                View childAt2 = getChildAt(this.f131291v + 1);
                int k11 = C16305f.k(childAt2, this.f131277h);
                int b12 = C16305f.b(childAt2, this.f131277h);
                if (n10) {
                    i13 = (int) ((b12 * b11) + ((1.0f - b11) * k10));
                    i14 = (int) ((k11 * a12) + ((1.0f - a12) * b10));
                } else {
                    i13 = (int) ((k11 * a12) + ((1.0f - a12) * k10));
                    i14 = (int) ((b12 * b11) + ((1.0f - b11) * b10));
                }
                f10 *= c10;
                i11 = i14;
                i12 = i13;
                i10 = a10;
            }
            c(canvas, i12, i11, height, f10, i10);
        }
        if (!this.f131279j) {
            d(canvas, 0, width);
            f(canvas, 0, getWidth(), height);
        }
        e(canvas, height, childCount);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(Canvas canvas, int i10, int i11, int i12, float f10, int i13) {
        float f11;
        float f12;
        float f13;
        int i14 = this.f131280k;
        if (i14 <= 0 || this.f131281l == 0) {
            return;
        }
        int i15 = this.f131282m;
        if (i15 == 1) {
            f11 = i14;
        } else {
            if (i15 != 2) {
                f12 = i12 - (i14 / 2.0f);
                float f14 = f10 / 2.0f;
                float f15 = f12 - f14;
                float f16 = f12 + f14;
                this.f131284o.setColor(i13);
                if (this.f131281l != -1) {
                    this.f131276g.set(i10, f15, i11, f16);
                } else {
                    float abs = (Math.abs(i10 - i11) - this.f131281l) / 2.0f;
                    this.f131276g.set(i10 + abs, f15, i11 - abs, f16);
                }
                f13 = this.f131283n;
                if (f13 <= 0.0f) {
                    canvas.drawRoundRect(this.f131276g, f13, f13, this.f131284o);
                    return;
                } else {
                    canvas.drawRect(this.f131276g, this.f131284o);
                    return;
                }
            }
            f11 = i12;
        }
        f12 = f11 / 2.0f;
        float f142 = f10 / 2.0f;
        float f152 = f12 - f142;
        float f162 = f12 + f142;
        this.f131284o.setColor(i13);
        if (this.f131281l != -1) {
        }
        f13 = this.f131283n;
        if (f13 <= 0.0f) {
        }
    }

    public final void d(Canvas canvas, int i10, int i11) {
        if (this.f131271b <= 0) {
            return;
        }
        this.f131275f.setColor(this.f131272c);
        canvas.drawRect(i10, 0.0f, i11, this.f131271b, this.f131275f);
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f131289t) {
            b(canvas);
        }
    }

    public final void e(Canvas canvas, int i10, int i11) {
        if (this.f131285p <= 0) {
            return;
        }
        int min = (int) (Math.min(Math.max(0.0f, this.f131287r), 1.0f) * i10);
        C16303d.g g10 = g();
        int i12 = (i10 - min) / 2;
        int i13 = min + i12;
        boolean n10 = C16305f.n(this);
        for (int i14 = 0; i14 < i11 - 1; i14++) {
            View childAt = getChildAt(i14);
            int a10 = C16305f.a(childAt);
            int c10 = C16305f.c(childAt);
            int i15 = n10 ? a10 - c10 : a10 + c10;
            this.f131286q.setColor(g10.b(i14));
            float f10 = i15;
            canvas.drawLine(f10, i12, f10, i13, this.f131286q);
        }
    }

    public final void f(Canvas canvas, int i10, int i11, int i12) {
        if (this.f131273d <= 0) {
            return;
        }
        this.f131275f.setColor(this.f131274e);
        canvas.drawRect(i10, i12 - this.f131273d, i11, i12, this.f131275f);
    }

    public C16303d.g g() {
        C16303d.g gVar = this.f131294y;
        return gVar != null ? gVar : this.f131288s;
    }

    public boolean h() {
        return this.f131278i;
    }

    public void i(int i10, float f10) {
        this.f131291v = i10;
        this.f131292w = f10;
        if (f10 == 0.0f && this.f131290u != i10) {
            this.f131290u = i10;
        }
        invalidate();
    }

    public void k(C16303d.g gVar) {
        this.f131294y = gVar;
        invalidate();
    }

    public void l(int... iArr) {
        this.f131294y = null;
        this.f131288s.c(iArr);
        invalidate();
    }

    public void m(AbstractC16302c abstractC16302c) {
        this.f131293x = abstractC16302c;
        invalidate();
    }

    public void n(int... iArr) {
        this.f131294y = null;
        this.f131288s.d(iArr);
        invalidate();
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (this.f131289t) {
            return;
        }
        b(canvas);
    }
}
