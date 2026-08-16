package R8;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import eb.C13052c;
import java.util.List;

public class d {

    public static final List<C13052c> f22618a = new SteppedArrayList();

    public static final List<C13052c> f22619b = new SteppedArrayList();

    public static void a(Component component) {
        List<C13052c> list;
        int i10 = 0;
        while (true) {
            list = f22618a;
            if (i10 >= list.size()) {
                break;
            }
            C13052c c13052c = list.get(i10);
            if (c13052c.f85421g == component) {
                c13052c.f85420e = null;
                f22619b.add(c13052c);
            }
            i10++;
        }
        List<C13052c> list2 = f22619b;
        if (list2.isEmpty()) {
            return;
        }
        list.removeAll(list2);
        list2.clear();
    }

    public static void b(C13052c invoke, Component component) {
        if (invoke == null) {
            throw new NullPointerException("invoke can't be null");
        }
        invoke.f85421g = component;
        f22618a.add(invoke);
    }

    public static void c() {
        List<C13052c> list;
        if (f22618a.isEmpty()) {
            return;
        }
        int i10 = 0;
        while (true) {
            list = f22618a;
            if (i10 >= list.size()) {
                break;
            }
            C13052c c13052c = list.get(i10);
            if (c13052c.f85420e != null) {
                int i11 = c13052c.f85418c;
                if (i11 > 0) {
                    c13052c.f85418c = i11 - 1;
                } else {
                    float e10 = c13052c.f85419d + K8.d.e();
                    c13052c.f85419d = e10;
                    float f10 = c13052c.f85417b;
                    if (f10 <= 0.0f || e10 >= f10) {
                        f22619b.add(c13052c);
                        c13052c.f85420e.run();
                    }
                }
            } else {
                f22619b.add(c13052c);
            }
            i10++;
        }
        List<C13052c> list2 = f22619b;
        if (list2.isEmpty()) {
            return;
        }
        list.removeAll(list2);
        list2.clear();
    }
}
