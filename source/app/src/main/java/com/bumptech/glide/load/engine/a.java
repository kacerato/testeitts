package com.bumptech.glide.load.engine;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.o;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class a {

    public final boolean f59091a;

    public final Executor f59092b;

    @VisibleForTesting
    public final Map<C.e, d> f59093c;

    public final ReferenceQueue<o<?>> f59094d;

    public o.a f59095e;

    public volatile boolean f59096f;

    @Nullable
    public volatile c f59097g;

    public class ThreadFactoryC0921a implements ThreadFactory {

        public class RunnableC0922a implements Runnable {

            public final Runnable f59098b;

            public RunnableC0922a(Runnable runnable) {
                this.f59098b = runnable;
            }

            @Override
            public void run() {
                Process.setThreadPriority(10);
                this.f59098b.run();
            }
        }

        @Override
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC0922a(runnable), "glide-active-resources");
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            a.this.b();
        }
    }

    @VisibleForTesting
    public interface c {
        void a();
    }

    @VisibleForTesting
    public static final class d extends WeakReference<o<?>> {

        public final C.e f59101a;

        public final boolean f59102b;

        @Nullable
        public t<?> f59103c;

        public d(@NonNull C.e eVar, @NonNull o<?> oVar, @NonNull ReferenceQueue<? super o<?>> referenceQueue, boolean z10) {
            super(oVar, referenceQueue);
            this.f59101a = (C.e) Y.k.d(eVar);
            this.f59103c = (oVar.d() && z10) ? (t) Y.k.d(oVar.c()) : null;
            this.f59102b = oVar.d();
        }

        public void a() {
            this.f59103c = null;
            clear();
        }
    }

    public a(boolean z10) {
        this(z10, Executors.newSingleThreadExecutor(new ThreadFactoryC0921a()));
    }

    public synchronized void a(C.e eVar, o<?> oVar) {
        d put = this.f59093c.put(eVar, new d(eVar, oVar, this.f59094d, this.f59091a));
        if (put != null) {
            put.a();
        }
    }

    public void b() {
        while (!this.f59096f) {
            try {
                c((d) this.f59094d.remove());
                c cVar = this.f59097g;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public void c(@NonNull d dVar) {
        t<?> tVar;
        synchronized (this) {
            this.f59093c.remove(dVar.f59101a);
            if (dVar.f59102b && (tVar = dVar.f59103c) != null) {
                this.f59095e.c(dVar.f59101a, new o<>(tVar, true, false, dVar.f59101a, this.f59095e));
            }
        }
    }

    public synchronized void d(C.e eVar) {
        d remove = this.f59093c.remove(eVar);
        if (remove != null) {
            remove.a();
        }
    }

    @Nullable
    public synchronized o<?> e(C.e eVar) {
        d dVar = this.f59093c.get(eVar);
        if (dVar == null) {
            return null;
        }
        o<?> oVar = dVar.get();
        if (oVar == null) {
            c(dVar);
        }
        return oVar;
    }

    @VisibleForTesting
    public void f(c cVar) {
        this.f59097g = cVar;
    }

    public void g(o.a aVar) {
        synchronized (aVar) {
            synchronized (this) {
                this.f59095e = aVar;
            }
        }
    }

    @VisibleForTesting
    public void h() {
        this.f59096f = true;
        Executor executor = this.f59092b;
        if (executor instanceof ExecutorService) {
            Y.e.c((ExecutorService) executor);
        }
    }

    @VisibleForTesting
    public a(boolean z10, Executor executor) {
        this.f59093c = new HashMap();
        this.f59094d = new ReferenceQueue<>();
        this.f59091a = z10;
        this.f59092b = executor;
        executor.execute(new b());
    }
}
