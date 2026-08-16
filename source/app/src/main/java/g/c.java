package G;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class c {

    public final Map<String, a> f7216a = new HashMap();

    public final b f7217b = new b();

    public static class a {

        public final Lock f7218a = new ReentrantLock();

        public int f7219b;
    }

    public static class b {

        public static final int f7220b = 10;

        public final Queue<a> f7221a = new ArrayDeque();

        public a a() {
            a poll;
            synchronized (this.f7221a) {
                poll = this.f7221a.poll();
            }
            return poll == null ? new a() : poll;
        }

        public void b(a aVar) {
            synchronized (this.f7221a) {
                try {
                    if (this.f7221a.size() < 10) {
                        this.f7221a.offer(aVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void a(String str) {
        a aVar;
        synchronized (this) {
            try {
                aVar = this.f7216a.get(str);
                if (aVar == null) {
                    aVar = this.f7217b.a();
                    this.f7216a.put(str, aVar);
                }
                aVar.f7219b++;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        aVar.f7218a.lock();
    }

    public void b(String str) {
        a aVar;
        synchronized (this) {
            try {
                aVar = (a) Y.k.d(this.f7216a.get(str));
                int i10 = aVar.f7219b;
                if (i10 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f7219b);
                }
                int i11 = i10 - 1;
                aVar.f7219b = i11;
                if (i11 == 0) {
                    a remove = this.f7216a.remove(str);
                    if (!remove.equals(aVar)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + ((Object) aVar) + ", but actually removed: " + ((Object) remove) + ", safeKey: " + str);
                    }
                    this.f7217b.b(remove);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        aVar.f7218a.unlock();
    }
}
