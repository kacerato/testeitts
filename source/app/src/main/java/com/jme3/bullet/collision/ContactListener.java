package com.jme3.bullet.collision;

public interface ContactListener {
    boolean onContactConceived(long j10, long j11, PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2);

    void onContactEnded(long j10);

    void onContactProcessed(PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2, long j10);

    void onContactStarted(long j10);
}
