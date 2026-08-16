package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2685l extends AbstractC2353c {

    public final InterfaceC2359i f11299b;

    public final Fe.a f11300c;

    public static final class a extends AtomicInteger implements InterfaceC2356f, De.c {

        public static final long f11301e = 4109457741734051389L;

        public final InterfaceC2356f f11302b;

        public final Fe.a f11303c;

        public De.c f11304d;

        public a(InterfaceC2356f interfaceC2356f, Fe.a aVar) {
            this.f11302b = interfaceC2356f;
            this.f11303c = aVar;
        }

        @Override
        public void a() {
            this.f11302b.a();
            b();
        }

        public void b() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f11303c.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            }
        }

        @Override
        public boolean d() {
            return this.f11304d.d();
        }

        @Override
        public void dispose() {
            this.f11304d.dispose();
            b();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f11304d, cVar)) {
                this.f11304d = cVar;
                this.f11302b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11302b.onError(th2);
            b();
        }
    }

    public C2685l(InterfaceC2359i interfaceC2359i, Fe.a aVar) {
        this.f11299b = interfaceC2359i;
        this.f11300c = aVar;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11299b.b(new a(interfaceC2356f, this.f11300c));
    }
}
