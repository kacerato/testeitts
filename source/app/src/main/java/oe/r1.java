package Oe;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class r1<T> extends AbstractC2859a<T, T> {

    public final long f19830c;

    public final long f19831d;

    public final TimeUnit f19832e;

    public final Be.J f19833f;

    public final int f19834g;

    public final boolean f19835h;

    public static final class a<T> extends AtomicBoolean implements Be.I<T>, De.c {

        public static final long f19836l = -5677354903406201275L;

        public final Be.I<? super T> f19837b;

        public final long f19838c;

        public final long f19839d;

        public final TimeUnit f19840e;

        public final Be.J f19841f;

        public final Re.c<Object> f19842g;

        public final boolean f19843h;

        public De.c f19844i;

        public volatile boolean f19845j;

        public Throwable f19846k;

        public a(Be.I<? super T> i10, long j10, long j11, TimeUnit timeUnit, Be.J j12, int i11, boolean z10) {
            this.f19837b = i10;
            this.f19838c = j10;
            this.f19839d = j11;
            this.f19840e = timeUnit;
            this.f19841f = j12;
            this.f19842g = new Re.c<>(i11);
            this.f19843h = z10;
        }

        @Override
        public void a() {
            b();
        }

        public void b() {
            Throwable th2;
            if (compareAndSet(false, true)) {
                Be.I<? super T> i10 = this.f19837b;
                Re.c<Object> cVar = this.f19842g;
                boolean z10 = this.f19843h;
                while (!this.f19845j) {
                    if (!z10 && (th2 = this.f19846k) != null) {
                        cVar.clear();
                        i10.onError(th2);
                        return;
                    }
                    Object poll = cVar.poll();
                    if (poll == null) {
                        Throwable th3 = this.f19846k;
                        if (th3 != null) {
                            i10.onError(th3);
                            return;
                        } else {
                            i10.a();
                            return;
                        }
                    }
                    Object poll2 = cVar.poll();
                    if (((Long) poll).longValue() >= this.f19841f.e(this.f19840e) - this.f19839d) {
                        i10.h(poll2);
                    }
                }
                cVar.clear();
            }
        }

        @Override
        public boolean d() {
            return this.f19845j;
        }

        @Override
        public void dispose() {
            if (this.f19845j) {
                return;
            }
            this.f19845j = true;
            this.f19844i.dispose();
            if (compareAndSet(false, true)) {
                this.f19842g.clear();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19844i, cVar)) {
                this.f19844i = cVar;
                this.f19837b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            Re.c<Object> cVar = this.f19842g;
            long e10 = this.f19841f.e(this.f19840e);
            long j10 = this.f19839d;
            long j11 = this.f19838c;
            boolean z10 = j11 == Long.MAX_VALUE;
            cVar.o(Long.valueOf(e10), t10);
            while (!cVar.isEmpty()) {
                if (((Long) cVar.peek()).longValue() > e10 - j10 && (z10 || (cVar.p() >> 1) <= j11)) {
                    return;
                }
                cVar.poll();
                cVar.poll();
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19846k = th2;
            b();
        }
    }

    public r1(Be.G<T> g10, long j10, long j11, TimeUnit timeUnit, Be.J j12, int i10, boolean z10) {
        super(g10);
        this.f19830c = j10;
        this.f19831d = j11;
        this.f19832e = timeUnit;
        this.f19833f = j12;
        this.f19834g = i10;
        this.f19835h = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19830c, this.f19831d, this.f19832e, this.f19833f, this.f19834g, this.f19835h));
    }
}
