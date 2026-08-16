package com.ardor3d.intersection;

import com.ardor3d.scenegraph.Mesh;
import java.util.ArrayList;
import java.util.List;

public abstract class CollisionResults {
    private final List<CollisionData> _nodeList = new ArrayList();

    public abstract void addCollision(Mesh mesh, Mesh mesh2);

    public void addCollisionData(CollisionData collisionData) {
        this._nodeList.add(collisionData);
    }

    public void clear() {
        this._nodeList.clear();
    }

    public CollisionData getCollisionData(int i10) {
        return this._nodeList.get(i10);
    }

    public int getNumber() {
        return this._nodeList.size();
    }

    public abstract void processCollisions();
}
