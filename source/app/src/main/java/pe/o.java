package Pe;

import Be.InterfaceC2367q;
import Be.J;
import Se.o;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class o<T> extends Xe.b<T> {

    public final Xe.b<? extends T> f21417a;

    public final J f21418b;

    public final int f21419c;

    public static abstract class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final long f21420l = 9222303586456402150L;

        public final int f21421b;

        public final int f21422c;

        public final Re.b<T> f21423d;

        public final J.c f21424e;

        public hn.d f21425f;

        public volatile boolean f21426g;

        public Throwable f21427h;

        public final AtomicLong f21428i = new AtomicLong();

        public volatile boolean f21429j;

        public int f21430k;

        public a(int i10, Re.b<T> bVar, J.c cVar) {
            this.f21421b = i10;
            this.f21423d = bVar;
            this.f21422c = i10 - (i10 >> 2);
            this.f21424e = cVar;
        }

        @Override
        public final void a() {
            if (this.f21426g) {
                return;
            }
            this.f21426g = true;
            b();
        }

        public final void b() {
            if (getAndIncrement() == 0) {
                this.f21424e.b(this);
            }
        }

        @Override
        public final void cancel() {
            if (this.f21429j) {
                return;
            }
            this.f21429j = true;
            this.f21425f.cancel();
            this.f21424e.dispose();
            if (getAndIncrement() == 0) {
                this.f21423d.clear();
            }
        }

        @Override
        public final void h(T t10) {
            if (this.f21426g) {
                return;
            }
            if (this.f21423d.offer(t10)) {
                b();
            } else {
                this.f21425f.cancel();
                onError(new MissingBackpressureException("Queue is full?!"));
            }
        }

        @Override
        public final void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f21428i, j10);
                b();
            }
        }

        @Override
        public final void onError(Throwable th2) {
            if (this.f21426g) {
                Ye.a.Y(th2);
                return;
            }
            this.f21427h = th2;
            this.f21426g = true;
            b();
        }
    }

    public final class b implements o.a {

        public final hn.c<? super T>[] f21431a;

        public final hn.c<T>[] f21432b;

        public b(hn.c<? super T>[] cVarArr, hn.c<T>[] cVarArr2) {
            this.f21431a = cVarArr;
            this.f21432b = cVarArr2;
        }

        @Override
        public void a(int i10, J.c cVar) {
            o.this.V(i10, this.f21431a, this.f21432b, cVar);
        }
    }

    public static final class c<T> extends a<T> {

        public static final long f21434n = 1075119423897941642L;

        public final Ie.a<? super T> f21435m;

        public c(Ie.a<? super T> aVar, int i10, Re.b<T> bVar, J.c cVar) {
            super(i10, bVar, cVar);
            this.f21435m = aVar;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21425f, dVar)) {
                this.f21425f = dVar;
                this.f21435m.j(this);
                dVar.i(this.f21421b);
            }
        }

        @Override
        public void run() {
            Throwable th2;
            int i10 = this.f21430k;
            Re.b<T> bVar = this.f21423d;
            Ie.a<? super T> aVar = this.f21435m;
            int i11 = this.f21422c;
            int i12 = 1;
            while (true) {
                long j10 = this.f21428i.get();
                long j11 = 0;
                while (j11 != j10) {
                    if (this.f21429j) {
                        bVar.clear();
                        return;
                    }
                    boolean z10 = this.f21426g;
                    if (z10 && (th2 = this.f21427h) != null) {
                        bVar.clear();
                        aVar.onError(th2);
                        this.f21424e.dispose();
                        return;
                    }
                    T poll = bVar.poll();
                    boolean z11 = poll == null;
                    if (z10 && z11) {
                        aVar.a();
                        this.f21424e.dispose();
                        return;
                    } else {
                        if (z11) {
                            break;
                        }
                        if (aVar.u(poll)) {
                            j11++;
                        }
                        i10++;
                        if (i10 == i11) {
                            this.f21425f.i(i10);
                            i10 = 0;
                        }
                    }
                }
                if (j11 == j10) {
                    if (this.f21429j) {
                        bVar.clear();
                        return;
                    }
                    if (this.f21426g) {
                        Throwable th3 = this.f21427h;
                        if (th3 != null) {
                            bVar.clear();
                            aVar.onError(th3);
                            this.f21424e.dispose();
                            return;
                        } else if (bVar.isEmpty()) {
                            aVar.a();
                            this.f21424e.dispose();
                            return;
                        }
                    }
                }
                if (j11 != 0 && j10 != Long.MAX_VALUE) {
                    this.f21428i.addAndGet(-j11);
                }
                int i13 = get();
                if (i13 == i12) {
                    this.f21430k = i10;
                    i12 = addAndGet(-i12);
                    if (i12 == 0) {
                        return;
                    }
                } else {
                    i12 = i13;
                }
            }
        }
    }

    public static final class d<T> extends a<T> {

        public static final long f21436n = 1075119423897941642L;

        public final hn.c<? super T> f21437m;

        public d(hn.c<? super T> cVar, int i10, Re.b<T> bVar, J.c cVar2) {
            super(i10, bVar, cVar2);
            this.f21437m = cVar;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21425f, dVar)) {
                this.f21425f = dVar;
                this.f21437m.j(this);
                dVar.i(this.f21421b);
            }
        }

        @Override
        public void run() {
            Throwable th2;
            int i10 = this.f21430k;
            Re.b<T> bVar = this.f21423d;
            hn.c<? super T> cVar = this.f21437m;
            int i11 = this.f21422c;
            int i12 = 1;
            while (true) {
                long j10 = this.f21428i.get();
                long j11 = 0;
                while (j11 != j10) {
                    if (this.f21429j) {
                        bVar.clear();
                        return;
                    }
                    boolean z10 = this.f21426g;
                    if (z10 && (th2 = this.f21427h) != null) {
                        bVar.clear();
                        cVar.onError(th2);
                        this.f21424e.dispose();
                        return;
                    }
                    T poll = bVar.poll();
                    boolean z11 = poll == null;
                    if (z10 && z11) {
                        cVar.a();
                        this.f21424e.dispose();
                        return;
                    } else {
                        if (z11) {
                            break;
                        }
                        cVar.h(poll);
                        j11++;
                        i10++;
                        if (i10 == i11) {
                            this.f21425f.i(i10);
                            i10 = 0;
                        }
                    }
                }
                if (j11 == j10) {
                    if (this.f21429j) {
                        bVar.clear();
                        return;
                    }
                    if (this.f21426g) {
                        Throwable th3 = this.f21427h;
                        if (th3 != null) {
                            bVar.clear();
                            cVar.onError(th3);
                            this.f21424e.dispose();
                            return;
                        } else if (bVar.isEmpty()) {
                            cVar.a();
                            this.f21424e.dispose();
                            return;
                        }
                    }
                }
                if (j11 != 0 && j10 != Long.MAX_VALUE) {
                    this.f21428i.addAndGet(-j11);
                }
                int i13 = get();
                if (i13 == i12) {
                    this.f21430k = i10;
                    i12 = addAndGet(-i12);
                    if (i12 == 0) {
                        return;
                    }
                } else {
                    i12 = i13;
                }
            }
        }
    }

    public o(Xe.b<? extends T> bVar, J j10, int i10) {
        this.f21417a = bVar;
        this.f21418b = j10;
        this.f21419c = i10;
    }

    @Override
    public int F() {
        return this.f21417a.F();
    }

    @Override
    public void Q(hn.c<? super T>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<T>[] cVarArr2 = new hn.c[length];
            Object obj = this.f21418b;
            if (obj instanceof Se.o) {
                ((Se.o) obj).a(length, new b(cVarArr, cVarArr2));
            } else {
                for (int i10 = 0; i10 < length; i10++) {
                    V(i10, cVarArr, cVarArr2, this.f21418b.c());
                }
            }
            this.f21417a.Q(cVarArr2);
        }
    }

    public void V(int i10, hn.c<? super T>[] cVarArr, hn.c<T>[] cVarArr2, J.c cVar) {
        hn.c<? super T> cVar2 = cVarArr[i10];
        Re.b bVar = new Re.b(this.f21419c);
        if (cVar2 instanceof Ie.a) {
            cVarArr2[i10] = new c((Ie.a) cVar2, this.f21419c, bVar, cVar);
        } else {
            cVarArr2[i10] = new d(cVar2, this.f21419c, bVar, cVar);
        }
    }
}
