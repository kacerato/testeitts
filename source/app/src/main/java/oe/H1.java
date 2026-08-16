package Oe;

import bf.C3886j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class H1<T, B, V> extends AbstractC2859a<T, Be.B<T>> {

    public final Be.G<B> f18900c;

    public final Fe.o<? super B, ? extends Be.G<V>> f18901d;

    public final int f18902e;

    public static final class a<T, V> extends We.e<V> {

        public final c<T, ?, V> f18903c;

        public final C3886j<T> f18904d;

        public boolean f18905e;

        public a(c<T, ?, V> cVar, C3886j<T> c3886j) {
            this.f18903c = cVar;
            this.f18904d = c3886j;
        }

        @Override
        public void a() {
            if (this.f18905e) {
                return;
            }
            this.f18905e = true;
            this.f18903c.n(this);
        }

        @Override
        public void h(V v10) {
            dispose();
            a();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f18905e) {
                Ye.a.Y(th2);
            } else {
                this.f18905e = true;
                this.f18903c.q(th2);
            }
        }
    }

    public static final class b<T, B> extends We.e<B> {

        public final c<T, B, ?> f18906c;

        public b(c<T, B, ?> cVar) {
            this.f18906c = cVar;
        }

        @Override
        public void a() {
            this.f18906c.a();
        }

        @Override
        public void h(B b10) {
            this.f18906c.r(b10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f18906c.q(th2);
        }
    }

    public static final class c<T, B, V> extends Je.v<T, Object, Be.B<T>> implements De.c {

        public final Be.G<B> f18907L;

        public final Fe.o<? super B, ? extends Be.G<V>> f18908M;

        public final int f18909N;

        public final De.b f18910O;

        public De.c f18911P;

        public final AtomicReference<De.c> f18912Q;

        public final List<C3886j<T>> f18913R;

        public final AtomicLong f18914S;

        public final AtomicBoolean f18915T;

        public c(Be.I<? super Be.B<T>> i10, Be.G<B> g10, Fe.o<? super B, ? extends Be.G<V>> oVar, int i11) {
            super(i10, new Re.a());
            this.f18912Q = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.f18914S = atomicLong;
            this.f18915T = new AtomicBoolean();
            this.f18907L = g10;
            this.f18908M = oVar;
            this.f18909N = i11;
            this.f18910O = new De.b();
            this.f18913R = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override
        public void a() {
            if (this.f10518J) {
                return;
            }
            this.f10518J = true;
            if (f()) {
                p();
            }
            if (this.f18914S.decrementAndGet() == 0) {
                this.f18910O.dispose();
            }
            this.f10515G.a();
        }

        @Override
        public boolean d() {
            return this.f18915T.get();
        }

        @Override
        public void dispose() {
            if (this.f18915T.compareAndSet(false, true)) {
                Ge.d.a(this.f18912Q);
                if (this.f18914S.decrementAndGet() == 0) {
                    this.f18911P.dispose();
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18911P, cVar)) {
                this.f18911P = cVar;
                this.f10515G.e(this);
                if (this.f18915T.get()) {
                    return;
                }
                b bVar = new b(this);
                if (androidx.lifecycle.c.a(this.f18912Q, null, bVar)) {
                    this.f18907L.c(bVar);
                }
            }
        }

        @Override
        public void h(T t10) {
            if (i()) {
                Iterator<C3886j<T>> it = this.f18913R.iterator();
                while (it.hasNext()) {
                    it.next().h(t10);
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
            p();
        }

        @Override
        public void l(Be.I<? super Be.B<T>> i10, Object obj) {
        }

        public void n(a<T, V> aVar) {
            this.f18910O.b(aVar);
            this.f10516H.offer(new d(aVar.f18904d, null));
            if (f()) {
                p();
            }
        }

        public void o() {
            this.f18910O.dispose();
            Ge.d.a(this.f18912Q);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f10518J) {
                Ye.a.Y(th2);
                return;
            }
            this.f10519K = th2;
            this.f10518J = true;
            if (f()) {
                p();
            }
            if (this.f18914S.decrementAndGet() == 0) {
                this.f18910O.dispose();
            }
            this.f10515G.onError(th2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void p() {
            Re.a aVar = (Re.a) this.f10516H;
            Be.I<? super V> i10 = this.f10515G;
            List<C3886j<T>> list = this.f18913R;
            int i11 = 1;
            while (true) {
                boolean z10 = this.f10518J;
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    o();
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
                    list.clear();
                    return;
                }
                if (z11) {
                    i11 = c(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else if (poll instanceof d) {
                    d dVar = (d) poll;
                    C3886j<T> c3886j = dVar.f18916a;
                    if (c3886j != null) {
                        if (list.remove(c3886j)) {
                            dVar.f18916a.a();
                            if (this.f18914S.decrementAndGet() == 0) {
                                o();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.f18915T.get()) {
                        C3886j<T> p82 = C3886j.p8(this.f18909N);
                        list.add(p82);
                        i10.h(p82);
                        try {
                            Be.G g10 = (Be.G) He.b.g(this.f18908M.apply(dVar.f18917b), "The ObservableSource supplied is null");
                            a aVar2 = new a(this, p82);
                            if (this.f18910O.a(aVar2)) {
                                this.f18914S.getAndIncrement();
                                g10.c(aVar2);
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f18915T.set(true);
                            i10.onError(th3);
                        }
                    }
                } else {
                    Iterator<C3886j<T>> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().h(io.reactivex.internal.util.p.m(poll));
                    }
                }
            }
        }

        public void q(Throwable th2) {
            this.f18911P.dispose();
            this.f18910O.dispose();
            onError(th2);
        }

        public void r(B b10) {
            this.f10516H.offer(new d(null, b10));
            if (f()) {
                p();
            }
        }
    }

    public static final class d<T, B> {

        public final C3886j<T> f18916a;

        public final B f18917b;

        public d(C3886j<T> c3886j, B b10) {
            this.f18916a = c3886j;
            this.f18917b = b10;
        }
    }

    public H1(Be.G<T> g10, Be.G<B> g11, Fe.o<? super B, ? extends Be.G<V>> oVar, int i10) {
        super(g10);
        this.f18900c = g11;
        this.f18901d = oVar;
        this.f18902e = i10;
    }

    @Override
    public void J5(Be.I<? super Be.B<T>> i10) {
        this.f19344b.c(new c(new We.m(i10), this.f18900c, this.f18901d, this.f18902e));
    }
}
