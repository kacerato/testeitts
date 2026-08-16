package Me;

import Be.AbstractC2368s;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class C2829o<T> extends AbstractC2368s<T> {

    public final Be.y<T> f15150b;

    public final InterfaceC2359i f15151c;

    public static final class a<T> implements Be.v<T> {

        public final AtomicReference<De.c> f15152b;

        public final Be.v<? super T> f15153c;

        public a(AtomicReference<De.c> atomicReference, Be.v<? super T> vVar) {
            this.f15152b = atomicReference;
            this.f15153c = vVar;
        }

        @Override
        public void a() {
            this.f15153c.a();
        }

        @Override
        public void b(T t10) {
            this.f15153c.b(t10);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.c(this.f15152b, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15153c.onError(th2);
        }
    }

    public static final class b<T> extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

        public static final long f15154d = 703409937383992161L;

        public final Be.v<? super T> f15155b;

        public final Be.y<T> f15156c;

        public b(Be.v<? super T> vVar, Be.y<T> yVar) {
            this.f15155b = vVar;
            this.f15156c = yVar;
        }

        @Override
        public void a() {
            this.f15156c.d(new a(this, this.f15155b));
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar)) {
                this.f15155b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15155b.onError(th2);
        }
    }

    public C2829o(Be.y<T> yVar, InterfaceC2359i interfaceC2359i) {
        this.f15150b = yVar;
        this.f15151c = interfaceC2359i;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f15151c.b(new b(vVar, this.f15150b));
    }
}
