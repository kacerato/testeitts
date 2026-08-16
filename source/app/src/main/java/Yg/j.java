package Yg;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import ch.C4189a;
import com.tonyodev.fetch2core.FetchCoreDefaults;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Observable;
import java.util.Observer;
import java.util.Random;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.w0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14985q;
import pf.S;
import t3.b;

@t0({"SMAP\nGauge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Gauge.kt\norg/anastr/speedviewlib/Gauge\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1151:1\n1915#2,2:1152\n1915#2,2:1155\n1915#2,2:1157\n1915#2,2:1159\n1915#2,2:1161\n1#3:1154\n*S KotlinDebug\n*F\n+ 1 Gauge.kt\norg/anastr/speedviewlib/Gauge\n*L\n369#1:1152,2\n1044#1:1155,2\n1056#1:1157,2\n1081#1:1159,2\n1107#1:1161,2\n*E\n"})
public abstract class j extends View implements Observer {

    public int f30467A;

    @NotNull
    public final List<Zg.a> f30468B;

    @Nullable
    public Zg.a f30469C;

    public float f30470D;

    public boolean f30471E;

    public boolean f30472F;

    public float f30473G;

    public float f30474H;

    @NotNull
    public Locale f30475I;

    public float f30476J;

    public float f30477K;

    @NotNull
    public a f30478L;

    public float f30479M;

    public float f30480N;

    public boolean f30481O;

    @NotNull
    public Bitmap f30482P;

    @Nullable
    public Canvas f30483Q;

    @NotNull
    public Mf.l<? super Float, ? extends CharSequence> f30484R;

    @NotNull
    public final Paint f30485b;

    @NotNull
    public TextPaint f30486c;

    @NotNull
    public final TextPaint f30487d;

    @NotNull
    public final TextPaint f30488e;

    @NotNull
    public String f30489f;

    public boolean f30490g;

    public float f30491h;

    public float f30492i;

    public float f30493j;

    public int f30494k;

    public float f30495l;

    public boolean f30496m;

    public float f30497n;

    public int f30498o;

    @Nullable
    public ValueAnimator f30499p;

    @Nullable
    public ValueAnimator f30500q;

    @Nullable
    public ValueAnimator f30501r;

    public boolean f30502s;

    @Nullable
    public Mf.q<? super j, ? super Boolean, ? super Boolean, P0> f30503t;

    @Nullable
    public Mf.p<? super Zg.a, ? super Zg.a, P0> f30504u;

    @NotNull
    public final b f30505v;

    @NotNull
    public Bitmap f30506w;

    @NotNull
    public final Paint f30507x;

    public int f30508y;

    public int f30509z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final Cf.a $ENTRIES;
        private static final a[] $VALUES;
        private final float height;
        private final int paddingH;
        private final int paddingV;
        private final float width;

        private final float f30510x;

        private final float f30511y;
        public static final a TOP_LEFT = new a("TOP_LEFT", 0, 0.0f, 0.0f, 0.0f, 0.0f, 1, 1);
        public static final a TOP_CENTER = new a("TOP_CENTER", 1, 0.5f, 0.0f, 0.5f, 0.0f, 0, 1);
        public static final a TOP_RIGHT = new a("TOP_RIGHT", 2, 1.0f, 0.0f, 1.0f, 0.0f, -1, 1);
        public static final a LEFT = new a("LEFT", 3, 0.0f, 0.5f, 0.0f, 0.5f, 1, 0);
        public static final a CENTER = new a("CENTER", 4, 0.5f, 0.5f, 0.5f, 0.5f, 0, 0);
        public static final a RIGHT = new a("RIGHT", 5, 1.0f, 0.5f, 1.0f, 0.5f, -1, 0);
        public static final a BOTTOM_LEFT = new a("BOTTOM_LEFT", 6, 0.0f, 1.0f, 0.0f, 1.0f, 1, -1);
        public static final a BOTTOM_CENTER = new a("BOTTOM_CENTER", 7, 0.5f, 1.0f, 0.5f, 1.0f, 0, -1);
        public static final a BOTTOM_RIGHT = new a("BOTTOM_RIGHT", 8, 1.0f, 1.0f, 1.0f, 1.0f, -1, -1);

