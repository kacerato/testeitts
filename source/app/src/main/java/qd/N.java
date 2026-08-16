package qd;

import com.lmax.disruptor.AlertException;

public final class N implements J {

    public static final int f106082a = 100;

    private int c(InterfaceC15056A interfaceC15056A, int i10) throws AlertException {
        interfaceC15056A.b();
        if (i10 != 0) {
            return i10 - 1;
        }
        Thread.yield();
        return i10;
    }

    @Override
    public void a() {
    }

    @Override
    public long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException {
        int i10 = 100;
        while (true) {
            long c10 = zVar2.c();
            if (c10 >= j10) {
                return c10;
            }
            i10 = c(interfaceC15056A, i10);
        }
    }
}
