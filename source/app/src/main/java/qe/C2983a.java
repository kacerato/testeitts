package Qe;

import java.util.concurrent.atomic.AtomicBoolean;

public final class C2983a<T> extends Be.K<T> {

    public final Be.Q<? extends T>[] f22195b;

    public final Iterable<? extends Be.Q<? extends T>> f22196c;

    public static final class C0536a<T> implements Be.N<T> {

        public final De.b f22197b;

        public final Be.N<? super T> f22198c;

        public final AtomicBoolean f22199d;

        public De.c f22200e;

        public C0536a(Be.N<? super T> n10, De.b bVar, AtomicBoolean atomicBoolean) {
            this.f22198c = n10;
            this.f22197b = bVar;
            this.f22199d = atomicBoolean;
        }

        @Override
        public void b(T t10) {
            if (this.f22199d.compareAndSet(false, true)) {
                this.f22197b.b(this.f22200e);
                this.f22197b.dispose();
                this.f22198c.b(t10);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f22200e = cVar;
            this.f22197b.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f22199d.compareAndSet(false, true)) {
                Ye.a.Y(th2);
                return;
            }
            this.f22197b.b(this.f22200e);
            this.f22197b.dispose();
            this.f22198c.onError(th2);
        }
    }

    public C2983a(Be.Q<? extends T>[] qArr, Iterable<? extends Be.Q<? extends T>> iterable) {
        this.f22195b = qArr;
        this.f22196c = iterable;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        int length;
        Be.Q<? extends T>[] qArr = this.f22195b;
        if (qArr == null) {
            qArr = new Be.Q[8];
            try {
                length = 0;
                for (Be.Q<? extends T> q10 : this.f22196c) {
                    if (q10 == null) {
                        Ge.e.i(new NullPointerException("One of the sources is null"), n10);
                        return;
                    }
                    if (length == qArr.length) {
                        Be.Q<? extends T>[] qArr2 = new Be.Q[(length >> 2) + length];
                        System.arraycopy(qArr, 0, qArr2, 0, length);
                        qArr = qArr2;
                    }
                    int i10 = length + 1;
                    qArr[length] = q10;
                    length = i10;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ge.e.i(th2, n10);
                return;
            }
        } else {
            length = qArr.length;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        De.b bVar = new De.b();
        n10.e(bVar);
        for (int i11 = 0; i11 < length; i11++) {
            Be.Q<? extends T> q11 = qArr[i11];
            if (bVar.d()) {
                return;
            }
            if (q11 == null) {
                bVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    n10.onError(nullPointerException);
                    return;
                } else {
                    Ye.a.Y(nullPointerException);
                    return;
                }
            }
            q11.a(new C0536a(n10, bVar, atomicBoolean));
        }
    }
}
