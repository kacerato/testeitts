package com.itsmagic.engine.Engines.Engine.GC;

import Ic.C2634m;
import Ic.InterfaceC2637p;
import M9.c;
import M9.e;
import M9.f;
import M9.g;
import M9.h;
import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ge.X;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p6.d;
import t3.C15377a;

@InterfaceC2637p
public class SGC {
    private static final int ARRAY_CHUNKS = 5000;

    @Keep
    private static b ASYNC_TO_DELETE_REFERENCES = null;

    @Keep
    private static b SYNC_TO_DELETE_REFERENCES = null;
    private static final int TOTAL_FRAMES_TO_CLEAR_EVERYTHING = 120;

    @Keep
    private static b localAsyncItems;

    @Keep
    private static b localSyncItems;
    private static final Object BLOCK = new Object();

    @Keep
    private static final List<g> REFERENCES = new SteppedArrayList(5000);

    @Keep
    private static final X<g> REFERENCES_BY_GUIDHASH = new X<>(100);

    @Keep
    private static final List<g> snapShot = new SteppedArrayList(5000);

    @Keep
    private static final Map<Class, List<h>> DESTROY_MAP = new HashMap(50);
    private static volatile int concreteCount = 0;
    private static volatile int deadCount = 0;

    public static class b {

        public final EnumMap<M9.a, TreeMap<Integer, List<g>>> f77946a;

        public int f77947b;

        public b() {
            this.f77946a = new EnumMap<>(M9.a.class);
        }

        public void a(g ref) {
            M9.a c10 = ref.c();
            TreeMap<Integer, List<g>> treeMap = this.f77946a.get(c10);
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                this.f77946a.put((EnumMap<M9.a, TreeMap<Integer, List<g>>>) c10, (M9.a) treeMap);
            }
            int e10 = ref.e();
            List<g> list = treeMap.get(Integer.valueOf(e10));
            if (list == null) {
                list = new SteppedArrayList<>();
                treeMap.put(Integer.valueOf(e10), list);
            }
            list.add(ref);
            this.f77947b++;
        }

        public boolean b() {
            return this.f77947b == 0;
        }

        public g c() {
            for (M9.a aVar : M9.a.values()) {
                TreeMap<Integer, List<g>> treeMap = this.f77946a.get(aVar);
                while (treeMap != null && !treeMap.isEmpty()) {
                    Integer firstKey = treeMap.firstKey();
                    List<g> list = treeMap.get(firstKey);
                    int size = list.size() - 1;
                    if (size >= 0) {
                        g remove = list.remove(size);
                        if (list.isEmpty()) {
                            treeMap.remove(firstKey);
                        }
                        this.f77947b--;
                        return remove;
                    }
                    treeMap.remove(firstKey);
                }
            }
            return null;
        }

