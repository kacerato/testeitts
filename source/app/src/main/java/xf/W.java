package Xf;

import java.util.Iterator;
import nf.B0;
import nf.F0;
import nf.InterfaceC14422l0;
import nf.L0;
import nf.x0;
import org.jetbrains.annotations.NotNull;

public class W {
    @Lf.j(name = "sumOfUByte")
    @InterfaceC14422l0(version = "1.5")
    public static final int a(@NotNull InterfaceC3312m<x0> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<x0> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 = B0.o(i10 + B0.o(it.next().j0() & 255));
        }
        return i10;
    }

    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int b(@NotNull InterfaceC3312m<B0> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<B0> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 = B0.o(i10 + it.next().q0());
        }
        return i10;
    }

    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long c(@NotNull InterfaceC3312m<F0> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<F0> it = interfaceC3312m.iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 = F0.i(j10 + it.next().l0());
        }
        return j10;
    }

    @Lf.j(name = "sumOfUShort")
    @InterfaceC14422l0(version = "1.5")
    public static final int d(@NotNull InterfaceC3312m<L0> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        Iterator<L0> it = interfaceC3312m.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 = B0.o(i10 + B0.o(it.next().j0() & 65535));
        }
        return i10;
    }
}
