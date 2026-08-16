package Ke;

import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.Callable;

public final class Q<T> extends Be.K<T> {

    public final InterfaceC2359i f11211b;

    public final Callable<? extends T> f11212c;

    public final T f11213d;

    public final class a implements InterfaceC2356f {

        public final Be.N<? super T> f11214b;

        public a(Be.N<? super T> n10) {
            this.f11214b = n10;
        }

        @Override
        public void a() {
            T call;
            Q q10 = Q.this;
            Callable<? extends T> callable = q10.f11212c;
            if (callable != null) {
                try {
                    call = callable.call();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f11214b.onError(th2);
                    return;
                }
            } else {
                call = q10.f11213d;
            }
            if (call == null) {
                this.f11214b.onError(new NullPointerException("The value supplied is null"));
            } else {
                this.f11214b.b(call);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11214b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11214b.onError(th2);
        }
    }

    public Q(InterfaceC2359i interfaceC2359i, Callable<? extends T> callable, T t10) {
        this.f11211b = interfaceC2359i;
        this.f11213d = t10;
        this.f11212c = callable;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f11211b.b(new a(n10));
    }
}
