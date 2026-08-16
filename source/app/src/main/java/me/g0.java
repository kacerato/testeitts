package Me;

import java.util.concurrent.atomic.AtomicReference;

public final class g0<T> extends AbstractC2815a<T, T> {

    public final Be.y<? extends T> f15059c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f15060d = -2223459372976438024L;

        public final Be.v<? super T> f15061b;

        public final Be.y<? extends T> f15062c;

        public static final class C0428a<T> implements Be.v<T> {

            public final Be.v<? super T> f15063b;

            public final AtomicReference<De.c> f15064c;

            public C0428a(Be.v<? super T> vVar, AtomicReference<De.c> atomicReference) {
                this.f15063b = vVar;
                this.f15064c = atomicReference;
            }

            @Override
            public void a() {
                this.f15063b.a();
            }

            @Override
            public void b(T t10) {
                this.f15063b.b(t10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this.f15064c, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f15063b.onError(th2);
            }
        }

        public a(Be.v<? super T> vVar, Be.y<? extends T> yVar) {
            this.f15061b = vVar;
            this.f15062c = yVar;
        }

        @Override
        public void a() {
            De.c cVar = get();
            if (cVar == Ge.d.DISPOSED || !compareAndSet(cVar, null)) {
                return;
            }
            this.f15062c.d(new C0428a(this.f15061b, this));
        }

        @Override
        public void b(T t10) {
            this.f15061b.b(t10);
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
                this.f15061b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15061b.onError(th2);
        }
    }

    public g0(Be.y<T> yVar, Be.y<? extends T> yVar2) {
        super(yVar);
        this.f15059c = yVar2;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15059c));
    }
}
