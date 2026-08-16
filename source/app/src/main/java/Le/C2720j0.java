package Le;

import Be.AbstractC2362l;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class C2720j0<T> extends AbstractC2362l<T> {

    public final Future<? extends T> f12855c;

    public final long f12856d;

    public final TimeUnit f12857e;

    public C2720j0(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        this.f12855c = future;
        this.f12856d = j10;
        this.f12857e = timeUnit;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        Ue.f fVar = new Ue.f(cVar);
        cVar.j(fVar);
        try {
            TimeUnit timeUnit = this.f12857e;
            T t10 = timeUnit != null ? this.f12855c.get(this.f12856d, timeUnit) : this.f12855c.get();
            if (t10 == null) {
                cVar.onError(new NullPointerException("The future returned null"));
            } else {
                fVar.d(t10);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (fVar.n()) {
                return;
            }
            cVar.onError(th2);
        }
    }
}
