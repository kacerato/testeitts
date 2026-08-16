package Ue;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public class i extends AtomicInteger implements hn.d {

    public static final long f26041j = -2189523197179400958L;

    public hn.d f26042b;

    public long f26043c;

    public final AtomicReference<hn.d> f26044d = new AtomicReference<>();

    public final AtomicLong f26045e = new AtomicLong();

    public final AtomicLong f26046f = new AtomicLong();

    public final boolean f26047g;

    public volatile boolean f26048h;

    public boolean f26049i;

    public i(boolean z10) {
        this.f26047g = z10;
    }

    public void cancel() {
        if (this.f26048h) {
            return;
        }
        this.f26048h = true;
        d();
    }

    public final void d() {
        if (getAndIncrement() != 0) {
            return;
        }
        e();
    }

    public final void e() {
        int i10 = 1;
        long j10 = 0;
        hn.d dVar = null;
        do {
            hn.d dVar2 = this.f26044d.get();
            if (dVar2 != null) {
                dVar2 = this.f26044d.getAndSet(null);
            }
            long j11 = this.f26045e.get();
            if (j11 != 0) {
                j11 = this.f26045e.getAndSet(0L);
            }
            long j12 = this.f26046f.get();
            if (j12 != 0) {
                j12 = this.f26046f.getAndSet(0L);
            }
            hn.d dVar3 = this.f26042b;
            if (this.f26048h) {
                if (dVar3 != null) {
                    dVar3.cancel();
                    this.f26042b = null;
                }
                if (dVar2 != null) {
                    dVar2.cancel();
                }
            } else {
                long j13 = this.f26043c;
                if (j13 != Long.MAX_VALUE) {
                    j13 = io.reactivex.internal.util.d.c(j13, j11);
                    if (j13 != Long.MAX_VALUE) {
                        j13 -= j12;
                        if (j13 < 0) {
                            j.e(j13);
                            j13 = 0;
                        }
                    }
                    this.f26043c = j13;
                }
                if (dVar2 != null) {
                    if (dVar3 != null && this.f26047g) {
                        dVar3.cancel();
                    }
                    this.f26042b = dVar2;
                    if (j13 != 0) {
                        j10 = io.reactivex.internal.util.d.c(j10, j13);
                        dVar = dVar2;
                    }
                } else if (dVar3 != null && j11 != 0) {
                    j10 = io.reactivex.internal.util.d.c(j10, j11);
                    dVar = dVar3;
                }
            }
            i10 = addAndGet(-i10);
        } while (i10 != 0);
        if (j10 != 0) {
            dVar.i(j10);
        }
    }

    public final boolean f() {
        return this.f26048h;
    }

    public final boolean g() {
        return this.f26049i;
    }

    @Override
    public final void i(long j10) {
        if (!j.m(j10) || this.f26049i) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            io.reactivex.internal.util.d.a(this.f26045e, j10);
            d();
            return;
        }
        long j11 = this.f26043c;
        if (j11 != Long.MAX_VALUE) {
            long c10 = io.reactivex.internal.util.d.c(j11, j10);
            this.f26043c = c10;
            if (c10 == Long.MAX_VALUE) {
                this.f26049i = true;
            }
        }
        hn.d dVar = this.f26042b;
        if (decrementAndGet() != 0) {
            e();
        }
        if (dVar != null) {
            dVar.i(j10);
        }
    }

    public final void k(long j10) {
        if (this.f26049i) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            io.reactivex.internal.util.d.a(this.f26046f, j10);
            d();
            return;
        }
        long j11 = this.f26043c;
        if (j11 != Long.MAX_VALUE) {
            long j12 = j11 - j10;
            if (j12 < 0) {
                j.e(j12);
                j12 = 0;
            }
            this.f26043c = j12;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        e();
    }

    public final void l(hn.d dVar) {
        if (this.f26048h) {
            dVar.cancel();
            return;
        }
        He.b.g(dVar, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            hn.d andSet = this.f26044d.getAndSet(dVar);
            if (andSet != null && this.f26047g) {
                andSet.cancel();
            }
            d();
            return;
        }
        hn.d dVar2 = this.f26042b;
        if (dVar2 != null && this.f26047g) {
            dVar2.cancel();
        }
        this.f26042b = dVar;
        long j10 = this.f26043c;
        if (decrementAndGet() != 0) {
            e();
        }
        if (j10 != 0) {
            dVar.i(j10);
        }
    }
}
