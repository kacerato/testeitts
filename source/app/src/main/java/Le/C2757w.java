package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2757w<T, R> extends AbstractC2692a<T, R> {

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f13297d;

    public final int f13298e;

    public final io.reactivex.internal.util.j f13299f;

    public static class a {

        public static final int[] f13300a;

        static {
            int[] iArr = new int[io.reactivex.internal.util.j.values().length];
            f13300a = iArr;
            try {
                iArr[io.reactivex.internal.util.j.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13300a[io.reactivex.internal.util.j.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b<T, R> extends AtomicInteger implements InterfaceC2367q<T>, f<R>, hn.d {

        public static final long f13301n = -3511336836796789179L;

        public final Fe.o<? super T, ? extends hn.b<? extends R>> f13303c;

        public final int f13304d;

        public final int f13305e;

        public hn.d f13306f;

        public int f13307g;

        public Ie.o<T> f13308h;

        public volatile boolean f13309i;

        public volatile boolean f13310j;

        public volatile boolean f13312l;

        public int f13313m;

        public final e<R> f13302b = new e<>(this);

        public final io.reactivex.internal.util.c f13311k = new io.reactivex.internal.util.c();

        public b(Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10) {
            this.f13303c = oVar;
            this.f13304d = i10;
            this.f13305e = i10 - (i10 >> 2);
        }

        @Override
        public final void a() {
            this.f13309i = true;
            b();
        }

        public abstract void b();

        @Override
        public final void d() {
            this.f13312l = false;
            b();
        }

        public abstract void f();

        @Override
        public final void h(T t10) {
            if (this.f13313m == 2 || this.f13308h.offer(t10)) {
                b();
            } else {
                this.f13306f.cancel();
                onError(new IllegalStateException("Queue full?!"));
            }
        }

        @Override
        public final void j(hn.d dVar) {
            if (Ue.j.o(this.f13306f, dVar)) {
                this.f13306f = dVar;
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(7);
                    if (m10 == 1) {
                        this.f13313m = m10;
                        this.f13308h = lVar;
                        this.f13309i = true;
                        f();
                        b();
                        return;
                    }
                    if (m10 == 2) {
                        this.f13313m = m10;
                        this.f13308h = lVar;
                        f();
                        dVar.i(this.f13304d);
                        return;
                    }
                }
                this.f13308h = new Re.b(this.f13304d);
                f();
                dVar.i(this.f13304d);
            }
        }
    }

    public static final class c<T, R> extends b<T, R> {

        public static final long f13314q = -2945777694260521066L;

        public final hn.c<? super R> f13315o;

        public final boolean f13316p;

        public c(hn.c<? super R> cVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, boolean z10) {
            super(oVar, i10);
            this.f13315o = cVar;
            this.f13316p = z10;
        }

        @Override
        public void b() {
            if (getAndIncrement() == 0) {
                while (!this.f13310j) {
                    if (!this.f13312l) {
                        boolean z10 = this.f13309i;
                        if (z10 && !this.f13316p && this.f13311k.get() != null) {
                            this.f13315o.onError(this.f13311k.c());
                            return;
                        }
                        try {
                            T poll = this.f13308h.poll();
                            boolean z11 = poll == null;
                            if (z10 && z11) {
                                Throwable c10 = this.f13311k.c();
                                if (c10 != null) {
                                    this.f13315o.onError(c10);
                                    return;
                                } else {
                                    this.f13315o.a();
                                    return;
                                }
                            }
                            if (!z11) {
                                try {
                                    hn.b bVar = (hn.b) He.b.g(this.f13303c.apply(poll), "The mapper returned a null Publisher");
                                    if (this.f13313m != 1) {
                                        int i10 = this.f13307g + 1;
                                        if (i10 == this.f13305e) {
                                            this.f13307g = 0;
                                            this.f13306f.i(i10);
                                        } else {
                                            this.f13307g = i10;
                                        }
                                    }
                                    if (bVar instanceof Callable) {
                                        try {
                                            Object call = ((Callable) bVar).call();
                                            if (call == null) {
                                                continue;
                                            } else if (this.f13302b.g()) {
                                                this.f13315o.h(call);
                                            } else {
                                                this.f13312l = true;
                                                e<R> eVar = this.f13302b;
                                                eVar.l(new g(call, eVar));
                                            }
                                        } catch (Throwable th2) {
                                            io.reactivex.exceptions.a.b(th2);
                                            this.f13306f.cancel();
                                            this.f13311k.a(th2);
                                            this.f13315o.onError(this.f13311k.c());
                                            return;
                                        }
                                    } else {
                                        this.f13312l = true;
                                        bVar.l(this.f13302b);
                                    }
                                } catch (Throwable th3) {
                                    io.reactivex.exceptions.a.b(th3);
                                    this.f13306f.cancel();
                                    this.f13311k.a(th3);
                                    this.f13315o.onError(this.f13311k.c());
                                    return;
                                }
                            }
                        } catch (Throwable th4) {
                            io.reactivex.exceptions.a.b(th4);
                            this.f13306f.cancel();
                            this.f13311k.a(th4);
                            this.f13315o.onError(this.f13311k.c());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void c(Throwable th2) {
            if (!this.f13311k.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f13316p) {
                this.f13306f.cancel();
                this.f13309i = true;
            }
            this.f13312l = false;
            b();
        }

        @Override
        public void cancel() {
            if (this.f13310j) {
                return;
            }
            this.f13310j = true;
            this.f13302b.cancel();
            this.f13306f.cancel();
        }

        @Override
        public void e(R r10) {
            this.f13315o.h(r10);
        }

        @Override
        public void f() {
            this.f13315o.j(this);
        }

        @Override
        public void i(long j10) {
            this.f13302b.i(j10);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f13311k.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f13309i = true;
                b();
            }
        }
    }

    public static final class d<T, R> extends b<T, R> {

        public static final long f13317q = 7898995095634264146L;

        public final hn.c<? super R> f13318o;

        public final AtomicInteger f13319p;

        public d(hn.c<? super R> cVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10) {
            super(oVar, i10);
            this.f13318o = cVar;
            this.f13319p = new AtomicInteger();
        }

        @Override
        public void b() {
            if (this.f13319p.getAndIncrement() == 0) {
                while (!this.f13310j) {
                    if (!this.f13312l) {
                        boolean z10 = this.f13309i;
                        try {
                            T poll = this.f13308h.poll();
                            boolean z11 = poll == null;
                            if (z10 && z11) {
                                this.f13318o.a();
                                return;
                            }
                            if (!z11) {
                                try {
                                    hn.b bVar = (hn.b) He.b.g(this.f13303c.apply(poll), "The mapper returned a null Publisher");
                                    if (this.f13313m != 1) {
                                        int i10 = this.f13307g + 1;
                                        if (i10 == this.f13305e) {
                                            this.f13307g = 0;
                                            this.f13306f.i(i10);
                                        } else {
                                            this.f13307g = i10;
                                        }
                                    }
                                    if (bVar instanceof Callable) {
                                        try {
                                            Object call = ((Callable) bVar).call();
                                            if (call == null) {
                                                continue;
                                            } else if (!this.f13302b.g()) {
                                                this.f13312l = true;
                                                e<R> eVar = this.f13302b;
                                                eVar.l(new g(call, eVar));
                                            } else if (get() == 0 && compareAndSet(0, 1)) {
                                                this.f13318o.h(call);
                                                if (!compareAndSet(1, 0)) {
                                                    this.f13318o.onError(this.f13311k.c());
                                                    return;
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            io.reactivex.exceptions.a.b(th2);
                                            this.f13306f.cancel();
                                            this.f13311k.a(th2);
                                            this.f13318o.onError(this.f13311k.c());
                                            return;
                                        }
                                    } else {
                                        this.f13312l = true;
                                        bVar.l(this.f13302b);
                                    }
                                } catch (Throwable th3) {
                                    io.reactivex.exceptions.a.b(th3);
                                    this.f13306f.cancel();
                                    this.f13311k.a(th3);
                                    this.f13318o.onError(this.f13311k.c());
                                    return;
                                }
                            }
                        } catch (Throwable th4) {
                            io.reactivex.exceptions.a.b(th4);
                            this.f13306f.cancel();
                            this.f13311k.a(th4);
                            this.f13318o.onError(this.f13311k.c());
                            return;
                        }
                    }
                    if (this.f13319p.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override
        public void c(Throwable th2) {
            if (!this.f13311k.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            this.f13306f.cancel();
            if (getAndIncrement() == 0) {
                this.f13318o.onError(this.f13311k.c());
            }
        }

        @Override
        public void cancel() {
            if (this.f13310j) {
                return;
            }
            this.f13310j = true;
            this.f13302b.cancel();
            this.f13306f.cancel();
        }

        @Override
        public void e(R r10) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f13318o.h(r10);
                if (compareAndSet(1, 0)) {
                    return;
                }
                this.f13318o.onError(this.f13311k.c());
            }
        }

        @Override
        public void f() {
            this.f13318o.j(this);
        }

        @Override
        public void i(long j10) {
            this.f13302b.i(j10);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f13311k.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            this.f13302b.cancel();
            if (getAndIncrement() == 0) {
                this.f13318o.onError(this.f13311k.c());
            }
        }
    }

    public static final class e<R> extends Ue.i implements InterfaceC2367q<R> {

        public static final long f13320m = 897683679971470653L;

        public final f<R> f13321k;

        public long f13322l;

        public e(f<R> fVar) {
            super(false);
            this.f13321k = fVar;
        }

        @Override
        public void a() {
            long j10 = this.f13322l;
            if (j10 != 0) {
                this.f13322l = 0L;
                k(j10);
            }
            this.f13321k.d();
        }

        @Override
        public void h(R r10) {
            this.f13322l++;
            this.f13321k.e(r10);
        }

        @Override
        public void j(hn.d dVar) {
            l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            long j10 = this.f13322l;
            if (j10 != 0) {
                this.f13322l = 0L;
                k(j10);
            }
            this.f13321k.c(th2);
        }
    }

    public interface f<T> {
        void c(Throwable th2);

        void d();

        void e(T t10);
    }

    public static final class g<T> implements hn.d {

        public final hn.c<? super T> f13323b;

        public final T f13324c;

        public boolean f13325d;

        public g(T t10, hn.c<? super T> cVar) {
            this.f13324c = t10;
            this.f13323b = cVar;
        }

        @Override
        public void cancel() {
        }

        @Override
        public void i(long j10) {
            if (j10 <= 0 || this.f13325d) {
                return;
            }
            this.f13325d = true;
            hn.c<? super T> cVar = this.f13323b;
            cVar.h(this.f13324c);
            cVar.a();
        }
    }

    public C2757w(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, io.reactivex.internal.util.j jVar) {
        super(abstractC2362l);
        this.f13297d = oVar;
        this.f13298e = i10;
        this.f13299f = jVar;
    }

    public static <T, R> hn.c<T> O8(hn.c<? super R> cVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, io.reactivex.internal.util.j jVar) {
        int i11 = a.f13300a[jVar.ordinal()];
        return i11 != 1 ? i11 != 2 ? new d(cVar, oVar, i10) : new c(cVar, oVar, i10, true) : new c(cVar, oVar, i10, false);
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        if (C2724k1.b(this.f12507c, cVar, this.f13297d)) {
            return;
        }
        this.f12507c.l(O8(cVar, this.f13297d, this.f13298e, this.f13299f));
    }
}
