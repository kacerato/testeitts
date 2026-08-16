package g9;

import c8.b;
import java.util.LinkedList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

public class C13301a {

    public static final LinkedList<InterfaceC13302b> f88176a;

    public static final AtomicBoolean f88177b;

    public class C1624a implements x8.b {
        @Override
        public void a() {
            synchronized (C13301a.f88176a) {
                C13301a.f88176a.clear();
            }
        }

        @Override
        public void b() {
            synchronized (C13301a.f88176a) {
                C13301a.f88176a.clear();
            }
        }
    }

    public class b implements b.f {
        @Override
        public void a() {
        }

        @Override
        public void b() {
            synchronized (C13301a.f88176a) {
                C13301a.f88176a.clear();
            }
        }
    }

    public static class c implements Callable<Integer> {

        public final InterfaceC13302b f88178b;

        public c(InterfaceC13302b queue) {
            this.f88178b = queue;
        }

        @Override
        public Integer call() throws Exception {
            this.f88178b.run();
            return 0;
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new C1624a());
        c8.b.g(new b());
        f88176a = new LinkedList<>();
        f88177b = new AtomicBoolean();
    }

    public static void b(InterfaceC13302b queue) {
        LinkedList<InterfaceC13302b> linkedList = f88176a;
        synchronized (linkedList) {
            try {
                if (!linkedList.contains(queue)) {
                    linkedList.add(queue);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c() {
        AtomicBoolean atomicBoolean = f88177b;
        if (atomicBoolean.compareAndSet(false, true)) {
            LinkedList<InterfaceC13302b> linkedList = f88176a;
            synchronized (linkedList) {
                try {
                    if (linkedList.isEmpty()) {
                        atomicBoolean.set(false);
                        return;
                    }
                    Future c10 = O9.b.c(new c(linkedList.remove(0)));
                    try {
                        ((Integer) c10.get(10L, TimeUnit.SECONDS)).intValue();
                    } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                        c10.cancel(true);
                    }
                    f88177b.set(false);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
