package Oe;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2885i1<T> extends AbstractC2859a<T, T> {

    public final long f19517c;

    public final TimeUnit f19518d;

    public final Be.J f19519e;

    public final int f19520f;

    public final boolean f19521g;

    public static final class a<T> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19522l = -5677354903406201275L;

        public final Be.I<? super T> f19523b;

        public final long f19524c;

        public final TimeUnit f19525d;

        public final Be.J f19526e;

        public final Re.c<Object> f19527f;

        public final boolean f19528g;

        public De.c f19529h;

        public volatile boolean f19530i;

        public volatile boolean f19531j;

        public Throwable f19532k;

        public a(Be.I<? super T> i10, long j10, TimeUnit timeUnit, Be.J j11, int i11, boolean z10) {
            this.f19523b = i10;
            this.f19524c = j10;
            this.f19525d = timeUnit;
            this.f19526e = j11;
            this.f19527f = new Re.c<>(i11);
            this.f19528g = z10;
        }

        @Override
        public void a() {
            this.f19531j = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            Be.I<? super T> i10 = this.f19523b;
            Re.c<Object> cVar = this.f19527f;
            boolean z10 = this.f19528g;
            TimeUnit timeUnit = this.f19525d;
            Be.J j10 = this.f19526e;
            long j11 = this.f19524c;
            int i11 = 1;
            while (!this.f19530i) {
                boolean z11 = this.f19531j;
                Long l10 = (Long) cVar.peek();
                boolean z12 = l10 == null;
                long e10 = j10.e(timeUnit);
                if (!z12 && l10.longValue() > e10 - j11) {
                    z12 = true;
                }
                if (z11) {
                    if (!z10) {
                        Throwable th2 = this.f19532k;
                        if (th2 != null) {
                            this.f19527f.clear();
                            i10.onError(th2);
                            return;
                        } else if (z12) {
                            i10.a();
                            return;
                        }
                    } else if (z12) {
                        Throwable th3 = this.f19532k;
                        if (th3 != null) {
                            i10.onError(th3);
                            return;
                        } else {
                            i10.a();
                            return;
                        }
                    }
                }
                if (z12) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    cVar.poll();
                    i10.h(cVar.poll());
                }
            }
            this.f19527f.clear();
        }

        @Override
        public boolean d() {
            return this.f19530i;
        }

        @Override
        public void dispose() {
            if (this.f19530i) {
                return;
            }
            this.f19530i = true;
            this.f19529h.dispose();
            if (getAndIncrement() == 0) {
                this.f19527f.clear();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19529h, cVar)) {
                this.f19529h = cVar;
                this.f19523b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f19527f.o(Long.valueOf(this.f19526e.e(this.f19525d)), t10);
            b();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19532k = th2;
            this.f19531j = true;
            b();
        }
    }

    public C2885i1(Be.G<T> g10, long j10, TimeUnit timeUnit, Be.J j11, int i10, boolean z10) {
        super(g10);
        this.f19517c = j10;
        this.f19518d = timeUnit;
        this.f19519e = j11;
        this.f19520f = i10;
        this.f19521g = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19517c, this.f19518d, this.f19519e, this.f19520f, this.f19521g));
    }
}
