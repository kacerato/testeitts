package com.ardor3d.intersection;

import com.ardor3d.scenegraph.Mesh;
import java.util.ArrayList;

public class PrimitiveCollisionResults extends CollisionResults {
    @Override
    public void addCollision(Mesh mesh, Mesh mesh2) {
        if (mesh == null || mesh2 == null) {
            addCollisionData(new CollisionData(mesh, mesh2));
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        PickingUtil.findPrimitiveCollision(mesh, mesh2, arrayList, arrayList2);
        addCollisionData(new CollisionData(mesh, mesh2, arrayList, arrayList2));
    }

    @Override
    public void processCollisions() {
    }
}
