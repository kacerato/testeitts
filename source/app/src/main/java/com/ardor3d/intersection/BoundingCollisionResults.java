package com.ardor3d.intersection;

import com.ardor3d.scenegraph.Mesh;

public class BoundingCollisionResults extends CollisionResults {
    @Override
    public void addCollision(Mesh mesh, Mesh mesh2) {
        addCollisionData(new CollisionData(mesh, mesh2));
    }

    @Override
    public void processCollisions() {
    }
}
