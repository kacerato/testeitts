package com.jme3.bullet;

public interface PhysicsTickListener {
    void physicsTick(PhysicsSpace physicsSpace, float f10);

    void prePhysicsTick(PhysicsSpace physicsSpace, float f10);
}
