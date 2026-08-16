package Le;

import Be.AbstractC2362l;
import cf.AbstractC4183b;
import cf.C4186e;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class V1<T, B, V> extends AbstractC2692a<T, AbstractC2362l<T>> {

    public final hn.b<B> f12364d;

    public final Fe.o<? super B, ? extends hn.b<V>> f12365e;

    public final int f12366f;

    public static final class a<T, V> extends AbstractC4183b<V> {

        public final c<T, ?, V> f12367c;

        public final Ze.h<T> f12368d;

        public boolean f12369e;

        public a(c<T, ?, V> cVar, Ze.h<T> hVar) {
            this.f12367c = cVar;
            this.f12368d = hVar;
        }

        @Override
        public void a() {
            if (this.f12369e) {
                return;
            }
            this.f12369e = true;
            this.f12367c.r(this);
        }

        @Override
        public void h(V v10) {
            b();
            a();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12369e) {
                Ye.a.Y(th2);
            } else {
                this.f12369e = true;
                this.f12367c.t(th2);
            }
        }
    }

    public static final class b<T, B> extends AbstractC4183b<B> {

        public final c<T, B, ?> f12370c;

        public b(c<T, B, ?> cVar) {
            this.f12370c = cVar;
        }

        @Override
        public void a() {
            this.f12370c.a();
        }

        @Override
        public void h(B b10) {
            this.f12370c.v(b10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f12370c.t(th2);
        }
    }

    public static final class c<T, B, V> extends Te.n<T, Object, AbstractC2362l<T>> implements hn.d {

        public final Fe.o<? super B, ? extends hn.b<V>> f12371D0;

        public final AtomicBoolean f12372F1;

        public final int f12373b1;

        public final De.b f12374i1;

        public hn.d f12375m1;

        public final AtomicReference<De.c> f12376q1;

        public final hn.b<B> f12377v0;

        public final List<Ze.h<T>> f12378v1;

        public final AtomicLong f12379y1;

        public c(hn.c<? super AbstractC2362l<T>> cVar, hn.b<B> bVar, Fe.o<? super B, ? extends hn.b<V>> oVar, int i10) {
            super(cVar, new Re.a());
            this.f12376q1 = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.f12379y1 = atomicLong;
            this.f12372F1 = new AtomicBoolean();
            this.f12377v0 = bVar;
            this.f12371D0 = oVar;
            this.f12373b1 = i10;
            this.f12374i1 = new De.b();
            this.f12378v1 = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override
        public void a() {
            if (this.f24882Z) {
                return;
            }
            this.f24882Z = true;
            if (f()) {
                s();
            }
            if (this.f12379y1.decrementAndGet() == 0) {
                this.f12374i1.dispose();
            }
            this.f24879W.a();
        }

        @Override
        public void cancel() {
            if (this.f12372F1.compareAndSet(false, true)) {
                Ge.d.a(this.f12376q1);
                if (this.f12379y1.decrementAndGet() == 0) {
                    this.f12375m1.cancel();
                }
            }
        }

        public void dispose() {
            this.f12374i1.dispose();
            Ge.d.a(this.f12376q1);
        }

        @Override
        public boolean e(hn.c<? super AbstractC2362l<T>> cVar, Object obj) {
            return false;
        }

        @Override
        public void h(T t10) {
            if (this.f24882Z) {
                return;
            }
            if (n()) {
                Iterator<Ze.h<T>> it = this.f12378v1.iterator();
                while (it.hasNext()) {
                    it.next().h(t10);
                }
                if (c(-1) == 0) {
                    return;
                }
            } else {
                this.f24880X.offer(io.reactivex.internal.util.p.u(t10));
                if (!f()) {
                    return;
                }
            }
            s();
        }

        @Override
        public void i(long j10) {
            q(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12375m1, dVar)) {
                this.f12375m1 = dVar;
                this.f24879W.j(this);
                if (this.f12372F1.get()) {
                    return;
                }
                b bVar = new b(this);
                if (androidx.lifecycle.c.a(this.f12376q1, null, bVar)) {
                    dVar.i(Long.MAX_VALUE);
                    this.f12377v0.l(bVar);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f24882Z) {
                Ye.a.Y(th2);
                return;
            }
            this.f24883q0 = th2;
            this.f24882Z = true;
            if (f()) {
                s();
            }
            if (this.f12379y1.decrementAndGet() == 0) {
                this.f12374i1.dispose();
            }
            this.f24879W.onError(th2);
        }

        public void r(a<T, V> aVar) {
            this.f12374i1.b(aVar);
            this.f24880X.offer(new d(aVar.f12368d, null));
            if (f()) {
                s();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void s() {
            Ie.o oVar = this.f24880X;
            hn.c<? super V> cVar = this.f24879W;
            List<Ze.h<T>> list = this.f12378v1;
            int i10 = 1;
            while (true) {
                boolean z10 = this.f24882Z;
                Object poll = oVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    dispose();
                    Throwable th2 = this.f24883q0;
                    if (th2 != null) {
                        Iterator<Ze.h<T>> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().onError(th2);
                        }
                    } else {
                        Iterator<Ze.h<T>> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().a();
                        }
                    }
                    list.clear();
                    return;
                }
                if (z11) {
                    i10 = c(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else if (poll instanceof d) {
                    d dVar = (d) poll;
                    Ze.h<T> hVar = dVar.f12380a;
                    if (hVar != null) {
                        if (list.remove(hVar)) {
                            dVar.f12380a.a();
                            if (this.f12379y1.decrementAndGet() == 0) {
                                dispose();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.f12372F1.get()) {
                        Ze.h<T> V82 = Ze.h.V8(this.f12373b1);
                        long l10 = l();
                        if (l10 != 0) {
                            list.add(V82);
                            cVar.h(V82);
                            if (l10 != Long.MAX_VALUE) {
                                m(1L);
                            }
                            try {
                                hn.b bVar = (hn.b) He.b.g(this.f12371D0.apply(dVar.f12381b), "The publisher supplied is null");
                                a aVar = new a(this, V82);
                                if (this.f12374i1.a(aVar)) {
                                    this.f12379y1.getAndIncrement();
                                    bVar.l(aVar);
                                }
                            } catch (Throwable th3) {
                                cancel();
                                cVar.onError(th3);
                            }
                        } else {
                            cancel();
                            cVar.onError(new MissingBackpressureException("Could not deliver new window due to lack of requests"));
                        }
                    }
                } else {
                    Iterator<Ze.h<T>> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().h(io.reactivex.internal.util.p.m(poll));
                    }
                }
            }
        }

        public void t(Throwable th2) {
            this.f12375m1.cancel();
            this.f12374i1.dispose();
            Ge.d.a(this.f12376q1);
            this.f24879W.onError(th2);
        }

        public void v(B b10) {
            this.f24880X.offer(new d(null, b10));
            if (f()) {
                s();
            }
        }
    }

    public static final class d<T, B> {

        public final Ze.h<T> f12380a;

        public final B f12381b;

        public d(Ze.h<T> hVar, B b10) {
            this.f12380a = hVar;
            this.f12381b = b10;
        }
    }

    public V1(AbstractC2362l<T> abstractC2362l, hn.b<B> bVar, Fe.o<? super B, ? extends hn.b<V>> oVar, int i10) {
        super(abstractC2362l);
        this.f12364d = bVar;
        this.f12365e = oVar;
        this.f12366f = i10;
    }

    @Override
    public void m6(hn.c<? super AbstractC2362l<T>> cVar) {
        this.f12507c.l6(new c(new C4186e(cVar), this.f12364d, this.f12365e, this.f12366f));
    }
}
