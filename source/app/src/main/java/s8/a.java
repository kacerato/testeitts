package S8;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.Bone;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public class a {

    public final Bone[] f22991a;

    public final int[] f22992b;

    public final HashMap<Ac.b, Integer> f22993c = new HashMap<>();

    public final HashMap<Integer, Integer> f22994d;

    public final int[] f22995e;

    public a(List<Bone> rootBones, HashMap<Integer, Integer> boneGlobalToLocalMap) {
        HashMap<Integer, Integer> hashMap = new HashMap<>();
        this.f22994d = hashMap;
        SteppedArrayList<Bone> steppedArrayList = new SteppedArrayList<>();
        SteppedArrayList<Integer> steppedArrayList2 = new SteppedArrayList<>();
        d(rootBones, -1, steppedArrayList, steppedArrayList2, new HashSet<>());
        int i10 = 0;
        Bone[] boneArr = (Bone[]) steppedArrayList.toArray(new Bone[0]);
        this.f22991a = boneArr;
        this.f22992b = new int[steppedArrayList2.size()];
        this.f22995e = new int[boneArr.length];
        if (boneGlobalToLocalMap != null) {
            hashMap.putAll(boneGlobalToLocalMap);
        }
        for (int i11 = 0; i11 < steppedArrayList2.size(); i11++) {
            this.f22992b[i11] = steppedArrayList2.get(i11).intValue();
            this.f22995e[i11] = -1;
        }
        while (true) {
            Bone[] boneArr2 = this.f22991a;
            if (i10 >= boneArr2.length) {
                return;
            }
            Bone bone = boneArr2[i10];
            if (bone.c() != null) {
                this.f22993c.put(new Ac.b(bone.c()), Integer.valueOf(i10));
            }
            Integer num = this.f22994d.get(Integer.valueOf(bone.d()));
            if (num != null) {
                this.f22995e[i10] = num.intValue();
            }
            i10++;
        }
    }

    public b[] a() {
        b[] bVarArr = new b[this.f22991a.length];
        int i10 = 0;
        while (true) {
            Bone[] boneArr = this.f22991a;
            if (i10 >= boneArr.length) {
                return bVarArr;
            }
            bVarArr[i10] = new b(boneArr[i10]);
            i10++;
        }
    }

    public int b(Ac.b boneID) {
        Integer num;
        if (boneID == null || (num = this.f22993c.get(boneID)) == null) {
            return -1;
        }
        return num.intValue();
    }

    public final void c(Bone bone, int parent, SteppedArrayList<Bone> outBones, SteppedArrayList<Integer> outParents, HashSet<Bone> visited) {
        if (bone == null || visited.contains(bone)) {
            return;
        }
        visited.add(bone);
        int size = outBones.size();
        outBones.add(bone);
        outParents.add(Integer.valueOf(parent));
        for (int i10 = 0; i10 < bone.b().size(); i10++) {
            c(bone.b().get(i10), size, outBones, outParents, visited);
        }
    }

    public final void d(List<Bone> boneList, int parent, SteppedArrayList<Bone> outBones, SteppedArrayList<Integer> outParents, HashSet<Bone> visited) {
        if (boneList == null) {
            return;
        }
        for (int i10 = 0; i10 < boneList.size(); i10++) {
            c(boneList.get(i10), parent, outBones, outParents, visited);
        }
    }

    public int e() {
        return this.f22991a.length;
    }
}
