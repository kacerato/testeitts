package b4;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class C3844b {

    public static final List<AbstractC3843a> f32945a = new ArrayList();

    public static final AtomicBoolean f32946b = new AtomicBoolean();

    public static volatile int f32947c;

    public static volatile String f32948d;

    public static volatile boolean f32949e;

    public static final Runnable f32950f;

    public class a implements x8.b {
        @Override
        public void a() {
            synchronized (C3844b.f32945a) {
                for (int i10 = 0; i10 < C3844b.f32945a.size(); i10++) {
                    try {
                        ((AbstractC3843a) C3844b.f32945a.get(i10)).f();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override
        public void b() {
        }
    }

    public class RunnableC0879b implements Runnable {
        /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        
            r2.b();
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
        
            throw r1;
         */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            boolean isEmpty;
            while (true) {
                try {
                } catch (Throwable th2) {
                    synchronized (C3844b.f32945a) {
                    }
                }
                synchronized (C3844b.f32945a) {
                    if (C3844b.f32945a.isEmpty()) {
                        break;
                    } else {
                        AbstractC3843a abstractC3843a = (AbstractC3843a) C3844b.f32945a.get(0);
                    }
                    synchronized (C3844b.f32945a) {
                        C3844b.f32946b.set(false);
                        if (!C3844b.f32945a.isEmpty()) {
                            C3844b.k();
                        }
                        throw th2;
                    }
                }
            }
            synchronized (C3844b.f32945a) {
                C3844b.f32946b.set(false);
                isEmpty = C3844b.f32945a.isEmpty();
            }
            if (isEmpty) {
                return;
            }
            C3844b.k();
        }
    }

    public class c implements InterfaceC3845c {
        @Override
        public void update() {
            C3844b.m();
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
        f32950f = new RunnableC0879b();
    }

    public static void e(AbstractC3843a task) {
        List<AbstractC3843a> list = f32945a;
        synchronized (list) {
            task.f32944d = new c();
            list.add(task);
            m();
            f32947c++;
        }
        k();
    }

    public static AbstractC3843a f(int index) {
        AbstractC3843a abstractC3843a;
        List<AbstractC3843a> list = f32945a;
        synchronized (list) {
            abstractC3843a = list.get(index);
        }
        return abstractC3843a;
    }

    public static int g() {
        return f32947c;
    }

    public static boolean h() {
        boolean z10;
        List<AbstractC3843a> list = f32945a;
        synchronized (list) {
            z10 = !list.isEmpty();
        }
        return z10;
    }

    public static void i() {
        if (f32949e) {
            f32949e = false;
            if (f32948d == null || f32948d.isEmpty()) {
                N7.c.n0(null);
            } else {
                N7.c.n0(f32948d);
            }
        }
    }

    public static void j(AbstractC3843a task) {
        List<AbstractC3843a> list = f32945a;
        synchronized (list) {
            list.remove(task);
            m();
            f32947c++;
        }
    }

    public static void k() {
        if (f32946b.compareAndSet(false, true)) {
            O9.b.d(f32950f);
        }
    }

    public static int l() {
        int size;
        List<AbstractC3843a> list = f32945a;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    public static void m() {
        List<AbstractC3843a> list = f32945a;
        synchronized (list) {
            try {
                if (!list.isEmpty()) {
                    String c10 = list.get(0).c();
                    if (c10 != null && !c10.equals(f32948d)) {
                        f32948d = c10;
                        f32949e = true;
                    } else if (c10 == null && f32948d != null) {
                        f32948d = c10;
                        f32949e = true;
                    }
                } else if (f32948d != null) {
                    f32948d = null;
                    f32949e = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
