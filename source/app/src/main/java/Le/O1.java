package Le;

import Be.AbstractC2362l;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class O1 extends AbstractC2362l<Long> {

    public final Be.J f12140c;

    public final long f12141d;

    public final TimeUnit f12142e;

    public static final class a extends AtomicReference<De.c> implements hn.d, Runnable {

        public static final long f12143d = -2809475196591179431L;

        public final hn.c<? super Long> f12144b;

        public volatile boolean f12145c;

        public a(hn.c<? super Long> cVar) {
            this.f12144b = cVar;
        }

        public void a(De.c cVar) {
            Ge.d.i(this, cVar);
        }

        @Override
        public void cancel() {
            Ge.d.a(this);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                this.f12145c = true;
            }
        }

        @Override
        public void run() {
            if (get() != Ge.d.DISPOSED) {
                if (!this.f12145c) {
                    lazySet(Ge.e.INSTANCE);
                    this.f12144b.onError(new MissingBackpressureException("Can't deliver value due to lack of requests"));
                } else {
                    this.f12144b.h(0L);
                    lazySet(Ge.e.INSTANCE);
                    this.f12144b.a();
                }
            }
        }
    }

    public O1(long j10, TimeUnit timeUnit, Be.J j11) {
        this.f12141d = j10;
        this.f12142e = timeUnit;
        this.f12140c = j11;
    }

    @Override
    public void m6(hn.c<? super Long> cVar) {
        a aVar = new a(cVar);
        cVar.j(aVar);
        aVar.a(this.f12140c.g(aVar, this.f12141d, this.f12142e));
    }
}
