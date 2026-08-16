package M9;

import JAVARuntime.AtomicFloat;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import java.util.concurrent.atomic.AtomicBoolean;
import lb.C14068e;

public class i {

    public static final AtomicBoolean f14828a = new AtomicBoolean();

    public static final C14068e f14829b = new C14068e();

    public static final AtomicFloat f14830c = new AtomicFloat();

    public static final Runnable f14831d = new a();

    public class a implements Runnable {
        @Override
        public void run() {
            AtomicFloat atomicFloat;
            float k10;
            try {
                try {
                    try {
                        i.f14829b.n();
                        SGC.lpUpdate();
                        i.f14829b.g();
                        atomicFloat = i.f14830c;
                        k10 = i.f14829b.k();
                    } catch (OutOfMemoryError e10) {
                        e10.printStackTrace();
                        TextOutputActivity.h(e10);
                        i.f14829b.g();
                        atomicFloat = i.f14830c;
                        k10 = i.f14829b.k();
                    }
                    atomicFloat.set(k10);
                } catch (Throwable unused) {
                }
                i.f14828a.set(false);
            } catch (Throwable th2) {
                try {
                    i.f14829b.g();
                    i.f14830c.set(i.f14829b.k());
                } catch (Throwable unused2) {
                }
                i.f14828a.set(false);
                throw th2;
            }
        }
    }

    public static float d() {
        float floatValue;
        AtomicFloat atomicFloat = f14830c;
        synchronized (atomicFloat) {
            floatValue = atomicFloat.floatValue();
        }
        return floatValue;
    }

    public static void e() {
        if (f14828a.compareAndSet(false, true)) {
            O9.b.d(f14831d);
        }
    }
}
