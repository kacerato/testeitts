package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicReference;

public final class A<T> extends AbstractC2692a<T, T> {

    public final InterfaceC2359i f11719d;

    public static final class a<T> extends AtomicReference<De.c> implements InterfaceC2367q<T>, InterfaceC2356f, hn.d {

        public static final long f11720f = -7346385463600070225L;

        public final hn.c<? super T> f11721b;

        public hn.d f11722c;

        public InterfaceC2359i f11723d;

        public boolean f11724e;

        public a(hn.c<? super T> cVar, InterfaceC2359i interfaceC2359i) {
            this.f11721b = cVar;
            this.f11723d = interfaceC2359i;
        }

        @Override
        public void a() {
            if (this.f11724e) {
                this.f11721b.a();
                return;
            }
            this.f11724e = true;
            this.f11722c = Ue.j.CANCELLED;
            InterfaceC2359i interfaceC2359i = this.f11723d;
            this.f11723d = null;
            interfaceC2359i.b(this);
        }

        @Override
        public void cancel() {
            this.f11722c.cancel();
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void h(T t10) {
            this.f11721b.h(t10);
        }

        @Override
        public void i(long j10) {
            this.f11722c.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11722c, dVar)) {
                this.f11722c = dVar;
                this.f11721b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11721b.onError(th2);
        }
    }

    public A(AbstractC2362l<T> abstractC2362l, InterfaceC2359i interfaceC2359i) {
        super(abstractC2362l);
        this.f11719d = interfaceC2359i;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11719d));
    }
}
