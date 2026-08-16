package com.itsmagic.engine.Engines.Engine.JavaPool;

import Ic.InterfaceC2637p;
import Z9.B;
import com.itsmagic.engine.Engines.Engine.JavaPool.ListJP;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ge.O;
import he.Q;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Supplier;

@InterfaceC2637p
public class ListJP {
    private static final int PRE_ALLOC = 1000;
    private static final B<InnerJP> THREAD_LOCK = new B<>(new Supplier() {
        @Override
        public final Object get() {
            return new ListJP.InnerJP();
        }
    });

    @InterfaceC2637p
    public static final class InnerJP {
        private final O<SteppedArrayList<SteppedArrayList>> freePool = new O<>(16);
        private final O<SteppedArrayList<SteppedArrayList>> usedPool = new O<>(16);
        private final IdentityHashMap<SteppedArrayList, Integer> usedSizes = new IdentityHashMap<>();
        private final Q<SteppedArrayList<SteppedArrayList>> procedure = new a();

        public class a implements Q<SteppedArrayList<SteppedArrayList>> {
            public a() {
            }

            @Override
            public boolean a(int size, SteppedArrayList<SteppedArrayList> lists) {
                ListJP.appendAllNoAlloc(ListJP.getListOfNoLock(size, InnerJP.this.freePool), lists);
                lists.clear();
                return true;
            }
        }

        public synchronized boolean releaseLocal(List list) {
            if (!(list instanceof SteppedArrayList)) {
                return false;
            }
            SteppedArrayList steppedArrayList = (SteppedArrayList) list;
            Integer remove = this.usedSizes.remove(steppedArrayList);
            if (remove == null) {
                return false;
            }
            if (!ListJP.removeSwapLastByIdentity(ListJP.getListOfNoLock(remove.intValue(), this.usedPool), steppedArrayList)) {
                return false;
            }
            steppedArrayList.clear();
            ListJP.getListOfNoLock(remove.intValue(), this.freePool).add(steppedArrayList);
            return true;
        }

        public synchronized <T extends SteppedArrayList> T acquire(int i10) {
            T t10;
            try {
                SteppedArrayList listOfNoLock = ListJP.getListOfNoLock(i10, this.freePool);
                if (listOfNoLock.isEmpty()) {
                    t10 = (T) new SteppedArrayList(i10);
                } else {
                    t10 = (T) listOfNoLock.remove(listOfNoLock.size() - 1);
                    t10.clear();
                }
                ListJP.getListOfNoLock(i10, this.usedPool).add(t10);
                this.usedSizes.put(t10, Integer.valueOf(i10));
            } catch (Throwable th2) {
                throw th2;
            }
            return t10;
        }

        public synchronized void endFrame() {
            this.usedPool.Mb(this.procedure);
            this.usedPool.clear();
            this.usedSizes.clear();
        }

        public synchronized void release(List list) {
            releaseLocal(list);
        }

        public synchronized void startFrame() {
        }
    }

    public interface a {
        Object a();
    }

    public static <T extends SteppedArrayList> T acquire(int i10) {
        return (T) getJPForThread().acquire(i10);
    }

    public static void appendAllNoAlloc(SteppedArrayList<SteppedArrayList> destination, SteppedArrayList<SteppedArrayList> source) {
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

    public static SteppedArrayList<SteppedArrayList> getListOfNoLock(int size, O<SteppedArrayList<SteppedArrayList>> pool) {
        SteppedArrayList<SteppedArrayList> steppedArrayList = pool.get(size);
        if (steppedArrayList != null) {
            return steppedArrayList;
        }
        SteppedArrayList<SteppedArrayList> steppedArrayList2 = new SteppedArrayList<>(1000);
        pool.Gd(size, steppedArrayList2);
        return steppedArrayList2;
    }

    public static void release(List list) {
        if (list == null) {
            return;
        }
        InnerJP c10 = THREAD_LOCK.c();
        if (c10 != null && c10.releaseLocal(list)) {
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
                a10.releaseLocal(list);
            }
            i10++;
        }
    }

    public static boolean removeSwapLastByIdentity(SteppedArrayList<SteppedArrayList> list, SteppedArrayList target) {
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
