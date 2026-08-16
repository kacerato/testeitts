package c9;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.InterfaceC12887a;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class c {

    public static final List<InterfaceC12887a> f34459a = new SteppedArrayList();

    public static final AtomicBoolean f34460b = new AtomicBoolean();

    public static final Runnable f34461c = new a();

    public class a implements Runnable {
        @Override
        public void run() {
            boolean z10;
            InterfaceC12887a interfaceC12887a;
            boolean z11;
            synchronized (c.f34459a) {
                z10 = !c.f34459a.isEmpty();
            }
            while (z10) {
                synchronized (c.f34459a) {
                    interfaceC12887a = (InterfaceC12887a) c.f34459a.remove(0);
                }
                if (interfaceC12887a != null) {
                    interfaceC12887a.execute();
                }
                synchronized (c.f34459a) {
                    z11 = !c.f34459a.isEmpty();
                }
                z10 = z11;
            }
            synchronized (c.f34460b) {
                c.f34460b.set(false);
            }
        }
    }

    public static void c(InterfaceC12887a bakeQueue) {
        if (bakeQueue == null) {
            throw new NullPointerException("bakeQueue can't be null");
        }
        List<InterfaceC12887a> list = f34459a;
        synchronized (list) {
            list.add(bakeQueue);
        }
        e();
    }

    public static void d() {
        List<InterfaceC12887a> list = f34459a;
        synchronized (list) {
            list.clear();
        }
    }

    public static void e() {
        boolean compareAndSet;
        AtomicBoolean atomicBoolean = f34460b;
        synchronized (atomicBoolean) {
            compareAndSet = atomicBoolean.compareAndSet(false, true);
        }
        if (compareAndSet) {
            O9.b.d(f34461c);
        }
    }
}
