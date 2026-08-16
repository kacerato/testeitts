package Oe;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicInteger;

public final class T0<T> extends AbstractC2859a<T, T> {

    public final Fe.d<? super Integer, ? super Throwable> f19218c;

    public static final class a<T> extends AtomicInteger implements Be.I<T> {

        public static final long f19219g = -7098360935104053232L;

        public final Be.I<? super T> f19220b;

        public final Ge.h f19221c;

        public final Be.G<? extends T> f19222d;

        public final Fe.d<? super Integer, ? super Throwable> f19223e;

        public int f19224f;

        public a(Be.I<? super T> i10, Fe.d<? super Integer, ? super Throwable> dVar, Ge.h hVar, Be.G<? extends T> g10) {
            this.f19220b = i10;
            this.f19221c = hVar;
            this.f19222d = g10;
            this.f19223e = dVar;
        }

        @Override
        public void a() {
            this.f19220b.a();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                int i10 = 1;
                while (!this.f19221c.d()) {
                    this.f19222d.c(this);
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f19221c.a(cVar);
        }

        @Override
        public void h(T t10) {
            this.f19220b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                Fe.d<? super Integer, ? super Throwable> dVar = this.f19223e;
                int i10 = this.f19224f + 1;
                this.f19224f = i10;
                if (dVar.test(Integer.valueOf(i10), th2)) {
                    b();
                } else {
                    this.f19220b.onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f19220b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public T0(Be.B<T> b10, Fe.d<? super Integer, ? super Throwable> dVar) {
        super(b10);
        this.f19218c = dVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        Ge.h hVar = new Ge.h();
        i10.e(hVar);
        new a(i10, this.f19218c, hVar, this.f19344b).b();
    }
}
