package com.itsmagic.engine.Engines.Engine.JavaPool;

import Ic.InterfaceC2637p;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;

@InterfaceC2637p
public class MiniJP {
    private static final int PRE_ALLOC = 100;
    private final Map<Class, Integer> preAllocs = new HashMap();
    private final Map<Class, SteppedArrayList<Object>> freePool = new HashMap();
    private final Map<Class, SteppedArrayList<Object>> usedPool = new HashMap();
    private final BiConsumer<Class, SteppedArrayList<Object>> consumer = new a();

    public class a implements BiConsumer<Class, SteppedArrayList<Object>> {
        public a() {
        }

        @Override
        public void accept(Class aClass, SteppedArrayList<Object> objects) {
            MiniJP miniJP = MiniJP.this;
            MiniJP.appendAllNoAlloc(miniJP.getListOfNoLock(aClass, miniJP.freePool), objects);
            objects.clear();
        }
    }

    public static void appendAllNoAlloc(SteppedArrayList<Object> destination, SteppedArrayList<Object> source) {
        destination.ensureCapacity(destination.size() + source.size());
        for (int i10 = 0; i10 < source.size(); i10++) {
            destination.add(source.get(i10));
        }
    }

    private JP.a getCleanerOrDefault(Class cls) {
        return JP.getCleaner(cls);
    }

    private JP.b getFactoryOrDefault(Class cls) {
        return JP.getFactory(cls);
    }

    public SteppedArrayList<Object> getListOfNoLock(Class cls, Map<Class, SteppedArrayList<Object>> pool) {
        SteppedArrayList<Object> steppedArrayList = pool.get(cls);
        if (steppedArrayList != null) {
            return steppedArrayList;
        }
        SteppedArrayList<Object> steppedArrayList2 = new SteppedArrayList<>(100);
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

    public <T> T acquire(Class cls) {
        SteppedArrayList<Object> listOfNoLock = getListOfNoLock(cls, this.freePool);
        if (listOfNoLock.isEmpty()) {
            JP.b factoryOrDefault = getFactoryOrDefault(cls);
            if (factoryOrDefault == null) {
                throw new NoFactory(cls.getName());
            }
            T t10 = (T) factoryOrDefault.a();
            getListOfNoLock(cls, this.usedPool).add(t10);
            return t10;
        }
        T t11 = (T) listOfNoLock.remove(listOfNoLock.size() - 1);
        JP.a cleanerOrDefault = getCleanerOrDefault(cls);
        if (cleanerOrDefault != null) {
            cleanerOrDefault.a(t11);
        }
        getListOfNoLock(cls, this.usedPool).add(t11);
        return t11;
    }

    public <T> T acquireNoFactory(Class cls) {
        SteppedArrayList<Object> listOfNoLock = getListOfNoLock(cls, this.freePool);
        if (listOfNoLock.isEmpty()) {
            JP.b factoryOrDefault = getFactoryOrDefault(cls);
            T t10 = factoryOrDefault != null ? (T) factoryOrDefault.a() : (T) instantiateNoFactory(cls);
            getListOfNoLock(cls, this.usedPool).add(t10);
            return t10;
        }
        T t11 = (T) listOfNoLock.remove(listOfNoLock.size() - 1);
        JP.a cleanerOrDefault = getCleanerOrDefault(cls);
        if (cleanerOrDefault != null) {
            cleanerOrDefault.a(t11);
        }
        getListOfNoLock(cls, this.usedPool).add(t11);
        return t11;
    }

    public void clear() {
        this.freePool.clear();
        this.usedPool.clear();
    }

    public void endFrame() {
        this.usedPool.forEach(this.consumer);
        this.usedPool.clear();
    }

    public int freeCount(Class cls) {
        return getListOfNoLock(cls, this.freePool).size();
    }

    public boolean hasCleaner(Class cls) {
        return getCleanerOrDefault(cls) != null;
    }

    public boolean hasFactory(Class cls) {
        return getFactoryOrDefault(cls) != null;
    }

    public void release(Object o10) {
        if (o10 == null) {
            return;
        }
        Class<?> cls = o10.getClass();
        if (removeSwapLastByIdentity(getListOfNoLock(cls, this.usedPool), o10)) {
            getListOfNoLock(cls, this.freePool).add(o10);
        }
    }

    public void setPreAlloc(Class cls, int count) {
        if (cls == null) {
            throw new NullPointerException("cls can't be null");
        }
        if (count < 0) {
            throw new IllegalArgumentException("count can't be negative");
        }
        this.preAllocs.put(cls, Integer.valueOf(count));
    }

    public void startFrame() {
    }

    public int usedCount(Class cls) {
        return getListOfNoLock(cls, this.usedPool).size();
    }
}
