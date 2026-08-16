package com.ardor3d.bounding;

import com.ardor3d.scenegraph.Mesh;
import java.util.List;
import java.util.Map;

public class UsageTreeController implements CollisionTreeController {
    @Override
    public void clean(Map<Mesh, CollisionTree> map, List<Mesh> list, int i10) {
        Object[] array = map.o().toArray();
        for (int i11 = 0; map.size() > i10 && i11 < array.length; i11++) {
            if (list == null || !list.contains(array[i11])) {
                map.remove(array[i11]);
            }
        }
    }
}
