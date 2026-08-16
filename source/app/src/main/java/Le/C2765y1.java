package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.J;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2765y1<T> extends AbstractC2692a<T, T> {

    public final Be.J f13391d;

    public final boolean f13392e;

    public static final class a<T> extends AtomicReference<Thread> implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f13393h = 8094547886072529208L;

        public final hn.c<? super T> f13394b;

        public final J.c f13395c;

        public final AtomicReference<hn.d> f13396d = new AtomicReference<>();

        public final AtomicLong f13397e = new AtomicLong();

        public final boolean f13398f;

        public hn.b<T> f13399g;

        public static final class RunnableC0399a implements Runnable {

            public final hn.d f13400b;

            public final long f13401c;

            public RunnableC0399a(hn.d dVar, long j10) {
                this.f13400b = dVar;
                this.f13401c = j10;
            }

            @Override
            public void run() {
                this.f13400b.i(this.f13401c);
            }
        }

        public a(hn.c<? super T> cVar, J.c cVar2, hn.b<T> bVar, boolean z10) {
            this.f13394b = cVar;
            this.f13395c = cVar2;
            this.f13399g = bVar;
            this.f13398f = !z10;
        }

        @Override
        public void a() {
            this.f13394b.a();
            this.f13395c.dispose();
        }

        public void b(long j10, hn.d dVar) {
            if (this.f13398f || Thread.currentThread() == get()) {
                dVar.i(j10);
            } else {
                this.f13395c.b(new RunnableC0399a(dVar, j10));
            }
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f13396d);
            this.f13395c.dispose();
        }

        @Override
        public void h(T t10) {
            this.f13394b.h(t10);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                hn.d dVar = this.f13396d.get();
                if (dVar != null) {
                    b(j10, dVar);
                    return;
                }
                io.reactivex.internal.util.d.a(this.f13397e, j10);
                hn.d dVar2 = this.f13396d.get();
                if (dVar2 != null) {
                    long andSet = this.f13397e.getAndSet(0L);
                    if (andSet != 0) {
                        b(andSet, dVar2);
                    }
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this.f13396d, dVar)) {
                long andSet = this.f13397e.getAndSet(0L);
                if (andSet != 0) {
                    b(andSet, dVar);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13394b.onError(th2);
            this.f13395c.dispose();
        }

        @Override
        public void run() {
            lazySet(Thread.currentThread());
            hn.b<T> bVar = this.f13399g;
            this.f13399g = null;
            bVar.l(this);
        }
    }

    public C2765y1(AbstractC2362l<T> abstractC2362l, Be.J j10, boolean z10) {
        super(abstractC2362l);
        this.f13391d = j10;
        this.f13392e = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        J.c c10 = this.f13391d.c();
        a aVar = new a(cVar, c10, this.f12507c, this.f13392e);
        cVar.j(aVar);
        c10.b(aVar);
    }
}
