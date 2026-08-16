package Me;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class B<T> extends AbstractC2353c {

    public final Be.y<T> f14874b;

    public final Fe.o<? super T, ? extends InterfaceC2359i> f14875c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T>, InterfaceC2356f, De.c {

        public static final long f14876d = -2177128922851101253L;

        public final InterfaceC2356f f14877b;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f14878c;

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
            this.f14877b = interfaceC2356f;
            this.f14878c = oVar;
        }

        @Override
        public void a() {
            this.f14877b.a();
        }

        @Override
        public void b(T t10) {
            try {
                InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f14878c.apply(t10), "The mapper returned a null CompletableSource");
                if (d()) {
                    return;
                }
                interfaceC2359i.b(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
            }
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
            Ge.d.c(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f14877b.onError(th2);
        }
    }

    public B(Be.y<T> yVar, Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        this.f14874b = yVar;
        this.f14875c = oVar;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f, this.f14875c);
        interfaceC2356f.e(aVar);
        this.f14874b.d(aVar);
    }
}
