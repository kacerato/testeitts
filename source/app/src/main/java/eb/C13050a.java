package eb;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class C13050a {

    public static final Map<Class, Boolean> f85412a;

    public static final Map<Class, Boolean> f85413b;

    public static final Map<Class, Boolean> f85414c;

    public static final Map<Class, Boolean> f85415d;

    public static final Map<Class, List<g>> f85416e;

    public class C1585a implements x8.b {
        @Override
        public void a() {
            C13050a.e();
        }

        @Override
        public void b() {
            C13050a.e();
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new C1585a());
        f85412a = new HashMap();
        f85413b = new HashMap();
        f85414c = new HashMap();
        f85415d = new HashMap();
        f85416e = new HashMap();
    }

    public static boolean a(Class cls) {
        Map<Class, Boolean> map = f85415d;
        synchronized (map) {
            try {
                Boolean bool = map.get(cls);
                if (bool != null) {
                    return bool.booleanValue();
                }
                try {
                    if (cls.getDeclaredMethod("lowTaskUpdate", GameObject.class, Boolean.TYPE) != null) {
                        map.put(cls, Boolean.TRUE);
                        return true;
                    }
                } catch (NoSuchMethodException unused) {
                }
                if (cls.getSuperclass() == Component.class || !a(cls.getSuperclass())) {
                    f85415d.put(cls, Boolean.FALSE);
                    return false;
                }
                f85415d.put(cls, Boolean.TRUE);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean b(Class cls) {
        Map<Class, Boolean> map = f85413b;
        synchronized (map) {
            try {
                Boolean bool = map.get(cls);
                if (bool != null) {
                    return bool.booleanValue();
                }
                try {
                    if (cls.getDeclaredMethod("onDrawFrame", null) != null) {
                        map.put(cls, Boolean.TRUE);
                        return true;
                    }
                } catch (NoSuchMethodException unused) {
                }
                if (cls.getSuperclass() == Component.class || !b(cls.getSuperclass())) {
                    f85413b.put(cls, Boolean.FALSE);
                    return false;
                }
                f85413b.put(cls, Boolean.TRUE);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean c(Class cls) {
        Map<Class, Boolean> map = f85412a;
        synchronized (map) {
            Boolean bool = map.get(cls);
            if (bool != null) {
                return bool.booleanValue();
            }
            try {
                if (cls.getDeclaredMethod("parallelUpdate", null) != null) {
                    map.put(cls, Boolean.TRUE);
                    return true;
                }
            } catch (NoSuchMethodException unused) {
            }
            try {
                if (cls.getDeclaredMethod("parallelDisabledUpdate", null) != null) {
                    f85412a.put(cls, Boolean.TRUE);
                    return true;
                }
            } catch (NoSuchMethodException unused2) {
            }
            try {
                if (cls.getDeclaredMethod("parallelStart", null) != null) {
                    f85412a.put(cls, Boolean.TRUE);
                    return true;
                }
            } catch (NoSuchMethodException unused3) {
            }
            if (cls.getSuperclass() == Component.class || !c(cls.getSuperclass())) {
                f85412a.put(cls, Boolean.FALSE);
                return false;
            }
            f85412a.put(cls, Boolean.TRUE);
            return true;
        }
    }

    public static boolean d(Class cls) {
        Map<Class, Boolean> map = f85414c;
        synchronized (map) {
            Boolean bool = map.get(cls);
            if (bool != null) {
                return bool.booleanValue();
            }
            try {
                if (cls.getDeclaredMethod("preUpdate", GameObject.class, Boolean.TYPE) != null) {
                    map.put(cls, Boolean.TRUE);
                    return true;
                }
            } catch (NoSuchMethodException unused) {
            }
            try {
                if (cls.getDeclaredMethod("disabledPreUpdate", GameObject.class, Boolean.TYPE) != null) {
                    f85414c.put(cls, Boolean.TRUE);
                    return true;
                }
            } catch (NoSuchMethodException unused2) {
            }
            if (cls.getSuperclass() == Component.class || !d(cls.getSuperclass())) {
                f85414c.put(cls, Boolean.FALSE);
                return false;
            }
            f85414c.put(cls, Boolean.TRUE);
            return true;
        }
    }

    public static void e() {
        Map<Class, Boolean> map = f85412a;
        synchronized (map) {
            map.clear();
        }
        Map<Class, Boolean> map2 = f85413b;
        synchronized (map2) {
            map2.clear();
        }
        Map<Class, Boolean> map3 = f85414c;
        synchronized (map3) {
            map3.clear();
        }
        Map<Class, Boolean> map4 = f85415d;
        synchronized (map4) {
            map4.clear();
        }
        Map<Class, List<g>> map5 = f85416e;
        synchronized (map5) {
            map5.clear();
        }
    }

    public static Field f(Field[] fields, Field field) {
        for (Field field2 : fields) {
            if (field2.getName().equals(field.getName() + "_OFCBRL")) {
                field2.setAccessible(true);
                return field2;
            }
        }
        return null;
    }

    public static List<g> g(Class cls) {
        Map<Class, List<g>> map = f85416e;
        synchronized (map) {
            try {
                List<g> list = map.get(cls);
                if (list != null) {
                    return list;
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                while (cls != Component.class && cls != ShaderBinder.class && cls != null && cls != Object.class) {
                    Field[] declaredFields = cls.getDeclaredFields();
                    for (Field field : declaredFields) {
                        if (field.getAnnotation(f.class) != null) {
                            g gVar = new g();
                            gVar.f(field.getName());
                            gVar.e(field);
                            gVar.g(f(declaredFields, field));
                            steppedArrayList.add(gVar);
                            field.setAccessible(true);
                        }
                    }
                    cls = cls.getSuperclass();
                }
                f85416e.put(cls, steppedArrayList);
                return steppedArrayList;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
