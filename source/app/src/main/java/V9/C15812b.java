package v9;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.InterfaceC12887a;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class C15812b {

    public static final List<InterfaceC12887a> f121306a = new SteppedArrayList();

    public static final AtomicBoolean f121307b = new AtomicBoolean();

    public static final Runnable f121308c = new a();

    public class a implements Runnable {
        @Override
        public void run() {
            boolean z10;
            InterfaceC12887a interfaceC12887a;
            boolean z11;
            synchronized (C15812b.f121306a) {
                z10 = !C15812b.f121306a.isEmpty();
            }
            while (z10) {
                synchronized (C15812b.f121306a) {
                    interfaceC12887a = (InterfaceC12887a) C15812b.f121306a.remove(0);
                }
                if (interfaceC12887a != null) {
                    interfaceC12887a.execute();
                }
                synchronized (C15812b.f121306a) {
                    z11 = !C15812b.f121306a.isEmpty();
                }
                z10 = z11;
            }
            synchronized (C15812b.f121307b) {
                C15812b.f121307b.set(false);
            }
        }
    }

    public static void c(InterfaceC12887a bakeQueue) {
        List<InterfaceC12887a> list = f121306a;
        synchronized (list) {
            list.add(bakeQueue);
        }
        e();
    }

    public static void d() {
        List<InterfaceC12887a> list = f121306a;
        synchronized (list) {
            list.clear();
        }
    }

    public static void e() {
        boolean compareAndSet;
        AtomicBoolean atomicBoolean = f121307b;
        synchronized (atomicBoolean) {
            compareAndSet = atomicBoolean.compareAndSet(false, true);
        }
        if (compareAndSet) {
            O9.b.d(f121308c);
        }
    }

    public static void f(InterfaceC12887a bakeQueue) {
        List<InterfaceC12887a> list = f121306a;
        synchronized (list) {
            list.remove(bakeQueue);
        }
    }
}
