package com.jme3.bullet;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.math.Vector3f;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PhysicsSoftSpace extends PhysicsSpace {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(PhysicsSoftSpace.class.getName());
    private final Map<Long, PhysicsSoftBody> softBodyMap;
    private final SoftBodyWorldInfo worldInfo;

    public PhysicsSoftSpace(PhysicsSpace.BroadphaseType broadphaseType) {
        this(new Vector3f(-10000.0f, -10000.0f, -10000.0f), new Vector3f(10000.0f, 10000.0f, 10000.0f), broadphaseType);
    }

    private static native void addSoftBody(long j10, long j11);

    private void addSoftBody(PhysicsSoftBody physicsSoftBody) {
        long nativeId = physicsSoftBody.nativeId();
        if (this.softBodyMap.containsKey(Long.valueOf(nativeId))) {
            logger2.log(Level.WARNING, "{0} is already added to {1}.", new Object[]{physicsSoftBody, this});
            return;
        }
        this.softBodyMap.put(Long.valueOf(nativeId), physicsSoftBody);
        Logger logger = logger2;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            logger.log(level, "Adding {0} to {1}.", new Object[]{physicsSoftBody, this});
        }
        addSoftBody(nativeId(), nativeId);
        if (physicsSoftBody.isWorldInfoProtected()) {
            return;
        }
        physicsSoftBody.setWorldInfo(getWorldInfo());
    }

    private native long createPhysicsSoftSpace(Vector3f vector3f, Vector3f vector3f2, int i10, long j10);

    private static native int getNumSoftBodies(long j10);

    public static PhysicsSoftSpace getSoftSpace() {
        return (PhysicsSoftSpace) CollisionSpace.getCollisionSpace();
    }

    private static native long getWorldInfo(long j10);

    private static native void removeSoftBody(long j10, long j11);

    private void removeSoftBody(PhysicsSoftBody physicsSoftBody) {
        long nativeId = physicsSoftBody.nativeId();
        if (!this.softBodyMap.containsKey(Long.valueOf(nativeId))) {
            logger2.log(Level.WARNING, "{0} does not exist in {1}.", new Object[]{physicsSoftBody, this});
            return;
        }
        Logger logger = logger2;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            logger.log(level, "Removing {0} from {1}.", new Object[]{physicsSoftBody, this});
        }
        this.softBodyMap.remove(Long.valueOf(nativeId));
        removeSoftBody(nativeId(), nativeId);
    }

    @Override
    public void addCollisionObject(PhysicsCollisionObject physicsCollisionObject) {
        if (physicsCollisionObject instanceof PhysicsSoftBody) {
            addSoftBody((PhysicsSoftBody) physicsCollisionObject);
        } else {
            super.addCollisionObject(physicsCollisionObject);
        }
    }

    @Override
    public boolean contains(PhysicsCollisionObject physicsCollisionObject) {
        if (!(physicsCollisionObject instanceof PhysicsSoftBody)) {
            return super.contains(physicsCollisionObject);
        }
        return this.softBodyMap.containsKey(Long.valueOf(physicsCollisionObject.nativeId()));
    }

    @Override
    public int countJoints() {
        return getJointMap().size();
    }

    public int countSoftBodies() {
        return getNumSoftBodies(nativeId());
    }

    @Override
    public void create() {
        countSolvers();
        int ordinal = getBroadphaseType().ordinal();
        initThread(createPhysicsSoftSpace(getWorldMin(null), getWorldMax(null), ordinal, getConfiguration().nativeId()));
        initSolverInfo();
        logger2.log(Level.FINE, "Created {0}.", this);
    }

    @Override
    public void destroy() {
        super.destroy();
        Iterator<PhysicsSoftBody> it = this.softBodyMap.values().iterator();
        while (it.hasNext()) {
            removeSoftBody(it.next());
        }
    }

    @Override
    public Collection<PhysicsCollisionObject> getPcoList() {
        Collection<PhysicsCollisionObject> pcoList = super.getPcoList();
        pcoList.addAll(this.softBodyMap.values());
        return pcoList;
    }

    public Collection<PhysicsSoftBody> getSoftBodyList() {
        return Collections.unmodifiableCollection(this.softBodyMap.values());
    }

    public SoftBodyWorldInfo getWorldInfo() {
        return this.worldInfo;
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty() && this.softBodyMap.isEmpty();
    }

    @Override
    public void removeCollisionObject(PhysicsCollisionObject physicsCollisionObject) {
        if (physicsCollisionObject instanceof PhysicsSoftBody) {
            removeSoftBody((PhysicsSoftBody) physicsCollisionObject);
        } else {
            super.removeCollisionObject(physicsCollisionObject);
        }
    }

    @Override
    public void setGravity(Vector3f vector3f) {
        super.setGravity(vector3f);
        this.worldInfo.setGravity(vector3f);
    }

    public PhysicsSoftSpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType) {
        this(vector3f, vector3f2, broadphaseType, new CollisionConfiguration());
    }

    public PhysicsSoftSpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType, CollisionConfiguration collisionConfiguration) {
        super(vector3f, vector3f2, broadphaseType, 1, collisionConfiguration);
        this.softBodyMap = new ConcurrentHashMap(64);
        SoftBodyWorldInfo softBodyWorldInfo = new SoftBodyWorldInfo(getWorldInfo(super.nativeId()));
        this.worldInfo = softBodyWorldInfo;
        softBodyWorldInfo.setGravity(super.getGravity(null));
    }
}
