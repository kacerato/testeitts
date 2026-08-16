package f7;

import java.util.LinkedList;
import java.util.List;

@Deprecated
public class C13194d {

    public static final List<C13195e> f86141a = new LinkedList();

    public static final List<InterfaceC13192b> f86142b = new LinkedList();

    public static void a(C13195e message) {
        f86141a.add(message);
        c();
    }

    public static boolean b(C13195e message) {
        return f86141a.contains(message);
    }

    public static void c() {
        List<InterfaceC13192b> list = f86142b;
        if (list.isEmpty()) {
            return;
        }
        for (InterfaceC13192b interfaceC13192b : list) {
            if (interfaceC13192b != null) {
                interfaceC13192b.a();
            }
        }
    }

    public static void d(C13195e message) {
        c();
    }

    public static void e(C13195e message) {
        f86141a.remove(message);
        c();
    }
}
