package Bb;

import c7.C4160c;
import c7.InterfaceC4159b;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.InterfaceC12887a;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class d {

    public static C4160c f1684c;

    public static final List<InterfaceC12887a> f1682a = new SteppedArrayList();

    public static final AtomicBoolean f1683b = new AtomicBoolean();

    public static final Runnable f1685d = new a();

    public class a implements Runnable {
        @Override
        public void run() {
            boolean z10;
            InterfaceC12887a interfaceC12887a;
            boolean z11;
            synchronized (d.f1682a) {
                z10 = !d.f1682a.isEmpty();
            }
            while (z10) {
                synchronized (d.f1682a) {
                    interfaceC12887a = (InterfaceC12887a) d.f1682a.remove(0);
                }
                if (interfaceC12887a != null) {
                    interfaceC12887a.execute();
                }
                synchronized (d.f1682a) {
                    z11 = !d.f1682a.isEmpty();
                }
                z10 = z11;
            }
            synchronized (d.f1683b) {
                try {
                    if (d.f1684c != null) {
                        d.f1684c.destroy();
                        C4160c unused = d.f1684c = null;
                    }
                    d.f1683b.set(false);
                } finally {
                }
            }
        }
    }

    public class b implements InterfaceC4159b {
        @Override
        public String a() {
            String str;
            synchronized (d.f1682a) {
                str = "Importing textures " + d.f1682a.size();
            }
            return str;
        }

        @Override
        public void b() {
            C4160c unused = d.f1684c = null;
        }
    }

    public static void e(InterfaceC12887a bakeQueue) {
        List<InterfaceC12887a> list = f1682a;
        synchronized (list) {
            list.add(bakeQueue);
        }
        g();
    }

    public static void f() {
        List<InterfaceC12887a> list = f1682a;
        synchronized (list) {
            list.clear();
        }
    }

    public static void g() {
        boolean compareAndSet;
        AtomicBoolean atomicBoolean = f1683b;
        synchronized (atomicBoolean) {
            compareAndSet = atomicBoolean.compareAndSet(false, true);
        }
        if (compareAndSet) {
            if (f1684c == null) {
                f1684c = new C4160c(new b());
            }
            O9.b.d(f1685d);
        }
    }
}
