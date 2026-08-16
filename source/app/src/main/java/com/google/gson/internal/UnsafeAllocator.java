package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public abstract class UnsafeAllocator {
    public abstract <T> T newInstance(Class<T> cls) throws Exception;

    public static UnsafeAllocator create() {
        try {
            Class<?> unsafeClass = Class.forName("sun.misc.Unsafe");
            Field f10 = unsafeClass.getDeclaredField("theUnsafe");
            f10.setAccessible(true);
            final Object unsafe = f10.get(null);
            final Method allocateInstance = unsafeClass.getMethod("allocateInstance", Class.class);
            return new UnsafeAllocator() {
                @Override
                public <T> T newInstance(Class<T> cls) throws Exception {
                    assertInstantiable(cls);
                    return (T) Method.this.invoke(unsafe, cls);
                }
            };
        } catch (Exception e10) {
            try {
                Method getConstructorId = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                getConstructorId.setAccessible(true);
                final int constructorId = ((Integer) getConstructorId.invoke(null, Object.class)).intValue();
                final Method newInstance = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                newInstance.setAccessible(true);
                return new UnsafeAllocator() {
                    @Override
                    public <T> T newInstance(Class<T> cls) throws Exception {
                        assertInstantiable(cls);
                        return (T) Method.this.invoke(null, cls, Integer.valueOf(constructorId));
                    }
                };
            } catch (Exception e11) {
                try {
                    final Method newInstance2 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    newInstance2.setAccessible(true);
                    return new UnsafeAllocator() {
                        @Override
                        public <T> T newInstance(Class<T> cls) throws Exception {
                            assertInstantiable(cls);
                            return (T) Method.this.invoke(null, cls, Object.class);
                        }
                    };
                } catch (Exception e12) {
                    return new UnsafeAllocator() {
                        @Override
                        public <T> T newInstance(Class<T> c10) {
                            throw new UnsupportedOperationException("Cannot allocate " + ((Object) c10));
                        }
                    };
                }
            }
        }
    }

    static void assertInstantiable(Class<?> c10) {
        int modifiers = c10.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + c10.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + c10.getName());
        }
    }
}
