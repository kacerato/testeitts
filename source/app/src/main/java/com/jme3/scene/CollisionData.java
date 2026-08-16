package com.jme3.scene;

import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.export.Savable;
import com.jme3.math.Matrix4f;

public interface CollisionData extends Savable, Cloneable {
    int collideWith(Collidable collidable, Matrix4f matrix4f, BoundingVolume boundingVolume, CollisionResults collisionResults);
}
