package R8;

import Mc.h;
import O9.a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class f {

    public static final Object f22620a = new Object();

    public static final List<Component> f22621b = new SteppedArrayList(1000);

    public static final List<Component> f22622c = new SteppedArrayList(1000);

    public static final List<Component> f22623d = new SteppedArrayList(1000);

    public static final List<Component> f22624e = new SteppedArrayList(1000);

    public static final O9.a<Component> f22625f = new O9.a<>(1000);

    public static final Map<Class, h<Component>> f22626g = new HashMap();

    public class a implements Runnable {

        public final Component f22627b;

        public a(final Component val$component) {
            this.f22627b = val$component;
        }

        @Override
        public void run() {
            f.f22625f.remove(this.f22627b);
        }
    }

    public static int A() {
        return f22621b.size();
    }

    public static void b(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        synchronized (f22620a) {
            try {
                f22621b.add(component);
                f(component);
                e(component);
                g(component);
                d(component);
                Class<?> cls = component.getClass();
                while (true) {
                    if (cls == Object.class || cls == Component.class) {
                        break;
                    }
                    Map<Class, h<Component>> map = f22626g;
                    if (!map.containsKey(cls)) {
                        map.put(cls, new h<>());
                    }
                    map.get(cls).d(component);
                    for (Class<?> cls2 : cls.getInterfaces()) {
                        Map<Class, h<Component>> map2 = f22626g;
                        if (!map2.containsKey(cls2)) {
                            map2.put(cls2, new h<>());
                        }
                        map2.get(cls2).d(component);
                    }
                    cls = cls.getSuperclass();
                }
                if (component.toJAVARuntime() != null) {
                    for (Class<?> cls3 = r1.getClass(); cls3 != Object.class && cls3 != JAVARuntime.Component.class; cls3 = cls3.getSuperclass()) {
                        Map<Class, h<Component>> map3 = f22626g;
                        if (!map3.containsKey(cls3)) {
                            map3.put(cls3, new h<>());
                        }
                        map3.get(cls3).d(component);
                        for (Class<?> cls4 : cls3.getInterfaces()) {
                            Map<Class, h<Component>> map4 = f22626g;
                            if (!map4.containsKey(cls4)) {
                                map4.put(cls4, new h<>());
                            }
                            map4.get(cls4).d(component);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        synchronized (f22620a) {
            try {
                if (component.toJAVARuntime() != null) {
                    for (Class<?> cls = r1.getClass(); cls != Object.class && cls != JAVARuntime.Component.class; cls = cls.getSuperclass()) {
                        Map<Class, h<Component>> map = f22626g;
                        if (!map.containsKey(cls)) {
                            map.put(cls, new h<>());
                        }
                        map.get(cls).d(component);
                        for (Class<?> cls2 : cls.getInterfaces()) {
                            Map<Class, h<Component>> map2 = f22626g;
                            if (!map2.containsKey(cls2)) {
                                map2.put(cls2, new h<>());
                            }
                            map2.get(cls2).d(component);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        if (component.isRequireLowTaskMethod()) {
            f22624e.add(component);
        }
    }

    public static void e(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        if (component.isRequireODFMethod()) {
            f22622c.add(component);
        }
    }

    public static void f(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        if (component.isRequireParallelMethod()) {
            f22625f.add(component);
        }
    }

    public static void g(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        if (component.isRequireUpdateMethod()) {
            f22623d.add(component);
        }
    }

    public static List<Component> h(Class type) {
        Map<Class, h<Component>> map = f22626g;
        if (!map.containsKey(type)) {
            map.put(type, new h<>());
        }
        return map.get(type);
    }

    public static void i(List<Component> out) {
        out.clear();
        if (out instanceof SteppedArrayList) {
            ((SteppedArrayList) out).ensureCapacity(f22624e.size());
        }
        int i10 = 0;
        while (true) {
            List<Component> list = f22624e;
            if (i10 >= list.size()) {
                return;
            }
            out.add(list.get(i10));
            i10++;
        }
    }

    public static Component j(int i10) {
        return f22624e.get(i10);
    }

    public static int k() {
        return f22624e.size();
    }

    public static Component l(int i10) {
        return f22622c.get(i10);
    }

    public static int m() {
        return f22622c.size();
    }

    public static int n() {
        return f22625f.size();
    }

    public static void o(a.b<Component> parallelComponentsStreamListener) {
        f22625f.e(parallelComponentsStreamListener);
    }

    public static void p(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        synchronized (f22620a) {
            component.invalidateAttachedMethodRequirements();
            f22624e.remove(component);
            d(component);
        }
    }

    public static void q(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        synchronized (f22620a) {
            component.invalidateAttachedMethodRequirements();
            f22625f.remove(component);
            f(component);
        }
    }

    public static void r(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        synchronized (f22620a) {
            try {
                f22621b.remove(component);
                v(component);
                u(component);
                w(component);
                t(component);
                Class<?> cls = component.getClass();
                while (true) {
                    if (cls == Object.class || cls == Component.class) {
                        break;
                    }
                    h<Component> hVar = f22626g.get(cls);
                    if (hVar != null) {
                        hVar.k(component);
                        for (Class<?> cls2 : cls.getInterfaces()) {
                            h<Component> hVar2 = f22626g.get(cls2);
                            if (hVar2 != null) {
                                hVar2.k(component);
                            }
                        }
                    }
                    cls = cls.getSuperclass();
                }
                if (component.toJAVARuntime() != null) {
                    for (Class<?> cls3 = r1.getClass(); cls3 != Object.class && cls3 != JAVARuntime.Component.class; cls3 = cls3.getSuperclass()) {
                        h<Component> hVar3 = f22626g.get(cls3);
                        if (hVar3 != null) {
                            hVar3.k(component);
                            for (Class<?> cls4 : cls3.getInterfaces()) {
                                h<Component> hVar4 = f22626g.get(cls4);
                                if (hVar4 != null) {
                                    hVar4.k(component);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void s(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        synchronized (f22620a) {
            try {
                if (component.toJAVARuntime() != null) {
                    for (Class<?> cls = r1.getClass(); cls != Object.class && cls != JAVARuntime.Component.class; cls = cls.getSuperclass()) {
                        h<Component> hVar = f22626g.get(cls);
                        if (hVar != null) {
                            hVar.k(component);
                            for (Class<?> cls2 : cls.getInterfaces()) {
                                h<Component> hVar2 = f22626g.get(cls2);
                                if (hVar2 != null) {
                                    hVar2.k(component);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void t(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        if (component.isRequireLowTaskMethod()) {
            f22624e.remove(component);
        }
    }

    public static void u(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        if (component.isRequireODFMethod()) {
            f22622c.remove(component);
        }
    }

    public static void v(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        if (component.isRequireParallelMethod()) {
            K8.a.B(new a(component));
        }
    }

    public static void w(Component component) {
        if (component == null) {
            throw new NullPointerException("component can't be null");
        }
        if (component.isRequireUpdateMethod()) {
            f22623d.remove(component);
        }
    }

    public static Component x(int i10) {
        return f22623d.get(i10);
    }

    public static int y() {
        return f22623d.size();
    }

    public static Component z(int i10) {
        return f22621b.get(i10);
    }
}
