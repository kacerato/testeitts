package Pe;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class n<T> extends AbstractC2362l<T> {

    public final Xe.b<? extends T> f21400c;

    public final Fe.c<T, T, T> f21401d;

    public static final class a<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T> {

        public static final long f21402f = -7954444275102466525L;

        public final b<T> f21403b;

        public final Fe.c<T, T, T> f21404c;

        public T f21405d;

        public boolean f21406e;

        public a(b<T> bVar, Fe.c<T, T, T> cVar) {
            this.f21403b = bVar;
            this.f21404c = cVar;
        }

        @Override
        public void a() {
            if (this.f21406e) {
                return;
            }
            this.f21406e = true;
            this.f21403b.v(this.f21405d);
        }

        public void b() {
            Ue.j.a(this);
        }

        @Override
        public void h(T t10) {
            if (this.f21406e) {
                return;
            }
            T t11 = this.f21405d;
            if (t11 == null) {
                this.f21405d = t10;
                return;
            }
            try {
                this.f21405d = (T) He.b.g(this.f21404c.apply(t11, t10), "The reducer returned a null value");
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                get().cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21406e) {
                Ye.a.Y(th2);
            } else {
                this.f21406e = true;
                this.f21403b.c(th2);
            }
        }
    }

    public static final class b<T> extends Ue.f<T> {

        public static final long f21407s = -5370107872170712765L;

        public final a<T>[] f21408n;

        public final Fe.c<T, T, T> f21409o;

        public final AtomicReference<c<T>> f21410p;

        public final AtomicInteger f21411q;

        public final AtomicReference<Throwable> f21412r;

        public b(hn.c<? super T> cVar, int i10, Fe.c<T, T, T> cVar2) {
            super(cVar);
            this.f21410p = new AtomicReference<>();
            this.f21411q = new AtomicInteger();
            this.f21412r = new AtomicReference<>();
            a<T>[] aVarArr = new a[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                aVarArr[i11] = new a<>(this, cVar2);
            }
            this.f21408n = aVarArr;
            this.f21409o = cVar2;
            this.f21411q.lazySet(i10);
        }

        public void c(Throwable th2) {
            if (androidx.lifecycle.c.a(this.f21412r, null, th2)) {
                cancel();
                this.f26033c.onError(th2);
            } else if (th2 != this.f21412r.get()) {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void cancel() {
            for (a<T> aVar : this.f21408n) {
                aVar.b();
            }
        }

        public c<T> q(T t10) {
            c<T> cVar;
            int b10;
            while (true) {
                cVar = this.f21410p.get();
                if (cVar == null) {
                    cVar = new c<>();
                    if (!androidx.lifecycle.c.a(this.f21410p, null, cVar)) {
                        continue;
                    }
                }
                b10 = cVar.b();
                if (b10 >= 0) {
                    break;
                }
                androidx.lifecycle.c.a(this.f21410p, cVar, null);
            }
            if (b10 == 0) {
                cVar.f21414b = t10;
            } else {
                cVar.f21415c = t10;
            }
            if (!cVar.a()) {
                return null;
            }
            androidx.lifecycle.c.a(this.f21410p, cVar, null);
            return cVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
        
            if (r2.f21411q.decrementAndGet() != 0) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        
            r3 = r2.f21410p.get();
            r2.f21410p.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        
            if (r3 == null) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
        
            d(r3.f21414b);
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
        
            r2.f26033c.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:1:0x0000, code lost:
        
            if (r3 != null) goto L3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:2:0x0002, code lost:
        
            r3 = q(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
        
            if (r3 == null) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x0008, code lost:
        
            r3 = (T) He.b.g(r2.f21409o.apply(r3.f21414b, r3.f21415c), "The reducer returned a null value");
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        
            io.reactivex.exceptions.a.b(r3);
            c(r3);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void v(T t10) {
        }
    }

    public static final class c<T> extends AtomicInteger {

        public static final long f21413e = 473971317683868662L;

        public T f21414b;

        public T f21415c;

        public final AtomicInteger f21416d = new AtomicInteger();

        public boolean a() {
            return this.f21416d.incrementAndGet() == 2;
        }

        public int b() {
            int i10;
            do {
                i10 = get();
                if (i10 >= 2) {
                    return -1;
                }
            } while (!compareAndSet(i10, i10 + 1));
            return i10;
        }
    }

    public n(Xe.b<? extends T> bVar, Fe.c<T, T, T> cVar) {
        this.f21400c = bVar;
        this.f21401d = cVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        b bVar = new b(cVar, this.f21400c.F(), this.f21401d);
        cVar.j(bVar);
        this.f21400c.Q(bVar.f21408n);
    }
}
