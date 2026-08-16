package Le;

import Be.AbstractC2362l;
import Be.J;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2752u0 extends AbstractC2362l<Long> {

    public final Be.J f13246c;

    public final long f13247d;

    public final long f13248e;

    public final TimeUnit f13249f;

    public static final class a extends AtomicLong implements hn.d, Runnable {

        public static final long f13250e = -2809475196591179431L;

        public final hn.c<? super Long> f13251b;

        public long f13252c;

        public final AtomicReference<De.c> f13253d = new AtomicReference<>();

        public a(hn.c<? super Long> cVar) {
            this.f13251b = cVar;
        }

        public void a(De.c cVar) {
            Ge.d.h(this.f13253d, cVar);
        }

        @Override
        public void cancel() {
            Ge.d.a(this.f13253d);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this, j10);
            }
        }

        @Override
        public void run() {
            if (this.f13253d.get() != Ge.d.DISPOSED) {
                if (get() != 0) {
                    hn.c<? super Long> cVar = this.f13251b;
                    long j10 = this.f13252c;
                    this.f13252c = j10 + 1;
                    cVar.h(Long.valueOf(j10));
                    io.reactivex.internal.util.d.e(this, 1L);
                    return;
                }
                this.f13251b.onError(new MissingBackpressureException("Can't deliver value " + this.f13252c + " due to lack of requests"));
                Ge.d.a(this.f13253d);
            }
        }
    }

    public C2752u0(long j10, long j11, TimeUnit timeUnit, Be.J j12) {
        this.f13247d = j10;
        this.f13248e = j11;
        this.f13249f = timeUnit;
        this.f13246c = j12;
    }

    @Override
    public void m6(hn.c<? super Long> cVar) {
        a aVar = new a(cVar);
        cVar.j(aVar);
        Be.J j10 = this.f13246c;
        if (!(j10 instanceof Se.s)) {
            aVar.a(j10.h(aVar, this.f13247d, this.f13248e, this.f13249f));
            return;
        }
        J.c c10 = j10.c();
        aVar.a(c10);
        c10.e(aVar, this.f13247d, this.f13248e, this.f13249f);
    }
}
