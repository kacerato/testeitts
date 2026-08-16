package com.jme3.bullet;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.debug.SoftDebugAppState;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;

public class SoftPhysicsAppState extends BulletAppState {
    public static final Logger logger2 = Logger.getLogger(SoftPhysicsAppState.class.getName());
    private BulletDebugAppState.DebugAppStateFilter clusterFilter;
    private BulletDebugAppState.DebugAppStateFilter windVelocityFilter;

    @Override
    public BulletDebugAppState createDebugAppState() {
        SoftDebugAppState softDebugAppState = new SoftDebugAppState(getDebugConfiguration());
        softDebugAppState.setClusterFilter(this.clusterFilter);
        softDebugAppState.setWindVelocityFilter(this.windVelocityFilter);
        return softDebugAppState;
    }

    @Override
    public PhysicsSpace createPhysicsSpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType) {
        return new PhysicsSoftSpace(vector3f, vector3f2, broadphaseType, getCollisionConfiguration());
    }

    public PhysicsSoftSpace getPhysicsSoftSpace() {
        return (PhysicsSoftSpace) getPhysicsSpace();
    }

    public void setDebugClusterFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        SoftDebugAppState softDebugAppState = (SoftDebugAppState) getDebugAppState();
        if (softDebugAppState != null) {
            softDebugAppState.setClusterFilter(debugAppStateFilter);
        }
        this.clusterFilter = debugAppStateFilter;
    }

    public void setWindVelocityFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        SoftDebugAppState softDebugAppState = (SoftDebugAppState) getDebugAppState();
        if (softDebugAppState != null) {
            softDebugAppState.setWindVelocityFilter(debugAppStateFilter);
        }
        this.windVelocityFilter = debugAppStateFilter;
    }
}
