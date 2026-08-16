package bh;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import bh.b;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nNote.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Note.kt\norg/anastr/speedviewlib/components/note/Note\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n1#2:269\n*E\n"})
public abstract class b<N extends b<? extends N>> {

    @NotNull
    public static final C0890b f33193q = new C0890b(null);

    public static final int f33194r = -1;

    public final float f33195a;

    @NotNull
    public final Paint f33196b;

    @NotNull
    public final Paint f33197c;

    public float f33198d;

    public float f33199e;

    public float f33200f;

    public float f33201g;

    @NotNull
    public Bitmap f33202h;

    @NotNull
    public c f33203i;

    @NotNull
    public a f33204j;

    public int f33205k;

    public int f33206l;

    public int f33207m;

    public int f33208n;

    public float f33209o;

    public float f33210p;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final Cf.a $ENTRIES;
        private static final a[] $VALUES;
        public static final a Left = new a("Left", 0);
        public static final a Top = new a("Top", 1);
        public static final a Right = new a("Right", 2);
        public static final a Bottom = new a("Bottom", 3);

        static {
            a[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public a(String str, int i10) {
        }

        public static final a[] a() {
            return new a[]{Left, Top, Right, Bottom};
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
    }

    public static final class C0890b {
        public C0890b(C14026x c14026x) {
            this();
        }

        public C0890b() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c {
        private static final Cf.a $ENTRIES;
        private static final c[] $VALUES;
        public static final c TopIndicator = new c("TopIndicator", 0);
        public static final c CenterIndicator = new c("CenterIndicator", 1);
        public static final c BottomIndicator = new c("BottomIndicator", 2);
        public static final c TopSpeedometer = new c("TopSpeedometer", 3);
        public static final c CenterSpeedometer = new c("CenterSpeedometer", 4);
        public static final c QuarterSpeedometer = new c("QuarterSpeedometer", 5);

        static {
            c[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public c(String str, int i10) {
        }

        public static final c[] a() {
            return new c[]{TopIndicator, CenterIndicator, BottomIndicator, TopSpeedometer, CenterSpeedometer, QuarterSpeedometer};
        }

        @NotNull
        public static Cf.a<c> b() {
            return $ENTRIES;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    public static final class d {

        public static final int[] f33211a;

        static {
            int[] iArr = new int[a.values().length];
            try {
                iArr[a.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[a.Top.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[a.Right.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[a.Bottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f33211a = iArr;
        }
    }

    public b(@NotNull Context context) {
        M.p(context, "context");
        this.f33195a = context.getResources().getDisplayMetrics().density;
        this.f33196b = new Paint(1);
        Paint paint = new Paint(1);
        this.f33197c = paint;
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        M.o(createBitmap, "createBitmap(...)");
        this.f33202h = createBitmap;
        this.f33203i = c.CenterIndicator;
        this.f33204j = a.Top;
        this.f33209o = 5.0f;
        this.f33210p = f(12.0f);
        paint.setColor(-2697257);
        q(f(7.0f), f(7.0f), f(7.0f), f(7.0f));
    }

    public final void a(Canvas canvas) {
        RectF rectF = new RectF(0.0f, this.f33210p + 0.0f, this.f33205k, this.f33206l);
        Path path = new Path();
        path.moveTo(this.f33205k / 2.0f, 0.0f);
        float f10 = 1;
        path.lineTo((this.f33205k / 2.0f) - f(9.0f), rectF.top + f10);
        path.lineTo((this.f33205k / 2.0f) + f(9.0f), rectF.top + f10);
        canvas.drawPath(path, this.f33197c);
        float f11 = this.f33209o;
        canvas.drawRoundRect(rectF, f11, f11, this.f33197c);
    }

    public final void b(Canvas canvas) {
        RectF rectF = new RectF(0.0f, 0.0f, this.f33205k - this.f33210p, this.f33206l);
        Path path = new Path();
        path.moveTo(this.f33205k, this.f33206l / 2.0f);
        float f10 = 1;
        path.lineTo(rectF.right - f10, (this.f33206l / 2.0f) - f(9.0f));
        path.lineTo(rectF.right - f10, (this.f33206l / 2.0f) + f(9.0f));
        canvas.drawPath(path, this.f33197c);
        float f11 = this.f33209o;
        canvas.drawRoundRect(rectF, f11, f11, this.f33197c);
    }

    public final void c(Canvas canvas) {
        RectF rectF = new RectF(this.f33210p + 0.0f, 0.0f, this.f33205k, this.f33206l);
        Path path = new Path();
        path.moveTo(0.0f, this.f33206l / 2.0f);
        float f10 = 1;
        path.lineTo(rectF.left + f10, (this.f33206l / 2.0f) - f(9.0f));
        path.lineTo(rectF.left + f10, (this.f33206l / 2.0f) + f(9.0f));
        canvas.drawPath(path, this.f33197c);
        float f11 = this.f33209o;
        canvas.drawRoundRect(rectF, f11, f11, this.f33197c);
    }

    public final void d(Canvas canvas) {
        RectF rectF = new RectF(0.0f, 0.0f, this.f33205k, this.f33206l - this.f33210p);
        Path path = new Path();
        path.moveTo(this.f33205k / 2.0f, this.f33206l);
        float f10 = 1;
        path.lineTo((this.f33205k / 2.0f) - f(9.0f), rectF.bottom - f10);
        path.lineTo((this.f33205k / 2.0f) + f(9.0f), rectF.bottom - f10);
        canvas.drawPath(path, this.f33197c);
        float f11 = this.f33209o;
        canvas.drawRoundRect(rectF, f11, f11, this.f33197c);
    }

    public abstract void e(int i10);

    public final float f(float f10) {
        return f10 * this.f33195a;
    }

    public final void g(@NotNull Canvas canvas, float f10, float f11) {
        M.p(canvas, "canvas");
        int i10 = d.f33211a[this.f33204j.ordinal()];
        if (i10 == 1) {
            canvas.drawBitmap(this.f33202h, f10 - this.f33205k, f11 - (this.f33206l / 2.0f), this.f33196b);
            h(canvas, (f10 - this.f33205k) + this.f33198d, (f11 - (this.f33206l / 2.0f)) + this.f33199e);
            return;
        }
        if (i10 == 2) {
            canvas.drawBitmap(this.f33202h, f10 - (this.f33205k / 2.0f), f11 - this.f33206l, this.f33196b);
            h(canvas, f10 - (this.f33207m / 2.0f), (f11 - this.f33206l) + this.f33199e);
        } else if (i10 == 3) {
            canvas.drawBitmap(this.f33202h, f10, f11 - (this.f33206l / 2.0f), this.f33196b);
            h(canvas, f10 + this.f33210p + this.f33198d, (f11 - (this.f33206l / 2.0f)) + this.f33199e);
        } else {
            if (i10 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            canvas.drawBitmap(this.f33202h, f10 - (this.f33205k / 2.0f), f11, this.f33196b);
            h(canvas, f10 - (this.f33207m / 2.0f), f11 + this.f33210p + this.f33199e);
        }
    }

    public abstract void h(@NotNull Canvas canvas, float f10, float f11);

    @NotNull
    public final a i() {
        return this.f33204j;
    }

    public final int j() {
        return this.f33197c.getColor();
    }

    public final float k() {
        return this.f33209o;
    }

    @NotNull
    public final c l() {
        return this.f33203i;
    }

    public final void m(int i10, int i11) {
        this.f33207m = i10;
        this.f33208n = i11;
        a aVar = this.f33204j;
        if (aVar == a.Top || aVar == a.Bottom) {
            this.f33205k = (int) (i10 + this.f33198d + this.f33200f);
            this.f33206l = (int) (i11 + this.f33199e + this.f33201g + this.f33210p);
        } else {
            this.f33205k = (int) (i10 + this.f33198d + this.f33200f + this.f33210p);
            this.f33206l = (int) (i11 + this.f33199e + this.f33201g);
        }
        s();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final N n(@NotNull a align) {
        M.p(align, "align");
        this.f33204j = align;
        M.n(this, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note");
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final N o(int i10) {
        this.f33197c.setColor(i10);
        M.n(this, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note");
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final N p(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("cornersRound cannot be negative");
        }
        this.f33209o = f10;
        M.n(this, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note");
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final N q(float f10, float f11, float f12, float f13) {
        this.f33198d = f10;
        this.f33199e = f11;
        this.f33200f = f12;
        this.f33201g = f13;
        m(this.f33207m, this.f33208n);
        M.n(this, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note");
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final N r(@NotNull c position) {
        M.p(position, "position");
        this.f33203i = position;
        M.n(this, "null cannot be cast to non-null type N of org.anastr.speedviewlib.components.note.Note");
        return this;
    }

    public final void s() {
        int i10;
        int i11 = this.f33205k;
        if (i11 <= 0 || (i10 = this.f33206l) <= 0) {
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i11, i10, Bitmap.Config.ARGB_8888);
        M.o(createBitmap, "createBitmap(...)");
        this.f33202h = createBitmap;
        Canvas canvas = new Canvas(this.f33202h);
        int i12 = d.f33211a[this.f33204j.ordinal()];
        if (i12 == 1) {
            b(canvas);
            return;
        }
        if (i12 == 2) {
            d(canvas);
        } else if (i12 == 3) {
            c(canvas);
        } else {
            if (i12 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            a(canvas);
        }
    }
}
