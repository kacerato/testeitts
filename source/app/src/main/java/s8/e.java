package S8;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.BakedArmature;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;

public class e {

    public static final HashMap<Integer, SteppedArrayList<BakedArmature>> f23013a = new HashMap<>();

    public static final IdentityHashMap<BakedArmature, Integer> f23014b = new IdentityHashMap<>();

    public static final HashMap<Integer, HashMap<String, HashMap<Long, d>>> f23015c = new HashMap<>();

    public static volatile int f23016d;

    public static synchronized void a() {
        synchronized (e.class) {
            f23015c.clear();
            f23016d++;
        }
    }

    public static synchronized void b(int armatureID, String meshFile) {
        synchronized (e.class) {
            HashMap<Integer, HashMap<String, HashMap<Long, d>>> hashMap = f23015c;
            HashMap<String, HashMap<Long, d>> hashMap2 = hashMap.get(Integer.valueOf(armatureID));
            if (hashMap2 == null) {
                return;
            }
            hashMap2.remove(meshFile);
            f23016d++;
            if (hashMap2.isEmpty() && !f23013a.containsKey(Integer.valueOf(armatureID))) {
                hashMap.remove(Integer.valueOf(armatureID));
            }
        }
    }

    public static synchronized d c(int armatureID, String meshFile, long poseID) {
        synchronized (e.class) {
            if (!f23013a.containsKey(Integer.valueOf(armatureID))) {
                f23015c.remove(Integer.valueOf(armatureID));
                return null;
            }
            HashMap<String, HashMap<Long, d>> hashMap = f23015c.get(Integer.valueOf(armatureID));
            if (hashMap == null) {
                return null;
            }
            HashMap<Long, d> hashMap2 = hashMap.get(meshFile);
            if (hashMap2 == null) {
                return null;
            }
            return hashMap2.get(Long.valueOf(poseID));
        }
    }

    public static int d() {
        return f23016d;
    }

    public static synchronized HashMap<Long, d> e(int armatureID, String meshFile) {
        synchronized (e.class) {
            if (!f23013a.containsKey(Integer.valueOf(armatureID))) {
                f23015c.remove(Integer.valueOf(armatureID));
                return null;
            }
            HashMap<Integer, HashMap<String, HashMap<Long, d>>> hashMap = f23015c;
            HashMap<String, HashMap<Long, d>> hashMap2 = hashMap.get(Integer.valueOf(armatureID));
            if (hashMap2 == null) {
                hashMap2 = new HashMap<>();
                hashMap.put(Integer.valueOf(armatureID), hashMap2);
            }
            HashMap<Long, d> hashMap3 = hashMap2.get(meshFile);
            if (hashMap3 == null) {
                hashMap3 = new HashMap<>();
                hashMap2.put(meshFile, hashMap3);
            }
            return hashMap3;
        }
    }

    public static synchronized int f(int armatureID, String meshFile) {
        synchronized (e.class) {
            HashMap<String, HashMap<Long, d>> hashMap = f23015c.get(Integer.valueOf(armatureID));
            if (hashMap == null) {
                return 0;
            }
            HashMap<Long, d> hashMap2 = hashMap.get(meshFile);
            if (hashMap2 == null) {
                return 0;
            }
            return hashMap2.size();
        }
    }

    public static synchronized boolean g(BakedArmature armature) {
        boolean containsKey;
        synchronized (e.class) {
            containsKey = f23014b.containsKey(armature);
        }
        return containsKey;
    }

    public static synchronized void h(int armatureID, String meshFile, long poseID, d palette) {
        synchronized (e.class) {
            if (palette == null) {
                return;
            }
            if (!f23013a.containsKey(Integer.valueOf(armatureID))) {
                f23015c.remove(Integer.valueOf(armatureID));
                return;
            }
            HashMap<Integer, HashMap<String, HashMap<Long, d>>> hashMap = f23015c;
            HashMap<String, HashMap<Long, d>> hashMap2 = hashMap.get(Integer.valueOf(armatureID));
            if (hashMap2 == null) {
                hashMap2 = new HashMap<>();
                hashMap.put(Integer.valueOf(armatureID), hashMap2);
            }
            HashMap<Long, d> hashMap3 = hashMap2.get(meshFile);
            if (hashMap3 == null) {
                hashMap3 = new HashMap<>();
                hashMap2.put(meshFile, hashMap3);
            }
            hashMap3.put(Long.valueOf(poseID), palette);
        }
    }

    public static synchronized void i(BakedArmature armature) {
        synchronized (e.class) {
            if (armature == null) {
                return;
            }
            try {
                IdentityHashMap<BakedArmature, Integer> identityHashMap = f23014b;
                Integer num = identityHashMap.get(armature);
                if (num != null) {
                    if (num.intValue() == armature.getArmatureID()) {
                        return;
                    } else {
                        k(armature);
                    }
                }
                int armatureID = armature.getArmatureID();
                HashMap<Integer, SteppedArrayList<BakedArmature>> hashMap = f23013a;
                SteppedArrayList<BakedArmature> steppedArrayList = hashMap.get(Integer.valueOf(armatureID));
                if (steppedArrayList == null) {
                    steppedArrayList = new SteppedArrayList<>();
                    hashMap.put(Integer.valueOf(armatureID), steppedArrayList);
                }
                steppedArrayList.add(armature);
                identityHashMap.put(armature, Integer.valueOf(armatureID));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static synchronized int j(int armatureID) {
        synchronized (e.class) {
            HashMap<String, HashMap<Long, d>> hashMap = f23015c.get(Integer.valueOf(armatureID));
            int i10 = 0;
            if (hashMap == null) {
                return 0;
            }
            for (HashMap<Long, d> hashMap2 : hashMap.values()) {
                if (hashMap2 != null) {
                    i10 += hashMap2.size();
                }
            }
            return i10;
        }
    }

    public static synchronized void k(BakedArmature armature) {
        synchronized (e.class) {
            if (armature == null) {
                return;
            }
            Integer remove = f23014b.remove(armature);
            if (remove == null) {
                return;
            }
            SteppedArrayList<BakedArmature> steppedArrayList = f23013a.get(remove);
            if (steppedArrayList == null) {
                f23015c.remove(remove);
                return;
            }
            for (int size = steppedArrayList.size() - 1; size >= 0; size--) {
                if (steppedArrayList.get(size) == armature) {
                    steppedArrayList.remove(size);
                }
            }
            if (steppedArrayList.isEmpty()) {
                f23013a.remove(remove);
                f23015c.remove(remove);
                f23016d++;
            }
        }
    }
}
