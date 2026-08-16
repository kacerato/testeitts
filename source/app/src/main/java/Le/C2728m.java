package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class C2728m<T, C extends Collection<? super T>> extends AbstractC2692a<T, C> {

    public final int f12897d;

    public final int f12898e;

    public final Callable<C> f12899f;

    public static final class a<T, C extends Collection<? super T>> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super C> f12900b;

        public final Callable<C> f12901c;

        public final int f12902d;

        public C f12903e;

        public hn.d f12904f;

        public boolean f12905g;

        public int f12906h;

        public a(hn.c<? super C> cVar, int i10, Callable<C> callable) {
            this.f12900b = cVar;
            this.f12902d = i10;
            this.f12901c = callable;
        }

        @Override
        public void a() {
            if (this.f12905g) {
                return;
            }
            this.f12905g = true;
            C c10 = this.f12903e;
            if (c10 != null && !c10.isEmpty()) {
                this.f12900b.h(c10);
            }
            this.f12900b.a();
        }

        @Override
        public void cancel() {
            this.f12904f.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f12905g) {
                return;
            }
            C c10 = this.f12903e;
            if (c10 == null) {
                try {
                    c10 = (C) He.b.g(this.f12901c.call(), "The bufferSupplier returned a null buffer");
                    this.f12903e = c10;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cancel();
                    onError(th2);
                    return;
                }
            }
            c10.add(t10);
            int i10 = this.f12906h + 1;
            if (i10 != this.f12902d) {
                this.f12906h = i10;
                return;
            }
            this.f12906h = 0;
            this.f12903e = null;
            this.f12900b.h(c10);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                this.f12904f.i(io.reactivex.internal.util.d.d(j10, this.f12902d));
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12904f, dVar)) {
                this.f12904f = dVar;
                this.f12900b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12905g) {
                Ye.a.Y(th2);
            } else {
                this.f12905g = true;
                this.f12900b.onError(th2);
            }
        }
    }

    public static final class b<T, C extends Collection<? super T>> extends AtomicLong implements InterfaceC2367q<T>, hn.d, Fe.e {

        public static final long f12907m = -7370244972039324525L;

        public final hn.c<? super C> f12908b;

        public final Callable<C> f12909c;

        public final int f12910d;

        public final int f12911e;

        public hn.d f12914h;

        public boolean f12915i;

        public int f12916j;

        public volatile boolean f12917k;

        public long f12918l;

        public final AtomicBoolean f12913g = new AtomicBoolean();

        public final ArrayDeque<C> f12912f = new ArrayDeque<>();

        public b(hn.c<? super C> cVar, int i10, int i11, Callable<C> callable) {
            this.f12908b = cVar;
            this.f12910d = i10;
            this.f12911e = i11;
            this.f12909c = callable;
        }

        @Override
        public void a() {
            if (this.f12915i) {
                return;
            }
            this.f12915i = true;
            long j10 = this.f12918l;
            if (j10 != 0) {
                io.reactivex.internal.util.d.e(this, j10);
            }
            io.reactivex.internal.util.u.g(this.f12908b, this.f12912f, this, this);
        }

        @Override
        public void cancel() {
            this.f12917k = true;
            this.f12914h.cancel();
        }

        @Override
        public boolean getAsBoolean() {
            return this.f12917k;
        }

        @Override
        public void h(T t10) {
            if (this.f12915i) {
                return;
            }
            ArrayDeque<C> arrayDeque = this.f12912f;
            int i10 = this.f12916j;
            int i11 = i10 + 1;
            if (i10 == 0) {
                try {
                    arrayDeque.offer((Collection) He.b.g(this.f12909c.call(), "The bufferSupplier returned a null buffer"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cancel();
                    onError(th2);
                    return;
                }
            }
            Collection collection = (Collection) arrayDeque.peek();
            if (collection != null && collection.size() + 1 == this.f12910d) {
                arrayDeque.poll();
                collection.add(t10);
                this.f12918l++;
                this.f12908b.h(collection);
            }
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                ((Collection) it.next()).add(t10);
            }
            if (i11 == this.f12911e) {
                i11 = 0;
            }
            this.f12916j = i11;
        }

        @Override
        public void i(long j10) {
            if (!Ue.j.m(j10) || io.reactivex.internal.util.u.i(j10, this.f12908b, this.f12912f, this, this)) {
                return;
            }
            if (this.f12913g.get() || !this.f12913g.compareAndSet(false, true)) {
                this.f12914h.i(io.reactivex.internal.util.d.d(this.f12911e, j10));
            } else {
                this.f12914h.i(io.reactivex.internal.util.d.c(this.f12910d, io.reactivex.internal.util.d.d(this.f12911e, j10 - 1)));
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12914h, dVar)) {
                this.f12914h = dVar;
                this.f12908b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12915i) {
                Ye.a.Y(th2);
                return;
            }
            this.f12915i = true;
            this.f12912f.clear();
            this.f12908b.onError(th2);
        }
    }

    public static final class c<T, C extends Collection<? super T>> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f12919j = -5616169793639412593L;

        public final hn.c<? super C> f12920b;

        public final Callable<C> f12921c;

        public final int f12922d;

        public final int f12923e;

        public C f12924f;

        public hn.d f12925g;

        public boolean f12926h;

        public int f12927i;

        public c(hn.c<? super C> cVar, int i10, int i11, Callable<C> callable) {
            this.f12920b = cVar;
            this.f12922d = i10;
            this.f12923e = i11;
            this.f12921c = callable;
        }

        @Override
        public void a() {
            if (this.f12926h) {
                return;
            }
            this.f12926h = true;
            C c10 = this.f12924f;
            this.f12924f = null;
            if (c10 != null) {
                this.f12920b.h(c10);
            }
            this.f12920b.a();
        }

        @Override
        public void cancel() {
            this.f12925g.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f12926h) {
                return;
            }
            C c10 = this.f12924f;
            int i10 = this.f12927i;
            int i11 = i10 + 1;
            if (i10 == 0) {
                try {
                    c10 = (C) He.b.g(this.f12921c.call(), "The bufferSupplier returned a null buffer");
                    this.f12924f = c10;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cancel();
                    onError(th2);
                    return;
                }
            }
            if (c10 != null) {
                c10.add(t10);
                if (c10.size() == this.f12922d) {
                    this.f12924f = null;
                    this.f12920b.h(c10);
                }
            }
            if (i11 == this.f12923e) {
                i11 = 0;
            }
            this.f12927i = i11;
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                if (get() != 0 || !compareAndSet(0, 1)) {
                    this.f12925g.i(io.reactivex.internal.util.d.d(this.f12923e, j10));
                    return;
                }
                this.f12925g.i(io.reactivex.internal.util.d.c(io.reactivex.internal.util.d.d(j10, this.f12922d), io.reactivex.internal.util.d.d(this.f12923e - this.f12922d, j10 - 1)));
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12925g, dVar)) {
                this.f12925g = dVar;
                this.f12920b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12926h) {
                Ye.a.Y(th2);
                return;
            }
            this.f12926h = true;
            this.f12924f = null;
            this.f12920b.onError(th2);
        }
    }

    public C2728m(AbstractC2362l<T> abstractC2362l, int i10, int i11, Callable<C> callable) {
        super(abstractC2362l);
        this.f12897d = i10;
        this.f12898e = i11;
        this.f12899f = callable;
    }

    @Override
    public void m6(hn.c<? super C> cVar) {
        int i10 = this.f12897d;
        int i11 = this.f12898e;
        if (i10 == i11) {
            this.f12507c.l6(new a(cVar, i10, this.f12899f));
        } else if (i11 > i10) {
            this.f12507c.l6(new c(cVar, this.f12897d, this.f12898e, this.f12899f));
        } else {
            this.f12507c.l6(new b(cVar, this.f12897d, this.f12898e, this.f12899f));
        }
    }
}
