package kotlin.jvm.internal;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nTypeParameterReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeParameterReference.kt\nkotlin/jvm/internal/TypeParameterReference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
@InterfaceC14422l0(version = "1.4")
public final class x0 implements Wf.s {

    @NotNull
    public static final a f95793g = new a(null);

    @Nullable
    public final Object f95794b;

    @NotNull
    public final String f95795c;

    @NotNull
    public final Wf.u f95796d;

    public final boolean f95797e;

    @Nullable
    public volatile List<? extends Wf.r> f95798f;

    public static final class a {

        public static final class C1858a {

            public static final int[] f95799a;

            static {
                int[] iArr = new int[Wf.u.values().length];
                try {
                    iArr[Wf.u.INVARIANT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Wf.u.IN.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Wf.u.OUT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f95799a = iArr;
            }
        }

        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final String a(@NotNull Wf.s typeParameter) {
            M.p(typeParameter, "typeParameter");
            StringBuilder sb2 = new StringBuilder();
            int i10 = C1858a.f95799a[typeParameter.getVariance().ordinal()];
            if (i10 == 1) {
                P0 p02 = P0.f98194a;
            } else if (i10 == 2) {
                sb2.append("in ");
            } else {
                if (i10 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                sb2.append("out ");
            }
            sb2.append(typeParameter.getName());
            return sb2.toString();
        }

        public a() {
        }
    }

    public x0(@Nullable Object obj, @NotNull String name, @NotNull Wf.u variance, boolean z10) {
        M.p(name, "name");
        M.p(variance, "variance");
        this.f95794b = obj;
        this.f95795c = name;
        this.f95796d = variance;
        this.f95797e = z10;
    }

    public static void a() {
    }

    @Override
    public boolean b() {
        return this.f95797e;
    }

    public final void c(@NotNull List<? extends Wf.r> upperBounds) {
        M.p(upperBounds, "upperBounds");
        if (this.f95798f == null) {
            this.f95798f = upperBounds;
            return;
        }
        throw new IllegalStateException(("Upper bounds of type parameter '" + ((Object) this) + "' have already been initialized.").toString());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof x0) {
            x0 x0Var = (x0) obj;
            if (M.g(this.f95794b, x0Var.f95794b) && M.g(getName(), x0Var.getName())) {
                return true;
            }
        }
        return false;
    }

    @Override
    @NotNull
    public String getName() {
        return this.f95795c;
    }

    @Override
    @NotNull
    public List<Wf.r> getUpperBounds() {
        List list = this.f95798f;
        if (list != null) {
            return list;
        }
        List<Wf.r> l10 = pf.G.l(n0.o(Object.class));
        this.f95798f = l10;
        return l10;
    }

    @Override
    @NotNull
    public Wf.u getVariance() {
        return this.f95796d;
    }

    public int hashCode() {
        Object obj = this.f95794b;
        return ((obj != null ? obj.hashCode() : 0) * 31) + getName().hashCode();
    }

    @NotNull
    public String toString() {
        return f95793g.a(this);
    }
}
