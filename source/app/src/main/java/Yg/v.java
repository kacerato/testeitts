package Yg;

import ah.AbstractC3645b;
import ah.C3649f;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import bh.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;
import t3.b;

@t0({"SMAP\nSpeedometer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Speedometer.kt\norg/anastr/speedviewlib/Speedometer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,802:1\n1#2:803\n1924#3,3:804\n*S KotlinDebug\n*F\n+ 1 Speedometer.kt\norg/anastr/speedviewlib/Speedometer\n*L\n725#1:804,3\n*E\n"})
public abstract class v extends j {

    @NotNull
    public final Path f30549D0;

    public float f30550F1;

    @NotNull
    public final ArrayList<bh.b<?>> f30551H1;

    @NotNull
    public a f30552L1;

    public int f30553M1;

    @NotNull
    public List<Float> f30554R1;

    @NotNull
    public AbstractC3645b<?> f30555S;

    @NotNull
    public final PointF f30556T;

    public boolean f30557U;

    public int f30558V;

    public boolean f30559V1;

    @NotNull
    public final Paint f30560W;

    public int f30561b1;

    public float f30562b2;

    public float f30563i1;

    public float f30564i2;

    public float f30565m1;

    @Nullable
    public Mf.p<? super Integer, ? super Float, ? extends CharSequence> f30566m2;

    @NotNull
    public final Paint f30567q0;

    public int f30568q1;

    public float f30569q2;

    @NotNull
    public final Paint f30570v0;

    public int f30571v1;

    public int f30572y1;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final Cf.a $ENTRIES;
        private static final a[] $VALUES;
        private final int divHeight;
        private final int divWidth;
        private final boolean isHalf;
        private final int maxDegree;
        private final int minDegree;
        public static final a NORMAL = new a("NORMAL", 0, 0, 720, false, 1, 1);
        public static final a LEFT = new a("LEFT", 1, 90, 270, true, 2, 1);
        public static final a TOP = new a("TOP", 2, 180, DisplayMetrics.DENSITY_360, true, 1, 2);
        public static final a RIGHT = new a("RIGHT", 3, 270, 450, true, 2, 1);
        public static final a BOTTOM = new a("BOTTOM", 4, 0, 180, true, 1, 2);
        public static final a TOP_LEFT = new a("TOP_LEFT", 5, 180, 270, false, 1, 1);
        public static final a TOP_RIGHT = new a("TOP_RIGHT", 6, 270, DisplayMetrics.DENSITY_360, false, 1, 1);
        public static final a BOTTOM_RIGHT = new a("BOTTOM_RIGHT", 7, 0, 90, false, 1, 1);
        public static final a BOTTOM_LEFT = new a("BOTTOM_LEFT", 8, 90, 180, false, 1, 1);

