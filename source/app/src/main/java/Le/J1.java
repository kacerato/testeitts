package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.J;
import cf.C4186e;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public final class J1<T> extends AbstractC2692a<T, T> {

    public final long f11964d;

    public final TimeUnit f11965e;

    public final Be.J f11966f;

    public static final class a<T> extends AtomicLong implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f11967j = -9102637559663639004L;

        public final hn.c<? super T> f11968b;

        public final long f11969c;

        public final TimeUnit f11970d;

        public final J.c f11971e;

        public hn.d f11972f;

        public final Ge.h f11973g = new Ge.h();

        public volatile boolean f11974h;

        public boolean f11975i;

        public a(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, J.c cVar2) {
            this.f11968b = cVar;
            this.f11969c = j10;
            this.f11970d = timeUnit;
            this.f11971e = cVar2;
        }

        @Override
        public void a() {
            if (this.f11975i) {
                return;
            }
            this.f11975i = true;
            this.f11968b.a();
            this.f11971e.dispose();
        }

        @Override
        public void cancel() {
            this.f11972f.cancel();
            this.f11971e.dispose();
        }

        @Override
        public void h(T t10) {
            if (this.f11975i || this.f11974h) {
                return;
            }
            this.f11974h = true;
            if (get() == 0) {
                this.f11975i = true;
                cancel();
                this.f11968b.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            } else {
                this.f11968b.h(t10);
                io.reactivex.internal.util.d.e(this, 1L);
                De.c cVar = this.f11973g.get();
                if (cVar != null) {
                    cVar.dispose();
                }
                this.f11973g.a(this.f11971e.c(this, this.f11969c, this.f11970d));
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this, j10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11972f, dVar)) {
                this.f11972f = dVar;
                this.f11968b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11975i) {
                Ye.a.Y(th2);
                return;
            }
            this.f11975i = true;
            this.f11968b.onError(th2);
            this.f11971e.dispose();
        }

        @Override
        public void run() {
            this.f11974h = false;
        }
    }

    public J1(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11) {
        super(abstractC2362l);
        this.f11964d = j10;
        this.f11965e = timeUnit;
        this.f11966f = j11;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(new C4186e(cVar), this.f11964d, this.f11965e, this.f11966f.c()));
    }
}
