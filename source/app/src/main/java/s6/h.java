package s6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class h {

    public static final Object f109263a = new Object();

    public static final List<f> f109264b = new SteppedArrayList(1000);

    public static void a() {
        synchronized (f109263a) {
            f109264b.clear();
        }
    }

    public static f b(String name, int depth) {
        synchronized (f109263a) {
            try {
                List<f> list = f109264b;
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
        synchronized (f109263a) {
            f109264b.add(p10);
        }
    }
}
