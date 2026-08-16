package Me;

import java.util.concurrent.atomic.AtomicReference;

public final class h0<T> extends Be.K<T> implements Ie.f<T> {

    public final Be.y<T> f15070b;

    public final Be.Q<? extends T> f15071c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f15072d = 4603919676453758899L;

        public final Be.N<? super T> f15073b;

        public final Be.Q<? extends T> f15074c;

        public static final class C0429a<T> implements Be.N<T> {

            public final Be.N<? super T> f15075b;

            public final AtomicReference<De.c> f15076c;

            public C0429a(Be.N<? super T> n10, AtomicReference<De.c> atomicReference) {
                this.f15075b = n10;
                this.f15076c = atomicReference;
            }

            @Override
            public void b(T t10) {
                this.f15075b.b(t10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this.f15076c, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f15075b.onError(th2);
            }
        }

        public a(Be.N<? super T> n10, Be.Q<? extends T> q10) {
            this.f15073b = n10;
            this.f15074c = q10;
        }

        @Override
        public void a() {
            De.c cVar = get();
            if (cVar == Ge.d.DISPOSED || !compareAndSet(cVar, null)) {
                return;
            }
            this.f15074c.a(new C0429a(this.f15073b, this));
        }

        @Override
        public void b(T t10) {
            this.f15073b.b(t10);
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
            if (Ge.d.h(this, cVar)) {
                this.f15073b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15073b.onError(th2);
        }
    }

    public h0(Be.y<T> yVar, Be.Q<? extends T> q10) {
        this.f15070b = yVar;
        this.f15071c = q10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f15070b.d(new a(n10, this.f15071c));
    }

    @Override
    public Be.y<T> source() {
        return this.f15070b;
    }
}
