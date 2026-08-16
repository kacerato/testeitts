package com.jme3.collision;

public interface Collidable {
    int collideWith(Collidable collidable, CollisionResults collisionResults) throws UnsupportedCollisionException;
}
