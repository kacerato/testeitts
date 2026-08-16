package jg;

import jg.O;
import kotlin.time.C14036h;
import org.jetbrains.annotations.NotNull;

public final class P {
    @NotNull
    public static final O a(@NotNull O.a aVar, long j10, long j11) {
        return new T(C14036h.B(j10), C14036h.B(j11));
    }

    public static O b(O.a aVar, long j10, long j11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = C14036h.f95864c.W();
        }
        if ((i10 & 2) != 0) {
            j11 = C14036h.f95864c.o();
        }
        return a(aVar, j10, j11);
    }
}
