package Oe;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class C2875f0<T> extends Be.B<T> {

    public final Future<? extends T> f19466b;

    public final long f19467c;

    public final TimeUnit f19468d;

    public C2875f0(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        this.f19466b = future;
        this.f19467c = j10;
        this.f19468d = timeUnit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void J5(Be.I<? super T> i10) {
        Je.l lVar = new Je.l(i10);
        i10.e(lVar);
        if (lVar.d()) {
            return;
        }
        try {
            TimeUnit timeUnit = this.f19468d;
            lVar.f(He.b.g(timeUnit != null ? this.f19466b.get(this.f19467c, timeUnit) : this.f19466b.get(), "Future returned null"));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (lVar.d()) {
                return;
            }
            i10.onError(th2);
        }
    }
}
