package F;

import F.m;
import java.util.Queue;

public abstract class d<T extends m> {

    public static final int f6068b = 20;

    public final Queue<T> f6069a = Y.m.f(20);

    public abstract T a();

    public T b() {
        T poll = this.f6069a.poll();
        return poll == null ? a() : poll;
    }

    public void c(T t10) {
        if (this.f6069a.size() < 20) {
            this.f6069a.offer(t10);
        }
    }
}
