package N8;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.InterfaceC12887a;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class d {

    public static final List<InterfaceC12887a> f15799a = new SteppedArrayList();

    public static final AtomicBoolean f15800b = new AtomicBoolean();

    public static final Runnable f15801c = new a();

    public class a implements Runnable {
        @Override
        public void run() {
            boolean z10;
            InterfaceC12887a interfaceC12887a;
            boolean z11;
            synchronized (d.f15799a) {
                z10 = !d.f15799a.isEmpty();
            }
            while (z10) {
                synchronized (d.f15799a) {
                    interfaceC12887a = (InterfaceC12887a) d.f15799a.remove(0);
                }
                if (interfaceC12887a != null) {
                    interfaceC12887a.execute();
                }
                synchronized (d.f15799a) {
                    z11 = !d.f15799a.isEmpty();
                }
                z10 = z11;
            }
            synchronized (d.f15800b) {
                d.f15800b.set(false);
            }
        }
    }

    public static void c(InterfaceC12887a bakeQueue) {
        List<InterfaceC12887a> list = f15799a;
        synchronized (list) {
            list.add(bakeQueue);
        }
        e();
    }

    public static void d() {
        List<InterfaceC12887a> list = f15799a;
        synchronized (list) {
            list.clear();
        }
    }

    public static void e() {
        boolean compareAndSet;
        AtomicBoolean atomicBoolean = f15800b;
        synchronized (atomicBoolean) {
            compareAndSet = atomicBoolean.compareAndSet(false, true);
        }
        if (compareAndSet) {
            O9.b.d(f15801c);
        }
    }
}
