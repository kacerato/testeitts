package okhttp3;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.B;

public final class p {

    public static final boolean f99423h = false;

    @Nullable
    public Runnable f99426c;

    @Nullable
    public ExecutorService f99427d;

    public int f99424a = 64;

    public int f99425b = 5;

    public final Deque<B.b> f99428e = new ArrayDeque();

    public final Deque<B.b> f99429f = new ArrayDeque();

    public final Deque<B> f99430g = new ArrayDeque();

    public p(ExecutorService executorService) {
        this.f99427d = executorService;
    }

    public synchronized void a() {
        try {
            Iterator<B.b> it = this.f99428e.iterator();
            while (it.hasNext()) {
                it.next().o().cancel();
            }
            Iterator<B.b> it2 = this.f99429f.iterator();
            while (it2.hasNext()) {
                it2.next().o().cancel();
            }
            Iterator<B> it3 = this.f99430g.iterator();
            while (it3.hasNext()) {
                it3.next().cancel();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void b(B.b bVar) {
        synchronized (this) {
            this.f99428e.add(bVar);
        }
        j();
    }

    public synchronized void c(B b10) {
        this.f99430g.add(b10);
    }

    public synchronized ExecutorService d() {
        try {
            if (this.f99427d == null) {
                this.f99427d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Gg.c.H("OkHttp Dispatcher", false));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f99427d;
    }

    public final <T> void e(Deque<T> deque, T t10) {
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t10)) {
                throw new AssertionError((Object) "Call wasn't in-flight!");
            }
            runnable = this.f99426c;
        }
        if (j() || runnable == null) {
            return;
        }
        runnable.run();
    }

    public void f(B.b bVar) {
        e(this.f99429f, bVar);
    }

    public void g(B b10) {
        e(this.f99430g, b10);
    }

    public synchronized int h() {
        return this.f99424a;
    }

    public synchronized int i() {
        return this.f99425b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean j() {
        int i10;
        boolean z10;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<B.b> it = this.f99428e.iterator();
                while (it.hasNext()) {
                    B.b next = it.next();
                    if (this.f99429f.size() >= this.f99424a) {
                        break;
                    }
                    if (o(next) < this.f99425b) {
                        it.remove();
                        arrayList.add(next);
                        this.f99429f.add(next);
                    }
                }
                z10 = n() > 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int size = arrayList.size();
        for (i10 = 0; i10 < size; i10++) {
            ((B.b) arrayList.get(i10)).n(d());
        }
        return z10;
    }

    public synchronized List<InterfaceC14585e> k() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator<B.b> it = this.f99428e.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().o());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public synchronized int l() {
        return this.f99428e.size();
    }

    public synchronized List<InterfaceC14585e> m() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            arrayList.addAll(this.f99430g);
            Iterator<B.b> it = this.f99429f.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().o());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public synchronized int n() {
        return this.f99429f.size() + this.f99430g.size();
    }

    public final int o(B.b bVar) {
        int i10 = 0;
        for (B.b bVar2 : this.f99429f) {
            if (!bVar2.o().f99096g && bVar2.p().equals(bVar.p())) {
                i10++;
            }
        }
        return i10;
    }

    public synchronized void p(@Nullable Runnable runnable) {
        this.f99426c = runnable;
    }

    public void q(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.f99424a = i10;
            }
            j();
        } else {
            throw new IllegalArgumentException("max < 1: " + i10);
        }
    }

    public void r(int i10) {
        if (i10 >= 1) {
            synchronized (this) {
                this.f99425b = i10;
            }
            j();
        } else {
            throw new IllegalArgumentException("max < 1: " + i10);
        }
    }

    public p() {
    }
}
