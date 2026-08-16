package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2361k;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;

public final class C2732n0<T, S> extends AbstractC2362l<T> {

    public final Callable<S> f12967c;

    public final Fe.c<S, InterfaceC2361k<T>, S> f12968d;

    public final Fe.g<? super S> f12969e;

    public static final class a<T, S> extends AtomicLong implements InterfaceC2361k<T>, hn.d {

        public static final long f12970i = 7565982551505011832L;

        public final hn.c<? super T> f12971b;

        public final Fe.c<S, ? super InterfaceC2361k<T>, S> f12972c;

        public final Fe.g<? super S> f12973d;

        public S f12974e;

        public volatile boolean f12975f;

        public boolean f12976g;

        public boolean f12977h;

        public a(hn.c<? super T> cVar, Fe.c<S, ? super InterfaceC2361k<T>, S> cVar2, Fe.g<? super S> gVar, S s10) {
            this.f12971b = cVar;
            this.f12972c = cVar2;
            this.f12973d = gVar;
            this.f12974e = s10;
        }

        @Override
        public void a() {
            if (this.f12976g) {
                return;
            }
            this.f12976g = true;
            this.f12971b.a();
        }

        public final void b(S s10) {
            try {
                this.f12973d.accept(s10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }

        @Override
        public void cancel() {
            if (this.f12975f) {
                return;
            }
            this.f12975f = true;
            if (io.reactivex.internal.util.d.a(this, 1L) == 0) {
                S s10 = this.f12974e;
                this.f12974e = null;
                b(s10);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f12976g) {
                return;
            }
            if (this.f12977h) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f12977h = true;
                this.f12971b.h(t10);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        
            r9.f12974e = r0;
            r10 = addAndGet(-r4);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void i(long j10) {
            if (Ue.j.m(j10) && io.reactivex.internal.util.d.a(this, j10) == 0) {
                S s10 = this.f12974e;
                Fe.c<S, ? super InterfaceC2361k<T>, S> cVar = this.f12972c;
                do {
                    long j11 = 0;
                    while (true) {
                        if (j11 == j10) {
                            j10 = get();
                            if (j11 == j10) {
                                break;
                            }
                        } else {
                            if (this.f12975f) {
                                this.f12974e = null;
                                b(s10);
                                return;
                            }
                            this.f12977h = false;
                            try {
                                s10 = cVar.apply(s10, this);
                                if (this.f12976g) {
                                    this.f12975f = true;
                                    this.f12974e = null;
                                    b(s10);
                                    return;
                                }
                                j11++;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                this.f12975f = true;
                                this.f12974e = null;
                                onError(th2);
                                b(s10);
                                return;
                            }
                        }
                    }
                } while (j10 != 0);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12976g) {
                Ye.a.Y(th2);
                return;
            }
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f12976g = true;
            this.f12971b.onError(th2);
        }
    }

    public C2732n0(Callable<S> callable, Fe.c<S, InterfaceC2361k<T>, S> cVar, Fe.g<? super S> gVar) {
        this.f12967c = callable;
        this.f12968d = cVar;
        this.f12969e = gVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        try {
            cVar.j(new a(cVar, this.f12968d, this.f12969e, this.f12967c.call()));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
