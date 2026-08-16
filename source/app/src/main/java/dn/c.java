package dn;

import Lf.g;
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
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SuppressLint({"AppCompatCustomView"})
public class c extends View {

    @NotNull
    public static final a f84891D = new a(null);

    public static final int f84892E = -7829368;

    public static final int f84893F = -65536;

    public static final int f84894G = -12303292;

    public static final int f84895H = -16711936;

    public static final int f84896I = 0;

    public static final int f84897J = 100;

    public static final int f84898K = 1;

    public static final int f84899L = 1;

    public int f84900A;

    public int f84901B;

    public int f84902C;

    public boolean f84903b;

    @Nullable
    public EnumC1580c f84904c;

    public int f84905d;

    public int f84906e;

    public boolean f84907f;

    public int f84908g;

    public int f84909h;

    public int f84910i;

    public int f84911j;

    public int f84912k;

    public int f84913l;

    @NotNull
    public Paint f84914m;

    @NotNull
    public Paint f84915n;

    @NotNull
    public Paint f84916o;

    @NotNull
    public Paint f84917p;

    @NotNull
    public Paint f84918q;

    @NotNull
    public Paint f84919r;

    @Nullable
    public d f84920s;

    public int f84921t;

    public int f84922u;

    public int f84923v;

    public int f84924w;

    public int f84925x;

    public int f84926y;

