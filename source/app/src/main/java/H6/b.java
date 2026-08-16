package H6;

import d8.k;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class b {
    public static Class a(String name) {
        return k.u(name);
    }

    public static List<j> b(Class cls) {
        LinkedList linkedList = new LinkedList();
        if (cls.isInterface()) {
            linkedList.add(new j(cls.getSimpleName(), Void.TYPE, false, 0, new Class[0], true, cls));
        } else {
            for (Constructor<?> constructor : cls.getConstructors()) {
                if (h(constructor)) {
                    linkedList.add(new j(cls.getSimpleName(), Void.TYPE, false, constructor.getParameterTypes().length, constructor.getParameterTypes(), constructor.getParameters(), true, cls));
                }
            }
        }
        return linkedList;
    }

    public static Class c(Class cls, String name) {
        for (Field field : cls.getDeclaredFields()) {
            if (field.getName().equals(name) && i(field)) {
                return field.getType();
            }
        }
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().equals(name) && j(method)) {
                return method.getReturnType();
            }
        }
        return null;
    }

    public static Class d(Class cls, String name) {
        for (Field field : cls.getDeclaredFields()) {
            if (field.getName().equals(name) && i(field)) {
                return field.getType();
            }
        }
        for (Field field2 : cls.getFields()) {
            if (field2.getName().equals(name) && i(field2)) {
                return field2.getType();
            }
        }
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().equals(name) && j(method)) {
                return method.getReturnType();
            }
        }
        for (Method method2 : cls.getMethods()) {
            if (method2.getName().equals(name) && j(method2)) {
                return method2.getReturnType();
            }
        }
        return null;
    }

    public static List<j> e(Class cls, String name) {
        LinkedList linkedList = new LinkedList();
        for (Field field : cls.getFields()) {
            if (field.getName().startsWith(name) && i(field)) {
                linkedList.add(new j(field.getName(), field.getType()));
            }
        }
        for (Method method : cls.getMethods()) {
            if (method.getName().startsWith(name) && j(method)) {
                linkedList.add(new j(method.getName(), method.getReturnType(), true, method.getParameterTypes().length, method.getParameterTypes(), method.getParameters()));
            }
        }
        return linkedList;
    }

    public static List<j> f(Class cls, String name) {
        LinkedList linkedList = new LinkedList();
        for (Field field : cls.getDeclaredFields()) {
            if (field.getName().startsWith(name) && i(field)) {
                linkedList.add(new j(field.getName(), field.getType()));
            }
        }
        for (Field field2 : cls.getFields()) {
            if (field2.getName().startsWith(name) && i(field2)) {
                linkedList.add(new j(field2.getName(), field2.getType()));
            }
        }
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().startsWith(name) && j(method)) {
                linkedList.add(new j(method.getName(), method.getReturnType(), true, method.getParameterTypes().length, method.getParameterTypes(), method.getParameters()));
            }
        }
        for (Method method2 : cls.getMethods()) {
            if (method2.getName().startsWith(name) && j(method2)) {
                linkedList.add(new j(method2.getName(), method2.getReturnType(), true, method2.getParameterTypes().length, method2.getParameterTypes(), method2.getParameters()));
            }
        }
        return linkedList;
    }

    public static List<j> g(List<j> options) {
        LinkedList linkedList = new LinkedList();
        for (j jVar : options) {
            if (!jVar.f8259c) {
                Iterator<E> it = linkedList.iterator();
                while (it.hasNext()) {
                    if (jVar.f8257a.equals(((j) it.next()).f8257a)) {
                        break;
                    }
                }
            }
            linkedList.add(jVar);
        }
        return linkedList;
    }

    public static boolean h(Constructor constructor) {
        return ((g) constructor.getAnnotation(g.class)) == null;
    }

    public static boolean i(Field field) {
        return ((g) field.getAnnotation(g.class)) == null;
    }

    public static boolean j(Method method) {
        return ((g) method.getAnnotation(g.class)) == null;
    }
}