        static {
            a[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public a(String str, int i10, float f10, float f11, float f12, float f13, int i11, int i12) {
            this.f30510x = f10;
            this.f30511y = f11;
            this.width = f12;
            this.height = f13;
            this.paddingH = i11;
            this.paddingV = i12;
        }

        public static final a[] a() {
            return new a[]{TOP_LEFT, TOP_CENTER, TOP_RIGHT, LEFT, CENTER, RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT};
        }

        @NotNull
        public static Cf.a<a> b() {
            return $ENTRIES;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }

        public final float c() {
            return this.height;
        }

        public final int d() {
            return this.paddingH;
        }

        public final int e() {
            return this.paddingV;
        }

        public final float g() {
            return this.width;
        }

        public final float h() {
            return this.f30510x;
        }

        public final float i() {
            return this.f30511y;
        }
    }

    public static final class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            M.p(animation, "animation");
            if (j.this.f30502s) {
                return;
            }
            j.this.b0();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30485b = new Paint(1);
        this.f30486c = new TextPaint(1);
        this.f30487d = new TextPaint(1);
        this.f30488e = new TextPaint(1);
        this.f30489f = "Km/h";
        this.f30490g = true;
        this.f30492i = 100.0f;
        this.f30493j = getMinSpeed();
        this.f30495l = getMinSpeed();
        this.f30497n = 4.0f;
        this.f30498o = 1000;
        this.f30505v = new b();
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, config);
        M.o(createBitmap, "createBitmap(...)");
        this.f30506w = createBitmap;
        this.f30507x = new Paint(1);
        this.f30468B = new ArrayList();
        this.f30470D = x(30.0f);
        Locale locale = Locale.getDefault();
        M.o(locale, "getDefault(...)");
        this.f30475I = locale;
        this.f30476J = 0.1f;
        this.f30477K = 0.1f;
        this.f30478L = a.BOTTOM_CENTER;
        this.f30479M = x(1.0f);
        this.f30480N = x(20.0f);
        Bitmap createBitmap2 = Bitmap.createBitmap(1, 1, config);
        M.o(createBitmap2, "createBitmap(...)");
        this.f30482P = createBitmap2;
        this.f30484R = new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                CharSequence U10;
                U10 = j.U(j.this, ((Float) obj).floatValue());
                return U10;
            }
        };
        B();
        C(context, attributeSet);
    }

    private final void B() {
        this.f30486c.setColor(-16777216);
        this.f30486c.setTextSize(x(10.0f));
        this.f30486c.setTextAlign(Paint.Align.CENTER);
        this.f30487d.setColor(-16777216);
        this.f30487d.setTextSize(x(18.0f));
        this.f30488e.setColor(-16777216);
        this.f30488e.setTextSize(x(15.0f));
        int i10 = 16;
        C14026x c14026x = null;
        Zg.b bVar = null;
        this.f30468B.add(new Zg.a(0.0f, 0.6f, -16711936, getSpeedometerWidth(), bVar, i10, c14026x).i(this));
        this.f30468B.add(new Zg.a(0.6f, 0.87f, -256, getSpeedometerWidth(), bVar, i10, c14026x).i(this));
        this.f30468B.add(new Zg.a(0.87f, 1.0f, -65536, getSpeedometerWidth(), bVar, i10, c14026x).i(this));
        w();
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.f115704Al, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        setMaxSpeed(obtainStyledAttributes.getFloat(2, getMaxSpeed()));
        setMinSpeed(obtainStyledAttributes.getFloat(3, getMinSpeed()));
        this.f30493j = getMinSpeed();
        setCurrentSpeed(getMinSpeed());
        setSpeedometerWidth(obtainStyledAttributes.getDimension(10, getSpeedometerWidth()));
        Iterator<Zg.a> it = this.f30468B.iterator();
        while (it.hasNext()) {
            it.next().C(getSpeedometerWidth());
        }
        setWithTremble(obtainStyledAttributes.getBoolean(22, this.f30490g));
        TextPaint textPaint = this.f30486c;
        textPaint.setColor(obtainStyledAttributes.getColor(11, textPaint.getColor()));
        TextPaint textPaint2 = this.f30486c;
        textPaint2.setTextSize(obtainStyledAttributes.getDimension(13, textPaint2.getTextSize()));
        TextPaint textPaint3 = this.f30487d;
        textPaint3.setColor(obtainStyledAttributes.getColor(4, textPaint3.getColor()));
        TextPaint textPaint4 = this.f30487d;
        textPaint4.setTextSize(obtainStyledAttributes.getDimension(8, textPaint4.getTextSize()));
        TextPaint textPaint5 = this.f30488e;
        textPaint5.setColor(obtainStyledAttributes.getColor(19, textPaint5.getColor()));
        TextPaint textPaint6 = this.f30488e;
        textPaint6.setTextSize(obtainStyledAttributes.getDimension(20, textPaint6.getTextSize()));
        String string = obtainStyledAttributes.getString(17);
        if (string == null) {
            string = this.f30489f;
        }
        setUnit(string);
        setTrembleDegree(obtainStyledAttributes.getFloat(15, this.f30497n));
        setTrembleDuration(obtainStyledAttributes.getInt(16, this.f30498o));
        setSpeedometerTextRightToLeft(obtainStyledAttributes.getBoolean(12, this.f30471E));
        setAccelerate(obtainStyledAttributes.getFloat(0, this.f30476J));
        setDecelerate(obtainStyledAttributes.getFloat(1, this.f30477K));
        setUnitUnderSpeedText(obtainStyledAttributes.getBoolean(21, this.f30481O));
        setUnitSpeedInterval(obtainStyledAttributes.getDimension(18, this.f30479M));
        setSpeedTextPadding(obtainStyledAttributes.getDimension(6, this.f30480N));
        String string2 = obtainStyledAttributes.getString(9);
        if (string2 != null && !isInEditMode()) {
            setSpeedTextTypeface(Typeface.createFromAsset(context.getAssets(), string2));
        }
        String string3 = obtainStyledAttributes.getString(14);
        if (string3 != null && !isInEditMode()) {
            setTextTypeface(Typeface.createFromAsset(context.getAssets(), string3));
        }
        int i10 = obtainStyledAttributes.getInt(7, -1);
        if (i10 != -1) {
            setSpeedTextPosition(a.values()[i10]);
        }
        int i11 = obtainStyledAttributes.getInt(5, -1);
        if (i11 == 0) {
            setSpeedTextListener(new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    CharSequence D10;
                    D10 = j.D(j.this, ((Float) obj).floatValue());
                    return D10;
                }
            });
        } else if (i11 == 1) {
            setSpeedTextListener(new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    CharSequence E10;
                    E10 = j.E(j.this, ((Float) obj).floatValue());
                    return E10;
                }
            });
        }
        obtainStyledAttributes.recycle();
        o();
        p();
        t();
    }

    public static final CharSequence D(j jVar, float f10) {
        String format = String.format(jVar.f30475I, "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
        M.o(format, "format(...)");
        return format;
    }

    public static final CharSequence E(j jVar, float f10) {
        String format = String.format(jVar.f30475I, "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
        M.o(format, "format(...)");
        return format;
    }

    public static final void M(j jVar, float f10, ValueAnimator it) {
        M.p(it, "it");
        if (jVar.f30496m) {
            jVar.setCurrentSpeed(jVar.f30495l + (jVar.f30476J * 10.0f * (100.005f - jVar.getPercentSpeed()) * 0.01f));
            if (jVar.f30495l > f10) {
                jVar.setCurrentSpeed(f10);
            }
        } else {
            jVar.setCurrentSpeed(jVar.f30495l - ((((jVar.f30477K * 10.0f) * (jVar.getPercentSpeed() + 0.005f)) * 0.01f) + 0.1f));
            if (jVar.f30495l < f10) {
                jVar.setCurrentSpeed(f10);
            }
        }
        jVar.postInvalidate();
        if (f10 == jVar.f30495l) {
            jVar.a0();
        }
    }

    public static void T(j jVar, int i10, long j10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: speedPercentTo");
        }
        if ((i11 & 2) != 0) {
            j10 = FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS;
        }
        jVar.S(i10, j10);
    }

    public static final CharSequence U(j jVar, float f10) {
        String format = String.format(jVar.f30475I, "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
        M.o(format, "format(...)");
        return format;
    }

    public static void X(j jVar, float f10, long j10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: speedTo");
        }
        if ((i10 & 2) != 0) {
            j10 = FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS;
        }
        jVar.W(f10, j10);
    }

    public static final void Y(j jVar, ValueAnimator animation) {
        M.p(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        M.n(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        jVar.setCurrentSpeed(((Float) animatedValue).floatValue());
        jVar.postInvalidate();
    }

    public static final void c0(j jVar, ValueAnimator animation) {
        M.p(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        M.n(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        jVar.f30496m = ((Float) animatedValue).floatValue() > jVar.f30495l;
        Object animatedValue2 = animation.getAnimatedValue();
        M.n(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
        jVar.setCurrentSpeed(((Float) animatedValue2).floatValue());
        jVar.postInvalidate();
    }

    private final float getSpeedUnitTextHeight() {
        return this.f30481O ? this.f30487d.getTextSize() + this.f30488e.getTextSize() + this.f30479M : Math.max(this.f30487d.getTextSize(), this.f30488e.getTextSize());
    }

    private final float getSpeedUnitTextWidth() {
        return this.f30481O ? Math.max(this.f30487d.measureText(getSpeedText().toString()), this.f30488e.measureText(this.f30489f)) : this.f30487d.measureText(getSpeedText().toString()) + this.f30488e.measureText(this.f30489f) + this.f30479M;
    }

    public static final P0 h(float f10, Zg.a it) {
        M.p(it, "it");
        it.C(f10);
        return P0.f98194a;
    }

    private final void setCurrentSpeed(float f10) {
        this.f30495l = f10;
        s();
        r();
    }

    private final void setSpeedTextPadding(float f10) {
        this.f30480N = f10;
        if (this.f30472F) {
            invalidate();
        }
    }

    private final void setUnitSpeedInterval(float f10) {
        this.f30479M = f10;
        F();
    }

    public final float A(float f10) {
        return f10 > 100.0f ? getMaxSpeed() : f10 < 0.0f ? getMinSpeed() : (f10 * (getMaxSpeed() - getMinSpeed()) * 0.01f) + getMinSpeed();
    }

    public final void F() {
        if (this.f30472F) {
            d0();
            invalidate();
        }
    }

    public final boolean G() {
        return this.f30496m;
    }

    public final void H(int i10, int i11, @NotNull Zg.b style) {
        M.p(style, "style");
        Iterator<Zg.a> it = this.f30468B.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
        this.f30468B.clear();
        float f10 = 1.0f / i10;
        int i12 = 0;
        float f11 = 0.0f;
        float f12 = f10;
        while (i12 < i10) {
            this.f30468B.add(new Zg.a(f11, f12, i11, getSpeedometerWidth(), style).i(this));
            i12++;
            f11 = f12;
            f12 += f10;
        }
        F();
    }

    public final void I(@Nullable Zg.a aVar, @Nullable Zg.a aVar2) {
        Mf.p<? super Zg.a, ? super Zg.a, P0> pVar = this.f30504u;
        if (pVar != null) {
            pVar.invoke(aVar, aVar2);
        }
    }

    public final float J(float f10) {
        return f10 / getContext().getResources().getDisplayMetrics().density;
    }

    public final void K(float f10) {
        L(A(f10));
    }

    public final void L(final float f10) {
        boolean z10 = this.f30493j > this.f30495l;
        if (f10 > getMaxSpeed()) {
            f10 = getMaxSpeed();
        } else if (f10 < getMinSpeed()) {
            f10 = getMinSpeed();
        }
        if (f10 == this.f30493j) {
            return;
        }
        this.f30493j = f10;
        this.f30496m = f10 > this.f30495l;
        ValueAnimator valueAnimator = this.f30501r;
        if (valueAnimator != null && valueAnimator.isRunning() && z10 == this.f30496m) {
            return;
        }
        l();
        ValueAnimator ofInt = ValueAnimator.ofInt((int) this.f30495l, (int) f10);
        ofInt.setRepeatCount(-1);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.setDuration(Math.abs((f10 - this.f30495l) * 10));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                j.M(j.this, f10, valueAnimator2);
            }
        });
        ofInt.addListener(this.f30505v);
        this.f30501r = ofInt;
        ofInt.start();
    }

    public final void N(@Nullable Zg.a aVar) {
        if (aVar != null) {
            aVar.b();
        }
        w0.a(this.f30468B).remove(aVar);
        F();
    }

    public final void O(float f10, float f11) {
        if (f10 >= f11) {
            throw new IllegalArgumentException("minSpeed must be smaller than maxSpeed !!");
        }
        l();
        this.f30491h = f10;
        this.f30492i = f11;
        r();
        F();
        if (this.f30472F) {
            setSpeedAt(this.f30493j);
        }
    }

    public final void P(float f10, int i10) {
        setTrembleDegree(f10);
        setTrembleDuration(i10);
    }

    public final void Q() {
        L(0.0f);
    }

    @Lf.k
    public final void R(int i10) {
        T(this, i10, 0L, 2, null);
    }

    @Lf.k
    public final void S(int i10, long j10) {
        W(A(i10), j10);
    }

    @Lf.k
    public final void V(float f10) {
        X(this, f10, 0L, 2, null);
    }

    @Lf.k
    public final void W(float f10, long j10) {
        if (f10 > getMaxSpeed()) {
            f10 = getMaxSpeed();
        } else if (f10 < getMinSpeed()) {
            f10 = getMinSpeed();
        }
        if (f10 == this.f30493j) {
            return;
        }
        this.f30493j = f10;
        this.f30496m = f10 > this.f30495l;
        l();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f30495l, f10);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.setDuration(j10);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                j.Y(j.this, valueAnimator);
            }
        });
        ofFloat.addListener(this.f30505v);
        this.f30499p = ofFloat;
        ofFloat.start();
    }

    public final void Z() {
        L(getMaxSpeed());
    }

    public final void a0() {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2 = this.f30499p;
        if (valueAnimator2 == null || valueAnimator2.isRunning() || (valueAnimator = this.f30501r) == null || valueAnimator.isRunning()) {
            this.f30493j = this.f30495l;
            l();
            b0();
        }
    }

    public final void b0() {
        float minSpeed;
        float f10;
        n();
        if (this.f30490g) {
            Random random = new Random();
            float nextFloat = this.f30497n * random.nextFloat() * (random.nextBoolean() ? -1 : 1);
            if (this.f30493j + nextFloat <= getMaxSpeed()) {
                if (this.f30493j + nextFloat < getMinSpeed()) {
                    minSpeed = getMinSpeed();
                    f10 = this.f30493j;
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f30495l, this.f30493j + nextFloat);
                ofFloat.setInterpolator(new DecelerateInterpolator());
                ofFloat.setDuration(this.f30498o);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        j.c0(j.this, valueAnimator);
                    }
                });
                ofFloat.addListener(this.f30505v);
                this.f30500q = ofFloat;
                ofFloat.start();
            }
            minSpeed = getMaxSpeed();
            f10 = this.f30493j;
            nextFloat = minSpeed - f10;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.f30495l, this.f30493j + nextFloat);
            ofFloat2.setInterpolator(new DecelerateInterpolator());
            ofFloat2.setDuration(this.f30498o);
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    j.c0(j.this, valueAnimator);
                }
            });
            ofFloat2.addListener(this.f30505v);
            this.f30500q = ofFloat2;
            ofFloat2.start();
        }
    }

    public abstract void d0();

    public final void e0(int i10, int i11, int i12, int i13) {
        this.f30508y = Math.max(Math.max(i10, i12), Math.max(i11, i13));
        this.f30509z = getWidth() - (this.f30508y * 2);
        this.f30467A = getHeight() - (this.f30508y * 2);
    }

    public final void f0(String str) {
        float width;
        float measureText;
        this.f30482P.eraseColor(0);
        if (this.f30481O) {
            Canvas canvas = this.f30483Q;
            if (canvas != null) {
                canvas.drawText(str, this.f30482P.getWidth() * 0.5f, (this.f30482P.getHeight() * 0.5f) - (this.f30479M * 0.5f), this.f30487d);
            }
            Canvas canvas2 = this.f30483Q;
            if (canvas2 != null) {
                canvas2.drawText(this.f30489f, this.f30482P.getWidth() * 0.5f, (this.f30482P.getHeight() * 0.5f) + this.f30488e.getTextSize() + (this.f30479M * 0.5f), this.f30488e);
                return;
            }
            return;
        }
        if (this.f30471E) {
            measureText = (this.f30482P.getWidth() * 0.5f) - (getSpeedUnitTextWidth() * 0.5f);
            width = this.f30488e.measureText(this.f30489f) + measureText + this.f30479M;
        } else {
            width = (this.f30482P.getWidth() * 0.5f) - (getSpeedUnitTextWidth() * 0.5f);
            measureText = this.f30487d.measureText(str) + width + this.f30479M;
        }
        float height = (this.f30482P.getHeight() * 0.5f) + (getSpeedUnitTextHeight() * 0.5f);
        Canvas canvas3 = this.f30483Q;
        if (canvas3 != null) {
            canvas3.drawText(str, width, height, this.f30487d);
        }
        Canvas canvas4 = this.f30483Q;
        if (canvas4 != null) {
            canvas4.drawText(this.f30489f, measureText, height, this.f30488e);
        }
    }

    public final float getAccelerate() {
        return this.f30476J;
    }

    @NotNull
    public final Bitmap getBackgroundBitmap() {
        return this.f30506w;
    }

    public final int getCurrentIntSpeed() {
        return this.f30494k;
    }

    @Nullable
    public final Zg.a getCurrentSection() {
        return this.f30469C;
    }

    public final float getCurrentSpeed() {
        return this.f30495l;
    }

    public final float getDecelerate() {
        return this.f30477K;
    }

    public final int getHeightPa() {
        return this.f30467A;
    }

    @NotNull
    public final Locale getLocale() {
        return this.f30475I;
    }

    public final float getMaxSpeed() {
        return this.f30492i;
    }

    public final float getMinSpeed() {
        return this.f30491h;
    }

    public final float getOffsetSpeed() {
        return (this.f30495l - getMinSpeed()) / (getMaxSpeed() - getMinSpeed());
    }

    @Nullable
    public final Mf.p<Zg.a, Zg.a, P0> getOnSectionChangeListener() {
        return this.f30504u;
    }

    @Nullable
    public final Mf.q<j, Boolean, Boolean, P0> getOnSpeedChangeListener() {
        return this.f30503t;
    }

    public final int getPadding() {
        return this.f30508y;
    }

    public final float getPercentSpeed() {
        return ((this.f30495l - getMinSpeed()) * 100.0f) / (getMaxSpeed() - getMinSpeed());
    }

    @NotNull
    public final List<Zg.a> getSections() {
        return this.f30468B;
    }

    public final float getSpeed() {
        return this.f30493j;
    }

    @NotNull
    public final CharSequence getSpeedText() {
        return this.f30484R.invoke(Float.valueOf(this.f30495l));
    }

    public final int getSpeedTextColor() {
        return this.f30487d.getColor();
    }

    @NotNull
    public final Mf.l<Float, CharSequence> getSpeedTextListener() {
        return this.f30484R;
    }

    @NotNull
    public final a getSpeedTextPosition() {
        return this.f30478L;
    }

    public final float getSpeedTextSize() {
        return this.f30487d.getTextSize();
    }

    @Nullable
    public final Typeface getSpeedTextTypeface() {
        return this.f30487d.getTypeface();
    }

    @NotNull
    public final RectF getSpeedUnitTextBounds() {
        float h10 = ((((this.f30509z * this.f30478L.h()) - this.f30473G) + this.f30508y) - (getSpeedUnitTextWidth() * this.f30478L.g())) + (this.f30480N * this.f30478L.d());
        float i10 = ((((this.f30467A * this.f30478L.i()) - this.f30474H) + this.f30508y) - (getSpeedUnitTextHeight() * this.f30478L.c())) + (this.f30480N * this.f30478L.e());
        return new RectF(h10, i10, getSpeedUnitTextWidth() + h10, getSpeedUnitTextHeight() + i10);
    }

    public final boolean getSpeedometerTextRightToLeft() {
        return this.f30471E;
    }

    public float getSpeedometerWidth() {
        return this.f30470D;
    }

    public final int getTextColor() {
        return this.f30486c.getColor();
    }

    @NotNull
    public final TextPaint getTextPaint() {
        return this.f30486c;
    }

    public final float getTextSize() {
        return this.f30486c.getTextSize();
    }

    @Nullable
    public final Typeface getTextTypeface() {
        return this.f30486c.getTypeface();
    }

    public final float getTranslatedDx() {
        return this.f30473G;
    }

    public final float getTranslatedDy() {
        return this.f30474H;
    }

    public final float getTrembleDegree() {
        return this.f30497n;
    }

    public final int getTrembleDuration() {
        return this.f30498o;
    }

    @NotNull
    public final String getUnit() {
        return this.f30489f;
    }

    public final int getUnitTextColor() {
        return this.f30488e.getColor();
    }

    public final float getUnitTextSize() {
        return this.f30488e.getTextSize();
    }

    public final boolean getUnitUnderSpeedText() {
        return this.f30481O;
    }

    public final int getViewSize() {
        return Math.max(getWidth(), getHeight());
    }

    public final int getViewSizePa() {
        return Math.max(this.f30509z, this.f30467A);
    }

    public final int getWidthPa() {
        return this.f30509z;
    }

    public final boolean getWithTremble() {
        return this.f30490g;
    }

    @Override
    public boolean isAttachedToWindow() {
        return this.f30472F;
    }

    public final void j(@NotNull List<Zg.a> sections) {
        M.p(sections, "sections");
        for (Zg.a aVar : sections) {
            this.f30468B.add(aVar.i(this));
            q(aVar);
        }
        F();
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        ValueAnimator valueAnimator = this.f30500q;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        n();
    }

    public final void k(@NotNull Zg.a... sections) {
        M.p(sections, "sections");
        j(C14985q.t(sections));
    }

    public final void l() {
        m();
        n();
    }

    public final void m() {
        this.f30502s = true;
        ValueAnimator valueAnimator = this.f30499p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f30501r;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.f30502s = false;
    }

    public final void n() {
        this.f30502s = true;
        ValueAnimator valueAnimator = this.f30500q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f30502s = false;
        this.f30500q = null;
    }

    public final void o() {
        float f10 = this.f30476J;
        if (f10 > 1.0f || f10 <= 0.0f) {
            throw new IllegalArgumentException("accelerate must be between (0, 1]");
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f30472F = true;
        if (isInEditMode()) {
            return;
        }
        d0();
        invalidate();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
        this.f30472F = false;
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.translate(this.f30473G, this.f30474H);
        canvas.drawBitmap(this.f30506w, 0.0f, 0.0f, this.f30507x);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        int i14;
        super.onSizeChanged(i10, i11, i12, i13);
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        int i15 = this.f30509z;
        if (i15 > 0 && (i14 = this.f30467A) > 0) {
            Bitmap createBitmap = Bitmap.createBitmap(i15, i14, Bitmap.Config.ARGB_8888);
            M.o(createBitmap, "createBitmap(...)");
            this.f30482P = createBitmap;
        }
        this.f30483Q = new Canvas(this.f30482P);
    }

    @Override
    public void onVisibilityAggregated(boolean z10) {
        ValueAnimator valueAnimator;
        super.onVisibilityAggregated(z10);
        ValueAnimator valueAnimator2 = this.f30499p;
        if (valueAnimator2 == null || valueAnimator2.isRunning() || (valueAnimator = this.f30501r) == null || valueAnimator.isRunning()) {
            return;
        }
        if (z10) {
            b0();
        } else {
            n();
        }
    }

    public final void p() {
        float f10 = this.f30477K;
        if (f10 > 1.0f || f10 <= 0.0f) {
            throw new IllegalArgumentException("decelerate must be between (0, 1]");
        }
    }

    public final void q(@NotNull Zg.a section) {
        M.p(section, "section");
        int indexOf = this.f30468B.indexOf(section);
        if (section.f() >= section.d()) {
            throw new IllegalArgumentException("endOffset must be bigger than startOffset");
        }
        Zg.a aVar = (Zg.a) S.b3(this.f30468B, indexOf - 1);
        if (aVar != null && (aVar.d() > section.f() || aVar.d() >= section.d())) {
            throw new IllegalArgumentException(("Section at index (" + indexOf + ") is conflicted with previous section").toString());
        }
        Zg.a aVar2 = (Zg.a) S.b3(this.f30468B, indexOf + 1);
        if (aVar2 != null) {
            if (aVar2.f() < section.d() || aVar2.f() <= section.f()) {
                throw new IllegalArgumentException(("Section at index (" + indexOf + ") is conflicted with next section").toString());
            }
        }
    }

    public final void r() {
        Zg.a z10 = z();
        Zg.a aVar = this.f30469C;
        if (aVar != z10) {
            I(aVar, z10);
            this.f30469C = z10;
        }
    }

    public final void s() {
        int i10 = (int) this.f30495l;
        if (i10 != this.f30494k && this.f30503t != null) {
            ValueAnimator valueAnimator = this.f30500q;
            boolean z10 = valueAnimator != null && valueAnimator.isRunning();
            boolean z11 = i10 > this.f30494k;
            int i11 = z11 ? 1 : -1;
            while (true) {
                int i12 = this.f30494k;
                if (i12 == i10) {
                    break;
                }
                this.f30494k = i12 + i11;
                Mf.q<? super j, ? super Boolean, ? super Boolean, P0> qVar = this.f30503t;
                M.m(qVar);
                qVar.n(this, Boolean.valueOf(z11), Boolean.valueOf(z10));
            }
        }
        this.f30494k = i10;
    }

    public final void setAccelerate(float f10) {
        this.f30476J = f10;
        o();
    }

    public final void setBackgroundBitmap(@NotNull Bitmap bitmap) {
        M.p(bitmap, "<set-?>");
        this.f30506w = bitmap;
    }

    public final void setDecelerate(float f10) {
        this.f30477K = f10;
        p();
    }

    public final void setLocale(@NotNull Locale locale) {
        M.p(locale, "locale");
        this.f30475I = locale;
        if (this.f30472F) {
            invalidate();
        }
    }

    public final void setMaxSpeed(float f10) {
        O(getMinSpeed(), f10);
    }

    public final void setMinSpeed(float f10) {
        O(f10, getMaxSpeed());
    }

    public final void setOnSectionChangeListener(@Nullable Mf.p<? super Zg.a, ? super Zg.a, P0> pVar) {
        this.f30504u = pVar;
    }

    public final void setOnSpeedChangeListener(@Nullable Mf.q<? super j, ? super Boolean, ? super Boolean, P0> qVar) {
        this.f30503t = qVar;
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
        e0(i10, i11, i12, i13);
        int i14 = this.f30508y;
        super.setPadding(i14, i14, i14, i14);
    }

    @Override
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        e0(i10, i11, i12, i13);
        int i14 = this.f30508y;
        super.setPaddingRelative(i14, i14, i14, i14);
    }

    public final void setSpeedAt(float f10) {
        if (f10 > getMaxSpeed()) {
            f10 = getMaxSpeed();
        } else if (f10 < getMinSpeed()) {
            f10 = getMinSpeed();
        }
        this.f30496m = f10 > this.f30495l;
        this.f30493j = f10;
        setCurrentSpeed(f10);
        l();
        invalidate();
        b0();
    }

    public final void setSpeedTextColor(int i10) {
        this.f30487d.setColor(i10);
        if (this.f30472F) {
            invalidate();
        }
    }

    public final void setSpeedTextListener(@NotNull Mf.l<? super Float, ? extends CharSequence> speedTextFormat) {
        M.p(speedTextFormat, "speedTextFormat");
        this.f30484R = speedTextFormat;
        F();
    }

    public final void setSpeedTextPosition(@NotNull a speedTextPosition) {
        M.p(speedTextPosition, "speedTextPosition");
        this.f30478L = speedTextPosition;
        F();
    }

    public final void setSpeedTextSize(float f10) {
        this.f30487d.setTextSize(f10);
        if (this.f30472F) {
            invalidate();
        }
    }

    public final void setSpeedTextTypeface(@Nullable Typeface typeface) {
        this.f30487d.setTypeface(typeface);
        this.f30488e.setTypeface(typeface);
        F();
    }

    public final void setSpeedometerTextRightToLeft(boolean z10) {
        this.f30471E = z10;
        F();
    }

    public void setSpeedometerWidth(final float f10) {
        this.f30470D = f10;
        C4189a.a(this, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                P0 h10;
                h10 = j.h(f10, (Zg.a) obj);
                return h10;
            }
        });
        if (isAttachedToWindow()) {
            F();
        }
    }

    public final void setTextColor(int i10) {
        this.f30486c.setColor(i10);
        F();
    }

    public final void setTextPaint(@NotNull TextPaint textPaint) {
        M.p(textPaint, "<set-?>");
        this.f30486c = textPaint;
    }

    public final void setTextSize(float f10) {
        this.f30486c.setTextSize(f10);
        if (this.f30472F) {
            invalidate();
        }
    }

    public final void setTextTypeface(@Nullable Typeface typeface) {
        this.f30486c.setTypeface(typeface);
        F();
    }

    public final void setTranslatedDx(float f10) {
        this.f30473G = f10;
    }

    public final void setTranslatedDy(float f10) {
        this.f30474H = f10;
    }

    public final void setTrembleDegree(float f10) {
        this.f30497n = f10;
        t();
    }

    public final void setTrembleDuration(int i10) {
        this.f30498o = i10;
        t();
    }

    public final void setUnit(@NotNull String unit) {
        M.p(unit, "unit");
        this.f30489f = unit;
        if (this.f30472F) {
            invalidate();
        }
    }

    public final void setUnitTextColor(int i10) {
        this.f30488e.setColor(i10);
        if (this.f30472F) {
            invalidate();
        }
    }

    public final void setUnitTextSize(float f10) {
        this.f30488e.setTextSize(f10);
        F();
    }

    public final void setUnitUnderSpeedText(boolean z10) {
        this.f30481O = z10;
        if (z10) {
            TextPaint textPaint = this.f30487d;
            Paint.Align align = Paint.Align.CENTER;
            textPaint.setTextAlign(align);
            this.f30488e.setTextAlign(align);
        } else {
            TextPaint textPaint2 = this.f30487d;
            Paint.Align align2 = Paint.Align.LEFT;
            textPaint2.setTextAlign(align2);
            this.f30488e.setTextAlign(align2);
        }
        F();
    }

    public final void setWithTremble(boolean z10) {
        this.f30490g = z10;
        b0();
    }

    public final void t() {
        if (this.f30497n < 0.0f) {
            throw new IllegalArgumentException("trembleDegree  can't be Negative");
        }
        if (this.f30498o < 0) {
            throw new IllegalArgumentException("trembleDuration  can't be Negative");
        }
    }

    public final void u() {
        Iterator<Zg.a> it = this.f30468B.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
        this.f30468B.clear();
        F();
    }

    @Override
    public void update(@Nullable Observable observable, @Nullable Object obj) {
        F();
    }

    @NotNull
    public Canvas v() {
        if (getWidth() == 0 || getHeight() == 0) {
            return new Canvas();
        }
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        M.o(createBitmap, "createBitmap(...)");
        this.f30506w = createBitmap;
        return new Canvas(this.f30506w);
    }

    public abstract void w();

    public final float x(float f10) {
        return f10 * getContext().getResources().getDisplayMetrics().density;
    }

    public final void y(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        RectF speedUnitTextBounds = getSpeedUnitTextBounds();
        f0(getSpeedText().toString());
        canvas.drawBitmap(this.f30482P, (speedUnitTextBounds.left - (r1.getWidth() * 0.5f)) + (speedUnitTextBounds.width() * 0.5f), (speedUnitTextBounds.top - (this.f30482P.getHeight() * 0.5f)) + (speedUnitTextBounds.height() * 0.5f), this.f30485b);
    }

    public final Zg.a z() {
        for (Zg.a aVar : this.f30468B) {
            if (((getMaxSpeed() - getMinSpeed()) * aVar.f()) + getMinSpeed() <= this.f30495l && ((getMaxSpeed() - getMinSpeed()) * aVar.d()) + getMinSpeed() >= this.f30495l) {
                return aVar;
            }
        }
        return null;
    }

    public j(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