    public int f84927z;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public static final class b extends View.BaseSavedState {

        public int f84929b;

        public int f84930c;

        @NotNull
        public static final C1579b f84928d = new C1579b(null);

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

        public static final class C1579b {
            public C1579b(C14026x c14026x) {
                this();
            }

            public C1579b() {
            }
        }

        public b(Parcel parcel, C14026x c14026x) {
            this(parcel);
        }

        public final int b() {
            return this.f84930c;
        }

        public final int c() {
            return this.f84929b;
        }

        public final void d(int i10) {
            this.f84930c = i10;
        }

        public final void e(int i10) {
            this.f84929b = i10;
        }

        @Override
        public void writeToParcel(@NotNull Parcel out, int i10) {
            M.p(out, "out");
            super.writeToParcel(out, i10);
            out.writeInt(this.f84929b);
            out.writeInt(this.f84930c);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull Parcelable superState) {
            super(superState);
            M.p(superState, "superState");
        }

        public b(Parcel parcel) {
            super(parcel);
            this.f84929b = parcel.readInt();
            this.f84930c = parcel.readInt();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class EnumC1580c {
        private static final Cf.a $ENTRIES;
        private static final EnumC1580c[] $VALUES;
        public static final EnumC1580c MIN = new EnumC1580c("MIN", 0);
        public static final EnumC1580c MAX = new EnumC1580c("MAX", 1);

        static {
            EnumC1580c[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public EnumC1580c(String str, int i10) {
        }

        public static final EnumC1580c[] a() {
            return new EnumC1580c[]{MIN, MAX};
        }

        @NotNull
        public static Cf.a<EnumC1580c> b() {
            return $ENTRIES;
        }

        public static EnumC1580c valueOf(String str) {
            return (EnumC1580c) Enum.valueOf(EnumC1580c.class, str);
        }

        public static EnumC1580c[] values() {
            return (EnumC1580c[]) $VALUES.clone();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        this.f84903b = true;
        this.f84905d = -1;
        this.f84907f = true;
        this.f84909h = 100;
        this.f84913l = 15;
        this.f84914m = new Paint(1);
        this.f84915n = new Paint(1);
        this.f84916o = new Paint(1);
        this.f84917p = new Paint(1);
        this.f84918q = new Paint(1);
        this.f84919r = new Paint(1);
        this.f84921t = 1;
        this.f84922u = 1;
        this.f84923v = 100;
        this.f84925x = -7829368;
        this.f84926y = -65536;
        this.f84927z = -12303292;
        this.f84900A = -16711936;
        this.f84902C = 100;
    }

    private final float getThumbWidth() {
        return this.f84911j * 2.0f;
    }

    public final void a() {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }

    public final int b(int i10, int i11, int i12) {
        return ((i10 - i11) * 100) / (i12 - i11);
    }

    public final void c(Canvas canvas) {
        float width = (getWidth() - getPaddingRight()) - getPaddingLeft();
        float height = getHeight() / 2;
        float f10 = this.f84910i / 2;
        float f11 = height - f10;
        float f12 = height + f10;
        float paddingLeft = getPaddingLeft();
        canvas.drawRoundRect(new RectF(paddingLeft, f11, getPaddingLeft() + width, f12), f10, f10, this.f84914m);
        float f13 = 100;
        float b10 = ((b(this.f84908g, this.f84924w, this.f84923v) / f13) * width) + paddingLeft;
        float b11 = paddingLeft + (width * (b(this.f84909h, this.f84924w, this.f84923v) / f13));
        canvas.drawRoundRect(new RectF(b10, f11, b11, f12), height, height, this.f84915n);
        canvas.drawCircle(b10, height, this.f84911j, this.f84916o);
        canvas.drawCircle(b11, height, this.f84911j, this.f84917p);
        Rect rect = new Rect();
        String valueOf = String.valueOf(Math.round(this.f84908g));
        this.f84918q.getTextBounds(valueOf, 0, valueOf.length(), rect);
        Rect rect2 = new Rect();
        String valueOf2 = String.valueOf(Math.round(this.f84909h));
        this.f84919r.getTextBounds(valueOf2, 0, valueOf2.length(), rect2);
        float height2 = height + (rect.height() / 2);
        canvas.drawText(valueOf, b10, height2, this.f84918q);
        canvas.drawText(valueOf2, b11, height2, this.f84919r);
    }

    public final EnumC1580c d(float f10) {
        boolean g10 = g(f10, k(this.f84901B));
        boolean g11 = g(f10, k(this.f84902C));
        EnumC1580c enumC1580c = (g10 && g11) ? f10 / ((float) getWidth()) > 0.5f ? EnumC1580c.MIN : EnumC1580c.MAX : g10 ? EnumC1580c.MIN : g11 ? EnumC1580c.MAX : null;
        if (this.f84903b && enumC1580c == null) {
            enumC1580c = e(f10);
        }
        M.m(enumC1580c);
        return enumC1580c;
    }

    public final EnumC1580c e(float f10) {
        int k10 = k(this.f84901B);
        int k11 = k(this.f84902C);
        if (f10 >= k11) {
            return EnumC1580c.MAX;
        }
        if (f10 <= k10) {
            return EnumC1580c.MIN;
        }
        double d10 = f10;
        return Math.abs(((double) k10) - d10) < Math.abs(((double) k11) - d10) ? EnumC1580c.MIN : EnumC1580c.MAX;
    }

    public final void f(AttributeSet attributeSet) {
        n(attributeSet);
        this.f84914m.setColor(this.f84925x);
        this.f84915n.setColor(this.f84926y);
        Paint paint = this.f84918q;
        paint.setTextSize(this.f84912k);
        paint.setColor(this.f84927z);
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        Paint paint2 = this.f84919r;
        paint2.setTextSize(this.f84912k);
        paint2.setColor(this.f84927z);
        paint2.setTextAlign(align);
        this.f84916o.setColor(this.f84900A);
        this.f84917p.setColor(this.f84900A);
    }

    public final boolean g(float f10, int i10) {
        return Math.abs(f10 - ((float) k(i10))) <= getThumbWidth();
    }

    public final int getBaseColor() {
        return this.f84925x;
    }

    public final int getCircleFillColor() {
        return this.f84900A;
    }

    public final int getCircleTextColor() {
        return this.f84927z;
    }

    public final int getCurrentMaxValue() {
        return this.f84902C;
    }

    public final int getCurrentMinValue() {
        return this.f84901B;
    }

    public final int getFillColor() {
        return this.f84926y;
    }

    public final int getMaxStep() {
        return this.f84922u;
    }

    public final int getMaxValue() {
        return this.f84923v;
    }

    public final int getMinStep() {
        return this.f84921t;
    }

    public final int getMinValue() {
        return this.f84924w;
    }

    public final int h(int i10) {
        return View.resolveSizeAndState(getPaddingTop() + getPaddingBottom() + Math.max(this.f84910i, this.f84911j), i10, 0);
    }

    public final int i(int i10) {
        return View.resolveSizeAndState(getPaddingLeft() + getPaddingRight(), i10, 0);
    }

    public final int j(float f10) {
        double width = (getWidth() - getPaddingStart()) - getPaddingEnd();
        if (f10 < 0.0f) {
            f10 = 0.0f;
        } else if (f10 > width) {
            f10 = (float) width;
        }
        return (int) ((f10 / width) * 100);
    }

    public final int k(int i10) {
        return Rf.d.L0((i10 / this.f84923v) * ((getWidth() - getPaddingStart()) - getPaddingEnd()));
    }

    public final void l() {
        this.f84907f = true;
    }

    public final void m() {
        this.f84907f = false;
    }

    public final void n(AttributeSet attributeSet) {
    }

    public final void o(float f10, EnumC1580c enumC1580c) {
        double width = (getWidth() - getPaddingStart()) - getPaddingEnd();
        if (f10 < 0.0f) {
            f10 = 0.0f;
        } else if (f10 > width) {
            f10 = (float) width;
        }
        int i10 = (int) ((f10 / width) * 100);
        if (enumC1580c == EnumC1580c.MIN) {
            u(i10);
        } else {
            t(i10);
        }
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        c(canvas);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        setMeasuredDimension(i(i10), h(i11));
    }

    @Override
    public void onRestoreInstanceState(@NotNull Parcelable state) {
        M.p(state, "state");
        b bVar = (b) state;
        setCurrentMinValue(bVar.c());
        setCurrentMaxValue(bVar.b());
        this.f84908g = this.f84901B;
        this.f84909h = this.f84902C;
        super.onRestoreInstanceState(bVar.getSuperState());
    }

    @Override
    @NotNull
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        M.m(onSaveInstanceState);
        b bVar = new b(onSaveInstanceState);
        bVar.e(this.f84901B);
        bVar.d(this.f84902C);
        return bVar;
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        M.p(event, "event");
        if (!isEnabled()) {
            return false;
        }
        int action = event.getAction() & 255;
        if (action == 0) {
            int pointerId = event.getPointerId(event.getPointerCount() - 1);
            this.f84905d = pointerId;
            int findPointerIndex = event.findPointerIndex(pointerId);
            this.f84906e = findPointerIndex;
            EnumC1580c d10 = d(event.getX(findPointerIndex));
            this.f84904c = d10;
            if (d10 == null) {
                return super.onTouchEvent(event);
            }
            p(event.getX(this.f84906e), event.getY(this.f84906e));
            setPressed(true);
            invalidate();
            l();
            s(event);
            a();
        } else if (action == 1) {
            if (this.f84907f) {
                s(event);
                m();
                setPressed(false);
                r(event.getX(this.f84906e), event.getY(this.f84906e));
                d dVar = this.f84920s;
                if (dVar != null) {
                    dVar.a(this, this.f84901B, this.f84902C);
                }
            } else {
                l();
                s(event);
                m();
            }
            this.f84904c = null;
            invalidate();
            d dVar2 = this.f84920s;
            if (dVar2 != null) {
                dVar2.b(this, this.f84901B, this.f84902C, true);
            }
        } else if (action != 2) {
            if (action == 3) {
                if (this.f84907f) {
                    m();
                    setPressed(false);
                    r(event.getX(this.f84906e), event.getY(this.f84906e));
                }
                invalidate();
            } else if (action == 6) {
                invalidate();
            }
        } else if (this.f84904c != null) {
            if (this.f84907f) {
                q(event.getX(this.f84906e), event.getY(this.f84906e));
                s(event);
            }
            d dVar3 = this.f84920s;
            if (dVar3 != null) {
                dVar3.b(this, this.f84901B, this.f84902C, true);
            }
        }
        return true;
    }

    public final void p(float f10, float f11) {
    }

    @Override
    public boolean performClick() {
        super.performClick();
        return true;
    }

    public final void q(float f10, float f11) {
    }

    public final void r(float f10, float f11) {
    }

    public final void s(MotionEvent motionEvent) {
        try {
            float x10 = motionEvent.getX(motionEvent.findPointerIndex(this.f84905d));
            EnumC1580c enumC1580c = EnumC1580c.MIN;
            EnumC1580c enumC1580c2 = this.f84904c;
            if (enumC1580c == enumC1580c2) {
                o(x10, enumC1580c);
            } else {
                EnumC1580c enumC1580c3 = EnumC1580c.MAX;
                if (enumC1580c3 == enumC1580c2) {
                    o(x10, enumC1580c3);
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void setBaseColor(@ColorInt int i10) {
        this.f84925x = i10;
        this.f84914m.setColor(i10);
        invalidate();
    }

    public final void setCircleFillColor(@ColorInt int i10) {
        this.f84900A = i10;
        this.f84916o.setColor(i10);
        this.f84917p.setColor(i10);
        invalidate();
    }

    public final void setCircleTextColor(@ColorInt int i10) {
        this.f84927z = i10;
        this.f84918q.setColor(i10);
        this.f84919r.setColor(i10);
        invalidate();
    }

    public final void setCurrentMaxValue(int i10) {
        if (i10 < this.f84901B) {
            return;
        }
        this.f84902C = i10;
        if (i10 >= this.f84924w) {
            int i11 = this.f84923v;
        }
        if (i10 % this.f84922u == 0) {
            this.f84902C = i10;
        }
        this.f84909h = this.f84902C;
        invalidate();
    }

    public final void setCurrentMinValue(int i10) {
        if (i10 > this.f84902C) {
            return;
        }
        this.f84901B = i10;
        if (i10 >= this.f84924w) {
            int i11 = this.f84923v;
        }
        if (i10 % this.f84922u == 0) {
            this.f84901B = i10;
        }
        this.f84908g = this.f84901B;
        invalidate();
    }

    public final void setFillColor(@ColorInt int i10) {
        this.f84926y = i10;
        this.f84915n.setColor(i10);
        invalidate();
    }

    public final void setMaxStep(int i10) {
        this.f84922u = i10;
        invalidate();
        requestLayout();
    }

    public final void setMaxValue(int i10) {
        this.f84923v = i10;
        invalidate();
        requestLayout();
    }

    public final void setMinStep(int i10) {
        this.f84921t = i10;
        invalidate();
        requestLayout();
    }

    public final void setMinValue(int i10) {
        this.f84924w = i10;
        invalidate();
        requestLayout();
    }

    public final void setOnRangeSeekBarViewChangeListener(@NotNull d l10) {
        M.p(l10, "l");
        this.f84920s = l10;
    }

    public final void t(int i10) {
        int L02 = Rf.d.L0((i10 * (this.f84923v - this.f84924w)) / 100) + this.f84924w;
        int i11 = this.f84922u;
        setCurrentMaxValue((L02 / i11) * i11);
    }

    public final void u(int i10) {
        int L02 = Rf.d.L0((i10 * (this.f84923v - this.f84924w)) / 100) + this.f84924w;
        int i11 = this.f84921t;
        setCurrentMinValue((L02 / i11) * i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        M.p(context, "context");
        M.p(attrs, "attrs");
        this.f84903b = true;
        this.f84905d = -1;
        this.f84907f = true;
        this.f84909h = 100;
        this.f84913l = 15;
        this.f84914m = new Paint(1);
        this.f84915n = new Paint(1);
        this.f84916o = new Paint(1);
        this.f84917p = new Paint(1);
        this.f84918q = new Paint(1);
        this.f84919r = new Paint(1);
        this.f84921t = 1;
        this.f84922u = 1;
        this.f84923v = 100;
        this.f84925x = -7829368;
        this.f84926y = -65536;
        this.f84927z = -12303292;
        this.f84900A = -16711936;
        this.f84902C = 100;
        f(attrs);
    }
}
