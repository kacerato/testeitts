package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicBoolean;

public final class R1<T> extends AbstractC2692a<T, T> {

    public final Be.J f12190d;

    public static final class a<T> extends AtomicBoolean implements InterfaceC2367q<T>, hn.d {

        public static final long f12191e = 1015244841293359600L;

        public final hn.c<? super T> f12192b;

        public final Be.J f12193c;

        public hn.d f12194d;

        public final class RunnableC0390a implements Runnable {
            public RunnableC0390a() {
            }

            @Override
            public void run() {
                a.this.f12194d.cancel();
            }
        }

        public a(hn.c<? super T> cVar, Be.J j10) {
            this.f12192b = cVar;
            this.f12193c = j10;
        }

        @Override
        public void a() {
            if (get()) {
                return;
            }
            this.f12192b.a();
        }

        @Override
        public void cancel() {
            if (compareAndSet(false, true)) {
                this.f12193c.f(new RunnableC0390a());
            }
        }

        @Override
        public void h(T t10) {
            if (get()) {
                return;
            }
            this.f12192b.h(t10);
        }

        @Override
        public void i(long j10) {
            this.f12194d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12194d, dVar)) {
                this.f12194d = dVar;
                this.f12192b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (get()) {
                Ye.a.Y(th2);
            } else {
                this.f12192b.onError(th2);
            }
        }
    }

    public R1(AbstractC2362l<T> abstractC2362l, Be.J j10) {
        super(abstractC2362l);
        this.f12190d = j10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12190d));
    }
}
