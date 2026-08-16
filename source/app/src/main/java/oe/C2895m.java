package Oe;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C2895m<T, U extends Collection<? super T>> extends AbstractC2859a<T, U> {

    public final int f19629c;

    public final int f19630d;

    public final Callable<U> f19631e;

    public static final class a<T, U extends Collection<? super T>> implements Be.I<T>, De.c {

        public final Be.I<? super U> f19632b;

        public final int f19633c;

        public final Callable<U> f19634d;

        public U f19635e;

        public int f19636f;

        public De.c f19637g;

        public a(Be.I<? super U> i10, int i11, Callable<U> callable) {
            this.f19632b = i10;
            this.f19633c = i11;
            this.f19634d = callable;
        }

        @Override
        public void a() {
            U u10 = this.f19635e;
            if (u10 != null) {
                this.f19635e = null;
                if (!u10.isEmpty()) {
                    this.f19632b.h(u10);
                }
                this.f19632b.a();
            }
        }

        public boolean b() {
            try {
                this.f19635e = (U) He.b.g(this.f19634d.call(), "Empty buffer supplied");
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19635e = null;
                De.c cVar = this.f19637g;
                if (cVar == null) {
                    Ge.e.h(th2, this.f19632b);
                    return false;
                }
                cVar.dispose();
                this.f19632b.onError(th2);
                return false;
            }
        }

        @Override
        public boolean d() {
            return this.f19637g.d();
        }

        @Override
        public void dispose() {
            this.f19637g.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19637g, cVar)) {
                this.f19637g = cVar;
                this.f19632b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            U u10 = this.f19635e;
            if (u10 != null) {
                u10.add(t10);
                int i10 = this.f19636f + 1;
                this.f19636f = i10;
                if (i10 >= this.f19633c) {
                    this.f19632b.h(u10);
                    this.f19636f = 0;
                    b();
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19635e = null;
            this.f19632b.onError(th2);
        }
    }

    public static final class b<T, U extends Collection<? super T>> extends AtomicBoolean implements Be.I<T>, De.c {

        public static final long f19638i = -8223395059921494546L;

        public final Be.I<? super U> f19639b;

        public final int f19640c;

        public final int f19641d;

        public final Callable<U> f19642e;

        public De.c f19643f;

        public final ArrayDeque<U> f19644g = new ArrayDeque<>();

        public long f19645h;

        public b(Be.I<? super U> i10, int i11, int i12, Callable<U> callable) {
            this.f19639b = i10;
            this.f19640c = i11;
            this.f19641d = i12;
            this.f19642e = callable;
        }

        @Override
        public void a() {
            while (!this.f19644g.isEmpty()) {
                this.f19639b.h(this.f19644g.poll());
            }
            this.f19639b.a();
        }

        @Override
        public boolean d() {
            return this.f19643f.d();
        }

        @Override
        public void dispose() {
            this.f19643f.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19643f, cVar)) {
                this.f19643f = cVar;
                this.f19639b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            long j10 = this.f19645h;
            this.f19645h = 1 + j10;
            if (j10 % this.f19641d == 0) {
                try {
                    this.f19644g.offer((Collection) He.b.g(this.f19642e.call(), "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."));
                } catch (Throwable th2) {
                    this.f19644g.clear();
                    this.f19643f.dispose();
                    this.f19639b.onError(th2);
                    return;
                }
            }
            Iterator<U> it = this.f19644g.iterator();
            while (it.hasNext()) {
                U next = it.next();
                next.add(t10);
                if (this.f19640c <= next.size()) {
                    it.remove();
                    this.f19639b.h(next);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19644g.clear();
            this.f19639b.onError(th2);
        }
    }

    public C2895m(Be.G<T> g10, int i10, int i11, Callable<U> callable) {
        super(g10);
        this.f19629c = i10;
        this.f19630d = i11;
        this.f19631e = callable;
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        int i11 = this.f19630d;
        int i12 = this.f19629c;
        if (i11 != i12) {
            this.f19344b.c(new b(i10, this.f19629c, this.f19630d, this.f19631e));
            return;
        }
        a aVar = new a(i10, i12, this.f19631e);
        if (aVar.b()) {
            this.f19344b.c(aVar);
        }
    }
}
