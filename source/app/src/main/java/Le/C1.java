package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class C1<T> extends AbstractC2692a<T, T> {

    public final int f11773d;

    public static final class a<T> extends ArrayDeque<T> implements InterfaceC2367q<T>, hn.d {

        public static final long f11774i = 7240042530241604978L;

        public final hn.c<? super T> f11775b;

        public final int f11776c;

        public hn.d f11777d;

        public volatile boolean f11778e;

        public volatile boolean f11779f;

        public final AtomicLong f11780g = new AtomicLong();

        public final AtomicInteger f11781h = new AtomicInteger();

        public a(hn.c<? super T> cVar, int i10) {
            this.f11775b = cVar;
            this.f11776c = i10;
        }

        @Override
        public void a() {
            this.f11778e = true;
            b();
        }

        public void b() {
            if (this.f11781h.getAndIncrement() == 0) {
                hn.c<? super T> cVar = this.f11775b;
                long j10 = this.f11780g.get();
                while (!this.f11779f) {
                    if (this.f11778e) {
                        long j11 = 0;
                        while (j11 != j10) {
                            if (this.f11779f) {
                                return;
                            }
                            T poll = poll();
                            if (poll == null) {
                                cVar.a();
                                return;
                            } else {
                                cVar.h(poll);
                                j11++;
                            }
                        }
                        if (j11 != 0 && j10 != Long.MAX_VALUE) {
                            j10 = this.f11780g.addAndGet(-j11);
                        }
                    }
                    if (this.f11781h.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void cancel() {
            this.f11779f = true;
            this.f11777d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f11776c == size()) {
                poll();
            }
            offer(t10);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f11780g, j10);
                b();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11777d, dVar)) {
                this.f11777d = dVar;
                this.f11775b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11775b.onError(th2);
        }
    }

    public C1(AbstractC2362l<T> abstractC2362l, int i10) {
        super(abstractC2362l);
        this.f11773d = i10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11773d));
    }
}
