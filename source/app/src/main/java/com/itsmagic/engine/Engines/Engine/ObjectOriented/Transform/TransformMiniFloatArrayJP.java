package com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform;

import Ic.InterfaceC2637p;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ge.O;
import java.util.Arrays;
import java.util.IdentityHashMap;

@InterfaceC2637p
public final class TransformMiniFloatArrayJP {
    private static final int PRE_ALLOC = 100;
    private final O<Integer> preAllocs = new O<>(16);
    private final O<SteppedArrayList<float[]>> freePool = new O<>(16);
    private final O<SteppedArrayList<float[]>> usedPool = new O<>(16);
    private final IdentityHashMap<float[], Integer> usedSizes = new IdentityHashMap<>();

    private SteppedArrayList<float[]> getListOfNoLock(int size, O<SteppedArrayList<float[]>> pool) {
        SteppedArrayList<float[]> steppedArrayList = pool.get(size);
        if (steppedArrayList != null) {
            return steppedArrayList;
        }
        SteppedArrayList<float[]> steppedArrayList2 = new SteppedArrayList<>(this.preAllocs.F(size) ? this.preAllocs.get(size).intValue() : 100);
        pool.Gd(size, steppedArrayList2);
        return steppedArrayList2;
    }

    private static boolean removeSwapLastByIdentity(SteppedArrayList<float[]> list, float[] target) {
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

    public synchronized float[] acquire(int size) {
        float[] remove;
        try {
            SteppedArrayList<float[]> listOfNoLock = getListOfNoLock(size, this.freePool);
            remove = !listOfNoLock.isEmpty() ? listOfNoLock.remove(listOfNoLock.size() - 1) : new float[size];
            getListOfNoLock(size, this.usedPool).add(remove);
            this.usedSizes.put(remove, Integer.valueOf(size));
        } catch (Throwable th2) {
            throw th2;
        }
        return remove;
    }

    public synchronized float[] acquireZeroFill(int size) {
        float[] acquire;
        acquire = acquire(size);
        Arrays.fill(acquire, 0.0f);
        return acquire;
    }

    public synchronized void clear() {
        this.freePool.clear();
        this.usedPool.clear();
        this.usedSizes.clear();
    }

    public synchronized int freeCount(int size) {
        return getListOfNoLock(size, this.freePool).size();
    }

    public synchronized void release(float[] array) {
        if (array == null) {
            return;
        }
        try {
            Integer remove = this.usedSizes.remove(array);
            if (remove == null) {
                return;
            }
            if (removeSwapLastByIdentity(getListOfNoLock(remove.intValue(), this.usedPool), array)) {
                getListOfNoLock(remove.intValue(), this.freePool).add(array);
            } else {
                this.usedSizes.put(array, remove);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void setPreAlloc(int size, int count) {
        if (size < 0) {
            throw new IllegalArgumentException("size can't be negative");
        }
        if (count < 0) {
            throw new IllegalArgumentException("count can't be negative");
        }
        this.preAllocs.Gd(size, Integer.valueOf(count));
    }

    public synchronized int usedCount(int size) {
        return getListOfNoLock(size, this.usedPool).size();
    }
}
