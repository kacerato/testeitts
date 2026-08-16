package qd;

import com.lmax.disruptor.AlertException;

public final class C15062e implements J {
    @Override
    public void a() {
    }

    @Override
    public long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException {
        while (true) {
            long c10 = zVar2.c();
            if (c10 >= j10) {
                return c10;
            }
            interfaceC15056A.b();
        }
    }
}
