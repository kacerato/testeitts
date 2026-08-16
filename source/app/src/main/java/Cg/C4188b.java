package cg;

import Lf.j;
import java.time.Instant;
import kotlin.jvm.internal.M;
import kotlin.time.o;
import kotlin.time.q;
import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;

@j(name = "InstantConversionsJDK8Kt")
public final class C4188b {
    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "2.3")
    @NotNull
    public static final Instant a(@NotNull q qVar) {
        M.p(qVar, "<this>");
        Instant ofEpochSecond = Instant.ofEpochSecond(qVar.d(), qVar.e());
        M.o(ofEpochSecond, "ofEpochSecond(...)");
        return ofEpochSecond;
    }

    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "2.3")
    @NotNull
    public static final q b(@NotNull Instant instant) {
        M.p(instant, "<this>");
        return q.f95889d.b(instant.getEpochSecond(), instant.getNano());
    }
}