        public int d() {
            return this.f77947b;
        }
    }

    static {
        SYNC_TO_DELETE_REFERENCES = new b();
        ASYNC_TO_DELETE_REFERENCES = new b();
        localAsyncItems = new b();
        localSyncItems = new b();
    }

    public static void captureConcreteCountByTypeSimpleName(Map<String, Integer> out) {
        Object a10;
        if (out == null) {
            throw new NullPointerException("out map can't be null");
        }
        out.clear();
        synchronized (BLOCK) {
            int i10 = 0;
            while (true) {
                try {
                    List<g> list = REFERENCES;
                    if (i10 < list.size()) {
                        g gVar = list.get(i10);
                        if (gVar != null && (a10 = gVar.a()) != null) {
                            Class<?> cls = a10.getClass();
                            String simpleName = cls.getSimpleName();
                            if (simpleName.isEmpty()) {
                                simpleName = cls.getName();
                            }
                            Integer num = out.get(simpleName);
                            if (num == null) {
                                out.put(simpleName, 1);
                            } else {
                                out.put(simpleName, Integer.valueOf(num.intValue() + 1));
                            }
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static void copyReferencesNoAlloc(List<g> source, List<g> destination) {
        destination.clear();
        if (destination instanceof SteppedArrayList) {
            ((SteppedArrayList) destination).ensureCapacity(source.size());
        }
        for (int i10 = 0; i10 < source.size(); i10++) {
            destination.add(source.get(i10));
        }
    }

    public static long countGPUConsumptionBytes() {
        return countGPUConsumptionBytes(null);
    }

    public static long countNativeConsumptionBytes() {
        return countNativeConsumptionBytes(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x008d, code lost:
    
        if (K8.a.r() != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0093, code lost:
    
        if (r4.j() == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009d, code lost:
    
        throw new java.lang.RuntimeException("Trying to destroy async an object marked with can destroy async = false");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009e, code lost:
    
        r5 = r4.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a8, code lost:
    
        if (r4.f14822n.compareAndSet(false, true) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00aa, code lost:
    
        unregisterDestroyListeners(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ad, code lost:
    
        r4.f().a(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c1, code lost:
    
        notifyDestroyListeners(r4.b(), r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b5, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b6, code lost:
    
        r7.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00bf, code lost:
    
        if (t3.C15377a.f109719g.booleanValue() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c9, code lost:
    
        throw r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ca, code lost:
    
        removeReferenceFromReferences(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00cf, code lost:
    
        if (r4.f14819k == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d1, code lost:
    
        com.itsmagic.engine.Engines.Engine.GC.SGC.REFERENCES_BY_GUIDHASH.e(r4.g());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void destroyImmediate(Object referencedObject) {
        referencedObject.getClass();
        synchronized (BLOCK) {
            try {
                if (referencedObject instanceof C2634m) {
                    g e10 = REFERENCES_BY_GUIDHASH.e(((C2634m) referencedObject).getLongId());
                    if (e10 != null) {
                        if (e10.a() != referencedObject) {
                            throw new RuntimeException("HASH COLLISION");
                        }
                        if (!K8.a.r() && !e10.j()) {
                            throw new RuntimeException("Trying to destroy async an object marked with can destroy async = false");
                        }
                        long h10 = e10.h();
                        if (e10.f14822n.compareAndSet(false, true)) {
                            unregisterDestroyListeners(e10);
                            try {
                                e10.f().a(h10);
                            } catch (Exception e11) {
                                e11.printStackTrace();
                                if (!C15377a.f109719g.booleanValue()) {
                                    throw e11;
                                }
                            }
                            notifyDestroyListeners(e10.b(), h10);
                        }
                        removeReferenceFromReferences(e10);
                        return;
                    }
                }
                int i10 = 0;
                while (true) {
                    List<g> list = REFERENCES;
                    if (i10 >= list.size()) {
                        break;
                    }
                    g gVar = list.get(i10);
                    if (gVar.a() == referencedObject) {
                        break;
                    } else {
                        i10++;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static int getConcreteCount() {
        return concreteCount;
    }

    public static Map<String, Integer> getConcreteCountByTypeSimpleName() {
        HashMap hashMap = new HashMap(128);
        captureConcreteCountByTypeSimpleName(hashMap);
        return hashMap;
    }

    public static int getDeadCount() {
        return deadCount;
    }

    public static void lpUpdate() {
        synchronized (BLOCK) {
            b bVar = ASYNC_TO_DELETE_REFERENCES;
            ASYNC_TO_DELETE_REFERENCES = localAsyncItems;
            localAsyncItems = bVar;
        }
        while (true) {
            g c10 = localAsyncItems.c();
            int i10 = 0;
            if (c10 != null) {
                long h10 = c10.h();
                if (c10.f14822n.compareAndSet(false, true)) {
                    unregisterDestroyListeners(c10);
                    try {
                        c10.f().a(h10);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        if (!C15377a.f109719g.booleanValue()) {
                            throw e10;
                        }
                    }
                    notifyDestroyListeners(c10.b(), h10);
                }
            } else {
                synchronized (BLOCK) {
                    List<g> list = REFERENCES;
                    List<g> list2 = snapShot;
                    copyReferencesNoAlloc(list, list2);
                    concreteCount = list2.size();
                    deadCount = ASYNC_TO_DELETE_REFERENCES.d() + SYNC_TO_DELETE_REFERENCES.d() + localAsyncItems.d() + localSyncItems.d();
                }
                while (true) {
                    List<g> list3 = snapShot;
                    if (i10 >= list3.size()) {
                        return;
                    }
                    g gVar = list3.get(i10);
                    if (!gVar.l()) {
                        synchronized (BLOCK) {
                            try {
                                removeReferenceFromReferences(gVar);
                                if (gVar.f14819k) {
                                    REFERENCES_BY_GUIDHASH.e(gVar.g());
                                }
                                unregisterDestroyListeners(gVar);
                                if (gVar.j()) {
                                    ASYNC_TO_DELETE_REFERENCES.a(gVar);
                                } else {
                                    SYNC_TO_DELETE_REFERENCES.a(gVar);
                                }
                            } finally {
                            }
                        }
                    }
                    i10++;
                }
            }
        }
    }

    private static void notifyDestroyListeners(Class destroyedClass, long pointer) {
        Map<Class, List<h>> map = DESTROY_MAP;
        synchronized (map) {
            try {
                List<h> list = map.get(destroyedClass);
                if (list == null) {
                    return;
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    h hVar = list.get(size);
                    M9.b bVar = hVar.f14824b.get();
                    if (bVar == null) {
                        removeRegisteredDestroyListener(hVar);
                    } else if (!hVar.f14823a.f14822n.get() && hVar.f14823a.l()) {
                        bVar.b(pointer);
                    }
                }
                if (list.isEmpty()) {
                    DESTROY_MAP.remove(destroyedClass);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void put(Object referencedObject, long pointer, c destroyer, boolean canDestroyAsync) {
        M9.b[] bVarArr;
        int i10;
        referencedObject.getClass();
        M9.a aVar = M9.a.CPU;
        if (referencedObject instanceof SGCListenerObject) {
            SGCListenerObject sGCListenerObject = (SGCListenerObject) referencedObject;
            bVarArr = sGCListenerObject.getDestroyListeners();
            i10 = sGCListenerObject.destroyPriority();
            aVar = sGCListenerObject.destroyChannel();
        } else {
            bVarArr = null;
            i10 = 0;
        }
        put(referencedObject, pointer, destroyer, canDestroyAsync, aVar, i10, bVarArr);
    }

    private static void registerDestroyListeners(g ref, M9.b[] listeners) {
        if (listeners == null || listeners.length == 0) {
            return;
        }
        h[] hVarArr = new h[listeners.length];
        synchronized (DESTROY_MAP) {
            for (int i10 = 0; i10 < listeners.length; i10++) {
                try {
                    M9.b bVar = listeners[i10];
                    Class a10 = bVar.a();
                    Map<Class, List<h>> map = DESTROY_MAP;
                    List<h> list = map.get(a10);
                    if (list == null) {
                        list = new SteppedArrayList<>(5000);
                        map.put(a10, list);
                    }
                    List<h> list2 = list;
                    h hVar = new h(ref, bVar, a10, list2, list2.size());
                    list2.add(hVar);
                    hVarArr[i10] = hVar;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        ref.k(hVarArr);
    }

    private static void removeReferenceFromReferences(g ref) {
        if (ref == null) {
            return;
        }
        int i10 = ref.f14820l;
        List<g> list = REFERENCES;
        int size = list.size() - 1;
        if (i10 < 0 || i10 > size || list.get(i10) != ref) {
            i10 = size;
            while (true) {
                if (i10 < 0) {
                    i10 = -1;
                    break;
                } else if (REFERENCES.get(i10) == ref) {
                    break;
                } else {
                    i10--;
                }
            }
            if (i10 < 0) {
                ref.f14820l = -1;
                return;
            }
        }
        if (i10 != size) {
            List<g> list2 = REFERENCES;
            g gVar = list2.get(size);
            list2.set(i10, gVar);
            gVar.f14820l = i10;
        }
        REFERENCES.remove(size);
        ref.f14820l = -1;
    }

    private static void removeRegisteredDestroyListener(h registered) {
        List<h> list;
        if (registered == null || (list = registered.f14826d) == null) {
            return;
        }
        int i10 = registered.f14827e;
        int size = list.size() - 1;
        if (i10 < 0 || i10 > size || list.get(i10) != registered) {
            i10 = size;
            while (true) {
                if (i10 < 0) {
                    i10 = -1;
                    break;
                } else if (list.get(i10) == registered) {
                    break;
                } else {
                    i10--;
                }
            }
            if (i10 < 0) {
                registered.f14826d = null;
                registered.f14827e = -1;
                return;
            }
        }
        if (i10 != size) {
            h hVar = list.get(size);
            list.set(i10, hVar);
            hVar.f14827e = i10;
        }
        list.remove(size);
        registered.f14826d = null;
        registered.f14827e = -1;
    }

    private static void unregisterDestroyListeners(g ref) {
        h[] i10 = ref.i();
        if (i10 == null || i10.length == 0) {
            return;
        }
        synchronized (DESTROY_MAP) {
            for (int i11 = 0; i11 < i10.length; i11++) {
                try {
                    h hVar = i10[i11];
                    if (hVar != null) {
                        Class cls = hVar.f14825c;
                        Map<Class, List<h>> map = DESTROY_MAP;
                        List<h> list = map.get(cls);
                        if (list == null) {
                            i10[i11] = null;
                        } else {
                            removeRegisteredDestroyListener(hVar);
                            if (list.isEmpty()) {
                                map.remove(cls);
                            }
                            i10[i11] = null;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void update() {
        b bVar;
        p6.g L12 = d.E1() ? d.L1("SGC update") : null;
        synchronized (BLOCK) {
            bVar = SYNC_TO_DELETE_REFERENCES;
            SYNC_TO_DELETE_REFERENCES = localSyncItems;
            localSyncItems = bVar;
        }
        int N10 = Nc.b.N(2, bVar.d() / 120);
        for (int i10 = 0; !localSyncItems.b() && i10 < N10; i10++) {
            g c10 = localSyncItems.c();
            long h10 = c10.h();
            if (c10.f14822n.compareAndSet(false, true)) {
                unregisterDestroyListeners(c10);
                try {
                    c10.f().a(h10);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    if (!C15377a.f109719g.booleanValue()) {
                        throw e10;
                    }
                }
                notifyDestroyListeners(c10.b(), h10);
            }
        }
        d.J1(L12);
    }

    public static long countGPUConsumptionBytes(M9.d type) {
        long j10;
        synchronized (BLOCK) {
            j10 = 0;
            int i10 = 0;
            while (true) {
                try {
                    List<g> list = REFERENCES;
                    if (i10 < list.size()) {
                        g gVar = list.get(i10);
                        if (gVar != null) {
                            Object a10 = gVar.a();
                            if (a10 != null) {
                                if (a10 instanceof e) {
                                    if (type != null && ((e) a10).gpuUsageType() != type) {
                                    }
                                    j10 += ((e) a10).gpuUsedBytes();
                                }
                            }
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return j10;
    }

    public static long countNativeConsumptionBytes(f type) {
        long j10;
        synchronized (BLOCK) {
            j10 = 0;
            int i10 = 0;
            while (true) {
                try {
                    List<g> list = REFERENCES;
                    if (i10 < list.size()) {
                        g gVar = list.get(i10);
                        if (gVar != null) {
                            Object a10 = gVar.a();
                            if (a10 != null) {
                                if (a10 instanceof e) {
                                    if (type != null && ((e) a10).nativeUsageType() != type) {
                                    }
                                    j10 += ((e) a10).nativeUsedBytes();
                                }
                            }
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return j10;
    }

    public static void put(Object referencedObject, long pointer, c destroyer, boolean canDestroyAsync, M9.a destroyChannel, int destroyPriority) {
        referencedObject.getClass();
        put(referencedObject, pointer, destroyer, canDestroyAsync, destroyChannel, destroyPriority, referencedObject instanceof SGCListenerObject ? ((SGCListenerObject) referencedObject).getDestroyListeners() : null);
    }

    private static void put(Object referencedObject, long pointer, c destroyer, boolean canDestroyAsync, M9.a destroyChannel, int destroyPriority, M9.b[] listeners) {
        Class[] clsArr;
        if (listeners == null || listeners.length <= 0) {
            clsArr = null;
        } else {
            clsArr = new Class[listeners.length];
            for (int i10 = 0; i10 < listeners.length; i10++) {
                clsArr[i10] = listeners[i10].a();
            }
        }
        Class[] clsArr2 = clsArr;
        synchronized (BLOCK) {
            try {
                g gVar = new g(referencedObject, pointer, destroyer, canDestroyAsync, destroyPriority, destroyChannel, clsArr2);
                List<g> list = REFERENCES;
                gVar.f14820l = list.size();
                list.add(gVar);
                if (referencedObject instanceof C2634m) {
                    long longId = ((C2634m) referencedObject).getLongId();
                    gVar.f14819k = true;
                    gVar.f14818j = longId;
                    REFERENCES_BY_GUIDHASH.td(longId, gVar);
                }
                registerDestroyListeners(gVar, listeners);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
