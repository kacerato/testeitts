package Me;

import Be.AbstractC2362l;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2821g<T> extends AbstractC2362l<T> {

    public final Iterable<? extends Be.y<? extends T>> f15051c;

    public static final class a<T> extends AtomicInteger implements Be.v<T>, hn.d {

        public static final long f15052h = 3520831347801429610L;

        public final hn.c<? super T> f15053b;

        public final Iterator<? extends Be.y<? extends T>> f15057f;

        public long f15058g;

        public final AtomicLong f15054c = new AtomicLong();

        public final Ge.h f15056e = new Ge.h();

        public final AtomicReference<Object> f15055d = new AtomicReference<>(io.reactivex.internal.util.p.COMPLETE);

        public a(hn.c<? super T> cVar, Iterator<? extends Be.y<? extends T>> it) {
            this.f15053b = cVar;
            this.f15057f = it;
        }

        @Override
        public void a() {
            this.f15055d.lazySet(io.reactivex.internal.util.p.COMPLETE);
            c();
        }

        @Override
        public void b(T t10) {
            this.f15055d.lazySet(t10);
            c();
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f15055d;
            hn.c<? super T> cVar = this.f15053b;
            Ge.h hVar = this.f15056e;
            while (!hVar.d()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    if (obj != io.reactivex.internal.util.p.COMPLETE) {
                        long j10 = this.f15058g;
                        if (j10 != this.f15054c.get()) {
                            this.f15058g = j10 + 1;
                            atomicReference.lazySet(null);
                            cVar.h(obj);
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (!hVar.d()) {
                        try {
                            if (this.f15057f.hasNext()) {
                                try {
                                    ((Be.y) He.b.g(this.f15057f.next(), "The source Iterator returned a null MaybeSource")).d(this);
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    cVar.onError(th2);
                                    return;
                                }
                            } else {
                                cVar.a();
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            cVar.onError(th3);
                            return;
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
            this.f15056e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            this.f15056e.a(cVar);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f15054c, j10);
                c();
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15053b.onError(th2);
        }
    }

    public C2821g(Iterable<? extends Be.y<? extends T>> iterable) {
        this.f15051c = iterable;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        try {
            a aVar = new a(cVar, (Iterator) He.b.g(this.f15051c.iterator(), "The sources Iterable returned a null Iterator"));
            cVar.j(aVar);
            aVar.c();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
