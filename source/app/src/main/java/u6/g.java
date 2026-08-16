package u6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class g {

    public static final Object f118548a = new Object();

    public static final List<e> f118549b = new SteppedArrayList(1000);

    public static void a() {
        synchronized (f118548a) {
            f118549b.clear();
        }
    }

    public static e b(String name) {
        synchronized (f118548a) {
            try {
                List<e> list = f118549b;
                if (list.isEmpty()) {
                    return new e(name);
                }
                e remove = list.remove(0);
                remove.j(name);
                return remove;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(e p10) {
        synchronized (f118548a) {
            f118549b.add(p10);
        }
    }
}
