package o6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class h {

    public static final Object f98587a = new Object();

    public static final List<f> f98588b = new SteppedArrayList(512);

    public static void a() {
        synchronized (f98587a) {
            f98588b.clear();
        }
    }

    public static f b(String name, Object type) {
        synchronized (f98587a) {
            try {
                List<f> list = f98588b;
                if (list.isEmpty()) {
                    return new f(name, type);
                }
                f remove = list.remove(0);
                remove.i(name, type);
                return remove;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(f profile) {
        if (profile == null) {
            return;
        }
        synchronized (f98587a) {
            f98588b.add(profile);
        }
    }
}
