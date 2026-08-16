package Hc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import lb.C14068e;
import t3.C15377a;

public final class b {

    public static float f8333e;

    public static final Object f8329a = new Object();

    public static final List<WeakReference<InterfaceC0179b>> f8330b = new SteppedArrayList(50);

    public static final List<InterfaceC0179b> f8331c = new SteppedArrayList(50);

    public static final AtomicBoolean f8332d = new AtomicBoolean();

    public static final C14068e f8334f = new C14068e();

    public static final Runnable f8335g = new a();

    public class a implements Runnable {
        /* JADX WARN: Code restructure failed: missing block: B:100:0x003e, code lost:
        
            Hc.b.f8331c.clear();
            Hc.b.f8332d.set(false);
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0050, code lost:
        
            if (Hc.b.c() == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0052, code lost:
        
            r3 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x005b, code lost:
        
            if (r3 >= Hc.b.f8331c.size()) goto L171;
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x005d, code lost:
        
            r4 = (Hc.b.InterfaceC0179b) Hc.b.f8331c.get(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x006b, code lost:
        
            if (r4.c() == false) goto L174;
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x007b, code lost:
        
            Hc.b.f8331c.clear();
            r1 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x006e, code lost:
        
            r5 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x006f, code lost:
        
            r5.printStackTrace();
            Hc.b.k(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x007a, code lost:
        
            r0 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:119:0x0083, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x0084, code lost:
        
            if (r1 == false) goto L179;
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x0086, code lost:
        
            Hc.b.n();
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:0x0089, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:123:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:125:0x0078, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:128:0x008b, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0025, code lost:
        
            if (r2.booleanValue() != false) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0027, code lost:
        
            Hc.b.f8334f.g();
            r0 = Hc.b.f8333e = Hc.b.f8334f.k();
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0039, code lost:
        
            r2 = Hc.b.f8329a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x003d, code lost:
        
            monitor-enter(r2);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                boolean z10 = true;
                boolean z11 = false;
                try {
                    Boolean bool = C15377a.f109719g;
                    if (!bool.booleanValue()) {
                        b.f8334f.n();
                    }
                    try {
                        synchronized (b.f8329a) {
                            if (!b.c()) {
                                break;
                            }
                            boolean z12 = false;
                            for (int i10 = 0; i10 < b.f8331c.size(); i10++) {
                                InterfaceC0179b interfaceC0179b = (InterfaceC0179b) b.f8331c.get(i10);
                                if (interfaceC0179b != null) {
                                    try {
                                        if (interfaceC0179b.c()) {
                                            try {
                                                interfaceC0179b.a();
                                                try {
                                                    if (interfaceC0179b.c()) {
                                                        z12 = true;
                                                    } else {
                                                        b.k(interfaceC0179b);
                                                    }
                                                } catch (Throwable th2) {
                                                    th2.printStackTrace();
                                                    b.k(interfaceC0179b);
                                                }
                                            } catch (Throwable th3) {
                                                th3.printStackTrace();
                                                b.k(interfaceC0179b);
                                            }
                                        } else {
                                            b.k(interfaceC0179b);
                                        }
                                    } catch (Throwable th4) {
                                        th4.printStackTrace();
                                        b.k(interfaceC0179b);
                                    }
                                }
                            }
                            if (!z12) {
                                synchronized (b.f8329a) {
                                    try {
                                        b.f8331c.clear();
                                        b.f8332d.set(false);
                                        if (b.c()) {
                                            int i11 = 0;
                                            while (true) {
                                                if (i11 >= b.f8331c.size()) {
                                                    z10 = false;
                                                    break;
                                                }
                                                InterfaceC0179b interfaceC0179b2 = (InterfaceC0179b) b.f8331c.get(i11);
                                                try {
                                                } catch (Throwable th5) {
                                                    th5.printStackTrace();
                                                    b.k(interfaceC0179b2);
                                                }
                                                if (interfaceC0179b2.c()) {
                                                    break;
                                                } else {
                                                    i11++;
                                                }
                                            }
                                            b.f8331c.clear();
                                            z11 = z10;
                                        }
                                    } finally {
                                    }
                                }
                                if (z11) {
                                    b.n();
                                    return;
                                }
                                return;
                            }
                            if (!C15377a.f109719g.booleanValue()) {
                                b.f8334f.g();
                                float unused = b.f8333e = b.f8334f.k();
                            }
                        }
                    } finally {
                        if (!C15377a.f109719g.booleanValue()) {
                            b.f8334f.g();
                            float unused2 = b.f8333e = b.f8334f.k();
                        }
                    }
                } catch (Throwable th6) {
                    synchronized (b.f8329a) {
                        try {
                            b.f8331c.clear();
                            b.f8332d.set(false);
                            if (b.c()) {
                                int i12 = 0;
                                while (true) {
                                    if (i12 >= b.f8331c.size()) {
                                        z10 = false;
                                        break;
                                    }
                                    InterfaceC0179b interfaceC0179b3 = (InterfaceC0179b) b.f8331c.get(i12);
                                    try {
                                    } catch (Throwable th7) {
                                        th7.printStackTrace();
                                        b.k(interfaceC0179b3);
                                    }
                                    if (interfaceC0179b3.c()) {
                                        break;
                                    } else {
                                        i12++;
                                    }
                                }
                                b.f8331c.clear();
                                z11 = z10;
                            }
                            if (z11) {
                                b.n();
                            }
                            throw th6;
                        } finally {
                        }
                    }
                }
            }
            int i13 = i13 + 1;
        }
    }

    public interface InterfaceC0179b {
        void a();

        boolean c();
    }

    public static boolean c() {
        return i();
    }

    public static boolean h(InterfaceC0179b wanted) {
        for (int size = f8330b.size() - 1; size >= 0; size--) {
            List<WeakReference<InterfaceC0179b>> list = f8330b;
            InterfaceC0179b interfaceC0179b = list.get(size).get();
            if (interfaceC0179b == null) {
                list.remove(size);
            } else if (interfaceC0179b == wanted) {
                return true;
            }
        }
        return false;
    }

    public static boolean i() {
        f8331c.clear();
        for (int size = f8330b.size() - 1; size >= 0; size--) {
            List<WeakReference<InterfaceC0179b>> list = f8330b;
            InterfaceC0179b interfaceC0179b = list.get(size).get();
            if (interfaceC0179b == null) {
                list.remove(size);
            } else {
                f8331c.add(interfaceC0179b);
            }
        }
        return !f8331c.isEmpty();
    }

    public static float j() {
        return f8333e;
    }

    public static void k(InterfaceC0179b task) {
        synchronized (f8329a) {
            l(task);
        }
    }

    public static void l(InterfaceC0179b wanted) {
        for (int size = f8330b.size() - 1; size >= 0; size--) {
            List<WeakReference<InterfaceC0179b>> list = f8330b;
            InterfaceC0179b interfaceC0179b = list.get(size).get();
            if (interfaceC0179b == null || interfaceC0179b == wanted) {
                list.remove(size);
            }
        }
    }

    public static void m(InterfaceC0179b task) {
        if (task == null) {
            return;
        }
        synchronized (f8329a) {
            try {
                if (!h(task)) {
                    f8330b.add(new WeakReference<>(task));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        n();
    }

    public static void n() {
        if (f8332d.compareAndSet(false, true)) {
            O9.b.d(f8335g);
        }
    }
}
