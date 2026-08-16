package y6;

import G6.g;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.r;
import java.util.List;
import jd.C13823b;
import z6.C16268a;
import z6.C16269b;
import z6.C16270c;

public class d {

    public static InterfaceC16148a f130036a;

    public static final F6.d[] f130037b = {new C16270c(), new C6.c(), new C16269b(), new C16268a(), new D6.a(), new g(), new B6.f(), new I6.c()};

    public static final List<r> f130038c = new SteppedArrayList();

    public static void a(r loadedClass) {
        f130038c.add(loadedClass);
    }

    public static void b() {
        f130038c.clear();
    }

    public static F6.d c(int idx) {
        return f130037b[idx];
    }

    public static int d() {
        return f130037b.length;
    }

    public static r e(int idx) {
        return f130038c.get(idx);
    }

    public static int f() {
        return f130038c.size();
    }

    public static boolean g(String filePath) {
        for (F6.d dVar : f130037b) {
            if (dVar.supportFile(new C13823b(filePath))) {
                return true;
            }
        }
        return false;
    }
}
