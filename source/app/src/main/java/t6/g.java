package t6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class g {

    public static final Object f117124a = new Object();

    public static final List<e> f117125b = new SteppedArrayList(1000);

    public static void a() {
        synchronized (f117124a) {
            f117125b.clear();
        }
    }

    public static e b(String name) {
        synchronized (f117124a) {
            try {
                List<e> list = f117125b;
                if (list.isEmpty()) {
                    return new e(name);
                }
                e remove = list.remove(0);
                remove.n(name);
                return remove;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(e p10) {
        synchronized (f117124a) {
            f117125b.add(p10);
        }
    }
}
