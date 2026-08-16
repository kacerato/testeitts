package Oe;

import Be.J;
import bf.C3886j;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class J1<T> extends AbstractC2859a<T, Be.B<T>> {

    public final long f18956c;

    public final long f18957d;

    public final TimeUnit f18958e;

    public final Be.J f18959f;

    public final long f18960g;

    public final int f18961h;

    public final boolean f18962i;

    public static final class a<T> extends Je.v<T, Object, Be.B<T>> implements De.c {

        public final long f18963L;

        public final TimeUnit f18964M;

        public final Be.J f18965N;

        public final int f18966O;

        public final boolean f18967P;

        public final long f18968Q;

        public final J.c f18969R;

        public long f18970S;

        public long f18971T;

        public De.c f18972U;

        public C3886j<T> f18973V;

        public volatile boolean f18974W;

        public final AtomicReference<De.c> f18975X;

        public static final class RunnableC0480a implements Runnable {

            public final long f18976b;

            public final a<?> f18977c;

            public RunnableC0480a(long j10, a<?> aVar) {
                this.f18976b = j10;
                this.f18977c = aVar;
            }

            @Override
            public void run() {
                a<?> aVar = this.f18977c;
                if (aVar.f10517I) {
                    aVar.f18974W = true;
                    aVar.p();
                } else {
                    aVar.f10516H.offer(this);
                }
                if (aVar.f()) {
                    aVar.q();
                }
            }
        }

        public a(Be.I<? super Be.B<T>> i10, long j10, TimeUnit timeUnit, Be.J j11, int i11, long j12, boolean z10) {
            super(i10, new Re.a());
            this.f18975X = new AtomicReference<>();
            this.f18963L = j10;
            this.f18964M = timeUnit;
            this.f18965N = j11;
            this.f18966O = i11;
            this.f18968Q = j12;
            this.f18967P = z10;
            if (z10) {
                this.f18969R = j11.c();
            } else {
                this.f18969R = null;
            }
        }

        @Override
        public void a() {
            this.f10518J = true;
            if (f()) {
                q();
            }
            this.f10515G.a();
            p();
        }

        @Override
        public boolean d() {
            return this.f10517I;
        }

        @Override
        public void dispose() {
            this.f10517I = true;
        }

        @Override
        public void e(De.c cVar) {
            De.c h10;
            if (Ge.d.j(this.f18972U, cVar)) {
                this.f18972U = cVar;
                Be.I<? super V> i10 = this.f10515G;
                i10.e(this);
                if (this.f10517I) {
                    return;
                }
                C3886j<T> p82 = C3886j.p8(this.f18966O);
                this.f18973V = p82;
                i10.h(p82);
                RunnableC0480a runnableC0480a = new RunnableC0480a(this.f18971T, this);
                if (this.f18967P) {
                    J.c cVar2 = this.f18969R;
                    long j10 = this.f18963L;
                    h10 = cVar2.e(runnableC0480a, j10, j10, this.f18964M);
                } else {
                    Be.J j11 = this.f18965N;
                    long j12 = this.f18963L;
                    h10 = j11.h(runnableC0480a, j12, j12, this.f18964M);
                }
                Ge.d.c(this.f18975X, h10);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f18974W) {
                return;
            }
            if (i()) {
                C3886j<T> c3886j = this.f18973V;
                c3886j.h(t10);
                long j10 = this.f18970S + 1;
                if (j10 >= this.f18968Q) {
                    this.f18971T++;
                    this.f18970S = 0L;
                    c3886j.a();
                    C3886j<T> p82 = C3886j.p8(this.f18966O);
                    this.f18973V = p82;
                    this.f10515G.h(p82);
                    if (this.f18967P) {
                        this.f18975X.get().dispose();
                        J.c cVar = this.f18969R;
                        RunnableC0480a runnableC0480a = new RunnableC0480a(this.f18971T, this);
                        long j11 = this.f18963L;
                        Ge.d.c(this.f18975X, cVar.e(runnableC0480a, j11, j11, this.f18964M));
                    }
                } else {
                    this.f18970S = j10;
                }
                if (c(-1) == 0) {
                    return;
                }
            } else {
                this.f10516H.offer(io.reactivex.internal.util.p.u(t10));
                if (!f()) {
                    return;
                }
            }
            q();
        }

        @Override
        public void onError(Throwable th2) {
            this.f10519K = th2;
            this.f10518J = true;
            if (f()) {
                q();
            }
            this.f10515G.onError(th2);
            p();
        }

        public void p() {
            Ge.d.a(this.f18975X);
            J.c cVar = this.f18969R;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [bf.j<T>] */
        public void q() {
            Re.a aVar = (Re.a) this.f10516H;
            Be.I<? super V> i10 = this.f10515G;
            C3886j<T> c3886j = this.f18973V;
            int i11 = 1;
            while (!this.f18974W) {
                boolean z10 = this.f10518J;
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                boolean z12 = poll instanceof RunnableC0480a;
                if (z10 && (z11 || z12)) {
                    this.f18973V = null;
                    aVar.clear();
                    p();
                    Throwable th2 = this.f10519K;
                    if (th2 != null) {
                        c3886j.onError(th2);
                        return;
                    } else {
                        c3886j.a();
                        return;
                    }
                }
                if (z11) {
                    i11 = c(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else if (z12) {
                    RunnableC0480a runnableC0480a = (RunnableC0480a) poll;
                    if (this.f18967P || this.f18971T == runnableC0480a.f18976b) {
                        c3886j.a();
                        this.f18970S = 0L;
                        c3886j = (C3886j<T>) C3886j.p8(this.f18966O);
                        this.f18973V = c3886j;
                        i10.h(c3886j);
                    }
                } else {
                    c3886j.h(io.reactivex.internal.util.p.m(poll));
                    long j10 = this.f18970S + 1;
                    if (j10 >= this.f18968Q) {
                        this.f18971T++;
                        this.f18970S = 0L;
                        c3886j.a();
                        c3886j = (C3886j<T>) C3886j.p8(this.f18966O);
                        this.f18973V = c3886j;
                        this.f10515G.h(c3886j);
                        if (this.f18967P) {
                            De.c cVar = this.f18975X.get();
                            cVar.dispose();
                            J.c cVar2 = this.f18969R;
                            RunnableC0480a runnableC0480a2 = new RunnableC0480a(this.f18971T, this);
                            long j11 = this.f18963L;
                            De.c e10 = cVar2.e(runnableC0480a2, j11, j11, this.f18964M);
                            if (!androidx.lifecycle.c.a(this.f18975X, cVar, e10)) {
                                e10.dispose();
                            }
                        }
                    } else {
                        this.f18970S = j10;
                    }
                }
            }
            this.f18972U.dispose();
            aVar.clear();
            p();
        }
    }

    public static final class b<T> extends Je.v<T, Object, Be.B<T>> implements Be.I<T>, De.c, Runnable {

        public static final Object f18978T = new Object();

        public final long f18979L;

        public final TimeUnit f18980M;

        public final Be.J f18981N;

        public final int f18982O;

        public De.c f18983P;

        public C3886j<T> f18984Q;

        public final AtomicReference<De.c> f18985R;

        public volatile boolean f18986S;

        public b(Be.I<? super Be.B<T>> i10, long j10, TimeUnit timeUnit, Be.J j11, int i11) {
            super(i10, new Re.a());
            this.f18985R = new AtomicReference<>();
            this.f18979L = j10;
            this.f18980M = timeUnit;
            this.f18981N = j11;
            this.f18982O = i11;
        }

        @Override
        public void a() {
            this.f10518J = true;
            if (f()) {
                o();
            }
            n();
            this.f10515G.a();
        }

        @Override
        public boolean d() {
            return this.f10517I;
        }

        @Override
        public void dispose() {
            this.f10517I = true;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18983P, cVar)) {
                this.f18983P = cVar;
                this.f18984Q = C3886j.p8(this.f18982O);
                Be.I<? super V> i10 = this.f10515G;
                i10.e(this);
                i10.h(this.f18984Q);
                if (this.f10517I) {
                    return;
                }
                Be.J j10 = this.f18981N;
                long j11 = this.f18979L;
                Ge.d.c(this.f18985R, j10.h(this, j11, j11, this.f18980M));
            }
        }

        @Override
        public void h(T t10) {
            if (this.f18986S) {
                return;
            }
            if (i()) {
                this.f18984Q.h(t10);
                if (c(-1) == 0) {
                    return;
                }
            } else {
                this.f10516H.offer(io.reactivex.internal.util.p.u(t10));
                if (!f()) {
                    return;
                }
            }
            o();
        }

        public void n() {
            Ge.d.a(this.f18985R);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
        
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
        
            r2.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
        
            r7.f18984Q = null;
            r0.clear();
            n();
            r0 = r7.f10519K;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
        
            if (r0 == null) goto L11;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [bf.j<T>] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void o() {
            Re.a aVar = (Re.a) this.f10516H;
            Be.I<? super V> i10 = this.f10515G;
            C3886j<T> c3886j = this.f18984Q;
            int i11 = 1;
            while (true) {
                boolean z10 = this.f18986S;
                boolean z11 = this.f10518J;
                Object poll = aVar.poll();
                if (!z11 || (poll != null && poll != f18978T)) {
                    if (poll == null) {
                        i11 = c(-i11);
                        if (i11 == 0) {
                            return;
                        }
                    } else if (poll == f18978T) {
                        c3886j.a();
                        if (z10) {
                            this.f18983P.dispose();
                        } else {
                            c3886j = (C3886j<T>) C3886j.p8(this.f18982O);
                            this.f18984Q = c3886j;
                            i10.h(c3886j);
                        }
                    } else {
                        c3886j.h(io.reactivex.internal.util.p.m(poll));
                    }
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f10519K = th2;
            this.f10518J = true;
            if (f()) {
                o();
            }
            n();
            this.f10515G.onError(th2);
        }

        @Override
        public void run() {
            if (this.f10517I) {
                this.f18986S = true;
                n();
            }
            this.f10516H.offer(f18978T);
            if (f()) {
                o();
            }
        }
    }

    public static final class c<T> extends Je.v<T, Object, Be.B<T>> implements De.c, Runnable {

        public final long f18987L;

        public final long f18988M;

        public final TimeUnit f18989N;

        public final J.c f18990O;

        public final int f18991P;

        public final List<C3886j<T>> f18992Q;

        public De.c f18993R;

        public volatile boolean f18994S;

        public final class a implements Runnable {

            public final C3886j<T> f18995b;

            public a(C3886j<T> c3886j) {
                this.f18995b = c3886j;
            }

            @Override
            public void run() {
                c.this.n(this.f18995b);
            }
        }

        public static final class b<T> {

            public final C3886j<T> f18997a;

            public final boolean f18998b;

            public b(C3886j<T> c3886j, boolean z10) {
                this.f18997a = c3886j;
                this.f18998b = z10;
            }
        }

        public c(Be.I<? super Be.B<T>> i10, long j10, long j11, TimeUnit timeUnit, J.c cVar, int i11) {
            super(i10, new Re.a());
            this.f18987L = j10;
            this.f18988M = j11;
            this.f18989N = timeUnit;
            this.f18990O = cVar;
            this.f18991P = i11;
            this.f18992Q = new LinkedList();
        }

        @Override
        public void a() {
            this.f10518J = true;
            if (f()) {
                p();
            }
            this.f10515G.a();
            o();
        }

        @Override
        public boolean d() {
            return this.f10517I;
        }

        @Override
        public void dispose() {
            this.f10517I = true;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18993R, cVar)) {
                this.f18993R = cVar;
                this.f10515G.e(this);
                if (this.f10517I) {
                    return;
                }
                C3886j<T> p82 = C3886j.p8(this.f18991P);
                this.f18992Q.add(p82);
                this.f10515G.h(p82);
                this.f18990O.c(new a(p82), this.f18987L, this.f18989N);
                J.c cVar2 = this.f18990O;
                long j10 = this.f18988M;
                cVar2.e(this, j10, j10, this.f18989N);
            }
        }

        @Override
        public void h(T t10) {
            if (i()) {
                Iterator<C3886j<T>> it = this.f18992Q.iterator();
                while (it.hasNext()) {
                    it.next().h(t10);
                }
                if (c(-1) == 0) {
                    return;
                }
            } else {
                this.f10516H.offer(t10);
                if (!f()) {
                    return;
                }
            }
            p();
        }

        public void n(C3886j<T> c3886j) {
            this.f10516H.offer(new b(c3886j, false));
            if (f()) {
                p();
            }
        }

        public void o() {
            this.f18990O.dispose();
        }

        @Override
        public void onError(Throwable th2) {
            this.f10519K = th2;
            this.f10518J = true;
            if (f()) {
                p();
            }
            this.f10515G.onError(th2);
            o();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void p() {
            Re.a aVar = (Re.a) this.f10516H;
            Be.I<? super V> i10 = this.f10515G;
            List<C3886j<T>> list = this.f18992Q;
            int i11 = 1;
            while (!this.f18994S) {
                boolean z10 = this.f10518J;
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                boolean z12 = poll instanceof b;
                if (z10 && (z11 || z12)) {
                    aVar.clear();
                    Throwable th2 = this.f10519K;
                    if (th2 != null) {
                        Iterator<C3886j<T>> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().onError(th2);
                        }
                    } else {
                        Iterator<C3886j<T>> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().a();
                        }
                    }
                    o();
                    list.clear();
                    return;
                }
                if (z11) {
                    i11 = c(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else if (z12) {
                    b bVar = (b) poll;
                    if (!bVar.f18998b) {
                        list.remove(bVar.f18997a);
                        bVar.f18997a.a();
                        if (list.isEmpty() && this.f10517I) {
                            this.f18994S = true;
                        }
                    } else if (!this.f10517I) {
                        C3886j<T> p82 = C3886j.p8(this.f18991P);
                        list.add(p82);
                        i10.h(p82);
                        this.f18990O.c(new a(p82), this.f18987L, this.f18989N);
                    }
                } else {
                    Iterator<C3886j<T>> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().h(poll);
                    }
                }
            }
            this.f18993R.dispose();
            o();
            aVar.clear();
            list.clear();
        }

        @Override
        public void run() {
            b bVar = new b(C3886j.p8(this.f18991P), true);
            if (!this.f10517I) {
                this.f10516H.offer(bVar);
            }
            if (f()) {
                p();
            }
        }
    }

    public J1(Be.G<T> g10, long j10, long j11, TimeUnit timeUnit, Be.J j12, long j13, int i10, boolean z10) {
        super(g10);
        this.f18956c = j10;
        this.f18957d = j11;
        this.f18958e = timeUnit;
        this.f18959f = j12;
        this.f18960g = j13;
        this.f18961h = i10;
        this.f18962i = z10;
    }

    @Override
    public void J5(Be.I<? super Be.B<T>> i10) {
        We.m mVar = new We.m(i10);
        long j10 = this.f18956c;
        long j11 = this.f18957d;
        if (j10 != j11) {
            this.f19344b.c(new c(mVar, j10, j11, this.f18958e, this.f18959f.c(), this.f18961h));
            return;
        }
        long j12 = this.f18960g;
        if (j12 == Long.MAX_VALUE) {
            this.f19344b.c(new b(mVar, this.f18956c, this.f18958e, this.f18959f, this.f18961h));
        } else {
            this.f19344b.c(new a(mVar, j10, this.f18958e, this.f18959f, this.f18961h, j12, this.f18962i));
        }
    }
}
