package da;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class C12892f {

    public static final List<InterfaceC12887a> f84462a = new SteppedArrayList();

    public static final AtomicBoolean f84463b = new AtomicBoolean();

    public static final Runnable f84464c = new a();

    public class a implements Runnable {
        @Override
        public void run() {
            boolean z10;
            InterfaceC12887a interfaceC12887a;
            boolean z11;
            synchronized (C12892f.f84462a) {
                z10 = !C12892f.f84462a.isEmpty();
            }
            while (z10) {
                synchronized (C12892f.f84462a) {
                    interfaceC12887a = (InterfaceC12887a) C12892f.f84462a.remove(0);
                }
                if (interfaceC12887a != null) {
                    interfaceC12887a.execute();
                }
                synchronized (C12892f.f84462a) {
                    z11 = !C12892f.f84462a.isEmpty();
                }
                z10 = z11;
            }
            synchronized (C12892f.f84463b) {
                C12892f.f84463b.set(false);
            }
        }
    }

    public static void c(InterfaceC12887a bakeQueue) {
        List<InterfaceC12887a> list = f84462a;
        synchronized (list) {
            list.add(bakeQueue);
        }
        e();
    }

    public static void d() {
        List<InterfaceC12887a> list = f84462a;
        synchronized (list) {
            list.clear();
        }
    }

    public static void e() {
        boolean compareAndSet;
        AtomicBoolean atomicBoolean = f84463b;
        synchronized (atomicBoolean) {
            compareAndSet = atomicBoolean.compareAndSet(false, true);
        }
        if (compareAndSet) {
            O9.b.d(f84464c);
        }
    }
}
