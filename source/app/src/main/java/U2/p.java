package U2;

import android.annotation.SuppressLint;
import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@SuppressLint({"RestrictedApi"})
public class p<V> extends AbstractResolvableFuture<V> implements ScheduledFuture<V> {

    public final ScheduledFuture<?> f25743b;

    public class a implements b<V> {
        public a() {
        }

        @Override
        public void a(Throwable th2) {
            p.this.setException(th2);
        }

        @Override
        public void set(V v10) {
            p.this.set(v10);
        }
    }

    public interface b<T> {
        void a(Throwable th2);

        void set(T t10);
    }

    public interface c<T> {
        ScheduledFuture<?> a(b<T> bVar);
    }

    public p(c<V> cVar) {
        this.f25743b = cVar.a(new a());
    }

    @Override
    public void afterDone() {
        this.f25743b.cancel(wasInterrupted());
    }

    @Override
    public int compareTo(Delayed delayed) {
        return this.f25743b.compareTo(delayed);
    }

    @Override
    public long getDelay(TimeUnit timeUnit) {
        return this.f25743b.getDelay(timeUnit);
    }
}
