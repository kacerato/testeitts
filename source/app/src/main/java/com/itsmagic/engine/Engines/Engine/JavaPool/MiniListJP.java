package com.itsmagic.engine.Engines.Engine.JavaPool;

import Ic.InterfaceC2637p;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ge.O;
import he.Q;
import java.util.IdentityHashMap;
import java.util.List;

@InterfaceC2637p
public class MiniListJP {
    private static final int PRE_ALLOC = 100;
    private final O<Integer> preAllocs = new O<>(16);
    private final O<SteppedArrayList<SteppedArrayList>> freePool = new O<>(16);
    private final O<SteppedArrayList<SteppedArrayList>> usedPool = new O<>(16);
    private final IdentityHashMap<SteppedArrayList, Integer> usedSizes = new IdentityHashMap<>();
    private final Q<SteppedArrayList<SteppedArrayList>> consumer = new a();

    public class a implements Q<SteppedArrayList<SteppedArrayList>> {
        public a() {
        }

        @Override
        public boolean a(int size, SteppedArrayList<SteppedArrayList> lists) {
            MiniListJP miniListJP = MiniListJP.this;
            MiniListJP.appendAllNoAlloc(miniListJP.getListOfNoLock(size, miniListJP.freePool), lists);
            lists.clear();
            return true;
        }
    }

    public static void appendAllNoAlloc(SteppedArrayList<SteppedArrayList> destination, SteppedArrayList<SteppedArrayList> source) {
        destination.ensureCapacity(destination.size() + source.size());
        for (int i10 = 0; i10 < source.size(); i10++) {
            destination.add(source.get(i10));
        }
    }

    public SteppedArrayList<SteppedArrayList> getListOfNoLock(int size, O<SteppedArrayList<SteppedArrayList>> pool) {
        SteppedArrayList<SteppedArrayList> steppedArrayList = pool.get(size);
        if (steppedArrayList != null) {
            return steppedArrayList;
        }
        SteppedArrayList<SteppedArrayList> steppedArrayList2 = new SteppedArrayList<>(this.preAllocs.F(size) ? this.preAllocs.get(size).intValue() : 100);
        pool.Gd(size, steppedArrayList2);
        return steppedArrayList2;
    }

    private static boolean removeSwapLastByIdentity(SteppedArrayList<SteppedArrayList> list, SteppedArrayList target) {
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

    public <T extends SteppedArrayList> T acquire(int i10) {
        T t10;
        SteppedArrayList<SteppedArrayList> listOfNoLock = getListOfNoLock(i10, this.freePool);
        if (listOfNoLock.isEmpty()) {
            t10 = (T) new SteppedArrayList(i10);
        } else {
            t10 = (T) listOfNoLock.remove(listOfNoLock.size() - 1);
            t10.clear();
        }
        getListOfNoLock(i10, this.usedPool).add(t10);
        this.usedSizes.put(t10, Integer.valueOf(i10));
        return t10;
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

    public void release(List list) {
        SteppedArrayList steppedArrayList;
        Integer remove;
        if ((list instanceof SteppedArrayList) && (remove = this.usedSizes.remove((steppedArrayList = (SteppedArrayList) list))) != null && removeSwapLastByIdentity(getListOfNoLock(remove.intValue(), this.usedPool), steppedArrayList)) {
            steppedArrayList.clear();
            getListOfNoLock(remove.intValue(), this.freePool).add(steppedArrayList);
        }
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
