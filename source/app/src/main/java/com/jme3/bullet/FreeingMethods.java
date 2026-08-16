package com.jme3.bullet;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

public final class FreeingMethods {
    public static final Logger logger = Logger.getLogger(FreeingMethods.class.getName());
    private static final Map<Class<? extends NativePhysicsObject>, Method[]> map = new ConcurrentHashMap(30);

    private FreeingMethods() {
    }

    private static Method[] generate(Class<? extends NativePhysicsObject> cls) {
        ArrayList arrayList = new ArrayList(4);
        while (cls != Object.class) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("freeNativeObject", Long.TYPE);
                declaredMethod.setAccessible(true);
                arrayList.add(declaredMethod);
            } catch (IllegalArgumentException e10) {
                e = e10;
                System.out.println("c = " + cls.getName());
                throw new RuntimeException(e);
            } catch (NoClassDefFoundError e11) {
                e = e11;
                System.out.println("c = " + cls.getName());
                throw new RuntimeException(e);
            } catch (NoSuchMethodException unused) {
            } catch (SecurityException e12) {
                e = e12;
                System.out.println("c = " + cls.getName());
                throw new RuntimeException(e);
            }
            cls = cls.getSuperclass();
        }
        Method[] methodArr = (Method[]) arrayList.toArray(new Method[0]);
        arrayList.toArray(methodArr);
        return methodArr;
    }

    public static Method[] listMethods(Class<? extends NativePhysicsObject> cls) {
        Map<Class<? extends NativePhysicsObject>, Method[]> map2 = map;
        Method[] methodArr = map2.get(cls);
        if (methodArr != null) {
            return methodArr;
        }
        Method[] generate = generate(cls);
        map2.put(cls, generate);
        return generate;
    }
}
