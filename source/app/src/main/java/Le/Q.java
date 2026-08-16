package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class Q<T> extends AbstractC2692a<T, T> {

    public final Fe.a f12160d;

    public static final class a<T> extends Ue.c<T> implements Ie.a<T> {

        public static final long f12161h = 4109457741734051389L;

        public final Ie.a<? super T> f12162c;

        public final Fe.a f12163d;

        public hn.d f12164e;

        public Ie.l<T> f12165f;

        public boolean f12166g;

        public a(Ie.a<? super T> aVar, Fe.a aVar2) {
            this.f12162c = aVar;
            this.f12163d = aVar2;
        }

        @Override
        public void a() {
            this.f12162c.a();
            d();
        }

        @Override
        public void cancel() {
            this.f12164e.cancel();
            d();
        }

        @Override
        public void clear() {
            this.f12165f.clear();
        }

        public void d() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f12163d.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public void h(T t10) {
            this.f12162c.h(t10);
        }

        @Override
        public void i(long j10) {
            this.f12164e.i(j10);
        }

        @Override
        public boolean isEmpty() {
            return this.f12165f.isEmpty();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12164e, dVar)) {
                this.f12164e = dVar;
                if (dVar instanceof Ie.l) {
                    this.f12165f = (Ie.l) dVar;
                }
                this.f12162c.j(this);
            }
        }

        @Override
        public int m(int i10) {
            Ie.l<T> lVar = this.f12165f;
            if (lVar == null || (i10 & 4) != 0) {
                return 0;
            }
            int m10 = lVar.m(i10);
            if (m10 != 0) {
                this.f12166g = m10 == 1;
            }
            return m10;
        }

        @Override
        public void onError(Throwable th2) {
            this.f12162c.onError(th2);
            d();
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll = this.f12165f.poll();
            if (poll == null && this.f12166g) {
                d();
            }
            return poll;
        }

        @Override
        public boolean u(T t10) {
            return this.f12162c.u(t10);
        }
    }

    public static final class b<T> extends Ue.c<T> implements InterfaceC2367q<T> {

        public static final long f12167h = 4109457741734051389L;

        public final hn.c<? super T> f12168c;

        public final Fe.a f12169d;

        public hn.d f12170e;

        public Ie.l<T> f12171f;

        public boolean f12172g;

        public b(hn.c<? super T> cVar, Fe.a aVar) {
            this.f12168c = cVar;
            this.f12169d = aVar;
        }

        @Override
        public void a() {
            this.f12168c.a();
            d();
        }

        @Override
        public void cancel() {
            this.f12170e.cancel();
            d();
        }

        @Override
        public void clear() {
            this.f12171f.clear();
        }

        public void d() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f12169d.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public void h(T t10) {
            this.f12168c.h(t10);
        }

        @Override
        public void i(long j10) {
            this.f12170e.i(j10);
        }

        @Override
        public boolean isEmpty() {
            return this.f12171f.isEmpty();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12170e, dVar)) {
                this.f12170e = dVar;
                if (dVar instanceof Ie.l) {
                    this.f12171f = (Ie.l) dVar;
                }
                this.f12168c.j(this);
            }
        }

        @Override
        public int m(int i10) {
            Ie.l<T> lVar = this.f12171f;
            if (lVar == null || (i10 & 4) != 0) {
                return 0;
            }
            int m10 = lVar.m(i10);
            if (m10 != 0) {
                this.f12172g = m10 == 1;
            }
            return m10;
        }

        @Override
        public void onError(Throwable th2) {
            this.f12168c.onError(th2);
            d();
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll = this.f12171f.poll();
            if (poll == null && this.f12172g) {
                d();
            }
            return poll;
        }
    }

    public Q(AbstractC2362l<T> abstractC2362l, Fe.a aVar) {
        super(abstractC2362l);
        this.f12160d = aVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (cVar instanceof Ie.a) {
            this.f12507c.l6(new a((Ie.a) cVar, this.f12160d));
        } else {
            this.f12507c.l6(new b(cVar, this.f12160d));
        }
    }
}
