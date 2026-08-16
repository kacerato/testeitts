package Vf;

import kotlin.jvm.internal.C14026x;
import nf.F0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14441w;
import nf.T0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.5")
public final class A extends y implements g<F0>, r<F0> {

    @NotNull
    public static final a f26866f = new a(null);

    @NotNull
    public static final A f26867g = new A(-1, 0, null);

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final A a() {
            return A.f26867g;
        }

        public a() {
        }
    }

    public A(long j10, long j11, C14026x c14026x) {
        this(j10, j11);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14427o(message = "Can throw an exception when it's impossible to represent the value with ULong type, for example, when the range includes MAX_VALUE. It's recommended to use 'endInclusive' property that doesn't throw.")
    @InterfaceC14422l0(version = "1.9")
    public static void k() {
    }

    @Override
    public F0 b() {
        return F0.b(j());
    }

    @Override
    public boolean contains(Comparable comparable) {
        return i(((F0) comparable).l0());
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof A) {
            if (!isEmpty() || !((A) obj).isEmpty()) {
                A a10 = (A) obj;
                if (c() != a10.c() || d() != a10.d()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public F0 getEndInclusive() {
        return F0.b(l());
    }

    @Override
    public Comparable getStart() {
        return F0.b(m());
    }

    @Override
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((int) F0.i(c() ^ F0.i(c() >>> 32))) * 31) + ((int) F0.i(d() ^ F0.i(d() >>> 32)));
    }

    public boolean i(long j10) {
        return Long.compareUnsigned(c(), j10) <= 0 && Long.compareUnsigned(j10, d()) <= 0;
    }

    @Override
    public boolean isEmpty() {
        return Long.compareUnsigned(c(), d()) > 0;
    }

    public long j() {
        if (d() != -1) {
            return F0.i(d() + F0.i(1 & 4294967295L));
        }
        throw new IllegalStateException("Cannot return the exclusive upper bound of a range that includes MAX_VALUE.");
    }

    public long l() {
        return d();
    }

    public long m() {
        return c();
    }

    @Override
    @NotNull
    public String toString() {
        return ((Object) F0.g0(c())) + ClasspathEntry.DOT_DOT + ((Object) F0.g0(d()));
    }

    public A(long j10, long j11) {
        super(j10, j11, 1L, null);
    }
}
