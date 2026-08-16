package Vf;

import kotlin.jvm.internal.C14026x;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14441w;
import nf.T0;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class l extends j implements g<Integer>, r<Integer> {

    @NotNull
    public static final a f26894f = new a(null);

    @NotNull
    public static final l f26895g = new l(1, 0);

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final l a() {
            return l.f26895g;
        }

        public a() {
        }
    }

    public l(int i10, int i11) {
        super(i10, i11, 1);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14427o(message = "Can throw an exception when it's impossible to represent the value with Int type, for example, when the range includes MAX_VALUE. It's recommended to use 'endInclusive' property that doesn't throw.")
    @InterfaceC14422l0(version = "1.9")
    public static void l() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean contains(Comparable comparable) {
        return j(((Number) comparable).intValue());
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof l) {
            if (!isEmpty() || !((l) obj).isEmpty()) {
                l lVar = (l) obj;
                if (c() != lVar.c() || d() != lVar.d()) {
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
        return (c() * 31) + d();
    }

    @Override
    public boolean isEmpty() {
        return c() > d();
    }

    public boolean j(int i10) {
        return c() <= i10 && i10 <= d();
    }

    @Override
    @NotNull
    public Integer b() {
        if (d() != Integer.MAX_VALUE) {
            return Integer.valueOf(d() + 1);
        }
        throw new IllegalStateException("Cannot return the exclusive upper bound of a range that includes MAX_VALUE.");
    }

    @Override
    @NotNull
    public Integer getEndInclusive() {
        return Integer.valueOf(d());
    }

    @Override
    @NotNull
    public Integer getStart() {
        return Integer.valueOf(c());
    }

    @Override
    @NotNull
    public String toString() {
        return c() + ClasspathEntry.DOT_DOT + d();
    }
}
