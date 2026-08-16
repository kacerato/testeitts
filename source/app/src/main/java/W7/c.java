package W7;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class c {

    public static final List<c> f27323a = new SteppedArrayList();

    public c() {
        List<c> list = f27323a;
        synchronized (list) {
            list.add(this);
        }
    }

    public static void b() {
        synchronized (f27323a) {
            int i10 = 0;
            while (true) {
                try {
                    List<c> list = f27323a;
                    if (i10 < list.size()) {
                        list.get(i10).c();
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void a() {
        List<c> list = f27323a;
        synchronized (list) {
            list.remove(this);
        }
    }

    public void c() {
    }
}
