package Me;

import Be.AbstractC2362l;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2819e<T> extends AbstractC2362l<T> {

    public final Be.y<? extends T>[] f15017c;

    public static final class a<T> extends AtomicInteger implements Be.v<T>, hn.d {

        public static final long f15018i = 3520831347801429610L;

        public final hn.c<? super T> f15019b;

        public final Be.y<? extends T>[] f15023f;

        public int f15024g;

        public long f15025h;

        public final AtomicLong f15020c = new AtomicLong();

        public final Ge.h f15022e = new Ge.h();

        public final AtomicReference<Object> f15021d = new AtomicReference<>(io.reactivex.internal.util.p.COMPLETE);

        public a(hn.c<? super T> cVar, Be.y<? extends T>[] yVarArr) {
            this.f15019b = cVar;
            this.f15023f = yVarArr;
        }

        @Override
        public void a() {
            this.f15021d.lazySet(io.reactivex.internal.util.p.COMPLETE);
            c();
        }

        @Override
        public void b(T t10) {
            this.f15021d.lazySet(t10);
            c();
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f15021d;
            hn.c<? super T> cVar = this.f15019b;
            Ge.h hVar = this.f15022e;
            while (!hVar.d()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    if (obj != io.reactivex.internal.util.p.COMPLETE) {
                        long j10 = this.f15025h;
                        if (j10 != this.f15020c.get()) {
                            this.f15025h = j10 + 1;
                            atomicReference.lazySet(null);
                            cVar.h(obj);
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (!hVar.d()) {
                        int i10 = this.f15024g;
                        Be.y<? extends T>[] yVarArr = this.f15023f;
                        if (i10 == yVarArr.length) {
                            cVar.a();
                            return;
                        } else {
                            this.f15024g = i10 + 1;
                            yVarArr[i10].d(this);
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override
        public void cancel() {
            this.f15022e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            this.f15022e.a(cVar);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f15020c, j10);
                c();
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15019b.onError(th2);
        }
    }

    public C2819e(Be.y<? extends T>[] yVarArr) {
        this.f15017c = yVarArr;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar, this.f15017c);
        cVar.j(aVar);
        aVar.c();
    }
}
