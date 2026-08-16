package Oe;

import Be.J;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class C2906q<T, U extends Collection<? super T>> extends AbstractC2859a<T, U> {

    public final long f19754c;

    public final long f19755d;

    public final TimeUnit f19756e;

    public final Be.J f19757f;

    public final Callable<U> f19758g;

    public final int f19759h;

    public final boolean f19760i;

    public static final class a<T, U extends Collection<? super T>> extends Je.v<T, U, U> implements Runnable, De.c {

        public final Callable<U> f19761L;

        public final long f19762M;

        public final TimeUnit f19763N;

        public final int f19764O;

        public final boolean f19765P;

        public final J.c f19766Q;

        public U f19767R;

        public De.c f19768S;

        public De.c f19769T;

        public long f19770U;

        public long f19771V;

        public a(Be.I<? super U> i10, Callable<U> callable, long j10, TimeUnit timeUnit, int i11, boolean z10, J.c cVar) {
            super(i10, new Re.a());
            this.f19761L = callable;
            this.f19762M = j10;
            this.f19763N = timeUnit;
            this.f19764O = i11;
            this.f19765P = z10;
            this.f19766Q = cVar;
        }

        @Override
        public void a() {
            U u10;
            this.f19766Q.dispose();
            synchronized (this) {
                u10 = this.f19767R;
                this.f19767R = null;
            }
            this.f10516H.offer(u10);
            this.f10518J = true;
            if (f()) {
                io.reactivex.internal.util.u.d(this.f10516H, this.f10515G, false, this, this);
            }
        }

        @Override
        public boolean d() {
            return this.f10517I;
        }

        @Override
        public void dispose() {
            if (this.f10517I) {
                return;
            }
            this.f10517I = true;
            this.f19769T.dispose();
            this.f19766Q.dispose();
            synchronized (this) {
                this.f19767R = null;
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19769T, cVar)) {
                this.f19769T = cVar;
                try {
                    this.f19767R = (U) He.b.g(this.f19761L.call(), "The buffer supplied is null");
                    this.f10515G.e(this);
                    J.c cVar2 = this.f19766Q;
                    long j10 = this.f19762M;
                    this.f19768S = cVar2.e(this, j10, j10, this.f19763N);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cVar.dispose();
                    Ge.e.h(th2, this.f10515G);
                    this.f19766Q.dispose();
                }
            }
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    U u10 = this.f19767R;
                    if (u10 == null) {
                        return;
                    }
                    u10.add(t10);
                    if (u10.size() < this.f19764O) {
                        return;
                    }
                    this.f19767R = null;
                    this.f19770U++;
                    if (this.f19765P) {
                        this.f19768S.dispose();
                    }
                    m(u10, false, this);
                    try {
                        U u11 = (U) He.b.g(this.f19761L.call(), "The buffer supplied is null");
                        synchronized (this) {
                            this.f19767R = u11;
                            this.f19771V++;
                        }
                        if (this.f19765P) {
                            J.c cVar = this.f19766Q;
                            long j10 = this.f19762M;
                            this.f19768S = cVar.e(this, j10, j10, this.f19763N);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f10515G.onError(th2);
                        dispose();
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void l(Be.I<? super U> i10, U u10) {
            i10.h(u10);
        }

        @Override
        public void onError(Throwable th2) {
            synchronized (this) {
                this.f19767R = null;
            }
            this.f10515G.onError(th2);
            this.f19766Q.dispose();
        }

        @Override
        public void run() {
            try {
                U u10 = (U) He.b.g(this.f19761L.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    U u11 = this.f19767R;
                    if (u11 != null && this.f19770U == this.f19771V) {
                        this.f19767R = u10;
                        m(u11, false, this);
                    }
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                this.f10515G.onError(th2);
            }
        }
    }

    public static final class b<T, U extends Collection<? super T>> extends Je.v<T, U, U> implements Runnable, De.c {

        public final Callable<U> f19772L;

        public final long f19773M;

        public final TimeUnit f19774N;

        public final Be.J f19775O;

        public De.c f19776P;

        public U f19777Q;

        public final AtomicReference<De.c> f19778R;

        public b(Be.I<? super U> i10, Callable<U> callable, long j10, TimeUnit timeUnit, Be.J j11) {
            super(i10, new Re.a());
            this.f19778R = new AtomicReference<>();
            this.f19772L = callable;
            this.f19773M = j10;
            this.f19774N = timeUnit;
            this.f19775O = j11;
        }

        @Override
        public void a() {
            U u10;
            synchronized (this) {
                u10 = this.f19777Q;
                this.f19777Q = null;
            }
            if (u10 != null) {
                this.f10516H.offer(u10);
                this.f10518J = true;
                if (f()) {
                    io.reactivex.internal.util.u.d(this.f10516H, this.f10515G, false, null, this);
                }
            }
            Ge.d.a(this.f19778R);
        }

        @Override
        public boolean d() {
            return this.f19778R.get() == Ge.d.DISPOSED;
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f19778R);
            this.f19776P.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19776P, cVar)) {
                this.f19776P = cVar;
                try {
                    this.f19777Q = (U) He.b.g(this.f19772L.call(), "The buffer supplied is null");
                    this.f10515G.e(this);
                    if (this.f10517I) {
                        return;
                    }
                    Be.J j10 = this.f19775O;
                    long j11 = this.f19773M;
                    De.c h10 = j10.h(this, j11, j11, this.f19774N);
                    if (androidx.lifecycle.c.a(this.f19778R, null, h10)) {
                        return;
                    }
                    h10.dispose();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    dispose();
                    Ge.e.h(th2, this.f10515G);
                }
            }
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    U u10 = this.f19777Q;
                    if (u10 == null) {
                        return;
                    }
                    u10.add(t10);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void l(Be.I<? super U> i10, U u10) {
            this.f10515G.h(u10);
        }

        @Override
        public void onError(Throwable th2) {
            synchronized (this) {
                this.f19777Q = null;
            }
            this.f10515G.onError(th2);
            Ge.d.a(this.f19778R);
        }

        @Override
        public void run() {
            U u10;
            try {
                U u11 = (U) He.b.g(this.f19772L.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    try {
                        u10 = this.f19777Q;
                        if (u10 != null) {
                            this.f19777Q = u11;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (u10 == null) {
                    Ge.d.a(this.f19778R);
                } else {
                    j(u10, false, this);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f10515G.onError(th3);
                dispose();
            }
        }
    }

    public static final class c<T, U extends Collection<? super T>> extends Je.v<T, U, U> implements Runnable, De.c {

        public final Callable<U> f19779L;

        public final long f19780M;

        public final long f19781N;

        public final TimeUnit f19782O;

        public final J.c f19783P;

        public final List<U> f19784Q;

        public De.c f19785R;

        public final class a implements Runnable {

            public final U f19786b;

            public a(U u10) {
                this.f19786b = u10;
            }

            @Override
            public void run() {
                synchronized (c.this) {
                    c.this.f19784Q.remove(this.f19786b);
                }
                c cVar = c.this;
                cVar.m(this.f19786b, false, cVar.f19783P);
            }
        }

        public final class b implements Runnable {

            public final U f19788b;

            public b(U u10) {
                this.f19788b = u10;
            }

            @Override
            public void run() {
                synchronized (c.this) {
                    c.this.f19784Q.remove(this.f19788b);
                }
                c cVar = c.this;
                cVar.m(this.f19788b, false, cVar.f19783P);
            }
        }

        public c(Be.I<? super U> i10, Callable<U> callable, long j10, long j11, TimeUnit timeUnit, J.c cVar) {
            super(i10, new Re.a());
            this.f19779L = callable;
            this.f19780M = j10;
            this.f19781N = j11;
            this.f19782O = timeUnit;
            this.f19783P = cVar;
            this.f19784Q = new LinkedList();
        }

        @Override
        public void a() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f19784Q);
                this.f19784Q.clear();
            }
            Iterator<E> it = arrayList.iterator();
            while (it.hasNext()) {
                this.f10516H.offer((Collection) it.next());
            }
            this.f10518J = true;
            if (f()) {
                io.reactivex.internal.util.u.d(this.f10516H, this.f10515G, false, this.f19783P, this);
            }
        }

        @Override
        public boolean d() {
            return this.f10517I;
        }

        @Override
        public void dispose() {
            if (this.f10517I) {
                return;
            }
            this.f10517I = true;
            q();
            this.f19785R.dispose();
            this.f19783P.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19785R, cVar)) {
                this.f19785R = cVar;
                try {
                    Collection collection = (Collection) He.b.g(this.f19779L.call(), "The buffer supplied is null");
                    this.f19784Q.add(collection);
                    this.f10515G.e(this);
                    J.c cVar2 = this.f19783P;
                    long j10 = this.f19781N;
                    cVar2.e(this, j10, j10, this.f19782O);
                    this.f19783P.c(new b(collection), this.f19780M, this.f19782O);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cVar.dispose();
                    Ge.e.h(th2, this.f10515G);
                    this.f19783P.dispose();
                }
            }
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    Iterator<U> it = this.f19784Q.iterator();
                    while (it.hasNext()) {
                        it.next().add(t10);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void l(Be.I<? super U> i10, U u10) {
            i10.h(u10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f10518J = true;
            q();
            this.f10515G.onError(th2);
            this.f19783P.dispose();
        }

        public void q() {
            synchronized (this) {
                this.f19784Q.clear();
            }
        }

        @Override
        public void run() {
            if (this.f10517I) {
                return;
            }
            try {
                Collection collection = (Collection) He.b.g(this.f19779L.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    try {
                        if (this.f10517I) {
                            return;
                        }
                        this.f19784Q.add(collection);
                        this.f19783P.c(new a(collection), this.f19780M, this.f19782O);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f10515G.onError(th3);
                dispose();
            }
        }
    }

    public C2906q(Be.G<T> g10, long j10, long j11, TimeUnit timeUnit, Be.J j12, Callable<U> callable, int i10, boolean z10) {
        super(g10);
        this.f19754c = j10;
        this.f19755d = j11;
        this.f19756e = timeUnit;
        this.f19757f = j12;
        this.f19758g = callable;
        this.f19759h = i10;
        this.f19760i = z10;
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        if (this.f19754c == this.f19755d && this.f19759h == Integer.MAX_VALUE) {
            this.f19344b.c(new b(new We.m(i10), this.f19758g, this.f19754c, this.f19756e, this.f19757f));
            return;
        }
        J.c c10 = this.f19757f.c();
        if (this.f19754c == this.f19755d) {
            this.f19344b.c(new a(new We.m(i10), this.f19758g, this.f19754c, this.f19756e, this.f19759h, this.f19760i, c10));
        } else {
            this.f19344b.c(new c(new We.m(i10), this.f19758g, this.f19754c, this.f19755d, this.f19756e, c10));
        }
    }
}
