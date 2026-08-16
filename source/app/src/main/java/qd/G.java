package qd;

import com.lmax.disruptor.AlertException;
import java.util.concurrent.locks.LockSupport;

public final class G implements J {

    public static final int f106067a = 200;

    @Override
    public void a() {
    }

    @Override
    public long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException {
        int i10 = 200;
        while (true) {
            long c10 = zVar2.c();
            if (c10 >= j10) {
                return c10;
            }
            i10 = c(interfaceC15056A, i10);
        }
    }

    public final int c(InterfaceC15056A interfaceC15056A, int i10) throws AlertException {
        interfaceC15056A.b();
        if (i10 > 100) {
            return i10 - 1;
        }
        if (i10 <= 0) {
            LockSupport.parkNanos(1L);
            return i10;
        }
        int i11 = i10 - 1;
        Thread.yield();
        return i11;
    }
}
