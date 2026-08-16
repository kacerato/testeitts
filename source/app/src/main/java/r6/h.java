package r6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class h {

    public static final Object f108712a = new Object();

    public static final List<f> f108713b = new SteppedArrayList(1000);

    public static void a() {
        synchronized (f108712a) {
            f108713b.clear();
        }
    }

    public static f b(String name, int depth) {
        synchronized (f108712a) {
            try {
                List<f> list = f108713b;
                if (list.isEmpty()) {
                    return new f(name, depth);
                }
                f remove = list.remove(0);
                remove.m(name, depth);
                return remove;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(f p10) {
        synchronized (f108712a) {
            f108713b.add(p10);
        }
    }
}
