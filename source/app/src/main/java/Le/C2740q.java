package Le;

import Be.AbstractC2362l;
import Be.J;
import cf.C4186e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class C2740q<T, U extends Collection<? super T>> extends AbstractC2692a<T, U> {

    public final long f13095d;

    public final long f13096e;

    public final TimeUnit f13097f;

    public final Be.J f13098g;

    public final Callable<U> f13099h;

    public final int f13100i;

    public final boolean f13101j;

    public static final class a<T, U extends Collection<? super T>> extends Te.n<T, U, U> implements hn.d, Runnable, De.c {

        public final long f13102D0;

        public hn.d f13103F1;

        public long f13104H1;

        public long f13105L1;

        public final TimeUnit f13106b1;

        public final int f13107i1;

        public final boolean f13108m1;

        public final J.c f13109q1;

        public final Callable<U> f13110v0;

        public U f13111v1;

        public De.c f13112y1;

        public a(hn.c<? super U> cVar, Callable<U> callable, long j10, TimeUnit timeUnit, int i10, boolean z10, J.c cVar2) {
            super(cVar, new Re.a());
            this.f13110v0 = callable;
            this.f13102D0 = j10;
            this.f13106b1 = timeUnit;
            this.f13107i1 = i10;
            this.f13108m1 = z10;
            this.f13109q1 = cVar2;
        }

        @Override
        public void a() {
            U u10;
            synchronized (this) {
                u10 = this.f13111v1;
                this.f13111v1 = null;
            }
            this.f24880X.offer(u10);
            this.f24882Z = true;
            if (f()) {
                io.reactivex.internal.util.u.e(this.f24880X, this.f24879W, false, this, this);
            }
            this.f13109q1.dispose();
        }

        @Override
        public void cancel() {
            if (this.f24881Y) {
                return;
            }
            this.f24881Y = true;
            dispose();
        }

        @Override
        public boolean d() {
            return this.f13109q1.d();
        }

        @Override
        public void dispose() {
            synchronized (this) {
                this.f13111v1 = null;
            }
            this.f13103F1.cancel();
            this.f13109q1.dispose();
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    U u10 = this.f13111v1;
                    if (u10 == null) {
                        return;
                    }
                    u10.add(t10);
                    if (u10.size() < this.f13107i1) {
                        return;
                    }
                    this.f13111v1 = null;
                    this.f13104H1++;
                    if (this.f13108m1) {
                        this.f13112y1.dispose();
                    }
                    p(u10, false, this);
                    try {
                        U u11 = (U) He.b.g(this.f13110v0.call(), "The supplied buffer is null");
                        synchronized (this) {
                            this.f13111v1 = u11;
                            this.f13105L1++;
                        }
                        if (this.f13108m1) {
                            J.c cVar = this.f13109q1;
                            long j10 = this.f13102D0;
                            this.f13112y1 = cVar.e(this, j10, j10, this.f13106b1);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        cancel();
                        this.f24879W.onError(th2);
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }

        @Override
        public void i(long j10) {
            q(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13103F1, dVar)) {
                this.f13103F1 = dVar;
                try {
                    this.f13111v1 = (U) He.b.g(this.f13110v0.call(), "The supplied buffer is null");
                    this.f24879W.j(this);
                    J.c cVar = this.f13109q1;
                    long j10 = this.f13102D0;
                    this.f13112y1 = cVar.e(this, j10, j10, this.f13106b1);
                    dVar.i(Long.MAX_VALUE);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f13109q1.dispose();
                    dVar.cancel();
                    Ue.g.b(th2, this.f24879W);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            synchronized (this) {
                this.f13111v1 = null;
            }
            this.f24879W.onError(th2);
            this.f13109q1.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean e(hn.c<? super U> cVar, U u10) {
            cVar.h(u10);
            return true;
        }

        @Override
        public void run() {
            try {
                U u10 = (U) He.b.g(this.f13110v0.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u11 = this.f13111v1;
                    if (u11 != null && this.f13104H1 == this.f13105L1) {
                        this.f13111v1 = u10;
                        p(u11, false, this);
                    }
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                this.f24879W.onError(th2);
            }
        }
    }

    public static final class b<T, U extends Collection<? super T>> extends Te.n<T, U, U> implements hn.d, Runnable, De.c {

        public final long f13113D0;

        public final TimeUnit f13114b1;

        public final Be.J f13115i1;

        public hn.d f13116m1;

        public U f13117q1;

        public final Callable<U> f13118v0;

        public final AtomicReference<De.c> f13119v1;

        public b(hn.c<? super U> cVar, Callable<U> callable, long j10, TimeUnit timeUnit, Be.J j11) {
            super(cVar, new Re.a());
            this.f13119v1 = new AtomicReference<>();
            this.f13118v0 = callable;
            this.f13113D0 = j10;
            this.f13114b1 = timeUnit;
            this.f13115i1 = j11;
        }

        @Override
        public void a() {
            Ge.d.a(this.f13119v1);
            synchronized (this) {
                try {
                    U u10 = this.f13117q1;
                    if (u10 == null) {
                        return;
                    }
                    this.f13117q1 = null;
                    this.f24880X.offer(u10);
                    this.f24882Z = true;
                    if (f()) {
                        io.reactivex.internal.util.u.e(this.f24880X, this.f24879W, false, null, this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void cancel() {
            this.f24881Y = true;
            this.f13116m1.cancel();
            Ge.d.a(this.f13119v1);
        }

        @Override
        public boolean d() {
            return this.f13119v1.get() == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            cancel();
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    U u10 = this.f13117q1;
                    if (u10 != null) {
                        u10.add(t10);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void i(long j10) {
            q(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13116m1, dVar)) {
                this.f13116m1 = dVar;
                try {
                    this.f13117q1 = (U) He.b.g(this.f13118v0.call(), "The supplied buffer is null");
                    this.f24879W.j(this);
                    if (this.f24881Y) {
                        return;
                    }
                    dVar.i(Long.MAX_VALUE);
                    Be.J j10 = this.f13115i1;
                    long j11 = this.f13113D0;
                    De.c h10 = j10.h(this, j11, j11, this.f13114b1);
                    if (androidx.lifecycle.c.a(this.f13119v1, null, h10)) {
                        return;
                    }
                    h10.dispose();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cancel();
                    Ue.g.b(th2, this.f24879W);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f13119v1);
            synchronized (this) {
                this.f13117q1 = null;
            }
            this.f24879W.onError(th2);
        }

        @Override
        public boolean e(hn.c<? super U> cVar, U u10) {
            this.f24879W.h(u10);
            return true;
        }

        @Override
        public void run() {
            try {
                U u10 = (U) He.b.g(this.f13118v0.call(), "The supplied buffer is null");
                synchronized (this) {
                    try {
                        U u11 = this.f13117q1;
                        if (u11 == null) {
                            return;
                        }
                        this.f13117q1 = u10;
                        o(u11, false, this);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                cancel();
                this.f24879W.onError(th3);
            }
        }
    }

    public static final class c<T, U extends Collection<? super T>> extends Te.n<T, U, U> implements hn.d, Runnable {

        public final long f13120D0;

        public final long f13121b1;

        public final TimeUnit f13122i1;

        public final J.c f13123m1;

        public final List<U> f13124q1;

        public final Callable<U> f13125v0;

        public hn.d f13126v1;

        public final class a implements Runnable {

            public final U f13127b;

            public a(U u10) {
                this.f13127b = u10;
            }

            @Override
            public void run() {
                synchronized (c.this) {
                    c.this.f13124q1.remove(this.f13127b);
                }
                c cVar = c.this;
                cVar.p(this.f13127b, false, cVar.f13123m1);
            }
        }

        public c(hn.c<? super U> cVar, Callable<U> callable, long j10, long j11, TimeUnit timeUnit, J.c cVar2) {
            super(cVar, new Re.a());
            this.f13125v0 = callable;
            this.f13120D0 = j10;
            this.f13121b1 = j11;
            this.f13122i1 = timeUnit;
            this.f13123m1 = cVar2;
            this.f13124q1 = new LinkedList();
        }

        @Override
        public void a() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f13124q1);
                this.f13124q1.clear();
            }
            Iterator<E> it = arrayList.iterator();
            while (it.hasNext()) {
                this.f24880X.offer((Collection) it.next());
            }
            this.f24882Z = true;
            if (f()) {
                io.reactivex.internal.util.u.e(this.f24880X, this.f24879W, false, this.f13123m1, this);
            }
        }

        @Override
        public void cancel() {
            this.f24881Y = true;
            this.f13126v1.cancel();
            this.f13123m1.dispose();
            t();
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    Iterator<U> it = this.f13124q1.iterator();
                    while (it.hasNext()) {
                        it.next().add(t10);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void i(long j10) {
            q(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13126v1, dVar)) {
                this.f13126v1 = dVar;
                try {
                    Collection collection = (Collection) He.b.g(this.f13125v0.call(), "The supplied buffer is null");
                    this.f13124q1.add(collection);
                    this.f24879W.j(this);
                    dVar.i(Long.MAX_VALUE);
                    J.c cVar = this.f13123m1;
                    long j10 = this.f13121b1;
                    cVar.e(this, j10, j10, this.f13122i1);
                    this.f13123m1.c(new a(collection), this.f13120D0, this.f13122i1);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f13123m1.dispose();
                    dVar.cancel();
                    Ue.g.b(th2, this.f24879W);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f24882Z = true;
            this.f13123m1.dispose();
            t();
            this.f24879W.onError(th2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean e(hn.c<? super U> cVar, U u10) {
            cVar.h(u10);
            return true;
        }

        @Override
        public void run() {
            if (this.f24881Y) {
                return;
            }
            try {
                Collection collection = (Collection) He.b.g(this.f13125v0.call(), "The supplied buffer is null");
                synchronized (this) {
                    try {
                        if (this.f24881Y) {
                            return;
                        }
                        this.f13124q1.add(collection);
                        this.f13123m1.c(new a(collection), this.f13120D0, this.f13122i1);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                cancel();
                this.f24879W.onError(th3);
            }
        }

        public void t() {
            synchronized (this) {
                this.f13124q1.clear();
            }
        }
    }

    public C2740q(AbstractC2362l<T> abstractC2362l, long j10, long j11, TimeUnit timeUnit, Be.J j12, Callable<U> callable, int i10, boolean z10) {
        super(abstractC2362l);
        this.f13095d = j10;
        this.f13096e = j11;
        this.f13097f = timeUnit;
        this.f13098g = j12;
        this.f13099h = callable;
        this.f13100i = i10;
        this.f13101j = z10;
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        if (this.f13095d == this.f13096e && this.f13100i == Integer.MAX_VALUE) {
            this.f12507c.l6(new b(new C4186e(cVar), this.f13099h, this.f13095d, this.f13097f, this.f13098g));
            return;
        }
        J.c c10 = this.f13098g.c();
        if (this.f13095d == this.f13096e) {
            this.f12507c.l6(new a(new C4186e(cVar), this.f13099h, this.f13095d, this.f13097f, this.f13100i, this.f13101j, c10));
        } else {
            this.f12507c.l6(new c(new C4186e(cVar), this.f13099h, this.f13095d, this.f13096e, this.f13097f, c10));
        }
    }
}
