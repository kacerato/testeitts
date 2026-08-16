package com.itsmagic.engine.Engines.Engine.JavaPool;

import Ic.InterfaceC2637p;
import Z9.B;
import com.itsmagic.engine.Engines.Engine.JavaPool.FloatArrayJP;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ge.O;
import he.Q;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.function.Supplier;

@InterfaceC2637p
public class FloatArrayJP {
    private static final int PRE_ALLOC = 1000;
    private static final B<InnerJP> THREAD_LOCK = new B<>(new Supplier() {
        @Override
        public final Object get() {
            return new FloatArrayJP.InnerJP();
        }
    });

    @InterfaceC2637p
    public static final class InnerJP {
        private final O<SteppedArrayList<float[]>> freePool = new O<>(16);
        private final O<SteppedArrayList<float[]>> usedPool = new O<>(16);
        private final IdentityHashMap<float[], Integer> usedSizes = new IdentityHashMap<>();
        private final Q<SteppedArrayList<float[]>> procedure = new a();

        public class a implements Q<SteppedArrayList<float[]>> {
            public a() {
            }

            @Override
            public boolean a(int size, SteppedArrayList<float[]> arrays) {
                FloatArrayJP.appendAllNoAlloc(FloatArrayJP.getListOfNoLock(size, InnerJP.this.freePool), arrays);
                arrays.clear();
                return true;
            }
        }

        public synchronized boolean releaseLocal(float[] array) {
            Integer remove = this.usedSizes.remove(array);
            if (remove == null) {
                return false;
            }
            if (!FloatArrayJP.removeSwapLastByIdentity(FloatArrayJP.getListOfNoLock(remove.intValue(), this.usedPool), array)) {
                return false;
            }
            FloatArrayJP.getListOfNoLock(remove.intValue(), this.freePool).add(array);
            return true;
        }

        public synchronized float[] acquire(int size) {
            float[] fArr;
            try {
                SteppedArrayList listOfNoLock = FloatArrayJP.getListOfNoLock(size, this.freePool);
                fArr = !listOfNoLock.isEmpty() ? (float[]) listOfNoLock.remove(listOfNoLock.size() - 1) : new float[size];
                FloatArrayJP.getListOfNoLock(size, this.usedPool).add(fArr);
                this.usedSizes.put(fArr, Integer.valueOf(size));
            } catch (Throwable th2) {
                throw th2;
            }
            return fArr;
        }

        public synchronized float[] acquireZeroFill(int size) {
            float[] acquire;
            acquire = acquire(size);
            Arrays.fill(acquire, 0.0f);
            return acquire;
        }

        public synchronized void endFrame() {
            this.usedPool.Mb(this.procedure);
            this.usedPool.clear();
            this.usedSizes.clear();
        }

        public synchronized void release(float[] array) {
            releaseLocal(array);
        }

        public synchronized void startFrame() {
        }
    }

    public interface a {
        Object a();
    }

    public static float[] acquire(int size) {
        return getJPForThread().acquire(size);
    }

    public static float[] acquireZeroFill(int size) {
        float[] acquire = getJPForThread().acquire(size);
        Arrays.fill(acquire, 0.0f);
        return acquire;
    }

    public static void appendAllNoAlloc(SteppedArrayList<float[]> destination, SteppedArrayList<float[]> source) {
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

    public static InnerJP getJPForThread() {
        return THREAD_LOCK.b();
    }

    public static SteppedArrayList<float[]> getListOfNoLock(int size, O<SteppedArrayList<float[]>> pool) {
        SteppedArrayList<float[]> steppedArrayList = pool.get(size);
        if (steppedArrayList != null) {
            return steppedArrayList;
        }
        SteppedArrayList<float[]> steppedArrayList2 = new SteppedArrayList<>(1000);
        pool.Gd(size, steppedArrayList2);
        return steppedArrayList2;
    }

    public static void release(float[] o10) {
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

    public static boolean removeSwapLastByIdentity(SteppedArrayList<float[]> list, float[] target) {
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
