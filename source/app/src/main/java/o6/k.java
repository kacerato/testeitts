package o6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class k {

    public static final Object f98598a = new Object();

    public static final List<i> f98599b = new SteppedArrayList(128);

    public static void a() {
        synchronized (f98598a) {
            f98599b.clear();
        }
    }

    public static i b(String name, int depth) {
        synchronized (f98598a) {
            try {
                List<i> list = f98599b;
                if (list.isEmpty()) {
                    return new i(name, depth);
                }
                i remove = list.remove(0);
                remove.m(name, depth);
                return remove;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(i stack) {
        if (stack == null) {
            return;
        }
        synchronized (f98598a) {
            f98599b.add(stack);
        }
    }
}
