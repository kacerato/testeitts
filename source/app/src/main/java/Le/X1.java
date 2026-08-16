package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.J;
import cf.C4186e;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class X1<T> extends AbstractC2692a<T, AbstractC2362l<T>> {

    public final long f12423d;

    public final long f12424e;

    public final TimeUnit f12425f;

    public final Be.J f12426g;

    public final long f12427h;

    public final int f12428i;

    public final boolean f12429j;

    public static final class a<T> extends Te.n<T, Object, AbstractC2362l<T>> implements hn.d {

        public final TimeUnit f12430D0;

        public long f12431F1;

        public hn.d f12432H1;

        public Ze.h<T> f12433L1;

        public volatile boolean f12434M1;

        public final Ge.h f12435R1;

        public final Be.J f12436b1;

        public final int f12437i1;

        public final boolean f12438m1;

        public final long f12439q1;

        public final long f12440v0;

        public final J.c f12441v1;

        public long f12442y1;

        public static final class RunnableC0391a implements Runnable {

            public final long f12443b;

            public final a<?> f12444c;

            public RunnableC0391a(long j10, a<?> aVar) {
                this.f12443b = j10;
                this.f12444c = aVar;
            }

            @Override
            public void run() {
                a<?> aVar = this.f12444c;
                if (aVar.f24881Y) {
                    aVar.f12434M1 = true;
                    aVar.dispose();
                } else {
                    aVar.f24880X.offer(this);
                }
                if (aVar.f()) {
                    aVar.t();
                }
            }
        }

        public a(hn.c<? super AbstractC2362l<T>> cVar, long j10, TimeUnit timeUnit, Be.J j11, int i10, long j12, boolean z10) {
            super(cVar, new Re.a());
            this.f12435R1 = new Ge.h();
            this.f12440v0 = j10;
            this.f12430D0 = timeUnit;
            this.f12436b1 = j11;
            this.f12437i1 = i10;
            this.f12439q1 = j12;
            this.f12438m1 = z10;
            if (z10) {
                this.f12441v1 = j11.c();
            } else {
                this.f12441v1 = null;
            }
        }

        @Override
        public void a() {
            this.f24882Z = true;
            if (f()) {
                t();
            }
            this.f24879W.a();
            dispose();
        }

        @Override
        public void cancel() {
            this.f24881Y = true;
        }

        public void dispose() {
            Ge.d.a(this.f12435R1);
            J.c cVar = this.f12441v1;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        @Override
        public void h(T t10) {
            if (this.f12434M1) {
                return;
            }
            if (n()) {
                Ze.h<T> hVar = this.f12433L1;
                hVar.h(t10);
                long j10 = this.f12442y1 + 1;
                if (j10 >= this.f12439q1) {
                    this.f12431F1++;
                    this.f12442y1 = 0L;
                    hVar.a();
                    long l10 = l();
                    if (l10 == 0) {
                        this.f12433L1 = null;
                        this.f12432H1.cancel();
                        this.f24879W.onError(new MissingBackpressureException("Could not deliver window due to lack of requests"));
                        dispose();
                        return;
                    }
                    Ze.h<T> V82 = Ze.h.V8(this.f12437i1);
                    this.f12433L1 = V82;
                    this.f24879W.h(V82);
                    if (l10 != Long.MAX_VALUE) {
                        m(1L);
                    }
                    if (this.f12438m1) {
                        this.f12435R1.get().dispose();
                        J.c cVar = this.f12441v1;
                        RunnableC0391a runnableC0391a = new RunnableC0391a(this.f12431F1, this);
                        long j11 = this.f12440v0;
                        this.f12435R1.a(cVar.e(runnableC0391a, j11, j11, this.f12430D0));
                    }
                } else {
                    this.f12442y1 = j10;
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
            t();
        }

        @Override
        public void i(long j10) {
            q(j10);
        }

        @Override
        public void j(hn.d dVar) {
            De.c h10;
            if (Ue.j.o(this.f12432H1, dVar)) {
                this.f12432H1 = dVar;
                hn.c<? super V> cVar = this.f24879W;
                cVar.j(this);
                if (this.f24881Y) {
                    return;
                }
                Ze.h<T> V82 = Ze.h.V8(this.f12437i1);
                this.f12433L1 = V82;
                long l10 = l();
                if (l10 == 0) {
                    this.f24881Y = true;
                    dVar.cancel();
                    cVar.onError(new MissingBackpressureException("Could not deliver initial window due to lack of requests."));
                    return;
                }
                cVar.h(V82);
                if (l10 != Long.MAX_VALUE) {
                    m(1L);
                }
                RunnableC0391a runnableC0391a = new RunnableC0391a(this.f12431F1, this);
                if (this.f12438m1) {
                    J.c cVar2 = this.f12441v1;
                    long j10 = this.f12440v0;
                    h10 = cVar2.e(runnableC0391a, j10, j10, this.f12430D0);
                } else {
                    Be.J j11 = this.f12436b1;
                    long j12 = this.f12440v0;
                    h10 = j11.h(runnableC0391a, j12, j12, this.f12430D0);
                }
                if (this.f12435R1.a(h10)) {
                    dVar.i(Long.MAX_VALUE);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f24883q0 = th2;
            this.f24882Z = true;
            if (f()) {
                t();
            }
            this.f24879W.onError(th2);
            dispose();
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
        
            if (r16.f12431F1 == r7.f12443b) goto L33;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void t() {
            Ie.o oVar = this.f24880X;
            hn.c<? super V> cVar = this.f24879W;
            Ze.h<T> hVar = this.f12433L1;
            int i10 = 1;
            while (!this.f12434M1) {
                boolean z10 = this.f24882Z;
                Object poll = oVar.poll();
                boolean z11 = poll == null;
                boolean z12 = poll instanceof RunnableC0391a;
                if (z10 && (z11 || z12)) {
                    this.f12433L1 = null;
                    oVar.clear();
                    Throwable th2 = this.f24883q0;
                    if (th2 != null) {
                        ((Ze.h) hVar).onError(th2);
                    } else {
                        ((Ze.h) hVar).a();
                    }
                    dispose();
                    return;
                }
                if (z11) {
                    i10 = c(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    int i11 = i10;
                    if (z12) {
                        RunnableC0391a runnableC0391a = (RunnableC0391a) poll;
                        if (!this.f12438m1) {
                            hVar = hVar;
                        }
                        ((Ze.h) hVar).a();
                        this.f12442y1 = 0L;
                        Ze.h<T> V82 = Ze.h.V8(this.f12437i1);
                        this.f12433L1 = V82;
                        long l10 = l();
                        if (l10 == 0) {
                            this.f12433L1 = null;
                            this.f24880X.clear();
                            this.f12432H1.cancel();
                            cVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
                            dispose();
                            return;
                        }
                        cVar.h(V82);
                        hVar = V82;
                        if (l10 != Long.MAX_VALUE) {
                            m(1L);
                            hVar = V82;
                        }
                    } else {
                        ((Ze.h) hVar).h(io.reactivex.internal.util.p.m(poll));
                        long j10 = this.f12442y1 + 1;
                        if (j10 >= this.f12439q1) {
                            this.f12431F1++;
                            this.f12442y1 = 0L;
                            ((Ze.h) hVar).a();
                            long l11 = l();
                            if (l11 == 0) {
                                this.f12433L1 = null;
                                this.f12432H1.cancel();
                                this.f24879W.onError(new MissingBackpressureException("Could not deliver window due to lack of requests"));
                                dispose();
                                return;
                            }
                            Ze.h<T> V83 = Ze.h.V8(this.f12437i1);
                            this.f12433L1 = V83;
                            this.f24879W.h(V83);
                            if (l11 != Long.MAX_VALUE) {
                                m(1L);
                            }
                            hVar = V83;
                            if (this.f12438m1) {
                                this.f12435R1.get().dispose();
                                J.c cVar2 = this.f12441v1;
                                RunnableC0391a runnableC0391a2 = new RunnableC0391a(this.f12431F1, this);
                                long j11 = this.f12440v0;
                                this.f12435R1.a(cVar2.e(runnableC0391a2, j11, j11, this.f12430D0));
                                hVar = V83;
                            }
                        } else {
                            this.f12442y1 = j10;
                            hVar = hVar;
                        }
                    }
                    i10 = i11;
                }
            }
            this.f12432H1.cancel();
            oVar.clear();
            dispose();
        }
    }

    public static final class b<T> extends Te.n<T, Object, AbstractC2362l<T>> implements InterfaceC2367q<T>, hn.d, Runnable {

        public static final Object f12445F1 = new Object();

        public final TimeUnit f12446D0;

        public final Be.J f12447b1;

        public final int f12448i1;

        public hn.d f12449m1;

        public Ze.h<T> f12450q1;

        public final long f12451v0;

        public final Ge.h f12452v1;

        public volatile boolean f12453y1;

        public b(hn.c<? super AbstractC2362l<T>> cVar, long j10, TimeUnit timeUnit, Be.J j11, int i10) {
            super(cVar, new Re.a());
            this.f12452v1 = new Ge.h();
            this.f12451v0 = j10;
            this.f12446D0 = timeUnit;
            this.f12447b1 = j11;
            this.f12448i1 = i10;
        }

        @Override
        public void a() {
            this.f24882Z = true;
            if (f()) {
                r();
            }
            this.f24879W.a();
            dispose();
        }

        @Override
        public void cancel() {
            this.f24881Y = true;
        }

        public void dispose() {
            Ge.d.a(this.f12452v1);
        }

        @Override
        public void h(T t10) {
            if (this.f12453y1) {
                return;
            }
            if (n()) {
                this.f12450q1.h(t10);
                if (c(-1) == 0) {
                    return;
                }
            } else {
                this.f24880X.offer(io.reactivex.internal.util.p.u(t10));
                if (!f()) {
                    return;
                }
            }
            r();
        }

        @Override
        public void i(long j10) {
            q(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12449m1, dVar)) {
                this.f12449m1 = dVar;
                this.f12450q1 = Ze.h.V8(this.f12448i1);
                hn.c<? super V> cVar = this.f24879W;
                cVar.j(this);
                long l10 = l();
                if (l10 == 0) {
                    this.f24881Y = true;
                    dVar.cancel();
                    cVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
                    return;
                }
                cVar.h(this.f12450q1);
                if (l10 != Long.MAX_VALUE) {
                    m(1L);
                }
                if (this.f24881Y) {
                    return;
                }
                Ge.h hVar = this.f12452v1;
                Be.J j10 = this.f12447b1;
                long j11 = this.f12451v0;
                if (hVar.a(j10.h(this, j11, j11, this.f12446D0))) {
                    dVar.i(Long.MAX_VALUE);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f24883q0 = th2;
            this.f24882Z = true;
            if (f()) {
                r();
            }
            this.f24879W.onError(th2);
            dispose();
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
        
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
        
            r2.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        
            r10.f12450q1 = null;
            r0.clear();
            dispose();
            r0 = r10.f24883q0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        
            if (r0 == null) goto L11;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [Ze.h<T>] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void r() {
            Ie.o oVar = this.f24880X;
            hn.c<? super V> cVar = this.f24879W;
            Ze.h<T> hVar = this.f12450q1;
            int i10 = 1;
            while (true) {
                boolean z10 = this.f12453y1;
                boolean z11 = this.f24882Z;
                Object poll = oVar.poll();
                if (!z11 || (poll != null && poll != f12445F1)) {
                    if (poll == null) {
                        i10 = c(-i10);
                        if (i10 == 0) {
                            return;
                        }
                    } else if (poll == f12445F1) {
                        hVar.a();
                        if (z10) {
                            this.f12449m1.cancel();
                        } else {
                            hVar = (Ze.h<T>) Ze.h.V8(this.f12448i1);
                            this.f12450q1 = hVar;
                            long l10 = l();
                            if (l10 == 0) {
                                this.f12450q1 = null;
                                this.f24880X.clear();
                                this.f12449m1.cancel();
                                dispose();
                                cVar.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
                                return;
                            }
                            cVar.h(hVar);
                            if (l10 != Long.MAX_VALUE) {
                                m(1L);
                            }
                        }
                    } else {
                        hVar.h(io.reactivex.internal.util.p.m(poll));
                    }
                }
            }
        }

        @Override
        public void run() {
            if (this.f24881Y) {
                this.f12453y1 = true;
                dispose();
            }
            this.f24880X.offer(f12445F1);
            if (f()) {
                r();
            }
        }
    }

    public static final class c<T> extends Te.n<T, Object, AbstractC2362l<T>> implements hn.d, Runnable {

        public final long f12454D0;

        public final TimeUnit f12455b1;

        public final J.c f12456i1;

        public final int f12457m1;

        public final List<Ze.h<T>> f12458q1;

        public final long f12459v0;

        public hn.d f12460v1;

        public volatile boolean f12461y1;

        public final class a implements Runnable {

            public final Ze.h<T> f12462b;

            public a(Ze.h<T> hVar) {
                this.f12462b = hVar;
            }

            @Override
            public void run() {
                c.this.r(this.f12462b);
            }
        }

        public static final class b<T> {

            public final Ze.h<T> f12464a;

            public final boolean f12465b;

            public b(Ze.h<T> hVar, boolean z10) {
                this.f12464a = hVar;
                this.f12465b = z10;
            }
        }

        public c(hn.c<? super AbstractC2362l<T>> cVar, long j10, long j11, TimeUnit timeUnit, J.c cVar2, int i10) {
            super(cVar, new Re.a());
            this.f12459v0 = j10;
            this.f12454D0 = j11;
            this.f12455b1 = timeUnit;
            this.f12456i1 = cVar2;
            this.f12457m1 = i10;
            this.f12458q1 = new LinkedList();
        }

        @Override
        public void a() {
            this.f24882Z = true;
            if (f()) {
                s();
            }
            this.f24879W.a();
            dispose();
        }

        @Override
        public void cancel() {
            this.f24881Y = true;
        }

        public void dispose() {
            this.f12456i1.dispose();
        }

        @Override
        public void h(T t10) {
            if (n()) {
                Iterator<Ze.h<T>> it = this.f12458q1.iterator();
                while (it.hasNext()) {
                    it.next().h(t10);
                }
                if (c(-1) == 0) {
                    return;
                }
            } else {
                this.f24880X.offer(t10);
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
            if (Ue.j.o(this.f12460v1, dVar)) {
                this.f12460v1 = dVar;
                this.f24879W.j(this);
                if (this.f24881Y) {
                    return;
                }
                long l10 = l();
                if (l10 == 0) {
                    dVar.cancel();
                    this.f24879W.onError(new MissingBackpressureException("Could not emit the first window due to lack of requests"));
                    return;
                }
                Ze.h<T> V82 = Ze.h.V8(this.f12457m1);
                this.f12458q1.add(V82);
                this.f24879W.h(V82);
                if (l10 != Long.MAX_VALUE) {
                    m(1L);
                }
                this.f12456i1.c(new a(V82), this.f12459v0, this.f12455b1);
                J.c cVar = this.f12456i1;
                long j10 = this.f12454D0;
                cVar.e(this, j10, j10, this.f12455b1);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f24883q0 = th2;
            this.f24882Z = true;
            if (f()) {
                s();
            }
            this.f24879W.onError(th2);
            dispose();
        }

        public void r(Ze.h<T> hVar) {
            this.f24880X.offer(new b(hVar, false));
            if (f()) {
                s();
            }
        }

        @Override
        public void run() {
            b bVar = new b(Ze.h.V8(this.f12457m1), true);
            if (!this.f24881Y) {
                this.f24880X.offer(bVar);
            }
            if (f()) {
                s();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void s() {
            Ie.o oVar = this.f24880X;
            hn.c<? super V> cVar = this.f24879W;
            List<Ze.h<T>> list = this.f12458q1;
            int i10 = 1;
            while (!this.f12461y1) {
                boolean z10 = this.f24882Z;
                Object poll = oVar.poll();
                boolean z11 = poll == null;
                boolean z12 = poll instanceof b;
                if (z10 && (z11 || z12)) {
                    oVar.clear();
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
                    dispose();
                    return;
                }
                if (z11) {
                    i10 = c(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else if (z12) {
                    b bVar = (b) poll;
                    if (!bVar.f12465b) {
                        list.remove(bVar.f12464a);
                        bVar.f12464a.a();
                        if (list.isEmpty() && this.f24881Y) {
                            this.f12461y1 = true;
                        }
                    } else if (!this.f24881Y) {
                        long l10 = l();
                        if (l10 != 0) {
                            Ze.h<T> V82 = Ze.h.V8(this.f12457m1);
                            list.add(V82);
                            cVar.h(V82);
                            if (l10 != Long.MAX_VALUE) {
                                m(1L);
                            }
                            this.f12456i1.c(new a(V82), this.f12459v0, this.f12455b1);
                        } else {
                            cVar.onError(new MissingBackpressureException("Can't emit window due to lack of requests"));
                        }
                    }
                } else {
                    Iterator<Ze.h<T>> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().h(poll);
                    }
                }
            }
            this.f12460v1.cancel();
            dispose();
            oVar.clear();
            list.clear();
        }
    }

    public X1(AbstractC2362l<T> abstractC2362l, long j10, long j11, TimeUnit timeUnit, Be.J j12, long j13, int i10, boolean z10) {
        super(abstractC2362l);
        this.f12423d = j10;
        this.f12424e = j11;
        this.f12425f = timeUnit;
        this.f12426g = j12;
        this.f12427h = j13;
        this.f12428i = i10;
        this.f12429j = z10;
    }

    @Override
    public void m6(hn.c<? super AbstractC2362l<T>> cVar) {
        C4186e c4186e = new C4186e(cVar);
        long j10 = this.f12423d;
        long j11 = this.f12424e;
        if (j10 != j11) {
            this.f12507c.l6(new c(c4186e, j10, j11, this.f12425f, this.f12426g.c(), this.f12428i));
            return;
        }
        long j12 = this.f12427h;
        if (j12 == Long.MAX_VALUE) {
            this.f12507c.l6(new b(c4186e, this.f12423d, this.f12425f, this.f12426g, this.f12428i));
        } else {
            this.f12507c.l6(new a(c4186e, j10, this.f12425f, this.f12426g, this.f12428i, j12, this.f12429j));
        }
    }
}
