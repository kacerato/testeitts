package com.jme3.bullet;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.objects.MultiBodyCollider;
import com.jme3.math.Vector3f;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class MultiBodySpace extends PhysicsSpace {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(MultiBodySpace.class.getName());
    private final Map<Long, MultiBody> multiBodyMap;

    public MultiBodySpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType) {
        super(vector3f, vector3f2, broadphaseType, 1);
        this.multiBodyMap = new ConcurrentHashMap(64);
    }

    private static native void addMultiBody(long j10, long j11);

    private static native void addMultiBodyConstraint(long j10, long j11);

    private native long createMultiBodySpace(Vector3f vector3f, Vector3f vector3f2, int i10, long j10);

    public static MultiBodySpace getMultiBodySpace() {
        return (MultiBodySpace) CollisionSpace.getCollisionSpace();
    }

    private static native int getNumMultiBodyConstraints(long j10);

    private static native int getNumMultibodies(long j10);

    private static native void removeMultiBody(long j10, long j11);

    private static native void removeMultiBodyConstraint(long j10, long j11);

    private static native void setSolverType(long j10, int i10);

    @Override
    public void activateAll(boolean z10) {
        super.activateAll(z10);
        Iterator<MultiBody> it = this.multiBodyMap.values().iterator();
        while (it.hasNext()) {
            Iterator<MultiBodyCollider> it2 = it.next().listColliders().iterator();
            while (it2.hasNext()) {
                it2.next().activate(z10);
            }
        }
    }

    @Override
    public void add(Object obj) {
        C13702E.t(obj, "object");
        if (obj instanceof MultiBody) {
            addMultiBody((MultiBody) obj);
        } else {
            super.add(obj);
        }
    }

    public void addMultiBody(MultiBody multiBody) {
        long nativeId = multiBody.nativeId();
        if (this.multiBodyMap.containsKey(Long.valueOf(nativeId))) {
            logger2.log(Level.WARNING, "{0} is already added to {1}.", new Object[]{multiBody, this});
            return;
        }
        this.multiBodyMap.put(Long.valueOf(nativeId), multiBody);
        Logger logger = logger2;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            logger.log(level, "Adding {0} to {1}.", new Object[]{multiBody, this});
        }
        addMultiBody(nativeId(), nativeId);
    }

    @Override
    public boolean contains(PhysicsCollisionObject physicsCollisionObject) {
        if (!(physicsCollisionObject instanceof MultiBodyCollider)) {
            return super.contains(physicsCollisionObject);
        }
        MultiBodyCollider multiBodyCollider = (MultiBodyCollider) physicsCollisionObject;
        Iterator<MultiBody> it = this.multiBodyMap.values().iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 = it.next().contains(multiBodyCollider);
            if (z10) {
                return z10;
            }
        }
        return z10;
    }

    public int countMultiBodies() {
        return getNumMultibodies(nativeId());
    }

    @Override
    public void create() {
        countSolvers();
        int ordinal = getBroadphaseType().ordinal();
        initThread(createMultiBodySpace(getWorldMin(null), getWorldMax(null), ordinal, getConfiguration().nativeId()));
        initSolverInfo();
        logger2.log(Level.FINE, "Created {0}.", this);
    }

    @Override
    public void destroy() {
        super.destroy();
        Iterator<MultiBody> it = this.multiBodyMap.values().iterator();
        while (it.hasNext()) {
            removeMultiBody(it.next());
        }
    }

    public Collection<MultiBody> getMultiBodyList() {
        return Collections.unmodifiableCollection(this.multiBodyMap.values());
    }

    @Override
    public Collection<PhysicsCollisionObject> getPcoList() {
        Collection<PhysicsCollisionObject> pcoList = super.getPcoList();
        Iterator<MultiBody> it = this.multiBodyMap.values().iterator();
        while (it.hasNext()) {
            pcoList.addAll(it.next().listColliders());
        }
        return pcoList;
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty() && this.multiBodyMap.isEmpty();
    }

    @Override
    public void remove(Object obj) {
        if (obj instanceof MultiBody) {
            removeMultiBody((MultiBody) obj);
        } else {
            super.remove(obj);
        }
    }

    public void removeMultiBody(MultiBody multiBody) {
        long nativeId = multiBody.nativeId();
        if (!this.multiBodyMap.containsKey(Long.valueOf(nativeId))) {
            logger2.log(Level.WARNING, "{0} does not exist in {1}.", new Object[]{multiBody, this});
            return;
        }
        Logger logger = logger2;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            logger.log(level, "Removing {0} from {1}.", new Object[]{multiBody, this});
        }
        this.multiBodyMap.remove(Long.valueOf(nativeId));
        removeMultiBody(nativeId(), nativeId);
    }

    @Override
    public void updateSolver() {
        setSolverType(nativeId(), getSolverType().ordinal());
    }

    public MultiBodySpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType, SolverType solverType) {
        super(vector3f, vector3f2, broadphaseType, solverType);
        this.multiBodyMap = new ConcurrentHashMap(64);
    }
}
