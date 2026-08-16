package Oe;

import java.util.concurrent.atomic.AtomicReference;

public final class C2894l1<T> extends AbstractC2859a<T, T> {

    public final Be.J f19623c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.I<T>, De.c {

        public static final long f19624d = 8094547886072529208L;

        public final Be.I<? super T> f19625b;

        public final AtomicReference<De.c> f19626c = new AtomicReference<>();

        public a(Be.I<? super T> i10) {
            this.f19625b = i10;
        }

        @Override
        public void a() {
            this.f19625b.a();
        }

        public void b(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f19626c);
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f19626c, cVar);
        }

        @Override
        public void h(T t10) {
            this.f19625b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19625b.onError(th2);
        }
    }

    public final class b implements Runnable {

        public final a<T> f19627b;

        public b(a<T> aVar) {
            this.f19627b = aVar;
        }

        @Override
        public void run() {
            C2894l1.this.f19344b.c(this.f19627b);
        }
    }

    public C2894l1(Be.G<T> g10, Be.J j10) {
        super(g10);
        this.f19623c = j10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10);
        i10.e(aVar);
        aVar.b(this.f19623c.f(new b(aVar)));
    }
}
