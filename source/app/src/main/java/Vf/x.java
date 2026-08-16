package Vf;

import kotlin.jvm.internal.C14026x;
import nf.B0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14441w;
import nf.T0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.5")
public final class x extends v implements g<B0>, r<B0> {

    @NotNull
    public static final a f26918f;

    @NotNull
    public static final x f26919g;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final x a() {
            return x.f26919g;
        }

        public a() {
        }
    }

    static {
        C14026x c14026x = null;
        f26918f = new a(c14026x);
        f26919g = new x(-1, 0, c14026x);
    }

    public x(int i10, int i11, C14026x c14026x) {
        this(i10, i11);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14427o(message = "Can throw an exception when it's impossible to represent the value with UInt type, for example, when the range includes MAX_VALUE. It's recommended to use 'endInclusive' property that doesn't throw.")
    @InterfaceC14422l0(version = "1.9")
    public static void l() {
    }

    @Override
    public B0 b() {
        return B0.e(k());
    }

    @Override
    public boolean contains(Comparable comparable) {
        return j(((B0) comparable).q0());
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof x) {
            if (!isEmpty() || !((x) obj).isEmpty()) {
                x xVar = (x) obj;
                if (c() != xVar.c() || d() != xVar.d()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public B0 getEndInclusive() {
        return B0.e(m());
    }

    @Override
    public Comparable getStart() {
        return B0.e(n());
    }

    @Override
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (c() * 31) + d();
    }

    @Override
    public boolean isEmpty() {
        return Integer.compareUnsigned(c(), d()) > 0;
    }

    public boolean j(int i10) {
        return Integer.compareUnsigned(c(), i10) <= 0 && Integer.compareUnsigned(i10, d()) <= 0;
    }

    public int k() {
        if (d() != -1) {
            return B0.o(d() + 1);
        }
        throw new IllegalStateException("Cannot return the exclusive upper bound of a range that includes MAX_VALUE.");
    }

    public int m() {
        return d();
    }

    public int n() {
        return c();
    }

    @Override
    @NotNull
    public String toString() {
        return ((Object) B0.k0(c())) + ClasspathEntry.DOT_DOT + ((Object) B0.k0(d()));
    }

    public x(int i10, int i11) {
        super(i10, i11, 1, null);
    }
}
