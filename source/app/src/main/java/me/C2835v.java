package Me;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2835v<T> extends Be.K<Boolean> {

    public final Be.y<? extends T> f15210b;

    public final Be.y<? extends T> f15211c;

    public final Fe.d<? super T, ? super T> f15212d;

    public static final class a<T> extends AtomicInteger implements De.c {

        public final Be.N<? super Boolean> f15213b;

        public final b<T> f15214c;

        public final b<T> f15215d;

        public final Fe.d<? super T, ? super T> f15216e;

        public a(Be.N<? super Boolean> n10, Fe.d<? super T, ? super T> dVar) {
            super(2);
            this.f15213b = n10;
            this.f15216e = dVar;
            this.f15214c = new b<>(this);
            this.f15215d = new b<>(this);
        }

        public void a() {
            if (decrementAndGet() == 0) {
                Object obj = this.f15214c.f15219c;
                Object obj2 = this.f15215d.f15219c;
                if (obj == null || obj2 == null) {
                    this.f15213b.b(Boolean.valueOf(obj == null && obj2 == null));
                    return;
                }
                try {
                    this.f15213b.b(Boolean.valueOf(this.f15216e.test(obj, obj2)));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f15213b.onError(th2);
                }
            }
        }

        public void b(b<T> bVar, Throwable th2) {
            if (getAndSet(0) <= 0) {
                Ye.a.Y(th2);
                return;
            }
            b<T> bVar2 = this.f15214c;
            if (bVar == bVar2) {
                this.f15215d.c();
            } else {
                bVar2.c();
            }
            this.f15213b.onError(th2);
        }

        public void c(Be.y<? extends T> yVar, Be.y<? extends T> yVar2) {
            yVar.d(this.f15214c);
            yVar2.d(this.f15215d);
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f15214c.get());
        }

        @Override
        public void dispose() {
            this.f15214c.c();
            this.f15215d.c();
        }
    }

    public static final class b<T> extends AtomicReference<De.c> implements Be.v<T> {

        public static final long f15217d = -3031974433025990931L;

        public final a<T> f15218b;

        public Object f15219c;

        public b(a<T> aVar) {
            this.f15218b = aVar;
        }

        @Override
        public void a() {
            this.f15218b.a();
        }

        @Override
        public void b(T t10) {
            this.f15219c = t10;
            this.f15218b.a();
        }

        public void c() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15218b.b(this, th2);
        }
    }

    public C2835v(Be.y<? extends T> yVar, Be.y<? extends T> yVar2, Fe.d<? super T, ? super T> dVar) {
        this.f15210b = yVar;
        this.f15211c = yVar2;
        this.f15212d = dVar;
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        a aVar = new a(n10, this.f15212d);
        n10.e(aVar);
        aVar.c(this.f15210b, this.f15211c);
    }
}
