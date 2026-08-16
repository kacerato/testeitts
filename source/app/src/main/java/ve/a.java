package Ve;

import Be.B;
import Be.J;
import Ce.d;
import Ce.f;
import Ce.h;
import De.c;
import Fe.g;
import Oe.C2889k;
import Oe.O0;
import af.C3604b;
import java.util.concurrent.TimeUnit;

public abstract class a<T> extends B<T> {
    @f
    public B<T> j8() {
        return k8(1);
    }

    @f
    public B<T> k8(int i10) {
        return l8(i10, He.a.h());
    }

    @f
    public B<T> l8(int i10, @f g<? super c> gVar) {
        if (i10 > 0) {
            return Ye.a.R(new C2889k(this, i10, gVar));
        }
        n8(gVar);
        return Ye.a.U(this);
    }

    public final c m8() {
        io.reactivex.internal.util.g gVar = new io.reactivex.internal.util.g();
        n8(gVar);
        return gVar.f92441b;
    }

    public abstract void n8(@f g<? super c> gVar);

    @f
    @d
    @h("none")
    public B<T> o8() {
        return Ye.a.R(new O0(this));
    }

    @d
    @h("none")
    public final B<T> p8(int i10) {
        return r8(i10, 0L, TimeUnit.NANOSECONDS, C3604b.i());
    }

    @d
    @h(h.f4305p)
    public final B<T> q8(int i10, long j10, TimeUnit timeUnit) {
        return r8(i10, j10, timeUnit, C3604b.a());
    }

    @d
    @h(h.f4304o)
    public final B<T> r8(int i10, long j10, TimeUnit timeUnit, J j11) {
        He.b.h(i10, "subscriberCount");
        He.b.g(timeUnit, "unit is null");
        He.b.g(j11, "scheduler is null");
        return Ye.a.R(new O0(this, i10, j10, timeUnit, j11));
    }

    @d
    @h(h.f4305p)
    public final B<T> s8(long j10, TimeUnit timeUnit) {
        return r8(1, j10, timeUnit, C3604b.a());
    }

    @d
    @h(h.f4304o)
    public final B<T> t8(long j10, TimeUnit timeUnit, J j11) {
        return r8(1, j10, timeUnit, j11);
    }
}
