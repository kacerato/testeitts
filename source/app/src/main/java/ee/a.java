package Ee;

import Be.AbstractC2362l;
import Be.J;
import Ce.d;
import Ce.f;
import Ce.h;
import De.c;
import Fe.g;
import Le.C2694a1;
import Le.C2722k;
import af.C3604b;
import java.util.concurrent.TimeUnit;

public abstract class a<T> extends AbstractC2362l<T> {
    @f
    public AbstractC2362l<T> O8() {
        return P8(1);
    }

    @f
    public AbstractC2362l<T> P8(int i10) {
        return Q8(i10, He.a.h());
    }

    @f
    public AbstractC2362l<T> Q8(int i10, @f g<? super c> gVar) {
        if (i10 > 0) {
            return Ye.a.P(new C2722k(this, i10, gVar));
        }
        S8(gVar);
        return Ye.a.T(this);
    }

    public final c R8() {
        io.reactivex.internal.util.g gVar = new io.reactivex.internal.util.g();
        S8(gVar);
        return gVar.f92441b;
    }

    public abstract void S8(@f g<? super c> gVar);

    @f
    @h("none")
    @Ce.b(Ce.a.PASS_THROUGH)
    @d
    public AbstractC2362l<T> T8() {
        return Ye.a.P(new C2694a1(this));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @d
    @h("none")
    public final AbstractC2362l<T> U8(int i10) {
        return W8(i10, 0L, TimeUnit.NANOSECONDS, C3604b.i());
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @d
    @h(h.f4305p)
    public final AbstractC2362l<T> V8(int i10, long j10, TimeUnit timeUnit) {
        return W8(i10, j10, timeUnit, C3604b.a());
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @d
    @h(h.f4304o)
    public final AbstractC2362l<T> W8(int i10, long j10, TimeUnit timeUnit, J j11) {
        He.b.h(i10, "subscriberCount");
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.P(new C2694a1(this, i10, j10, timeUnit, j11));
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @d
    @h(h.f4305p)
    public final AbstractC2362l<T> X8(long j10, TimeUnit timeUnit) {
        return W8(1, j10, timeUnit, C3604b.a());
    }

    @Ce.b(Ce.a.PASS_THROUGH)
    @d
    @h(h.f4304o)
    public final AbstractC2362l<T> Y8(long j10, TimeUnit timeUnit, J j11) {
        return W8(1, j10, timeUnit, j11);
    }
}
