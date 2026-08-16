package Oe;

import java.util.concurrent.atomic.AtomicInteger;

public final class P0<T> extends AbstractC2859a<T, T> {

    public final long f19125c;

    public static final class a<T> extends AtomicInteger implements Be.I<T> {

        public static final long f19126f = -7098360935104053232L;

        public final Be.I<? super T> f19127b;

        public final Ge.h f19128c;

        public final Be.G<? extends T> f19129d;

        public long f19130e;

        public a(Be.I<? super T> i10, long j10, Ge.h hVar, Be.G<? extends T> g10) {
            this.f19127b = i10;
            this.f19128c = hVar;
            this.f19129d = g10;
            this.f19130e = j10;
        }

        @Override
        public void a() {
            long j10 = this.f19130e;
            if (j10 != Long.MAX_VALUE) {
                this.f19130e = j10 - 1;
            }
            if (j10 != 0) {
                b();
            } else {
                this.f19127b.a();
            }
        }

        public void b() {
            if (getAndIncrement() == 0) {
                int i10 = 1;
                while (!this.f19128c.d()) {
                    this.f19129d.c(this);
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f19128c.a(cVar);
        }

        @Override
        public void h(T t10) {
            this.f19127b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19127b.onError(th2);
        }
    }

    public P0(Be.B<T> b10, long j10) {
        super(b10);
        this.f19125c = j10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        Ge.h hVar = new Ge.h();
        i10.e(hVar);
        long j10 = this.f19125c;
        new a(i10, j10 != Long.MAX_VALUE ? j10 - 1 : Long.MAX_VALUE, hVar, this.f19344b).b();
    }
}
