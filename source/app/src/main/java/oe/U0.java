package Oe;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicInteger;

public final class U0<T> extends AbstractC2859a<T, T> {

    public final Fe.r<? super Throwable> f19226c;

    public final long f19227d;

    public static final class a<T> extends AtomicInteger implements Be.I<T> {

        public static final long f19228g = -7098360935104053232L;

        public final Be.I<? super T> f19229b;

        public final Ge.h f19230c;

        public final Be.G<? extends T> f19231d;

        public final Fe.r<? super Throwable> f19232e;

        public long f19233f;

        public a(Be.I<? super T> i10, long j10, Fe.r<? super Throwable> rVar, Ge.h hVar, Be.G<? extends T> g10) {
            this.f19229b = i10;
            this.f19230c = hVar;
            this.f19231d = g10;
            this.f19232e = rVar;
            this.f19233f = j10;
        }

        @Override
        public void a() {
            this.f19229b.a();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                int i10 = 1;
                while (!this.f19230c.d()) {
                    this.f19231d.c(this);
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f19230c.a(cVar);
        }

        @Override
        public void h(T t10) {
            this.f19229b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            long j10 = this.f19233f;
            if (j10 != Long.MAX_VALUE) {
                this.f19233f = j10 - 1;
            }
            if (j10 == 0) {
                this.f19229b.onError(th2);
                return;
            }
            try {
                if (this.f19232e.test(th2)) {
                    b();
                } else {
                    this.f19229b.onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f19229b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public U0(Be.B<T> b10, long j10, Fe.r<? super Throwable> rVar) {
        super(b10);
        this.f19226c = rVar;
        this.f19227d = j10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        Ge.h hVar = new Ge.h();
        i10.e(hVar);
        new a(i10, this.f19227d, this.f19226c, hVar, this.f19344b).b();
    }
}
