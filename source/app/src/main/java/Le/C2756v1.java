package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class C2756v1<T> extends AbstractC2692a<T, T> {

    public final long f13280d;

    public final TimeUnit f13281e;

    public final Be.J f13282f;

    public final int f13283g;

    public final boolean f13284h;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f13285m = -5677354903406201275L;

        public final hn.c<? super T> f13286b;

        public final long f13287c;

        public final TimeUnit f13288d;

        public final Be.J f13289e;

        public final Re.c<Object> f13290f;

        public final boolean f13291g;

        public hn.d f13292h;

        public final AtomicLong f13293i = new AtomicLong();

        public volatile boolean f13294j;

        public volatile boolean f13295k;

        public Throwable f13296l;

        public a(hn.c<? super T> cVar, long j10, TimeUnit timeUnit, Be.J j11, int i10, boolean z10) {
            this.f13286b = cVar;
            this.f13287c = j10;
            this.f13288d = timeUnit;
            this.f13289e = j11;
            this.f13290f = new Re.c<>(i10);
            this.f13291g = z10;
        }

        @Override
        public void a() {
            this.f13295k = true;
            c();
        }

        public boolean b(boolean z10, boolean z11, hn.c<? super T> cVar, boolean z12) {
            if (this.f13294j) {
                this.f13290f.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (z12) {
                if (!z11) {
                    return false;
                }
                Throwable th2 = this.f13296l;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.a();
                }
                return true;
            }
            Throwable th3 = this.f13296l;
            if (th3 != null) {
                this.f13290f.clear();
                cVar.onError(th3);
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
            hn.c<? super T> cVar = this.f13286b;
            Re.c<Object> cVar2 = this.f13290f;
            boolean z10 = this.f13291g;
            TimeUnit timeUnit = this.f13288d;
            Be.J j10 = this.f13289e;
            long j11 = this.f13287c;
            int i10 = 1;
            do {
                long j12 = this.f13293i.get();
                long j13 = 0;
                while (j13 != j12) {
                    boolean z11 = this.f13295k;
                    Long l10 = (Long) cVar2.peek();
                    boolean z12 = l10 == null;
                    boolean z13 = (z12 || l10.longValue() <= j10.e(timeUnit) - j11) ? z12 : true;
                    if (b(z11, z13, cVar, z10)) {
                        return;
                    }
                    if (z13) {
                        break;
                    }
                    cVar2.poll();
                    cVar.h(cVar2.poll());
                    j13++;
                }
                if (j13 != 0) {
                    io.reactivex.internal.util.d.e(this.f13293i, j13);
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override
        public void cancel() {
            if (this.f13294j) {
                return;
            }
            this.f13294j = true;
            this.f13292h.cancel();
            if (getAndIncrement() == 0) {
                this.f13290f.clear();
            }
        }

        @Override
        public void h(T t10) {
            this.f13290f.o(Long.valueOf(this.f13289e.e(this.f13288d)), t10);
            c();
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f13293i, j10);
                c();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13292h, dVar)) {
                this.f13292h = dVar;
                this.f13286b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13296l = th2;
            this.f13295k = true;
            c();
        }
    }

    public C2756v1(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11, int i10, boolean z10) {
        super(abstractC2362l);
        this.f13280d = j10;
        this.f13281e = timeUnit;
        this.f13282f = j11;
        this.f13283g = i10;
        this.f13284h = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f13280d, this.f13281e, this.f13282f, this.f13283g, this.f13284h));
    }
}
