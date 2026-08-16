package com.jme3.bullet.control;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.scene.control.Control;

public interface PhysicsControl extends Control {
    PhysicsSpace getPhysicsSpace();

    boolean isEnabled();

    void setEnabled(boolean z10);

    void setPhysicsSpace(PhysicsSpace physicsSpace);
}
