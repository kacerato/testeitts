package com.ardor3d.bounding;

import com.ardor3d.scenegraph.Mesh;
import java.util.List;
import java.util.Map;

public interface CollisionTreeController {
    void clean(Map<Mesh, CollisionTree> map, List<Mesh> list, int i10);
}
