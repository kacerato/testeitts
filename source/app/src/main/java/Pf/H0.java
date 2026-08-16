package pf;

import java.util.Collection;
import java.util.Iterator;
import nf.InterfaceC14422l0;
import nf.InterfaceC14443y;
import nf.L0;
import nf.M0;
import org.jetbrains.annotations.NotNull;

public class H0 {
    @Lf.j(name = "sumOfUByte")
    @InterfaceC14422l0(version = "1.5")
    public static final int a(@NotNull Iterable<nf.x0> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<nf.x0> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 = nf.B0.o(i10 + nf.B0.o(it.next().j0() & 255));
        }
        return i10;
    }

    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int b(@NotNull Iterable<nf.B0> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<nf.B0> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 = nf.B0.o(i10 + it.next().q0());
        }
        return i10;
    }

    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long c(@NotNull Iterable<nf.F0> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<nf.F0> it = iterable.iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 = nf.F0.i(j10 + it.next().l0());
        }
        return j10;
    }

    @Lf.j(name = "sumOfUShort")
    @InterfaceC14422l0(version = "1.5")
    public static final int d(@NotNull Iterable<L0> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<L0> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 = nf.B0.o(i10 + nf.B0.o(it.next().j0() & 65535));
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] e(@NotNull Collection<nf.x0> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        byte[] j10 = nf.y0.j(collection.size());
        Iterator<nf.x0> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            nf.y0.y(j10, i10, it.next().j0());
            i10++;
        }
        return j10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final int[] f(@NotNull Collection<nf.B0> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        int[] l10 = nf.C0.l(collection.size());
        Iterator<nf.B0> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            nf.C0.B(l10, i10, it.next().q0());
            i10++;
        }
        return l10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final long[] g(@NotNull Collection<nf.F0> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        long[] j10 = nf.G0.j(collection.size());
        Iterator<nf.F0> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            nf.G0.y(j10, i10, it.next().l0());
            i10++;
        }
        return j10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final short[] h(@NotNull Collection<L0> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        short[] j10 = M0.j(collection.size());
        Iterator<L0> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            M0.y(j10, i10, it.next().j0());
            i10++;
        }
        return j10;
    }
}
