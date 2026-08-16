package Oe;

import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class C2919x<T> extends AbstractC2859a<T, T> {

    public final InterfaceC2359i f20014c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.I<T>, InterfaceC2356f, De.c {

        public static final long f20015e = -1953724749712440952L;

        public final Be.I<? super T> f20016b;

        public InterfaceC2359i f20017c;

        public boolean f20018d;

        public a(Be.I<? super T> i10, InterfaceC2359i interfaceC2359i) {
            this.f20016b = i10;
            this.f20017c = interfaceC2359i;
        }

        @Override
        public void a() {
            if (this.f20018d) {
                this.f20016b.a();
                return;
            }
            this.f20018d = true;
            Ge.d.c(this, null);
            InterfaceC2359i interfaceC2359i = this.f20017c;
            this.f20017c = null;
            interfaceC2359i.b(this);
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
            if (!Ge.d.h(this, cVar) || this.f20018d) {
                return;
            }
            this.f20016b.e(this);
        }

        @Override
        public void h(T t10) {
            this.f20016b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f20016b.onError(th2);
        }
    }

    public C2919x(Be.B<T> b10, InterfaceC2359i interfaceC2359i) {
        super(b10);
        this.f20014c = interfaceC2359i;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f20014c));
    }
}
