package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

public final class M extends AbstractC2353c {

    public final InterfaceC2359i f11189b;

    public final long f11190c;

    public final TimeUnit f11191d;

    public final Be.J f11192e;

    public final InterfaceC2359i f11193f;

    public final class a implements Runnable {

        public final AtomicBoolean f11194b;

        public final De.b f11195c;

        public final InterfaceC2356f f11196d;

        public final class C0370a implements InterfaceC2356f {
            public C0370a() {
            }

            @Override
            public void a() {
                a.this.f11195c.dispose();
                a.this.f11196d.a();
            }

            @Override
            public void e(De.c cVar) {
                a.this.f11195c.a(cVar);
            }

            @Override
            public void onError(Throwable th2) {
                a.this.f11195c.dispose();
                a.this.f11196d.onError(th2);
            }
        }

        public a(AtomicBoolean atomicBoolean, De.b bVar, InterfaceC2356f interfaceC2356f) {
            this.f11194b = atomicBoolean;
            this.f11195c = bVar;
            this.f11196d = interfaceC2356f;
        }

        @Override
        public void run() {
            if (this.f11194b.compareAndSet(false, true)) {
                this.f11195c.f();
                InterfaceC2359i interfaceC2359i = M.this.f11193f;
                if (interfaceC2359i != null) {
                    interfaceC2359i.b(new C0370a());
                    return;
                }
                InterfaceC2356f interfaceC2356f = this.f11196d;
                M m10 = M.this;
                interfaceC2356f.onError(new TimeoutException(ExceptionHelper.e(m10.f11190c, m10.f11191d)));
            }
        }
    }

    public static final class b implements InterfaceC2356f {

        public final De.b f11199b;

        public final AtomicBoolean f11200c;

        public final InterfaceC2356f f11201d;

        public b(De.b bVar, AtomicBoolean atomicBoolean, InterfaceC2356f interfaceC2356f) {
            this.f11199b = bVar;
            this.f11200c = atomicBoolean;
            this.f11201d = interfaceC2356f;
        }

        @Override
        public void a() {
            if (this.f11200c.compareAndSet(false, true)) {
                this.f11199b.dispose();
                this.f11201d.a();
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11199b.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f11200c.compareAndSet(false, true)) {
                Ye.a.Y(th2);
            } else {
                this.f11199b.dispose();
                this.f11201d.onError(th2);
            }
        }
    }

    public M(InterfaceC2359i interfaceC2359i, long j10, TimeUnit timeUnit, Be.J j11, InterfaceC2359i interfaceC2359i2) {
        this.f11189b = interfaceC2359i;
        this.f11190c = j10;
        this.f11191d = timeUnit;
        this.f11192e = j11;
        this.f11193f = interfaceC2359i2;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        De.b bVar = new De.b();
        interfaceC2356f.e(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        bVar.a(this.f11192e.g(new a(atomicBoolean, bVar, interfaceC2356f), this.f11190c, this.f11191d));
        this.f11189b.b(new b(bVar, atomicBoolean, interfaceC2356f));
    }
}
