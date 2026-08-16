package Oe;

import Be.J;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class C2908r0 extends Be.B<Long> {

    public final Be.J f19820b;

    public final long f19821c;

    public final long f19822d;

    public final long f19823e;

    public final long f19824f;

    public final TimeUnit f19825g;

    public static final class a extends AtomicReference<De.c> implements De.c, Runnable {

        public static final long f19826e = 1891866368734007884L;

        public final Be.I<? super Long> f19827b;

        public final long f19828c;

        public long f19829d;

        public a(Be.I<? super Long> i10, long j10, long j11) {
            this.f19827b = i10;
            this.f19829d = j10;
            this.f19828c = j11;
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
            if (d()) {
                return;
            }
            long j10 = this.f19829d;
            this.f19827b.h(Long.valueOf(j10));
            if (j10 != this.f19828c) {
                this.f19829d = j10 + 1;
            } else {
                Ge.d.a(this);
                this.f19827b.a();
            }
        }
    }

    public C2908r0(long j10, long j11, long j12, long j13, TimeUnit timeUnit, Be.J j14) {
        this.f19823e = j12;
        this.f19824f = j13;
        this.f19825g = timeUnit;
        this.f19820b = j14;
        this.f19821c = j10;
        this.f19822d = j11;
    }

    @Override
    public void J5(Be.I<? super Long> i10) {
        a aVar = new a(i10, this.f19821c, this.f19822d);
        i10.e(aVar);
        Be.J j10 = this.f19820b;
        if (!(j10 instanceof Se.s)) {
            aVar.a(j10.h(aVar, this.f19823e, this.f19824f, this.f19825g));
            return;
        }
        J.c c10 = j10.c();
        aVar.a(c10);
        c10.e(aVar, this.f19823e, this.f19824f, this.f19825g);
    }
}
