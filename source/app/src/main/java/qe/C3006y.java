package Qe;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class C3006y<T> extends AbstractC2353c {

    public final Be.Q<T> f22323b;

    public final Fe.o<? super T, ? extends InterfaceC2359i> f22324c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.N<T>, InterfaceC2356f, De.c {

        public static final long f22325d = -2177128922851101253L;

        public final InterfaceC2356f f22326b;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f22327c;

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
            this.f22326b = interfaceC2356f;
            this.f22327c = oVar;
        }

        @Override
        public void a() {
            this.f22326b.a();
        }

        @Override
        public void b(T t10) {
            try {
                InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f22327c.apply(t10), "The mapper returned a null CompletableSource");
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
            this.f22326b.onError(th2);
        }
    }

    public C3006y(Be.Q<T> q10, Fe.o<? super T, ? extends InterfaceC2359i> oVar) {
        this.f22323b = q10;
        this.f22324c = oVar;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f, this.f22324c);
        interfaceC2356f.e(aVar);
        this.f22323b.a(aVar);
    }
}
