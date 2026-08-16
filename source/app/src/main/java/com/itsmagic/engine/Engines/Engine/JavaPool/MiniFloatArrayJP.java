package com.itsmagic.engine.Engines.Engine.JavaPool;

import Ic.InterfaceC2637p;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ge.O;
import he.Q;
import java.util.Arrays;
import java.util.IdentityHashMap;

@InterfaceC2637p
public class MiniFloatArrayJP {
    private static final int PRE_ALLOC = 100;
    private final O<Integer> preAllocs = new O<>(16);
    private final O<SteppedArrayList<float[]>> freePool = new O<>(16);
    private final O<SteppedArrayList<float[]>> usedPool = new O<>(16);
    private final IdentityHashMap<float[], Integer> usedSizes = new IdentityHashMap<>();
    private final Q<SteppedArrayList<float[]>> consumer = new a();

    public class a implements Q<SteppedArrayList<float[]>> {
        public a() {
        }

        @Override
        public boolean a(int size, SteppedArrayList<float[]> arrays) {
            MiniFloatArrayJP miniFloatArrayJP = MiniFloatArrayJP.this;
            MiniFloatArrayJP.appendAllNoAlloc(miniFloatArrayJP.getListOfNoLock(size, miniFloatArrayJP.freePool), arrays);
            arrays.clear();
            return true;
        }
    }

    public static void appendAllNoAlloc(SteppedArrayList<float[]> destination, SteppedArrayList<float[]> source) {
        destination.ensureCapacity(destination.size() + source.size());
        for (int i10 = 0; i10 < source.size(); i10++) {
            destination.add(source.get(i10));
        }
    }

    public SteppedArrayList<float[]> getListOfNoLock(int size, O<SteppedArrayList<float[]>> pool) {
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

    public float[] acquire(int size) {
        SteppedArrayList<float[]> listOfNoLock = getListOfNoLock(size, this.freePool);
        float[] remove = !listOfNoLock.isEmpty() ? listOfNoLock.remove(listOfNoLock.size() - 1) : new float[size];
        getListOfNoLock(size, this.usedPool).add(remove);
        this.usedSizes.put(remove, Integer.valueOf(size));
        return remove;
    }

    public float[] acquireZeroFill(int size) {
        float[] acquire = acquire(size);
        Arrays.fill(acquire, 0.0f);
        return acquire;
    }

    public void clear() {
        this.freePool.clear();
        this.usedPool.clear();
        this.usedSizes.clear();
    }

    public void endFrame() {
        this.usedPool.Mb(this.consumer);
        this.usedPool.clear();
        this.usedSizes.clear();
    }

    public int freeCount(int size) {
        return getListOfNoLock(size, this.freePool).size();
    }

    public void release(float[] array) {
        Integer remove;
        if (array == null || (remove = this.usedSizes.remove(array)) == null || !removeSwapLastByIdentity(getListOfNoLock(remove.intValue(), this.usedPool), array)) {
            return;
        }
        getListOfNoLock(remove.intValue(), this.freePool).add(array);
    }

    public void setPreAlloc(int size, int count) {
        if (size < 0) {
            throw new IllegalArgumentException("size can't be negative");
        }
        if (count < 0) {
            throw new IllegalArgumentException("count can't be negative");
        }
        this.preAllocs.Gd(size, Integer.valueOf(count));
    }

    public void startFrame() {
    }

    public int usedCount(int size) {
        return getListOfNoLock(size, this.usedPool).size();
    }
}
