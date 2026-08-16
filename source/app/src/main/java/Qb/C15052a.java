package qb;

import android.content.Intent;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class C15052a {

    public static final int f106033a = 111;

    public static final List<InterfaceC1967a> f106034b = new SteppedArrayList();

    public interface InterfaceC1967a {
        void a();

        void b();
    }

    public static boolean a() {
        return false;
    }

    public static void b(int requestCode, int resultCode, Intent intent) {
    }

    public static boolean c() {
        return false;
    }

    public static void d(InterfaceC1967a listener) {
        if (a()) {
            listener.a();
        } else {
            if (!c()) {
                listener.b();
                return;
            }
            List<InterfaceC1967a> list = f106034b;
            synchronized (list) {
                list.add(listener);
            }
        }
    }
}
