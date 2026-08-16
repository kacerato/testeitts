package Oe;

import java.util.concurrent.atomic.AtomicReference;

public final class C2921y<T> extends AbstractC2859a<T, T> {

    public final Be.y<? extends T> f20028c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.I<T>, Be.v<T>, De.c {

        public static final long f20029e = -1953724749712440952L;

        public final Be.I<? super T> f20030b;

        public Be.y<? extends T> f20031c;

        public boolean f20032d;

        public a(Be.I<? super T> i10, Be.y<? extends T> yVar) {
            this.f20030b = i10;
            this.f20031c = yVar;
        }

        @Override
        public void a() {
            if (this.f20032d) {
                this.f20030b.a();
                return;
            }
            this.f20032d = true;
            Ge.d.c(this, null);
            Be.y<? extends T> yVar = this.f20031c;
            this.f20031c = null;
            yVar.d(this);
        }

        @Override
        public void b(T t10) {
            this.f20030b.h(t10);
            this.f20030b.a();
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
            if (!Ge.d.h(this, cVar) || this.f20032d) {
                return;
            }
            this.f20030b.e(this);
        }

        @Override
        public void h(T t10) {
            this.f20030b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f20030b.onError(th2);
        }
    }

    public C2921y(Be.B<T> b10, Be.y<? extends T> yVar) {
        super(b10);
        this.f20028c = yVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f20028c));
    }
}
