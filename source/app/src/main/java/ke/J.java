package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class J extends AbstractC2353c {

    public final InterfaceC2359i f11169b;

    public final Fe.o<? super Throwable, ? extends InterfaceC2359i> f11170c;

    public static final class a extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

        public static final long f11171e = 5018523762564524046L;

        public final InterfaceC2356f f11172b;

        public final Fe.o<? super Throwable, ? extends InterfaceC2359i> f11173c;

        public boolean f11174d;

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super Throwable, ? extends InterfaceC2359i> oVar) {
            this.f11172b = interfaceC2356f;
            this.f11173c = oVar;
        }

        @Override
        public void a() {
            this.f11172b.a();
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
            if (this.f11174d) {
                this.f11172b.onError(th2);
                return;
            }
            this.f11174d = true;
            try {
                ((InterfaceC2359i) He.b.g(this.f11173c.apply(th2), "The errorMapper returned a null CompletableSource")).b(this);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f11172b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public J(InterfaceC2359i interfaceC2359i, Fe.o<? super Throwable, ? extends InterfaceC2359i> oVar) {
        this.f11169b = interfaceC2359i;
        this.f11170c = oVar;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f, this.f11170c);
        interfaceC2356f.e(aVar);
        this.f11169b.b(aVar);
    }
}
