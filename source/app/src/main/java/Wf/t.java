package Wf;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.1")
public final class t {

    @NotNull
    public static final a f27760c = new a(null);

    @Lf.g
    @NotNull
    public static final t f27761d = new t(null, null);

    @Nullable
    public final u f27762a;

    @Nullable
    public final r f27763b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @InterfaceC14410f0
        public static void d() {
        }

        @Lf.o
        @NotNull
        public final t a(@NotNull r type) {
            M.p(type, "type");
            return new t(u.IN, type);
        }

        @Lf.o
        @NotNull
        public final t b(@NotNull r type) {
            M.p(type, "type");
            return new t(u.OUT, type);
        }

        @NotNull
        public final t c() {
            return t.f27761d;
        }

        @Lf.o
        @NotNull
        public final t e(@NotNull r type) {
            M.p(type, "type");
            return new t(u.INVARIANT, type);
        }

        public a() {
        }
    }

    public static final class b {

        public static final int[] f27764a;

        static {
            int[] iArr = new int[u.values().length];
            try {
                iArr[u.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[u.IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[u.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f27764a = iArr;
        }
    }

    public t(@Nullable u uVar, @Nullable r rVar) {
        String str;
        this.f27762a = uVar;
        this.f27763b = rVar;
        if ((uVar == null) == (rVar == null)) {
            return;
        }
        if (uVar == null) {
            str = "Star projection must have no type specified.";
        } else {
            str = "The projection variance " + ((Object) uVar) + " requires type to be specified.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    @Lf.o
    @NotNull
    public static final t c(@NotNull r rVar) {
        return f27760c.a(rVar);
    }

    public static t e(t tVar, u uVar, r rVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            uVar = tVar.f27762a;
        }
        if ((i10 & 2) != 0) {
            rVar = tVar.f27763b;
        }
        return tVar.d(uVar, rVar);
    }

    @Lf.o
    @NotNull
    public static final t f(@NotNull r rVar) {
        return f27760c.b(rVar);
    }

    @Lf.o
    @NotNull
    public static final t i(@NotNull r rVar) {
        return f27760c.e(rVar);
    }

    @Nullable
    public final u a() {
        return this.f27762a;
    }

    @Nullable
    public final r b() {
        return this.f27763b;
    }

    @NotNull
    public final t d(@Nullable u uVar, @Nullable r rVar) {
        return new t(uVar, rVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f27762a == tVar.f27762a && M.g(this.f27763b, tVar.f27763b);
    }

    @Nullable
    public final r g() {
        return this.f27763b;
    }

    @Nullable
    public final u h() {
        return this.f27762a;
    }

    public int hashCode() {
        u uVar = this.f27762a;
        int hashCode = (uVar == null ? 0 : uVar.hashCode()) * 31;
        r rVar = this.f27763b;
        return hashCode + (rVar != null ? rVar.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        u uVar = this.f27762a;
        int i10 = uVar == null ? -1 : b.f27764a[uVar.ordinal()];
        if (i10 == -1) {
            return "*";
        }
        if (i10 == 1) {
            return String.valueOf(this.f27763b);
        }
        if (i10 == 2) {
            return "in " + ((Object) this.f27763b);
        }
        if (i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return "out " + ((Object) this.f27763b);
    }
}
