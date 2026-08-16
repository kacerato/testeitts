package kotlin.time;

import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import nf.T0;

@t0({"SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,210:1\n80#2:211\n80#2:212\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n*L\n184#1:211\n191#1:212\n*E\n"})
@T0(markerClass = {o.class})
@InterfaceC14422l0(version = "1.9")
public final class G extends AbstractC14031c {

    public long f95832d;

    public G() {
        super(EnumC14039k.NANOSECONDS);
        a();
    }

    @Override
    public long g() {
        return this.f95832d;
    }

    public final void i(long j10) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.f95832d + n.i(e()) + " is advanced by " + ((Object) C14036h.h0(j10)) + '.');
    }

    public final void j(long j10) {
        long g02 = C14036h.g0(j10, e());
        if (((g02 - 1) | 1) != Long.MAX_VALUE) {
            long j11 = this.f95832d;
            long j12 = j11 + g02;
            if ((g02 ^ j11) >= 0 && (j11 ^ j12) < 0) {
                i(j10);
            }
            this.f95832d = j12;
            return;
        }
        long s10 = C14036h.s(j10, 2);
        if ((1 | (C14036h.g0(s10, e()) - 1)) == Long.MAX_VALUE) {
            i(j10);
            return;
        }
        long j13 = this.f95832d;
        try {
            j(s10);
            j(C14036h.V(j10, s10));
        } catch (IllegalStateException e10) {
            this.f95832d = j13;
            throw e10;
        }
    }
}
