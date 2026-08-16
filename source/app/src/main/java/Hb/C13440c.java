package hb;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class C13440c {

    public static final List<C13439b> f90478a = new SteppedArrayList();

    public static final List<C13439b> f90479b = new SteppedArrayList();

    public class a implements x8.b {
        @Override
        public void a() {
            C13440c.a();
        }

        @Override
        public void b() {
            C13440c.a();
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    public static void a() {
        List<C13439b> list = f90478a;
        synchronized (list) {
            list.clear();
            f90479b.clear();
        }
    }

    public static C13438a b(String inProjectPath) {
        synchronized (f90478a) {
            int i10 = 0;
            while (true) {
                try {
                    List<C13439b> list = f90478a;
                    if (i10 >= list.size()) {
                        C13438a c13438a = new C13438a(inProjectPath);
                        list.add(new C13439b(c13438a, inProjectPath));
                        return c13438a;
                    }
                    C13439b c13439b = list.get(i10);
                    if (c13439b.d(inProjectPath) && c13439b.validate()) {
                        return c13439b.e();
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void c() {
        synchronized (f90478a) {
            int i10 = 0;
            while (true) {
                try {
                    List<C13439b> list = f90478a;
                    if (i10 < list.size()) {
                        C13439b c13439b = list.get(i10);
                        if (!c13439b.validate()) {
                            f90479b.add(c13439b);
                        }
                        i10++;
                    } else {
                        List<C13439b> list2 = f90479b;
                        list.removeAll(list2);
                        list2.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void d(String inProjectPath) {
        synchronized (f90478a) {
            int i10 = 0;
            while (true) {
                try {
                    List<C13439b> list = f90478a;
                    if (i10 >= list.size()) {
                        break;
                    }
                    C13439b c13439b = list.get(i10);
                    if (c13439b.d(inProjectPath) && c13439b.validate()) {
                        c13439b.e().reload();
                        break;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
