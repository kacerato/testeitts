package Me;

import java.util.concurrent.atomic.AtomicInteger;

public final class r<T> extends AbstractC2815a<T, T> {

    public final Fe.a f15171c;

    public static final class a<T> extends AtomicInteger implements Be.v<T>, De.c {

        public static final long f15172e = 4109457741734051389L;

        public final Be.v<? super T> f15173b;

        public final Fe.a f15174c;

        public De.c f15175d;

        public a(Be.v<? super T> vVar, Fe.a aVar) {
            this.f15173b = vVar;
            this.f15174c = aVar;
        }

        @Override
        public void a() {
            this.f15173b.a();
            c();
        }

        @Override
        public void b(T t10) {
            this.f15173b.b(t10);
            c();
        }

        public void c() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f15174c.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public boolean d() {
            return this.f15175d.d();
        }

        @Override
        public void dispose() {
            this.f15175d.dispose();
            c();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15175d, cVar)) {
                this.f15175d = cVar;
                this.f15173b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15173b.onError(th2);
            c();
        }
    }

    public r(Be.y<T> yVar, Fe.a aVar) {
        super(yVar);
        this.f15171c = aVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15171c));
    }
}
