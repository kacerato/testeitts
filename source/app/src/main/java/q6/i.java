package q6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class i {

    public static final Object f105995a = new Object();

    public static final List<g> f105996b = new SteppedArrayList(1000);

    public static void a() {
        synchronized (f105995a) {
            f105996b.clear();
        }
    }

    public static g b(String name) {
        synchronized (f105995a) {
            try {
                List<g> list = f105996b;
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
        synchronized (f105995a) {
            f105996b.add(p10);
        }
    }
}
