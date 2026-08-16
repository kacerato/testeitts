package Me;

import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class k0<T, U> extends AbstractC2815a<T, T> {

    public final Be.y<U> f15096c;

    public final Be.y<? extends T> f15097d;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T> {

        public static final long f15098c = 8663801314800248617L;

        public final Be.v<? super T> f15099b;

        public a(Be.v<? super T> vVar) {
            this.f15099b = vVar;
        }

        @Override
        public void a() {
            this.f15099b.a();
        }

        @Override
        public void b(T t10) {
            this.f15099b.b(t10);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15099b.onError(th2);
        }
    }

    public static final class b<T, U> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f15100f = -5955289211445418871L;

        public final Be.v<? super T> f15101b;

        public final c<T, U> f15102c = new c<>(this);

        public final Be.y<? extends T> f15103d;

        public final a<T> f15104e;

        public b(Be.v<? super T> vVar, Be.y<? extends T> yVar) {
            this.f15101b = vVar;
            this.f15103d = yVar;
            this.f15104e = yVar != null ? new a<>(vVar) : null;
        }

        @Override
        public void a() {
            Ge.d.a(this.f15102c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15101b.a();
            }
        }

        @Override
        public void b(T t10) {
            Ge.d.a(this.f15102c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15101b.b(t10);
            }
        }

        public void c() {
            if (Ge.d.a(this)) {
                Be.y<? extends T> yVar = this.f15103d;
                if (yVar == null) {
                    this.f15101b.onError(new TimeoutException());
                } else {
                    yVar.d(this.f15104e);
                }
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            Ge.d.a(this.f15102c);
            a<T> aVar = this.f15104e;
            if (aVar != null) {
                Ge.d.a(aVar);
            }
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        public void f(Throwable th2) {
            if (Ge.d.a(this)) {
                this.f15101b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f15102c);
            Ge.d dVar = Ge.d.DISPOSED;
            if (getAndSet(dVar) != dVar) {
                this.f15101b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public static final class c<T, U> extends AtomicReference<De.c> implements Be.v<Object> {

        public static final long f15105c = 8663801314800248617L;

        public final b<T, U> f15106b;

        public c(b<T, U> bVar) {
            this.f15106b = bVar;
        }

        @Override
        public void a() {
            this.f15106b.c();
        }

        @Override
        public void b(Object obj) {
            this.f15106b.c();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15106b.f(th2);
        }
    }

    public k0(Be.y<T> yVar, Be.y<U> yVar2, Be.y<? extends T> yVar3) {
        super(yVar);
        this.f15096c = yVar2;
        this.f15097d = yVar3;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        b bVar = new b(vVar, this.f15097d);
        vVar.e(bVar);
        this.f15096c.d(bVar.f15102c);
        this.f14976b.d(bVar);
    }
}
