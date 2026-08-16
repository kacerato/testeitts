package com.itsmagic.engine.Engines.Engine.JavaPool;

import Ic.InterfaceC2637p;
import JAVARuntime.Point2;
import L8.c;
import Z9.B;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Backend.ImguiBackend;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.math.Vector3f;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Supplier;

@InterfaceC2637p
public class JP {
    private static final int PRE_ALLOC = 1000;
    private static final B<InnerJP> THREAD_LOCK;
    private static final Map<Class, a> cleaners;
    private static final Map<Class, b> factories;
    private static final Map<Class, Integer> preAllocs = new HashMap();

    @InterfaceC2637p
    public static final class InnerJP {
        private final Map<Class, SteppedArrayList<Object>> freePool = new HashMap();
        private final Map<Class, SteppedArrayList<Object>> usedPool = new HashMap();
        private final IdentityHashMap<Object, Class> usedClasses = new IdentityHashMap<>();
        private final BiConsumer<Class, SteppedArrayList<Object>> consumer = new a();

        public class a implements BiConsumer<Class, SteppedArrayList<Object>> {
            public a() {
            }

            @Override
            public void accept(Class aClass, SteppedArrayList<Object> objects) {
                JP.appendAllNoAlloc(JP.getListOfNoLock(aClass, InnerJP.this.freePool), objects);
                objects.clear();
            }
        }

        public synchronized boolean releaseLocal(Object o10) {
            Class remove = this.usedClasses.remove(o10);
            if (remove == null) {
                return false;
            }
            if (!JP.removeSwapLastByIdentity(JP.getListOfNoLock(remove, this.usedPool), o10)) {
                return false;
            }
            JP.getListOfNoLock(remove, this.freePool).add(o10);
            return true;
        }

        public synchronized <T> T acquire(Class cls) {
            T t10;
            try {
                SteppedArrayList listOfNoLock = JP.getListOfNoLock(cls, this.freePool);
                if (listOfNoLock.isEmpty()) {
                    b bVar = (b) JP.factories.get(cls);
                    if (bVar == null) {
                        throw new NoFactory(cls.getName());
                    }
                    t10 = (T) bVar.a();
                } else {
                    t10 = (T) listOfNoLock.remove(listOfNoLock.size() - 1);
                    a aVar = (a) JP.cleaners.get(cls);
                    if (aVar != null) {
                        aVar.a(t10);
                    }
                }
                JP.getListOfNoLock(cls, this.usedPool).add(t10);
                this.usedClasses.put(t10, cls);
            } catch (Throwable th2) {
                throw th2;
            }
            return t10;
        }

        public synchronized <T> T acquireNoFactory(Class cls) {
            T t10;
            try {
                SteppedArrayList listOfNoLock = JP.getListOfNoLock(cls, this.freePool);
                if (listOfNoLock.isEmpty()) {
                    b bVar = (b) JP.factories.get(cls);
                    t10 = bVar != null ? (T) bVar.a() : (T) JP.instantiateNoFactory(cls);
                } else {
                    t10 = (T) listOfNoLock.remove(listOfNoLock.size() - 1);
                    a aVar = (a) JP.cleaners.get(cls);
                    if (aVar != null) {
                        aVar.a(t10);
                    }
                }
                JP.getListOfNoLock(cls, this.usedPool).add(t10);
                this.usedClasses.put(t10, cls);
            } catch (Throwable th2) {
                throw th2;
            }
            return t10;
        }

        public synchronized void endFrame() {
            this.usedPool.forEach(this.consumer);
            this.usedPool.clear();
            this.usedClasses.clear();
        }

        public synchronized void release(Object o10) {
            releaseLocal(o10);
        }

        public synchronized void startFrame() {
        }
    }

    public interface a<T> {
        void a(T v10);
    }

    public interface b {
        Object a();
    }

