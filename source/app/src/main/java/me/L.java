package Me;

import Be.AbstractC2368s;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class L<T> extends AbstractC2368s<T> {

    public final Future<? extends T> f14932b;

    public final long f14933c;

    public final TimeUnit f14934d;

    public L(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        this.f14932b = future;
        this.f14933c = j10;
        this.f14934d = timeUnit;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        De.c b10 = De.d.b();
        vVar.e(b10);
        if (b10.d()) {
            return;
        }
        try {
            long j10 = this.f14933c;
            T t10 = j10 <= 0 ? this.f14932b.get() : this.f14932b.get(j10, this.f14934d);
            if (b10.d()) {
                return;
            }
            if (t10 == null) {
                vVar.a();
            } else {
                vVar.b(t10);
            }
        } catch (Throwable th2) {
            th = th2;
            if (th instanceof ExecutionException) {
                th = th.getCause();
            }
            io.reactivex.exceptions.a.b(th);
            if (b10.d()) {
                return;
            }
            vVar.onError(th);
        }
    }
}
