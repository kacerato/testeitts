package Le;

import Be.AbstractC2362l;
import Be.J;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2755v0 extends AbstractC2362l<Long> {

    public final Be.J f13269c;

    public final long f13270d;

    public final long f13271e;

    public final long f13272f;

    public final long f13273g;

    public final TimeUnit f13274h;

    public static final class a extends AtomicLong implements hn.d, Runnable {

        public static final long f13275f = -2809475196591179431L;

        public final hn.c<? super Long> f13276b;

        public final long f13277c;

        public long f13278d;

        public final AtomicReference<De.c> f13279e = new AtomicReference<>();

        public a(hn.c<? super Long> cVar, long j10, long j11) {
            this.f13276b = cVar;
            this.f13278d = j10;
            this.f13277c = j11;
        }

        public void a(De.c cVar) {
            Ge.d.h(this.f13279e, cVar);
        }

        @Override
        public void cancel() {
            Ge.d.a(this.f13279e);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this, j10);
            }
        }

        @Override
        public void run() {
            De.c cVar = this.f13279e.get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar != dVar) {
                long j10 = get();
                if (j10 == 0) {
                    this.f13276b.onError(new MissingBackpressureException("Can't deliver value " + this.f13278d + " due to lack of requests"));
                    Ge.d.a(this.f13279e);
                    return;
                }
                long j11 = this.f13278d;
                this.f13276b.h(Long.valueOf(j11));
                if (j11 == this.f13277c) {
                    if (this.f13279e.get() != dVar) {
                        this.f13276b.a();
                    }
                    Ge.d.a(this.f13279e);
                } else {
                    this.f13278d = j11 + 1;
                    if (j10 != Long.MAX_VALUE) {
                        decrementAndGet();
                    }
                }
            }
        }
    }

    public C2755v0(long j10, long j11, long j12, long j13, TimeUnit timeUnit, Be.J j14) {
        this.f13272f = j12;
        this.f13273g = j13;
        this.f13274h = timeUnit;
        this.f13269c = j14;
        this.f13270d = j10;
        this.f13271e = j11;
    }

    @Override
    public void m6(hn.c<? super Long> cVar) {
        a aVar = new a(cVar, this.f13270d, this.f13271e);
        cVar.j(aVar);
        Be.J j10 = this.f13269c;
        if (!(j10 instanceof Se.s)) {
            aVar.a(j10.h(aVar, this.f13272f, this.f13273g, this.f13274h));
            return;
        }
        J.c c10 = j10.c();
        aVar.a(c10);
        c10.e(aVar, this.f13272f, this.f13273g, this.f13274h);
    }
}
