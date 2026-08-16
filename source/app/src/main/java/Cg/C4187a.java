package cg;

import Ef.f;
import Lf.j;
import java.time.Duration;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.time.C14036h;
import kotlin.time.C14038j;
import kotlin.time.EnumC14039k;
import nf.InterfaceC14422l0;

@j(name = "DurationConversionsJDK8Kt")
@t0({"SMAP\nDurationConversions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationConversions.kt\nkotlin/time/jdk8/DurationConversionsJDK8Kt\n+ 2 Duration.kt\nkotlin/time/Duration\n*L\n1#1,33:1\n620#2:34\n*S KotlinDebug\n*F\n+ 1 DurationConversions.kt\nkotlin/time/jdk8/DurationConversionsJDK8Kt\n*L\n33#1:34\n*E\n"})
public final class C4187a {
    @f
    @InterfaceC14422l0(version = "1.6")
    public static final Duration a(long j10) {
        Duration ofSeconds = Duration.ofSeconds(C14036h.E(j10), C14036h.I(j10));
        M.o(ofSeconds, "toComponents-impl(...)");
        return ofSeconds;
    }

    @f
    @InterfaceC14422l0(version = "1.6")
    public static final long b(Duration duration) {
        M.p(duration, "<this>");
        return C14036h.W(C14038j.P(duration.getSeconds(), EnumC14039k.SECONDS), C14038j.O(duration.getNano(), EnumC14039k.NANOSECONDS));
    }
}
