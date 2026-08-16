package Qe;

import java.util.concurrent.atomic.AtomicInteger;

public final class C3003v<T> extends Be.K<Boolean> {

    public final Be.Q<? extends T> f22308b;

    public final Be.Q<? extends T> f22309c;

    public static class a<T> implements Be.N<T> {

        public final int f22310b;

        public final De.b f22311c;

        public final Object[] f22312d;

        public final Be.N<? super Boolean> f22313e;

        public final AtomicInteger f22314f;

        public a(int i10, De.b bVar, Object[] objArr, Be.N<? super Boolean> n10, AtomicInteger atomicInteger) {
            this.f22310b = i10;
            this.f22311c = bVar;
            this.f22312d = objArr;
            this.f22313e = n10;
            this.f22314f = atomicInteger;
        }

        @Override
        public void b(T t10) {
            this.f22312d[this.f22310b] = t10;
            if (this.f22314f.incrementAndGet() == 2) {
                Be.N<? super Boolean> n10 = this.f22313e;
                Object[] objArr = this.f22312d;
                n10.b(Boolean.valueOf(He.b.c(objArr[0], objArr[1])));
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f22311c.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            int i10;
            do {
                i10 = this.f22314f.get();
                if (i10 >= 2) {
                    Ye.a.Y(th2);
                    return;
                }
            } while (!this.f22314f.compareAndSet(i10, 2));
            this.f22311c.dispose();
            this.f22313e.onError(th2);
        }
    }

    public C3003v(Be.Q<? extends T> q10, Be.Q<? extends T> q11) {
        this.f22308b = q10;
        this.f22309c = q11;
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        AtomicInteger atomicInteger = new AtomicInteger();
        Object[] objArr = {null, null};
        De.b bVar = new De.b();
        n10.e(bVar);
        this.f22308b.a(new a(0, bVar, objArr, n10, atomicInteger));
        this.f22309c.a(new a(1, bVar, objArr, n10, atomicInteger));
    }
}
