package Qe;

import java.util.concurrent.atomic.AtomicInteger;

public final class C2997o<T> extends Be.K<T> {

    public final Be.Q<T> f22276b;

    public final Fe.a f22277c;

    public static final class a<T> extends AtomicInteger implements Be.N<T>, De.c {

        public static final long f22278e = 4109457741734051389L;

        public final Be.N<? super T> f22279b;

        public final Fe.a f22280c;

        public De.c f22281d;

        public a(Be.N<? super T> n10, Fe.a aVar) {
            this.f22279b = n10;
            this.f22280c = aVar;
        }

        public void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f22280c.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public void b(T t10) {
            this.f22279b.b(t10);
            a();
        }

        @Override
        public boolean d() {
            return this.f22281d.d();
        }

        @Override
        public void dispose() {
            this.f22281d.dispose();
            a();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22281d, cVar)) {
                this.f22281d = cVar;
                this.f22279b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22279b.onError(th2);
            a();
        }
    }

    public C2997o(Be.Q<T> q10, Fe.a aVar) {
        this.f22276b = q10;
        this.f22277c = aVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22276b.a(new a(n10, this.f22277c));
    }
}
