package kotlin.jvm.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.4")
public final class z0 implements Wf.r {

    @NotNull
    public static final a f95810f = new a(null);

    public static final int f95811g = 1;

    public static final int f95812h = 2;

    public static final int f95813i = 4;

    @NotNull
    public final Wf.f f95814b;

    @NotNull
    public final List<Wf.t> f95815c;

    @Nullable
    public final Wf.r f95816d;

    public final int f95817e;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public static final class b {

        public static final int[] f95818a;

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
            f95818a = iArr;
        }
    }

    @InterfaceC14422l0(version = "1.6")
    public z0(@NotNull Wf.f classifier, @NotNull List<Wf.t> arguments, @Nullable Wf.r rVar, int i10) {
        M.p(classifier, "classifier");
        M.p(arguments, "arguments");
        this.f95814b = classifier;
        this.f95815c = arguments;
        this.f95816d = rVar;
        this.f95817e = i10;
    }

    public static final CharSequence l(z0 z0Var, Wf.t it) {
        M.p(it, "it");
        return z0Var.f(it);
    }

    @InterfaceC14422l0(version = "1.6")
    public static void q() {
    }

    @InterfaceC14422l0(version = "1.6")
    public static void s() {
    }

    @Override
    @NotNull
    public Wf.f E() {
        return this.f95814b;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof z0) {
            z0 z0Var = (z0) obj;
            if (M.g(E(), z0Var.E()) && M.g(getArguments(), z0Var.getArguments()) && M.g(this.f95816d, z0Var.f95816d) && this.f95817e == z0Var.f95817e) {
                return true;
            }
        }
        return false;
    }

    public final String f(Wf.t tVar) {
        String valueOf;
        if (tVar.h() == null) {
            return "*";
        }
        Wf.r g10 = tVar.g();
        z0 z0Var = g10 instanceof z0 ? (z0) g10 : null;
        if (z0Var == null || (valueOf = z0Var.j(true)) == null) {
            valueOf = String.valueOf(tVar.g());
        }
        int i10 = b.f95818a[tVar.h().ordinal()];
        if (i10 == 1) {
            return valueOf;
        }
        if (i10 == 2) {
            return "in " + valueOf;
        }
        if (i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return "out " + valueOf;
    }

    @Override
    @NotNull
    public List<Annotation> getAnnotations() {
        return pf.H.J();
    }

    @Override
    @NotNull
    public List<Wf.t> getArguments() {
        return this.f95815c;
    }

    public int hashCode() {
        return (((E().hashCode() * 31) + getArguments().hashCode()) * 31) + Integer.hashCode(this.f95817e);
    }

    public final String j(boolean z10) {
        Wf.f E10 = E();
        KClass kClass = E10 instanceof KClass ? (KClass) E10 : null;
        Class<?> e10 = kClass != null ? Lf.b.e(kClass) : null;
        String str = (e10 == null ? E().toString() : (this.f95817e & 4) != 0 ? "kotlin.Nothing" : e10.isArray() ? n(e10) : (z10 && e10.isPrimitive()) ? Lf.b.g((KClass) E()).getName() : e10.getName()) + (getArguments().isEmpty() ? "" : pf.S.r3(getArguments(), ", ", "<", ">", 0, null, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                CharSequence l10;
                l10 = z0.l(z0.this, (Wf.t) obj);
                return l10;
            }
        }, 24, null)) + (y() ? "?" : "");
        Wf.r rVar = this.f95816d;
        if (!(rVar instanceof z0)) {
            return str;
        }
        String j10 = ((z0) rVar).j(true);
        if (M.g(j10, str)) {
            return str;
        }
        if (M.g(j10, str + '?')) {
            return str + '!';
        }
        return '(' + str + ClasspathEntry.DOT_DOT + j10 + ')';
    }

    public final String n(Class<?> cls) {
        return M.g(cls, boolean[].class) ? "kotlin.BooleanArray" : M.g(cls, char[].class) ? "kotlin.CharArray" : M.g(cls, byte[].class) ? "kotlin.ByteArray" : M.g(cls, short[].class) ? "kotlin.ShortArray" : M.g(cls, int[].class) ? "kotlin.IntArray" : M.g(cls, float[].class) ? "kotlin.FloatArray" : M.g(cls, long[].class) ? "kotlin.LongArray" : M.g(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    public final int p() {
        return this.f95817e;
    }

    @Nullable
    public final Wf.r r() {
        return this.f95816d;
    }

    @NotNull
    public String toString() {
        return j(false) + n0.f95758b;
    }

    @Override
    public boolean y() {
        return (this.f95817e & 1) != 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public z0(@NotNull Wf.f classifier, @NotNull List<Wf.t> arguments, boolean z10) {
        this(classifier, arguments, null, z10 ? 1 : 0);
        M.p(classifier, "classifier");
        M.p(arguments, "arguments");
    }
}
