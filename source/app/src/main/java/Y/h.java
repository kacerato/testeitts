package Y;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class h<T, Y> {

    public final Map<T, Y> f29674a = new LinkedHashMap(100, 0.75f, true);

    public final long f29675b;

    public long f29676c;

    public long f29677d;

    public h(long j10) {
        this.f29675b = j10;
        this.f29676c = j10;
    }

    public void b() {
        p(0L);
    }

    public synchronized void c(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
        this.f29676c = Math.round(((float) this.f29675b) * f10);
        i();
    }

    public synchronized long e() {
        return this.f29676c;
    }

    public synchronized long getCurrentSize() {
        return this.f29677d;
    }

    public synchronized boolean h(@NonNull T t10) {
        return this.f29674a.containsKey(t10);
    }

    public final void i() {
        p(this.f29676c);
    }

    @Nullable
    public synchronized Y j(@NonNull T t10) {
        return this.f29674a.get(t10);
    }

    public synchronized int k() {
        return this.f29674a.size();
    }

    public int l(@Nullable Y y10) {
        return 1;
    }

    public void m(@NonNull T t10, @Nullable Y y10) {
    }

    @Nullable
    public synchronized Y n(@NonNull T t10, @Nullable Y y10) {
        long l10 = l(y10);
        if (l10 >= this.f29676c) {
            m(t10, y10);
            return null;
        }
        if (y10 != null) {
            this.f29677d += l10;
        }
        Y put = this.f29674a.put(t10, y10);
        if (put != null) {
            this.f29677d -= l(put);
            if (!put.equals(y10)) {
                m(t10, put);
            }
        }
        i();
        return put;
    }

    @Nullable
    public synchronized Y o(@NonNull T t10) {
        Y remove;
        remove = this.f29674a.remove(t10);
        if (remove != null) {
            this.f29677d -= l(remove);
        }
        return remove;
    }

    public synchronized void p(long j10) {
        while (this.f29677d > j10) {
            Iterator<Map.Entry<T, Y>> it = this.f29674a.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.f29677d -= l(value);
            T key = next.getKey();
            it.remove();
            m(key, value);
        }
    }
}