        static {
            a[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public a(String str, int i10, int i11, int i12, boolean z10, int i13, int i14) {
            this.minDegree = i11;
            this.maxDegree = i12;
            this.isHalf = z10;
            this.divWidth = i13;
            this.divHeight = i14;
        }

        public static final a[] a() {
            return new a[]{NORMAL, LEFT, TOP, RIGHT, BOTTOM, TOP_LEFT, TOP_RIGHT, BOTTOM_RIGHT, BOTTOM_LEFT};
        }

        @NotNull
        public static Cf.a<a> d() {
            return $ENTRIES;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }

        public final int b() {
            return this.divHeight;
        }

        public final int c() {
            return this.divWidth;
        }

        public final int e() {
            return this.maxDegree;
        }

        public final int g() {
            return this.minDegree;
        }

        public final boolean h() {
            return this == BOTTOM || this == BOTTOM_LEFT || this == BOTTOM_RIGHT;
        }

        public final boolean i() {
            return this.isHalf;
        }

        public final boolean j() {
            return this == LEFT || this == TOP_LEFT || this == BOTTOM_LEFT;
        }

        public final boolean k() {
            return (this.isHalf || this == NORMAL) ? false : true;
        }

        public final boolean o() {
            return this == RIGHT || this == TOP_RIGHT || this == BOTTOM_RIGHT;
        }

        public final boolean q() {
            return this == TOP || this == TOP_LEFT || this == TOP_RIGHT;
        }
    }

    public static final class b {

        public static final int[] f30573a;

        public static final int[] f30574b;

        static {
            int[] iArr = new int[a.values().length];
            try {
                iArr[a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[a.TOP_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[a.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[a.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[a.TOP_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[a.BOTTOM_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[a.TOP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[a.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f30573a = iArr;
            int[] iArr2 = new int[b.c.values().length];
            try {
                iArr2[b.c.TopIndicator.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[b.c.CenterIndicator.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[b.c.BottomIndicator.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[b.c.TopSpeedometer.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[b.c.QuarterSpeedometer.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[b.c.CenterSpeedometer.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            f30574b = iArr2;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public v(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void B() {
        Paint paint = this.f30567q0;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f30570v0.setStyle(style);
        setMarkColor(-1);
        setMarkWidth(x(3.0f));
        setMarkStyle(Zg.b.BUTT);
        o0();
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.CC, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        int i10 = obtainStyledAttributes.getInt(13, -1);
        if (i10 != -1 && i10 != 0) {
            setSpeedometerMode(a.values()[i10]);
        }
        int i11 = obtainStyledAttributes.getInt(3, -1);
        if (i11 != -1) {
            setIndicator(AbstractC3645b.EnumC0862b.values()[i11]);
        }
        setMarksNumber(obtainStyledAttributes.getInt(11, this.f30561b1));
        setMarksPadding(obtainStyledAttributes.getDimension(12, this.f30563i1));
        setMarkHeight(obtainStyledAttributes.getDimension(8, this.f30565m1));
        setMarkWidth(obtainStyledAttributes.getDimension(10, getMarkWidth()));
        setMarkColor(obtainStyledAttributes.getColor(7, getMarkColor()));
        int i12 = obtainStyledAttributes.getInt(9, -1);
        if (i12 != -1) {
            setMarkStyle(Zg.b.values()[i12]);
        }
        setBackgroundCircleColor(obtainStyledAttributes.getColor(0, this.f30568q1));
        this.f30571v1 = obtainStyledAttributes.getInt(14, this.f30571v1);
        this.f30572y1 = obtainStyledAttributes.getInt(2, this.f30572y1);
        AbstractC3645b<?> abstractC3645b = this.f30555S;
        abstractC3645b.q(obtainStyledAttributes.getDimension(6, abstractC3645b.l()));
        this.f30553M1 = (int) obtainStyledAttributes.getDimension(1, this.f30553M1);
        setTickNumber(obtainStyledAttributes.getInteger(15, this.f30554R1.size()));
        this.f30559V1 = obtainStyledAttributes.getBoolean(17, this.f30559V1);
        setTickPadding(obtainStyledAttributes.getDimension(16, this.f30564i2));
        AbstractC3645b<?> abstractC3645b2 = this.f30555S;
        abstractC3645b2.m(obtainStyledAttributes.getColor(4, abstractC3645b2.f()));
        this.f30557U = obtainStyledAttributes.getBoolean(19, this.f30557U);
        this.f30558V = obtainStyledAttributes.getColor(5, this.f30558V);
        int i13 = obtainStyledAttributes.getInt(18, -1);
        if (i13 == 0) {
            setOnPrintTickLabel(new Mf.p() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    CharSequence x02;
                    x02 = v.x0(v.this, ((Integer) obj).intValue(), ((Float) obj2).floatValue());
                    return x02;
                }
            });
        } else if (i13 == 1) {
            setOnPrintTickLabel(new Mf.p() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    CharSequence y02;
                    y02 = v.y0(v.this, ((Integer) obj).intValue(), ((Float) obj2).floatValue());
                    return y02;
                }
            });
        }
        this.f30550F1 = this.f30571v1;
        obtainStyledAttributes.recycle();
        m0();
    }

    public static void k0(v vVar, bh.b bVar, long j10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addNote");
        }
        if ((i10 & 2) != 0) {
            j10 = Ld.a.f11703k;
        }
        vVar.j0(bVar, j10);
    }

    public static final void l0(v vVar, bh.b bVar) {
        if (vVar.isAttachedToWindow()) {
            vVar.f30551H1.remove(bVar);
            vVar.postInvalidate();
        }
    }

    public static final CharSequence x0(v vVar, int i10, float f10) {
        String format = String.format(vVar.getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
        M.o(format, "format(...)");
        return format;
    }

    public static final CharSequence y0(v vVar, int i10, float f10) {
        String format = String.format(vVar.getLocale(), "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
        M.o(format, "format(...)");
        return format;
    }

    private final void z0() {
        this.f30560W.setColor(this.f30568q1);
    }

    public final boolean A0() {
        return this.f30559V1;
    }

    public final boolean B0() {
        return this.f30557U;
    }

    public final void C0() {
        this.f30551H1.clear();
        invalidate();
    }

    public final void D0(float f10, float f11) {
        if (!Vf.t.g(0.0f, 1.0f).contains(Float.valueOf(f10))) {
            throw new IllegalArgumentException("Fulcrum X should be between [0f, 1f]");
        }
        if (!Vf.t.g(0.0f, 1.0f).contains(Float.valueOf(f11))) {
            throw new IllegalArgumentException("Fulcrum Y should be between [0f, 1f]");
        }
        this.f30556T.set(f10, f11);
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    public final void E0(int i10, int i11) {
        this.f30571v1 = i10;
        this.f30572y1 = i11;
        m0();
        l();
        this.f30550F1 = v0(getSpeed());
        if (isAttachedToWindow()) {
            F();
            b0();
        }
    }

    public final void F0() {
        setTranslatedDx(this.f30552L1.o() ? ((-getSize()) * 0.5f) + this.f30553M1 : 0.0f);
        setTranslatedDy(this.f30552L1.h() ? this.f30553M1 + ((-getSize()) * 0.5f) : 0.0f);
    }

    public final int getBackgroundCircleColor() {
        return this.f30568q1;
    }

    public final float getDegree() {
        return this.f30550F1;
    }

    public final int getEndDegree() {
        return this.f30572y1;
    }

    public final float getFulcrumX() {
        return this.f30556T.f32425x;
    }

    public final float getFulcrumY() {
        return this.f30556T.f32426y;
    }

    @NotNull
    public final AbstractC3645b<?> getIndicator() {
        return this.f30555S;
    }

    public final int getIndicatorLightColor() {
        return this.f30558V;
    }

    public final float getInitTickPadding() {
        return this.f30562b2;
    }

    public final int getMarkColor() {
        return this.f30570v0.getColor();
    }

    public final float getMarkHeight() {
        return this.f30565m1;
    }

    @NotNull
    public final Paint getMarkPaint() {
        return this.f30570v0;
    }

    @NotNull
    public final Zg.b getMarkStyle() {
        return this.f30570v0.getStrokeCap() == Paint.Cap.ROUND ? Zg.b.ROUND : Zg.b.BUTT;
    }

    public final float getMarkWidth() {
        return this.f30570v0.getStrokeWidth();
    }

    public final int getMarksNumber() {
        return this.f30561b1;
    }

    public final float getMarksPadding() {
        return this.f30563i1;
    }

    @Nullable
    public final Mf.p<Integer, Float, CharSequence> getOnPrintTickLabel() {
        return this.f30566m2;
    }

    public final int getSize() {
        a aVar = this.f30552L1;
        return aVar == a.NORMAL ? getWidth() : aVar.i() ? Math.max(getWidth(), getHeight()) : (Math.max(getWidth(), getHeight()) * 2) - (this.f30553M1 * 2);
    }

    public final int getSizePa() {
        return getSize() - (getPadding() * 2);
    }

    @NotNull
    public final a getSpeedometerMode() {
        return this.f30552L1;
    }

    @Override
    public float getSpeedometerWidth() {
        return super.getSpeedometerWidth();
    }

    public final int getStartDegree() {
        return this.f30571v1;
    }

    public final int getTickNumber() {
        return this.f30554R1.size();
    }

    public final float getTickPadding() {
        return this.f30564i2;
    }

    @NotNull
    public final List<Float> getTicks() {
        return this.f30554R1;
    }

    public final float getViewBottom() {
        return getViewCenterY() + (getHeight() * 0.5f);
    }

    public final float getViewCenterX() {
        switch (b.f30573a[this.f30552L1.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return (getSize() * 0.5f) - (getWidth() * 0.5f);
            case 4:
            case 5:
            case 6:
                return (getSize() * 0.5f) + (getWidth() * 0.5f);
            default:
                return getSize() * 0.5f;
        }
    }

    public final float getViewCenterY() {
        int i10 = b.f30573a[this.f30552L1.ordinal()];
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 5) {
                    if (i10 != 6) {
                        if (i10 != 7) {
                            if (i10 != 8) {
                                return getSize() * 0.5f;
                            }
                        }
                    }
                }
            }
            return (getSize() * 0.5f) + (getHeight() * 0.5f);
        }
        return (getSize() * 0.5f) - (getHeight() * 0.5f);
    }

    public final float getViewLeft() {
        return getViewCenterX() - (getWidth() * 0.5f);
    }

    public final float getViewRight() {
        return getViewCenterX() + (getWidth() * 0.5f);
    }

    public final float getViewTop() {
        return getViewCenterY() - (getHeight() * 0.5f);
    }

    public final void j0(@NotNull final bh.b<?> note, long j10) {
        M.p(note, "note");
        note.e(getWidth());
        this.f30551H1.add(note);
        if (j10 == -1) {
            return;
        }
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                v.l0(v.this, note);
            }
        }, j10);
        invalidate();
    }

    public final void m0() {
        int i10 = this.f30571v1;
        if (i10 < 0) {
            throw new IllegalArgumentException("StartDegree can't be Negative");
        }
        int i11 = this.f30572y1;
        if (i11 < 0) {
            throw new IllegalArgumentException("EndDegree can't be Negative");
        }
        if (i10 >= i11) {
            throw new IllegalArgumentException("EndDegree must be bigger than StartDegree !");
        }
        if (i11 - i10 > 360) {
            throw new IllegalArgumentException("(EndDegree - StartDegree) must be smaller than 360 !");
        }
        if (i10 < this.f30552L1.g()) {
            throw new IllegalArgumentException(("StartDegree must be bigger than " + this.f30552L1.g() + " in " + ((Object) this.f30552L1) + " Mode !").toString());
        }
        if (this.f30572y1 <= this.f30552L1.e()) {
            return;
        }
        throw new IllegalArgumentException(("EndDegree must be smaller than " + this.f30552L1.e() + " in " + ((Object) this.f30552L1) + " Mode !").toString());
    }

    public final void n0() {
        Iterator<Float> it = this.f30554R1.iterator();
        while (it.hasNext()) {
            float floatValue = it.next().floatValue();
            if (floatValue < 0.0f || floatValue > 1.0f) {
                throw new IllegalArgumentException("ticks must be between [0f, 1f] !!");
            }
        }
    }

    public abstract void o0();

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        this.f30550F1 = v0(getCurrentSpeed());
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int x10 = (int) x(250.0f);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824 && mode2 == 1073741824) {
            size = Math.min(size, size2);
        } else if (mode != 1073741824) {
            size = mode2 == 1073741824 ? size2 : ((mode == 0 && mode2 == 0) || (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE)) ? Math.min(x10, Math.min(size, size2)) : mode == Integer.MIN_VALUE ? Math.min(x10, size) : Math.min(x10, size2);
        }
        int max = Math.max(size, Math.max(getSuggestedMinimumWidth(), getSuggestedMinimumHeight()));
        int c10 = max / this.f30552L1.c();
        int b10 = max / this.f30552L1.b();
        if (this.f30552L1.i()) {
            if (this.f30552L1.c() == 2) {
                c10 += this.f30553M1;
            } else {
                b10 += this.f30553M1;
            }
        }
        setMeasuredDimension(c10, b10);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f30555S.s();
        F0();
    }

    public final void p0(@NotNull Canvas c10) {
        CharSequence charSequence;
        M.p(c10, "c");
        TextPaint textPaint = getTextPaint();
        int i10 = this.f30571v1;
        textPaint.setTextAlign(i10 % DisplayMetrics.DENSITY_360 <= 90 ? Paint.Align.RIGHT : i10 % DisplayMetrics.DENSITY_360 <= 180 ? Paint.Align.LEFT : i10 % DisplayMetrics.DENSITY_360 <= 270 ? Paint.Align.CENTER : Paint.Align.RIGHT);
        Mf.p<? super Integer, ? super Float, ? extends CharSequence> pVar = this.f30566m2;
        CharSequence charSequence2 = null;
        if (pVar != null) {
            M.m(pVar);
            charSequence = pVar.invoke(0, Float.valueOf(getMinSpeed()));
        } else {
            charSequence = null;
        }
        if (charSequence == null) {
            charSequence = String.format(getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(getMinSpeed())}, 1));
            M.o(charSequence, "format(...)");
        }
        c10.save();
        c10.rotate(this.f30571v1 + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        c10.rotate(-(this.f30571v1 + 90.0f), ((getSizePa() * 0.5f) - getTextPaint().getTextSize()) + getPadding(), getTextPaint().getTextSize() + getPadding());
        c10.drawText(charSequence.toString(), ((getSizePa() * 0.5f) - getTextPaint().getTextSize()) + getPadding(), getTextPaint().getTextSize() + getPadding(), getTextPaint());
        c10.restore();
        TextPaint textPaint2 = getTextPaint();
        int i11 = this.f30572y1;
        textPaint2.setTextAlign(i11 % DisplayMetrics.DENSITY_360 <= 90 ? Paint.Align.RIGHT : i11 % DisplayMetrics.DENSITY_360 <= 180 ? Paint.Align.LEFT : i11 % DisplayMetrics.DENSITY_360 <= 270 ? Paint.Align.CENTER : Paint.Align.RIGHT);
        Mf.p<? super Integer, ? super Float, ? extends CharSequence> pVar2 = this.f30566m2;
        if (pVar2 != null) {
            M.m(pVar2);
            charSequence2 = pVar2.invoke(1, Float.valueOf(getMaxSpeed()));
        }
        if (charSequence2 == null) {
            charSequence2 = String.format(getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(getMaxSpeed())}, 1));
            M.o(charSequence2, "format(...)");
        }
        c10.save();
        c10.rotate(this.f30572y1 + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        c10.rotate(-(this.f30572y1 + 90.0f), (getSizePa() * 0.5f) + getTextPaint().getTextSize() + getPadding(), getTextPaint().getTextSize() + getPadding());
        c10.drawText(charSequence2.toString(), (getSizePa() * 0.5f) + getTextPaint().getTextSize() + getPadding(), getTextPaint().getTextSize() + getPadding(), getTextPaint());
        c10.restore();
    }

    public final void q0(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.save();
        canvas.translate(getSize() * (getFulcrumX() - 0.5f), getSize() * (getFulcrumY() - 0.5f));
        canvas.rotate(this.f30550F1 + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        if (this.f30557U) {
            r0(canvas);
        }
        this.f30555S.b(canvas);
        canvas.restore();
    }

    public final void r0(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        float abs = Math.abs(getPercentSpeed() - this.f30569q2) * 30.0f;
        this.f30569q2 = getPercentSpeed();
        float f10 = abs > 30.0f ? 30.0f : abs;
        this.f30567q0.setShader(new SweepGradient(getSize() * 0.5f, getSize() * 0.5f, new int[]{this.f30558V, 16777215}, new float[]{0.0f, f10 / 360.0f}));
        this.f30567q0.setStrokeWidth(this.f30555S.h() - this.f30555S.j());
        float j10 = this.f30555S.j() + (this.f30567q0.getStrokeWidth() * 0.5f);
        RectF rectF = new RectF(j10, j10, getSize() - j10, getSize() - j10);
        canvas.save();
        canvas.rotate(-90.0f, getSize() * 0.5f, getSize() * 0.5f);
        if (G()) {
            canvas.scale(1.0f, -1.0f, getSize() * 0.5f, getSize() * 0.5f);
        }
        canvas.drawArc(rectF, 0.0f, f10, false, this.f30567q0);
        canvas.restore();
    }

    public final void s0(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        this.f30549D0.reset();
        this.f30549D0.moveTo(getSize() * 0.5f, this.f30563i1 + getPadding());
        this.f30549D0.lineTo(getSize() * 0.5f, this.f30563i1 + this.f30565m1 + getPadding());
        canvas.save();
        canvas.rotate(getStartDegree() + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        float endDegree = getEndDegree() - getStartDegree();
        int i10 = this.f30561b1;
        float f10 = endDegree / (i10 + 1.0f);
        int i11 = 1;
        if (1 <= i10) {
            while (true) {
                canvas.rotate(f10, getSize() * 0.5f, getSize() * 0.5f);
                canvas.drawPath(this.f30549D0, this.f30570v0);
                if (i11 == i10) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        canvas.restore();
    }

    public final void setBackgroundCircleColor(int i10) {
        this.f30568q1 = i10;
        this.f30560W.setColor(i10);
        F();
    }

    public final void setEndDegree(int i10) {
        E0(this.f30571v1, i10);
    }

    public final void setIndicator(@NotNull AbstractC3645b<?> indicator) {
        M.p(indicator, "indicator");
        this.f30555S.deleteObservers();
        indicator.p(this);
        this.f30555S = indicator;
        if (isAttachedToWindow()) {
            this.f30555S.p(this);
            invalidate();
        }
    }

    public final void setIndicatorLightColor(int i10) {
        this.f30558V = i10;
    }

    public final void setInitTickPadding(float f10) {
        this.f30562b2 = f10;
    }

    public final void setMarkColor(int i10) {
        this.f30570v0.setColor(i10);
    }

    public final void setMarkHeight(float f10) {
        this.f30565m1 = f10;
        F();
    }

    public final void setMarkStyle(@NotNull Zg.b markStyle) {
        M.p(markStyle, "markStyle");
        if (markStyle == Zg.b.ROUND) {
            this.f30570v0.setStrokeCap(Paint.Cap.ROUND);
        } else {
            this.f30570v0.setStrokeCap(Paint.Cap.BUTT);
        }
        F();
    }

    public final void setMarkWidth(float f10) {
        this.f30570v0.setStrokeWidth(f10);
        F();
    }

    public final void setMarksNumber(int i10) {
        this.f30561b1 = i10;
        F();
    }

    public final void setMarksPadding(float f10) {
        this.f30563i1 = f10;
        F();
    }

    public final void setOnPrintTickLabel(@Nullable Mf.p<? super Integer, ? super Float, ? extends CharSequence> pVar) {
        this.f30566m2 = pVar;
        F();
    }

    public final void setSpeedometerMode(@NotNull a speedometerMode) {
        M.p(speedometerMode, "speedometerMode");
        this.f30552L1 = speedometerMode;
        if (speedometerMode != a.NORMAL) {
            this.f30571v1 = speedometerMode.g();
            this.f30572y1 = speedometerMode.e();
        }
        F0();
        l();
        this.f30550F1 = v0(getSpeed());
        this.f30555S.s();
        if (isAttachedToWindow()) {
            requestLayout();
            F();
            b0();
        }
    }

    @Override
    public void setSpeedometerWidth(float f10) {
        super.setSpeedometerWidth(f10);
        if (isAttachedToWindow()) {
            this.f30555S.s();
        }
    }

    public final void setStartDegree(int i10) {
        E0(i10, this.f30572y1);
    }

    public final void setTickNumber(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("tickNumber mustn't be negative");
        }
        ArrayList arrayList = new ArrayList();
        float f10 = i10 == 1 ? 0.0f : 1.0f / (i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(Float.valueOf(i11 * f10));
        }
        setTicks(arrayList);
    }

    public final void setTickPadding(float f10) {
        this.f30564i2 = f10;
        F();
    }

    public final void setTickRotation(boolean z10) {
        this.f30559V1 = z10;
        F();
    }

    public final void setTicks(@NotNull List<Float> ticks) {
        M.p(ticks, "ticks");
        this.f30554R1 = ticks;
        n0();
        F();
    }

    public final void setWithIndicatorLight(boolean z10) {
        this.f30557U = z10;
    }

    public final void t0(@NotNull Canvas canvas) {
        float j10;
        M.p(canvas, "canvas");
        Iterator<bh.b<?>> it = this.f30551H1.iterator();
        M.o(it, "iterator(...)");
        while (it.hasNext()) {
            bh.b<?> next = it.next();
            M.o(next, "next(...)");
            bh.b<?> bVar = next;
            if (bVar.l() == b.c.CenterSpeedometer) {
                bVar.g(canvas, getWidth() * 0.5f, getHeight() * 0.5f);
            } else {
                switch (b.f30574b[bVar.l().ordinal()]) {
                    case 1:
                        j10 = this.f30555S.j();
                        break;
                    case 2:
                        j10 = (this.f30555S.j() + this.f30555S.c()) * 0.5f;
                        break;
                    case 3:
                        j10 = this.f30555S.c();
                        break;
                    case 4:
                        j10 = getPadding();
                        break;
                    case 5:
                        j10 = (getHeightPa() * 0.25f) + getPadding();
                        break;
                    case 6:
                        j10 = getViewCenterY();
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                canvas.save();
                canvas.rotate(this.f30550F1 + 90.0f, getWidth() * 0.5f, getHeight() * 0.5f);
                canvas.rotate(-(this.f30550F1 + 90.0f), getWidth() * 0.5f, j10);
                bVar.g(canvas, getWidth() * 0.5f, j10);
                canvas.restore();
            }
        }
    }

    public final void u0(@NotNull Canvas c10) {
        CharSequence charSequence;
        M.p(c10, "c");
        if (this.f30554R1.isEmpty()) {
            return;
        }
        getTextPaint().setTextAlign(Paint.Align.LEFT);
        int i10 = this.f30572y1 - this.f30571v1;
        int i11 = 0;
        for (Float f10 : this.f30554R1) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                H.b0();
            }
            float floatValue = this.f30571v1 + (i10 * f10.floatValue());
            c10.save();
            float f11 = 90.0f + floatValue;
            c10.rotate(f11, getSize() * 0.5f, getSize() * 0.5f);
            if (!this.f30559V1) {
                c10.rotate(-f11, getSize() * 0.5f, this.f30562b2 + getTextPaint().getTextSize() + getPadding() + this.f30564i2);
            }
            Mf.p<? super Integer, ? super Float, ? extends CharSequence> pVar = this.f30566m2;
            if (pVar != null) {
                M.m(pVar);
                charSequence = pVar.invoke(Integer.valueOf(i11), Float.valueOf(w0(floatValue)));
            } else {
                charSequence = null;
            }
            if (charSequence == null) {
                charSequence = String.format(getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(w0(floatValue))}, 1));
                M.o(charSequence, "format(...)");
            }
            c10.translate(0.0f, this.f30562b2 + getPadding() + this.f30564i2);
            StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), getTextPaint(), getSize()).setAlignment(Layout.Alignment.ALIGN_CENTER).build().draw(c10);
            c10.restore();
            i11 = i12;
        }
    }

    @Override
    @NotNull
    public Canvas v() {
        if (getSize() == 0) {
            return new Canvas();
        }
        Bitmap createBitmap = Bitmap.createBitmap(getSize(), getSize(), Bitmap.Config.ARGB_8888);
        M.o(createBitmap, "createBitmap(...)");
        setBackgroundBitmap(createBitmap);
        Canvas canvas = new Canvas(getBackgroundBitmap());
        canvas.drawCircle(getSize() * 0.5f, getSize() * 0.5f, (getSize() * 0.5f) - getPadding(), this.f30560W);
        canvas.clipRect(0, 0, getSize(), getSize());
        return canvas;
    }

    public final float v0(float f10) {
        return (((f10 - getMinSpeed()) * (this.f30572y1 - this.f30571v1)) / (getMaxSpeed() - getMinSpeed())) + this.f30571v1;
    }

    public final float w0(float f10) {
        return (((f10 - this.f30571v1) * (getMaxSpeed() - getMinSpeed())) / (this.f30572y1 - this.f30571v1)) + getMinSpeed();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public v(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public v(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30555S = new C3649f(context);
        this.f30556T = new PointF(0.5f, 0.5f);
        this.f30558V = -1140893918;
        this.f30560W = new Paint(1);
        this.f30567q0 = new Paint(1);
        this.f30570v0 = new Paint(1);
        this.f30549D0 = new Path();
        this.f30565m1 = x(9.0f);
        this.f30568q1 = -1;
        this.f30571v1 = 135;
        this.f30572y1 = 405;
        this.f30550F1 = 135;
        this.f30551H1 = new ArrayList<>();
        this.f30552L1 = a.NORMAL;
        this.f30554R1 = H.J();
        this.f30559V1 = true;
        this.f30564i2 = getSpeedometerWidth() + x(3.0f);
        B();
        C(context, attributeSet);
        z0();
    }

    public void setIndicator(@NotNull AbstractC3645b.EnumC0862b indicator) {
        M.p(indicator, "indicator");
        AbstractC3645b.a aVar = AbstractC3645b.f32191f;
        Context context = getContext();
        M.o(context, "getContext(...)");
        setIndicator(aVar.a(context, this, indicator));
    }

    public v(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
