package Me;

import java.util.concurrent.atomic.AtomicReference;

public final class f0<T> extends AbstractC2815a<T, T> {

    public final Be.J f15045c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f15046d = 8571289934935992137L;

        public final Ge.h f15047b = new Ge.h();

        public final Be.v<? super T> f15048c;

        public a(Be.v<? super T> vVar) {
            this.f15048c = vVar;
        }

        @Override
        public void a() {
            this.f15048c.a();
        }

        @Override
        public void b(T t10) {
            this.f15048c.b(t10);
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            this.f15047b.dispose();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15048c.onError(th2);
        }
    }

    public static final class b<T> implements Runnable {

        public final Be.v<? super T> f15049b;

        public final Be.y<T> f15050c;

        public b(Be.v<? super T> vVar, Be.y<T> yVar) {
            this.f15049b = vVar;
            this.f15050c = yVar;
        }

        @Override
        public void run() {
            this.f15050c.d(this.f15049b);
        }
    }

    public f0(Be.y<T> yVar, Be.J j10) {
        super(yVar);
        this.f15045c = j10;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        a aVar = new a(vVar);
        vVar.e(aVar);
        aVar.f15047b.a(this.f15045c.f(new b(aVar, this.f14976b)));
    }
}
