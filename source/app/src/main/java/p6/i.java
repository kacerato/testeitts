package p6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class i {

    public static final Object f103608a = new Object();

    public static final List<g> f103609b = new SteppedArrayList(1000);

    public static void a() {
        synchronized (f103608a) {
            f103609b.clear();
        }
    }

    public static g b(String name) {
        synchronized (f103608a) {
            try {
                List<g> list = f103609b;
                if (list.isEmpty()) {
                    return new g(name);
                }
                g remove = list.remove(0);
                remove.j(name);
                return remove;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(g p10) {
        synchronized (f103608a) {
            f103609b.add(p10);
        }
    }
}
