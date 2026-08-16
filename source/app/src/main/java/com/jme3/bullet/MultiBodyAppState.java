package com.jme3.bullet;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.debug.MultiBodyDebugAppState;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;

public class MultiBodyAppState extends BulletAppState {
    public static final Logger logger2 = Logger.getLogger(MultiBodyAppState.class.getName());

    @Override
    public BulletDebugAppState createDebugAppState() {
        return new MultiBodyDebugAppState(getDebugConfiguration());
    }

    @Override
    public PhysicsSpace createPhysicsSpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType) {
        return new MultiBodySpace(vector3f, vector3f2, broadphaseType, getSolverType());
    }

    public MultiBodySpace getMultiBodySpace() {
        return (MultiBodySpace) getPhysicsSpace();
    }
}
