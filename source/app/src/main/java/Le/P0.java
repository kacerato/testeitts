package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class P0<T> extends AbstractC2692a<T, T> {

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f12149i = 163080509307634843L;

        public final hn.c<? super T> f12150b;

        public hn.d f12151c;

        public volatile boolean f12152d;

        public Throwable f12153e;

        public volatile boolean f12154f;

        public final AtomicLong f12155g = new AtomicLong();

        public final AtomicReference<T> f12156h = new AtomicReference<>();

        public a(hn.c<? super T> cVar) {
            this.f12150b = cVar;
        }

        @Override
        public void a() {
            this.f12152d = true;
            c();
        }

        public boolean b(boolean z10, boolean z11, hn.c<?> cVar, AtomicReference<T> atomicReference) {
            if (this.f12154f) {
                atomicReference.lazySet(null);
                return true;
            }
            if (!z10) {
                return false;
            }
            Throwable th2 = this.f12153e;
            if (th2 != null) {
                atomicReference.lazySet(null);
                cVar.onError(th2);
                return true;
            }
            if (!z11) {
                return false;
            }
            cVar.a();
            return true;
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super T> cVar = this.f12150b;
            AtomicLong atomicLong = this.f12155g;
            AtomicReference<T> atomicReference = this.f12156h;
            int i10 = 1;
            do {
                long j10 = 0;
                while (true) {
                    if (j10 == atomicLong.get()) {
                        break;
                    }
                    boolean z10 = this.f12152d;
                    T andSet = atomicReference.getAndSet(null);
                    boolean z11 = andSet == null;
                    if (b(z10, z11, cVar, atomicReference)) {
                        return;
                    }
                    if (z11) {
                        break;
                    }
                    cVar.h(andSet);
                    j10++;
                }
                if (j10 == atomicLong.get()) {
                    if (b(this.f12152d, atomicReference.get() == null, cVar, atomicReference)) {
                        return;
                    }
                }
                if (j10 != 0) {
                    io.reactivex.internal.util.d.e(atomicLong, j10);
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override
        public void cancel() {
            if (this.f12154f) {
                return;
            }
            this.f12154f = true;
            this.f12151c.cancel();
            if (getAndIncrement() == 0) {
                this.f12156h.lazySet(null);
            }
        }

        @Override
        public void h(T t10) {
            this.f12156h.lazySet(t10);
            c();
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12155g, j10);
                c();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12151c, dVar)) {
                this.f12151c = dVar;
                this.f12150b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12153e = th2;
            this.f12152d = true;
            c();
        }
    }

    public P0(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar));
    }
}
