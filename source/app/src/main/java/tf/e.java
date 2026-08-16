package Tf;

import Ef.n;
import java.util.Random;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public final class e {
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final Random a(@NotNull f fVar) {
        Random r10;
        M.p(fVar, "<this>");
        a aVar = fVar instanceof a ? (a) fVar : null;
        return (aVar == null || (r10 = aVar.r()) == null) ? new c(fVar) : r10;
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final f b(@NotNull Random random) {
        f a10;
        M.p(random, "<this>");
        c cVar = random instanceof c ? (c) random : null;
        return (cVar == null || (a10 = cVar.a()) == null) ? new d(random) : a10;
    }

    @Ef.f
    public static final f c() {
        return n.f5775a.b();
    }

    public static final double d(int i10, int i11) {
        return ((i10 << 27) + i11) / 9.007199254740992E15d;
    }
}
