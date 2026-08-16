package Oe;

public final class N<T> extends AbstractC2859a<T, T> {

    public final Fe.a f19074c;

    public static final class a<T> extends Je.b<T> implements Be.I<T> {

        public static final long f19075h = 4109457741734051389L;

        public final Be.I<? super T> f19076c;

        public final Fe.a f19077d;

        public De.c f19078e;

        public Ie.j<T> f19079f;

        public boolean f19080g;

        public a(Be.I<? super T> i10, Fe.a aVar) {
            this.f19076c = i10;
            this.f19077d = aVar;
        }

        @Override
        public void a() {
            this.f19076c.a();
            c();
        }

        public void c() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f19077d.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public void clear() {
            this.f19079f.clear();
        }

        @Override
        public boolean d() {
            return this.f19078e.d();
        }

        @Override
        public void dispose() {
            this.f19078e.dispose();
            c();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19078e, cVar)) {
                this.f19078e = cVar;
                if (cVar instanceof Ie.j) {
                    this.f19079f = (Ie.j) cVar;
                }
                this.f19076c.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f19076c.h(t10);
        }

        @Override
        public boolean isEmpty() {
            return this.f19079f.isEmpty();
        }

        @Override
        public int m(int i10) {
            Ie.j<T> jVar = this.f19079f;
            if (jVar == null || (i10 & 4) != 0) {
                return 0;
            }
            int m10 = jVar.m(i10);
            if (m10 != 0) {
                this.f19080g = m10 == 1;
            }
            return m10;
        }

        @Override
        public void onError(Throwable th2) {
            this.f19076c.onError(th2);
            c();
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll = this.f19079f.poll();
            if (poll == null && this.f19080g) {
                c();
            }
            return poll;
        }
    }

    public N(Be.G<T> g10, Fe.a aVar) {
        super(g10);
        this.f19074c = aVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19074c));
    }
}
