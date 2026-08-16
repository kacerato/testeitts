package Me;

import Be.AbstractC2362l;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2820f<T> extends AbstractC2362l<T> {

    public final Be.y<? extends T>[] f15035c;

    public static final class a<T> extends AtomicInteger implements Be.v<T>, hn.d {

        public static final long f15036j = 3520831347801429610L;

        public final hn.c<? super T> f15037b;

        public final Be.y<? extends T>[] f15041f;

        public int f15043h;

        public long f15044i;

        public final AtomicLong f15038c = new AtomicLong();

        public final Ge.h f15040e = new Ge.h();

        public final AtomicReference<Object> f15039d = new AtomicReference<>(io.reactivex.internal.util.p.COMPLETE);

        public final io.reactivex.internal.util.c f15042g = new io.reactivex.internal.util.c();

        public a(hn.c<? super T> cVar, Be.y<? extends T>[] yVarArr) {
            this.f15037b = cVar;
            this.f15041f = yVarArr;
        }

        @Override
        public void a() {
            this.f15039d.lazySet(io.reactivex.internal.util.p.COMPLETE);
            c();
        }

        @Override
        public void b(T t10) {
            this.f15039d.lazySet(t10);
            c();
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f15039d;
            hn.c<? super T> cVar = this.f15037b;
            Ge.h hVar = this.f15040e;
            while (!hVar.d()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    if (obj != io.reactivex.internal.util.p.COMPLETE) {
                        long j10 = this.f15044i;
                        if (j10 != this.f15038c.get()) {
                            this.f15044i = j10 + 1;
                            atomicReference.lazySet(null);
                            cVar.h(obj);
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (!hVar.d()) {
                        int i10 = this.f15043h;
                        Be.y<? extends T>[] yVarArr = this.f15041f;
                        if (i10 == yVarArr.length) {
                            if (this.f15042g.get() != null) {
                                cVar.onError(this.f15042g.c());
                                return;
                            } else {
                                cVar.a();
                                return;
                            }
                        }
                        this.f15043h = i10 + 1;
                        yVarArr[i10].d(this);
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
            this.f15040e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            this.f15040e.a(cVar);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f15038c, j10);
                c();
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15039d.lazySet(io.reactivex.internal.util.p.COMPLETE);
            if (this.f15042g.a(th2)) {
                c();
            } else {
                Ye.a.Y(th2);
            }
        }
    }

    public C2820f(Be.y<? extends T>[] yVarArr) {
        this.f15035c = yVarArr;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar, this.f15035c);
        cVar.j(aVar);
        aVar.c();
    }
}
