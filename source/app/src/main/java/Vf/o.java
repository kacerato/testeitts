package Vf;

import kotlin.jvm.internal.C14026x;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14441w;
import nf.T0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class o extends m implements g<Long>, r<Long> {

    @NotNull
    public static final a f26904f = new a(null);

    @NotNull
    public static final o f26905g = new o(1, 0);

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final o a() {
            return o.f26905g;
        }

        public a() {
        }
    }

    public o(long j10, long j11) {
        super(j10, j11, 1L);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14427o(message = "Can throw an exception when it's impossible to represent the value with Long type, for example, when the range includes MAX_VALUE. It's recommended to use 'endInclusive' property that doesn't throw.")
    @InterfaceC14422l0(version = "1.9")
    public static void l() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(Comparable comparable) {
        return j(((Number) comparable).longValue());
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof o) {
            if (!isEmpty() || !((o) obj).isEmpty()) {
                o oVar = (o) obj;
                if (c() != oVar.c() || d() != oVar.d()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (int) ((31 * (c() ^ (c() >>> 32))) + (d() ^ (d() >>> 32)));
    }

    @Override
    public boolean isEmpty() {
        return c() > d();
    }

    public boolean j(long j10) {
        return c() <= j10 && j10 <= d();
    }

    @Override
    @NotNull
    public Long b() {
        if (d() != Long.MAX_VALUE) {
            return Long.valueOf(d() + 1);
        }
        throw new IllegalStateException("Cannot return the exclusive upper bound of a range that includes MAX_VALUE.");
    }

    @Override
    @NotNull
    public Long getEndInclusive() {
        return Long.valueOf(d());
    }

    @Override
    @NotNull
    public Long getStart() {
        return Long.valueOf(c());
    }

    @Override
    @NotNull
    public String toString() {
        return c() + ClasspathEntry.DOT_DOT + d();
    }
}
