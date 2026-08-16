package com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform;

import Ic.InterfaceC2637p;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.NoFactory;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;

@InterfaceC2637p
public final class TransformMiniJP {
    private static final int PRE_ALLOC = 100;
    private final Map<Class, Integer> preAllocs = new HashMap();
    private final Map<Class, SteppedArrayList<Object>> freePool = new HashMap();
    private final Map<Class, SteppedArrayList<Object>> usedPool = new HashMap();
    private final IdentityHashMap<Object, Class> usedClasses = new IdentityHashMap<>();

    private SteppedArrayList<Object> getListOfNoLock(Class cls, Map<Class, SteppedArrayList<Object>> pool) {
        SteppedArrayList<Object> steppedArrayList = pool.get(cls);
        if (steppedArrayList != null) {
            return steppedArrayList;
        }
        Integer num = this.preAllocs.get(cls);
        if (num == null) {
            num = 100;
        }
        SteppedArrayList<Object> steppedArrayList2 = new SteppedArrayList<>(num.intValue());
        pool.put(cls, steppedArrayList2);
        return steppedArrayList2;
    }

    private Object instantiateNoFactory(Class cls) {
        try {
            try {
                Constructor declaredConstructor = cls.getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                return declaredConstructor.newInstance(null);
            } catch (NoSuchMethodException unused) {
                Constructor<?> constructor = cls.getDeclaredConstructors()[0];
                constructor.setAccessible(true);
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                Object[] objArr = new Object[parameterTypes.length];
                for (int i10 = 0; i10 < parameterTypes.length; i10++) {
                    objArr[i10] = null;
                }
                return constructor.newInstance(objArr);
            }
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    private static boolean removeSwapLastByIdentity(SteppedArrayList<Object> list, Object target) {
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size) == target) {
                int size2 = list.size() - 1;
                if (size != size2) {
                    list.set(size, list.get(size2));
                }
                list.remove(size2);
                return true;
            }
        }
        return false;
    }

    public synchronized <T> T acquire(Class cls) {
        T t10;
        try {
            SteppedArrayList<Object> listOfNoLock = getListOfNoLock(cls, this.freePool);
            if (listOfNoLock.isEmpty()) {
                JP.b factory = JP.getFactory(cls);
                if (factory == null) {
                    throw new NoFactory(cls.getName());
                }
                t10 = (T) factory.a();
            } else {
                t10 = (T) listOfNoLock.remove(listOfNoLock.size() - 1);
                JP.a cleaner = JP.getCleaner(cls);
                if (cleaner != null) {
                    cleaner.a(t10);
                }
            }
            getListOfNoLock(cls, this.usedPool).add(t10);
            this.usedClasses.put(t10, cls);
        } catch (Throwable th2) {
            throw th2;
        }
        return t10;
    }

    public synchronized <T> T acquireNoFactory(Class cls) {
        T t10;
        try {
            SteppedArrayList<Object> listOfNoLock = getListOfNoLock(cls, this.freePool);
            if (listOfNoLock.isEmpty()) {
                JP.b factory = JP.getFactory(cls);
                t10 = factory != null ? (T) factory.a() : (T) instantiateNoFactory(cls);
            } else {
                t10 = (T) listOfNoLock.remove(listOfNoLock.size() - 1);
                JP.a cleaner = JP.getCleaner(cls);
                if (cleaner != null) {
                    cleaner.a(t10);
                }
            }
            getListOfNoLock(cls, this.usedPool).add(t10);
            this.usedClasses.put(t10, cls);
        } catch (Throwable th2) {
            throw th2;
        }
        return t10;
    }

    public synchronized void clear() {
        this.freePool.clear();
        this.usedPool.clear();
        this.usedClasses.clear();
    }

    public synchronized int freeCount(Class cls) {
        return getListOfNoLock(cls, this.freePool).size();
    }

    public synchronized void release(Object o10) {
        if (o10 == null) {
            return;
        }
        try {
            Class remove = this.usedClasses.remove(o10);
            if (remove == null) {
                return;
            }
            if (removeSwapLastByIdentity(getListOfNoLock(remove, this.usedPool), o10)) {
                getListOfNoLock(remove, this.freePool).add(o10);
            } else {
                this.usedClasses.put(o10, remove);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void setPreAlloc(Class cls, int count) {
        if (cls == null) {
            throw new NullPointerException("cls can't be null");
        }
        if (count < 0) {
            throw new IllegalArgumentException("count can't be negative");
        }
        this.preAllocs.put(cls, Integer.valueOf(count));
    }

    public synchronized int usedCount(Class cls) {
        return getListOfNoLock(cls, this.usedPool).size();
    }
}
