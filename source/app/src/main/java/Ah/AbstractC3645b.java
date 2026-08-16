package ah;

import Yg.v;
import ah.AbstractC3645b;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.Observable;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indicator.kt\norg/anastr/speedviewlib/components/indicators/Indicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"})
public abstract class AbstractC3645b<I extends AbstractC3645b<? extends I>> extends Observable {

    @NotNull
    public static final a f32191f = new a(null);

    @NotNull
    public Paint f32192a;

    public final float f32193b;

    @Nullable
    public v f32194c;

    public float f32195d;

    public int f32196e;

    public static final class a {

        public static final class C0861a {

            public static final int[] f32197a;

            static {
                int[] iArr = new int[EnumC0862b.values().length];
                try {
                    iArr[EnumC0862b.NoIndicator.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EnumC0862b.NormalIndicator.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EnumC0862b.NormalSmallIndicator.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[EnumC0862b.TriangleIndicator.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[EnumC0862b.SpindleIndicator.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[EnumC0862b.LineIndicator.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[EnumC0862b.HalfLineIndicator.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[EnumC0862b.QuarterLineIndicator.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[EnumC0862b.KiteIndicator.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[EnumC0862b.NeedleIndicator.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                f32197a = iArr;
            }
        }

        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final AbstractC3645b<?> a(@NotNull Context context, @NotNull v speedometer, @NotNull EnumC0862b indicator) {
            AbstractC3645b c3649f;
            M.p(context, "context");
            M.p(speedometer, "speedometer");
            M.p(indicator, "indicator");
            switch (C0861a.f32197a[indicator.ordinal()]) {
                case 1:
                    c3649f = new C3649f(context);
                    break;
                case 2:
                    c3649f = new C3650g(context);
                    break;
                case 3:
                    c3649f = new C3651h(context);
                    break;
                case 4:
                    c3649f = new C3653j(context);
                    break;
                case 5:
                    c3649f = new C3652i(context);
                    break;
                case 6:
                    c3649f = new C3647d(context, 1.0f);
                    break;
                case 7:
                    c3649f = new C3647d(context, 0.5f);
                    break;
                case 8:
                    c3649f = new C3647d(context, 0.25f);
                    break;
                case 9:
                    c3649f = new C3646c(context);
                    break;
                case 10:
                    c3649f = new C3648e(context);
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return c3649f.p(speedometer);
        }

        public a() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class EnumC0862b {
        private static final Cf.a $ENTRIES;
        private static final EnumC0862b[] $VALUES;
        public static final EnumC0862b NoIndicator = new EnumC0862b("NoIndicator", 0);
        public static final EnumC0862b NormalIndicator = new EnumC0862b("NormalIndicator", 1);
        public static final EnumC0862b NormalSmallIndicator = new EnumC0862b("NormalSmallIndicator", 2);
        public static final EnumC0862b TriangleIndicator = new EnumC0862b("TriangleIndicator", 3);
        public static final EnumC0862b SpindleIndicator = new EnumC0862b("SpindleIndicator", 4);
        public static final EnumC0862b LineIndicator = new EnumC0862b("LineIndicator", 5);
        public static final EnumC0862b HalfLineIndicator = new EnumC0862b("HalfLineIndicator", 6);
        public static final EnumC0862b QuarterLineIndicator = new EnumC0862b("QuarterLineIndicator", 7);
        public static final EnumC0862b KiteIndicator = new EnumC0862b("KiteIndicator", 8);
        public static final EnumC0862b NeedleIndicator = new EnumC0862b("NeedleIndicator", 9);

        static {
            EnumC0862b[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public EnumC0862b(String str, int i10) {
        }

        public static final EnumC0862b[] a() {
            return new EnumC0862b[]{NoIndicator, NormalIndicator, NormalSmallIndicator, TriangleIndicator, SpindleIndicator, LineIndicator, HalfLineIndicator, QuarterLineIndicator, KiteIndicator, NeedleIndicator};
        }

        @NotNull
        public static Cf.a<EnumC0862b> b() {
            return $ENTRIES;
        }

        public static EnumC0862b valueOf(String str) {
            return (EnumC0862b) Enum.valueOf(EnumC0862b.class, str);
        }

        public static EnumC0862b[] values() {
            return (EnumC0862b[]) $VALUES.clone();
        }
    }

    public AbstractC3645b(@NotNull Context context) {
        M.p(context, "context");
        this.f32192a = new Paint(1);
        this.f32193b = context.getResources().getDisplayMetrics().density;
        this.f32196e = -14575885;
        this.f32192a.setColor(-14575885);
    }

    public final float a(float f10) {
        return f10 * this.f32193b;
    }

    public abstract void b(@NotNull Canvas canvas);

    public float c() {
        return e();
    }

    public final float d() {
        v vVar = this.f32194c;
        if (vVar == null) {
            return 0.0f;
        }
        M.m(vVar);
        return vVar.getSize() / 2.0f;
    }

    public final float e() {
        v vVar = this.f32194c;
        if (vVar == null) {
            return 0.0f;
        }
        M.m(vVar);
        return vVar.getSize() / 2.0f;
    }

    public final int f() {
        return this.f32196e;
    }

    @NotNull
    public final Paint g() {
        return this.f32192a;
    }

    public final float h() {
        return e() > c() ? c() : e();
    }

    @Nullable
    public final v i() {
        return this.f32194c;
    }

    public float j() {
        v vVar = this.f32194c;
        if (vVar == null) {
            return 0.0f;
        }
        M.m(vVar);
        return vVar.getPadding();
    }

    public final float k() {
        if (this.f32194c != null) {
            return r0.getSize() - (r0.getPadding() * 2.0f);
        }
        return 0.0f;
    }

    public final float l() {
        return this.f32195d;
    }

    public final void m(int i10) {
        this.f32196e = i10;
        if (this.f32194c != null) {
            s();
        }
        setChanged();
        notifyObservers(null);
    }

    public final void n(@NotNull Paint paint) {
        M.p(paint, "<set-?>");
        this.f32192a = paint;
    }

    public final void o(@Nullable v vVar) {
        this.f32194c = vVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final I p(@NotNull v speedometer) {
        M.p(speedometer, "speedometer");
        deleteObservers();
        addObserver(speedometer);
        this.f32194c = speedometer;
        s();
        M.n(this, "null cannot be cast to non-null type I of org.anastr.speedviewlib.components.indicators.Indicator");
        return this;
    }

    public final void q(float f10) {
        this.f32195d = f10;
        if (this.f32194c != null) {
            s();
        }
        setChanged();
        notifyObservers(null);
    }

    public abstract void r(boolean z10);

    public abstract void s();

    public final void t(boolean z10) {
        r(z10);
        if (this.f32194c != null) {
            s();
        }
    }
}
