package okhttp3;

import Kg.f;
import eg.C13143u0;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public final class C14591k {

    public static final Executor f99377g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Gg.c.H("OkHttp ConnectionPool", true));

    public static final boolean f99378h = false;

    public final int f99379a;

    public final long f99380b;

    public final Runnable f99381c;

    public final Deque<Kg.c> f99382d;

    public final Kg.d f99383e;

    public boolean f99384f;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            while (true) {
                long a10 = C14591k.this.a(System.nanoTime());
                if (a10 == -1) {
                    return;
                }
                if (a10 > 0) {
                    long j10 = a10 / C13143u0.f85788e;
                    long j11 = a10 - (C13143u0.f85788e * j10);
                    synchronized (C14591k.this) {
                        try {
                            C14591k.this.wait(j10, (int) j11);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public C14591k() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public long a(long j10) {
        synchronized (this) {
            try {
                Kg.c cVar = null;
                long j11 = Long.MIN_VALUE;
                int i10 = 0;
                int i11 = 0;
                for (Kg.c cVar2 : this.f99382d) {
                    if (h(cVar2, j10) > 0) {
                        i11++;
                    } else {
                        i10++;
                        long j12 = j10 - cVar2.f11349o;
                        if (j12 > j11) {
                            cVar = cVar2;
                            j11 = j12;
                        }
                    }
                }
                long j13 = this.f99380b;
                if (j11 < j13 && i10 <= this.f99379a) {
                    if (i10 > 0) {
                        return j13 - j11;
                    }
                    if (i11 > 0) {
                        return j13;
                    }
                    this.f99384f = false;
                    return -1L;
                }
                this.f99382d.remove(cVar);
                Gg.c.i(cVar.d());
                return 0L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean b(Kg.c cVar) {
        if (cVar.f11345k || this.f99379a == 0) {
            this.f99382d.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public synchronized int c() {
        return this.f99382d.size();
    }

    @Nullable
    public Socket d(C14581a c14581a, Kg.f fVar) {
        for (Kg.c cVar : this.f99382d) {
            if (cVar.o(c14581a, null) && cVar.q() && cVar != fVar.d()) {
                return fVar.m(cVar);
            }
        }
        return null;
    }

    public void e() {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<Kg.c> it = this.f99382d.iterator();
                while (it.hasNext()) {
                    Kg.c next = it.next();
                    if (next.f11348n.isEmpty()) {
                        next.f11345k = true;
                        arrayList.add(next);
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Iterator<E> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Gg.c.i(((Kg.c) it2.next()).d());
        }
    }

    @Nullable
    public Kg.c f(C14581a c14581a, Kg.f fVar, G g10) {
        for (Kg.c cVar : this.f99382d) {
            if (cVar.o(c14581a, g10)) {
                fVar.a(cVar, true);
                return cVar;
            }
        }
        return null;
    }

    public synchronized int g() {
        int i10;
        Iterator<Kg.c> it = this.f99382d.iterator();
        i10 = 0;
        while (it.hasNext()) {
            if (it.next().f11348n.isEmpty()) {
                i10++;
            }
        }
        return i10;
    }

    public final int h(Kg.c cVar, long j10) {
        List<Reference<Kg.f>> list = cVar.f11348n;
        int i10 = 0;
        while (i10 < list.size()) {
            Reference<Kg.f> reference = list.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                Pg.f.k().s("A connection to " + ((Object) cVar.b().a().l()) + " was leaked. Did you forget to close a response body?", ((f.a) reference).f11378a);
                list.remove(i10);
                cVar.f11345k = true;
                if (list.isEmpty()) {
                    cVar.f11349o = j10 - this.f99380b;
                    return 0;
                }
            }
        }
        return list.size();
    }

    public void i(Kg.c cVar) {
        if (!this.f99384f) {
            this.f99384f = true;
            f99377g.execute(this.f99381c);
        }
        this.f99382d.add(cVar);
    }

    public C14591k(int i10, long j10, TimeUnit timeUnit) {
        this.f99381c = new a();
        this.f99382d = new ArrayDeque();
        this.f99383e = new Kg.d();
        this.f99379a = i10;
        this.f99380b = timeUnit.toNanos(j10);
        if (j10 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j10);
    }
}
