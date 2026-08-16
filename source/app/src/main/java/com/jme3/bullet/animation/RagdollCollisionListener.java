package com.jme3.bullet.animation;

import com.jme3.bullet.collision.PhysicsCollisionEvent;
import com.jme3.bullet.collision.PhysicsCollisionObject;

public interface RagdollCollisionListener {
    void collide(PhysicsLink physicsLink, PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionEvent physicsCollisionEvent);
}
