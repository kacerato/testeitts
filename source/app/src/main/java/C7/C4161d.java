package c7;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class C4161d {

    public static float f34426a;

    public static final Object f34427b = new Object();

    public static final List<C4160c> f34428c = new SteppedArrayList(10);

    public static final List<C4160c> f34429d = new SteppedArrayList(10);

    public static int f34430e;

    public static boolean f34431f;

    public static void a(C4160c editorTask) {
        synchronized (f34427b) {
            try {
                List<C4160c> list = f34428c;
                if (!list.contains(editorTask)) {
                    list.add(editorTask);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void b(C4160c editorTask) {
        synchronized (f34427b) {
            editorTask.f34424b.b();
            c(editorTask);
        }
    }

    public static void c(C4160c editorTask) {
        synchronized (f34427b) {
            f34429d.add(editorTask);
        }
    }

    public static void d() {
        synchronized (f34427b) {
            try {
                float e10 = f34426a + K8.d.e();
                f34426a = e10;
                int i10 = 0;
                if (e10 >= 0.5f) {
                    List<C4160c> list = f34428c;
                    if (list.isEmpty()) {
                        f34430e = 0;
                        if (!f34431f) {
                            N7.c.n0(null);
                            f34431f = true;
                        }
                    } else {
                        int i11 = f34430e + 1;
                        f34430e = i11;
                        if (i11 >= list.size()) {
                            f34430e = 0;
                        }
                        N7.c.n0(list.get(f34430e).f34424b.a());
                        f34431f = false;
                    }
                    f34426a = 0.0f;
                }
                if (!f34428c.isEmpty()) {
                    while (true) {
                        List<C4160c> list2 = f34428c;
                        if (i10 >= list2.size()) {
                            break;
                        }
                        C4160c c4160c = (C4160c) Mc.e.a(i10, list2);
                        if (c4160c.e() > 0.0f) {
                            c4160c.i(c4160c.e() - K8.d.e());
                            if (c4160c.e() <= 0.0f) {
                                f34429d.add(c4160c);
                            }
                        }
                        i10++;
                    }
                }
                List<C4160c> list3 = f34429d;
                if (!list3.isEmpty()) {
                    f34428c.removeAll(list3);
                    list3.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
