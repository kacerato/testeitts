package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2711g0<T, R> extends AbstractC2692a<T, R> {

    public final Fe.o<? super T, ? extends Iterable<? extends R>> f12782d;

    public final int f12783e;

    public static final class a<T, R> extends Ue.c<R> implements InterfaceC2367q<T> {

        public static final long f12784p = -3096000382929934955L;

        public final hn.c<? super R> f12785c;

        public final Fe.o<? super T, ? extends Iterable<? extends R>> f12786d;

        public final int f12787e;

        public final int f12788f;

        public hn.d f12790h;

        public Ie.o<T> f12791i;

        public volatile boolean f12792j;

        public volatile boolean f12793k;

        public Iterator<? extends R> f12795m;

        public int f12796n;

        public int f12797o;

        public final AtomicReference<Throwable> f12794l = new AtomicReference<>();

        public final AtomicLong f12789g = new AtomicLong();

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends Iterable<? extends R>> oVar, int i10) {
            this.f12785c = cVar;
            this.f12786d = oVar;
            this.f12787e = i10;
            this.f12788f = i10 - (i10 >> 2);
        }

        @Override
        public void a() {
            if (this.f12792j) {
                return;
            }
            this.f12792j = true;
            f();
        }

        @Override
        public void cancel() {
            if (this.f12793k) {
                return;
            }
            this.f12793k = true;
            this.f12790h.cancel();
            if (getAndIncrement() == 0) {
                this.f12791i.clear();
            }
        }

        @Override
        public void clear() {
            this.f12795m = null;
            this.f12791i.clear();
        }

        public boolean d(boolean z10, boolean z11, hn.c<?> cVar, Ie.o<?> oVar) {
            if (this.f12793k) {
                this.f12795m = null;
                oVar.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (this.f12794l.get() == null) {
                if (!z11) {
                    return false;
                }
                cVar.a();
                return true;
            }
            Throwable c10 = ExceptionHelper.c(this.f12794l);
            this.f12795m = null;
            oVar.clear();
            cVar.onError(c10);
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:57:0x0121, code lost:
        
            if (r6 == null) goto L69;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<?> cVar = this.f12785c;
            Ie.o<T> oVar = this.f12791i;
            boolean z10 = true;
            boolean z11 = this.f12797o != 1;
            Iterator<? extends R> it = this.f12795m;
            int i10 = 1;
            while (true) {
                if (it == null) {
                    boolean z12 = this.f12792j;
                    try {
                        T poll = oVar.poll();
                        if (d(z12, poll == null ? z10 : false, cVar, oVar)) {
                            return;
                        }
                        if (poll != null) {
                            try {
                                it = this.f12786d.apply(poll).iterator();
                                if (it.hasNext()) {
                                    this.f12795m = it;
                                } else {
                                    n(z11);
                                    it = null;
                                }
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                this.f12790h.cancel();
                                ExceptionHelper.a(this.f12794l, th2);
                                cVar.onError(ExceptionHelper.c(this.f12794l));
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        this.f12790h.cancel();
                        ExceptionHelper.a(this.f12794l, th3);
                        Throwable c10 = ExceptionHelper.c(this.f12794l);
                        this.f12795m = null;
                        oVar.clear();
                        cVar.onError(c10);
                        return;
                    }
                }
                if (it != null) {
                    long j10 = this.f12789g.get();
                    long j11 = 0;
                    while (true) {
                        if (j11 == j10) {
                            break;
                        }
                        if (d(this.f12792j, false, cVar, oVar)) {
                            return;
                        }
                        try {
                            cVar.h((Object) He.b.g(it.next(), "The iterator returned a null value"));
                            if (d(this.f12792j, false, cVar, oVar)) {
                                return;
                            }
                            j11++;
                            try {
                                if (!it.hasNext()) {
                                    n(z11);
                                    this.f12795m = null;
                                    it = null;
                                    break;
                                }
                            } catch (Throwable th4) {
                                io.reactivex.exceptions.a.b(th4);
                                this.f12795m = null;
                                this.f12790h.cancel();
                                ExceptionHelper.a(this.f12794l, th4);
                                cVar.onError(ExceptionHelper.c(this.f12794l));
                                return;
                            }
                        } catch (Throwable th5) {
                            io.reactivex.exceptions.a.b(th5);
                            this.f12795m = null;
                            this.f12790h.cancel();
                            ExceptionHelper.a(this.f12794l, th5);
                            cVar.onError(ExceptionHelper.c(this.f12794l));
                            return;
                        }
                    }
                    if (j11 == j10) {
                        if (d(this.f12792j, oVar.isEmpty() && it == null, cVar, oVar)) {
                            return;
                        }
                    }
                    if (j11 != 0 && j10 != Long.MAX_VALUE) {
                        this.f12789g.addAndGet(-j11);
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
                z10 = true;
            }
        }

        @Override
        public void h(T t10) {
            if (this.f12792j) {
                return;
            }
            if (this.f12797o != 0 || this.f12791i.offer(t10)) {
                f();
            } else {
                onError(new MissingBackpressureException("Queue is full?!"));
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12789g, j10);
                f();
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f12795m == null && this.f12791i.isEmpty();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12790h, dVar)) {
                this.f12790h = dVar;
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(3);
                    if (m10 == 1) {
                        this.f12797o = m10;
                        this.f12791i = lVar;
                        this.f12792j = true;
                        this.f12785c.j(this);
                        return;
                    }
                    if (m10 == 2) {
                        this.f12797o = m10;
                        this.f12791i = lVar;
                        this.f12785c.j(this);
                        dVar.i(this.f12787e);
                        return;
                    }
                }
                this.f12791i = new Re.b(this.f12787e);
                this.f12785c.j(this);
                dVar.i(this.f12787e);
            }
        }

        @Override
        public int m(int i10) {
            return ((i10 & 1) == 0 || this.f12797o != 1) ? 0 : 1;
        }

        public void n(boolean z10) {
            if (z10) {
                int i10 = this.f12796n + 1;
                if (i10 != this.f12788f) {
                    this.f12796n = i10;
                } else {
                    this.f12796n = 0;
                    this.f12790h.i(i10);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12792j || !ExceptionHelper.a(this.f12794l, th2)) {
                Ye.a.Y(th2);
            } else {
                this.f12792j = true;
                f();
            }
        }

        @Override
        @Ce.g
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f12795m;
            while (true) {
                if (it == null) {
                    T poll = this.f12791i.poll();
                    if (poll != null) {
                        it = this.f12786d.apply(poll).iterator();
                        if (it.hasNext()) {
                            this.f12795m = it;
                            break;
                        }
                        it = null;
                    } else {
                        return null;
                    }
                } else {
                    break;
                }
            }
            R r10 = (R) He.b.g(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f12795m = null;
            }
            return r10;
        }
    }

    public C2711g0(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends Iterable<? extends R>> oVar, int i10) {
        super(abstractC2362l);
        this.f12782d = oVar;
        this.f12783e = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void m6(hn.c<? super R> cVar) {
        AbstractC2362l<T> abstractC2362l = this.f12507c;
        if (!(abstractC2362l instanceof Callable)) {
            abstractC2362l.l6(new a(cVar, this.f12782d, this.f12783e));
            return;
        }
        try {
            Object call = ((Callable) abstractC2362l).call();
            if (call == null) {
                Ue.g.a(cVar);
                return;
            }
            try {
                C2723k0.O8(cVar, this.f12782d.apply(call).iterator());
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ue.g.b(th2, cVar);
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ue.g.b(th3, cVar);
        }
    }
}
