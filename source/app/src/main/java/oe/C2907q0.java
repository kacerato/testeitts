package Oe;

import Be.J;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class C2907q0 extends Be.B<Long> {

    public final Be.J f19790b;

    public final long f19791c;

    public final long f19792d;

    public final TimeUnit f19793e;

    public static final class a extends AtomicReference<De.c> implements De.c, Runnable {

        public static final long f19794d = 346773832286157679L;

        public final Be.I<? super Long> f19795b;

        public long f19796c;

        public a(Be.I<? super Long> i10) {
            this.f19795b = i10;
        }

        public void a(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public boolean d() {
            return get() == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void run() {
            if (get() != Ge.d.DISPOSED) {
                Be.I<? super Long> i10 = this.f19795b;
                long j10 = this.f19796c;
                this.f19796c = 1 + j10;
                i10.h(Long.valueOf(j10));
            }
        }
    }

    public C2907q0(long j10, long j11, TimeUnit timeUnit, Be.J j12) {
        this.f19791c = j10;
        this.f19792d = j11;
        this.f19793e = timeUnit;
        this.f19790b = j12;
    }

    @Override
    public void J5(Be.I<? super Long> i10) {
        a aVar = new a(i10);
        i10.e(aVar);
        Be.J j10 = this.f19790b;
        if (!(j10 instanceof Se.s)) {
            aVar.a(j10.h(aVar, this.f19791c, this.f19792d, this.f19793e));
            return;
        }
        J.c c10 = j10.c();
        aVar.a(c10);
        c10.e(aVar, this.f19791c, this.f19792d, this.f19793e);
    }
}
