package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.C4186e;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2703d1<T> extends AbstractC2692a<T, T> {

    public final Fe.o<? super AbstractC2362l<Object>, ? extends hn.b<?>> f12667d;

    public static final class a<T> extends c<T, Object> {

        public static final long f12668p = -2680129890138081029L;

        public a(hn.c<? super T> cVar, Ze.c<Object> cVar2, hn.d dVar) {
            super(cVar, cVar2, dVar);
        }

        @Override
        public void a() {
            m(0);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12677m.cancel();
            this.f12675k.onError(th2);
        }
    }

    public static final class b<T, U> extends AtomicInteger implements InterfaceC2367q<Object>, hn.d {

        public static final long f12669f = 2827772011130406689L;

        public final hn.b<T> f12670b;

        public final AtomicReference<hn.d> f12671c = new AtomicReference<>();

        public final AtomicLong f12672d = new AtomicLong();

        public c<T, U> f12673e;

        public b(hn.b<T> bVar) {
            this.f12670b = bVar;
        }

        @Override
        public void a() {
            this.f12673e.cancel();
            this.f12673e.f12675k.a();
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f12671c);
        }

        @Override
        public void h(Object obj) {
            if (getAndIncrement() != 0) {
                return;
            }
            while (this.f12671c.get() != Ue.j.CANCELLED) {
                this.f12670b.l(this.f12673e);
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f12671c, this.f12672d, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f12671c, this.f12672d, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12673e.cancel();
            this.f12673e.f12675k.onError(th2);
        }
    }

    public static abstract class c<T, U> extends Ue.i implements InterfaceC2367q<T> {

        public static final long f12674o = -5604623027276966720L;

        public final hn.c<? super T> f12675k;

        public final Ze.c<U> f12676l;

        public final hn.d f12677m;

        public long f12678n;

        public c(hn.c<? super T> cVar, Ze.c<U> cVar2, hn.d dVar) {
            super(false);
            this.f12675k = cVar;
            this.f12676l = cVar2;
            this.f12677m = dVar;
        }

        @Override
        public final void cancel() {
            super.cancel();
            this.f12677m.cancel();
        }

        @Override
        public final void h(T t10) {
            this.f12678n++;
            this.f12675k.h(t10);
        }

        @Override
        public final void j(hn.d dVar) {
            l(dVar);
        }

        public final void m(U u10) {
            l(Ue.g.INSTANCE);
            long j10 = this.f12678n;
            if (j10 != 0) {
                this.f12678n = 0L;
                k(j10);
            }
            this.f12677m.i(1L);
            this.f12676l.h(u10);
        }
    }

    public C2703d1(AbstractC2362l<T> abstractC2362l, Fe.o<? super AbstractC2362l<Object>, ? extends hn.b<?>> oVar) {
        super(abstractC2362l);
        this.f12667d = oVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        C4186e c4186e = new C4186e(cVar);
        Ze.c<T> S82 = Ze.h.V8(8).S8();
        try {
            hn.b bVar = (hn.b) He.b.g(this.f12667d.apply(S82), "handler returned a null Publisher");
            b bVar2 = new b(this.f12507c);
            a aVar = new a(c4186e, S82, bVar2);
            bVar2.f12673e = aVar;
            cVar.j(aVar);
            bVar.l(bVar2);
            bVar2.h(0);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