    static {
        HashMap hashMap = new HashMap();
        factories = hashMap;
        HashMap hashMap2 = new HashMap();
        cleaners = hashMap2;
        hashMap.put(Vector3.class, new b() {
            @Override
            public final Object a() {
                return new Vector3();
            }
        });
        hashMap.put(JAVARuntime.Vector3.class, new b() {
            @Override
            public final Object a() {
                return new JAVARuntime.Vector3();
            }
        });
        hashMap.put(Vector2.class, new b() {
            @Override
            public final Object a() {
                return new Vector2();
            }
        });
        hashMap.put(JAVARuntime.Vector2.class, new b() {
            @Override
            public final Object a() {
                return new JAVARuntime.Vector2();
            }
        });
        hashMap.put(Quaternion.class, new b() {
            @Override
            public final Object a() {
                return new Quaternion();
            }
        });
        hashMap.put(JAVARuntime.Quaternion.class, new b() {
            @Override
            public final Object a() {
                return new JAVARuntime.Quaternion();
            }
        });
        hashMap.put(Point2.class, new b() {
            @Override
            public final Object a() {
                return new Point2();
            }
        });
        hashMap.put(f.class, new b() {
            @Override
            public final Object a() {
                return new com.itsmagic.engine.Engines.Engine.Vector.f();
            }
        });
        hashMap.put(ColorINT.class, new b() {
            @Override
            public final Object a() {
                return new ColorINT();
            }
        });
        hashMap.put(Vector3f.class, new b() {
            @Override
            public final Object a() {
                return new Vector3f();
            }
        });
        hashMap.put(com.jme3.math.Quaternion.class, new b() {
            @Override
            public final Object a() {
                return new com.jme3.math.Quaternion();
            }
        });
        hashMap.put(L8.b.class, new b() {
            @Override
            public final Object a() {
                return new L8.b();
            }
        });
        hashMap2.put(L8.b.class, new a() {
            @Override
            public final void a(Object obj) {
                ((L8.b) obj).e();
            }
        });
        hashMap.put(c.class, new b() {
            @Override
            public final Object a() {
                return new L8.c();
            }
        });
        hashMap2.put(c.class, new a() {
            @Override
            public final void a(Object obj) {
                ((L8.c) obj).A();
            }
        });
        hashMap.put(W9.b.class, new b() {
            @Override
            public final Object a() {
                return new W9.b();
            }
        });
        hashMap2.put(W9.b.class, new a() {
            @Override
            public final void a(Object obj) {
                ((W9.b) obj).e();
            }
        });
        hashMap.put(ImguiBackend.DrawData.class, new b() {
            @Override
            public final Object a() {
                return new ImguiBackend.DrawData();
            }
        });
        hashMap2.put(ImguiBackend.DrawData.class, new a() {
            @Override
            public final void a(Object obj) {
                ((ImguiBackend.DrawData) obj).reset();
            }
        });
        hashMap.put(ImguiBackend.DrawCmd.class, new b() {
            @Override
            public final Object a() {
                return new ImguiBackend.DrawCmd();
            }
        });
        hashMap2.put(ImguiBackend.DrawCmd.class, new a() {
            @Override
            public final void a(Object obj) {
                ((ImguiBackend.DrawCmd) obj).reset();
            }
        });
        hashMap.put(ImguiBackend.DrawList.class, new b() {
            @Override
            public final Object a() {
                return new ImguiBackend.DrawList();
            }
        });
        hashMap2.put(ImguiBackend.DrawList.class, new a() {
            @Override
            public final void a(Object obj) {
                ((ImguiBackend.DrawList) obj).reset();
            }
        });
        THREAD_LOCK = new B<>(new Supplier() {
            @Override
            public final Object get() {
                return new JP.InnerJP();
            }
        });
    }

    public static <T> T acquire(Class cls) {
        return (T) getJPForThread().acquire(cls);
    }

    public static <T> T acquireNoFactory(Class cls) {
        return (T) getJPForThread().acquireNoFactory(cls);
    }

    public static void appendAllNoAlloc(SteppedArrayList<Object> destination, SteppedArrayList<Object> source) {
        destination.ensureCapacity(destination.size() + source.size());
        for (int i10 = 0; i10 < source.size(); i10++) {
            destination.add(source.get(i10));
        }
    }

    public static void endFrame() {
        int i10 = 0;
        while (true) {
            B<InnerJP> b10 = THREAD_LOCK;
            if (i10 >= b10.d()) {
                return;
            }
            b10.a(i10).endFrame();
            i10++;
        }
    }

    public static a getCleaner(Class cls) {
        return cleaners.get(cls);
    }

    public static b getFactory(Class cls) {
        return factories.get(cls);
    }

    public static InnerJP getJPForThread() {
        return THREAD_LOCK.b();
    }

    public static SteppedArrayList<Object> getListOfNoLock(Class cls, Map<Class, SteppedArrayList<Object>> pool) {
        SteppedArrayList<Object> steppedArrayList = pool.get(cls);
        if (steppedArrayList != null) {
            return steppedArrayList;
        }
        Integer num = preAllocs.get(cls);
        if (num == null) {
            num = 1000;
        }
        SteppedArrayList<Object> steppedArrayList2 = new SteppedArrayList<>(num.intValue());
        pool.put(cls, steppedArrayList2);
        return steppedArrayList2;
    }

    public static Object instantiateNoFactory(Class cls) {
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

    public static void release(Object o10) {
        if (o10 == null) {
            return;
        }
        InnerJP c10 = THREAD_LOCK.c();
        if (c10 != null && c10.releaseLocal(o10)) {
            return;
        }
        int i10 = 0;
        while (true) {
            B<InnerJP> b10 = THREAD_LOCK;
            if (i10 >= b10.d()) {
                return;
            }
            InnerJP a10 = b10.a(i10);
            if (a10 != c10) {
                a10.releaseLocal(o10);
            }
            i10++;
        }
    }

    public static boolean removeSwapLastByIdentity(SteppedArrayList<Object> list, Object target) {
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

    public static void startFrame() {
    }
}
