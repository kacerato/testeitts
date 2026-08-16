package Oe;

import java.util.concurrent.atomic.AtomicInteger;

public final class Q0<T> extends AbstractC2859a<T, T> {

    public final Fe.e f19141c;

    public static final class a<T> extends AtomicInteger implements Be.I<T> {

        public static final long f19142f = -7098360935104053232L;

        public final Be.I<? super T> f19143b;

        public final Ge.h f19144c;

        public final Be.G<? extends T> f19145d;

        public final Fe.e f19146e;

        public a(Be.I<? super T> i10, Fe.e eVar, Ge.h hVar, Be.G<? extends T> g10) {
            this.f19143b = i10;
            this.f19144c = hVar;
            this.f19145d = g10;
            this.f19146e = eVar;
        }

        @Override
        public void a() {
            try {
                if (this.f19146e.getAsBoolean()) {
                    this.f19143b.a();
                } else {
                    b();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19143b.onError(th2);
            }
        }

        public void b() {
            if (getAndIncrement() == 0) {
                int i10 = 1;
                do {
                    this.f19145d.c(this);
                    i10 = addAndGet(-i10);
                } while (i10 != 0);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f19144c.a(cVar);
        }

        @Override
        public void h(T t10) {
            this.f19143b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19143b.onError(th2);
        }
    }

    public Q0(Be.B<T> b10, Fe.e eVar) {
        super(b10);
        this.f19141c = eVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        Ge.h hVar = new Ge.h();
        i10.e(hVar);
        new a(i10, this.f19141c, hVar, this.f19344b).b();
    }
}
