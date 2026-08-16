package com.jme3.bullet;

import G0.E;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.PhysicsCollisionGroupListener;
import com.jme3.bullet.collision.PhysicsCollisionListener;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.PhysicsRayTestResult;
import com.jme3.bullet.collision.PhysicsSweepTestResult;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.ConvexShape;
import com.jme3.bullet.objects.PhysicsGhostObject;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.simsilica.mathd.Vec3d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class CollisionSpace extends NativePhysicsObject {
    static final boolean $assertionsDisabled = false;
    private final PhysicsSpace.BroadphaseType broadphaseType;
    private final Map<Integer, PhysicsCollisionGroupListener> cgListeners;
    private final CollisionConfiguration collisionConfiguration;
    private final Map<Long, PhysicsGhostObject> ghostMap;
    private final int numSolvers;
    private int rayTestFlags;
    private final Vector3f worldMax;
    private final Vector3f worldMin;
    public static final Logger loggerC = Logger.getLogger(CollisionSpace.class.getName());
    private static final Comparator<PhysicsRayTestResult> hitFractionComparator = new Comparator<PhysicsRayTestResult>() {
        @Override
        public int compare(PhysicsRayTestResult physicsRayTestResult, PhysicsRayTestResult physicsRayTestResult2) {
            return Float.compare(physicsRayTestResult.getHitFraction(), physicsRayTestResult2.getHitFraction());
        }
    };
    private static final ThreadLocal<CollisionSpace> physicsSpaceTL = new ThreadLocal<>();

    public CollisionSpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType) {
        this(vector3f, vector3f2, broadphaseType, 1);
    }

    private static native void addCollisionObject(long j10, long j11);

    private void addGhostObject(PhysicsGhostObject physicsGhostObject) {
        if (contains(physicsGhostObject)) {
            loggerC.log(Level.WARNING, "{0} is already added to {1}.", new Object[]{physicsGhostObject, this});
            return;
        }
        Logger logger = loggerC;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            logger.log(level, "Adding {0} to {1}.", new Object[]{physicsGhostObject, this});
        }
        long nativeId = physicsGhostObject.nativeId();
        this.ghostMap.put(Long.valueOf(nativeId), physicsGhostObject);
        addCollisionObject(nativeId(), nativeId);
    }

    private static native int contactTest(long j10, long j11, PhysicsCollisionListener physicsCollisionListener);

    private native long createCollisionSpace(float f10, float f11, float f12, float f13, float f14, float f15, int i10, long j10);

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        C13702E.x(j10, "space ID");
        finalizeNative(j10);
    }

    public static CollisionSpace getCollisionSpace() {
        return physicsSpaceTL.get();
    }

    private static native boolean getDeterministicOverlappingPairs(long j10);

    private static native long getJniEnvId(long j10);

    private static native int getNumCollisionObjects(long j10);

    private static native boolean hasClosest(long j10, int i10, int i11);

    private static native boolean hasContact(long j10, int i10, int i11);

    private static native boolean isForceUpdateAllAabbs(long j10);

    private static native boolean isOverlapFilterEnabled(long j10);

    private boolean notifyCollisionGroupListeners(PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2) {
        return needsCollision(physicsCollisionObject, physicsCollisionObject2);
    }

    private static native int pairTest(long j10, long j11, long j12, PhysicsCollisionListener physicsCollisionListener);

    private static native void rayTestNative(Vector3f vector3f, Vector3f vector3f2, long j10, List<PhysicsRayTestResult> list, int i10);

    private static native void rayTestNativeDp(Vec3d vec3d, Vec3d vec3d2, long j10, List<PhysicsRayTestResult> list, int i10);

    private static native void removeCollisionObject(long j10, long j11);

    private void removeGhostObject(PhysicsGhostObject physicsGhostObject) {
        long nativeId = physicsGhostObject.nativeId();
        if (!this.ghostMap.containsKey(Long.valueOf(nativeId))) {
            loggerC.log(Level.WARNING, "{0} does not exist in {1}.", new Object[]{physicsGhostObject, this});
            return;
        }
        this.ghostMap.remove(Long.valueOf(nativeId));
        Logger logger = loggerC;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            logger.log(level, "Removing {0} from {1}.", new Object[]{physicsGhostObject, this});
        }
        removeCollisionObject(nativeId(), nativeId);
    }

    private static native void setDeterministicOverlappingPairs(long j10, boolean z10);

    private static native void setForceUpdateAllAabbs(long j10, boolean z10);

    public static void setLocalThreadPhysicsSpace(CollisionSpace collisionSpace) {
        physicsSpaceTL.set(collisionSpace);
    }

    private static native void setOverlapFilterEnabled(long j10, boolean z10);

    private static native void sweepTestNative(long j10, Transform transform, Transform transform2, long j11, List<PhysicsSweepTestResult> list, float f10);

    public void add(Object obj) {
        C13702E.t(obj, "object");
        if (obj instanceof PhysicsCollisionObject) {
            addCollisionObject((PhysicsCollisionObject) obj);
            return;
        }
        throw new IllegalArgumentException("Cannot add a " + obj.getClass().getCanonicalName() + " to a collision space.");
    }

    public void addCollisionGroupListener(PhysicsCollisionGroupListener physicsCollisionGroupListener, int i10) {
        C13702E.t(physicsCollisionGroupListener, E.a.f7280a);
        C13702E.H(Integer.bitCount(i10) == 1, "exactly one bit set");
        this.cgListeners.put(Integer.valueOf(i10), physicsCollisionGroupListener);
    }

    public void addCollisionObject(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "collision object");
        if (physicsCollisionObject instanceof PhysicsGhostObject) {
            addGhostObject((PhysicsGhostObject) physicsCollisionObject);
            return;
        }
        throw new IllegalArgumentException("Unknown type of collision object: " + physicsCollisionObject.getClass().getCanonicalName());
    }

    public int contactTest(PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionListener physicsCollisionListener) {
        return contactTest(nativeId(), physicsCollisionObject.nativeId(), physicsCollisionListener);
    }

    public boolean contains(PhysicsCollisionObject physicsCollisionObject) {
        long nativeId = physicsCollisionObject.nativeId();
        if (physicsCollisionObject instanceof PhysicsGhostObject) {
            return this.ghostMap.containsKey(Long.valueOf(nativeId));
        }
        throw new IllegalArgumentException("Unknown type of collision object: " + physicsCollisionObject.getClass().getCanonicalName());
    }

    public int countCollisionGroupListeners() {
        return this.cgListeners.size();
    }

    public int countCollisionObjects() {
        return getNumCollisionObjects(nativeId());
    }

    public int countSolvers() {
        return this.numSolvers;
    }

    public void create() {
        int ordinal = getBroadphaseType().ordinal();
        long nativeId = this.collisionConfiguration.nativeId();
        Vector3f vector3f = this.worldMin;
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        Vector3f vector3f2 = this.worldMax;
        initThread(createCollisionSpace(f10, f11, f12, vector3f2.f81611x, vector3f2.f81612y, vector3f2.f81613z, ordinal, nativeId));
        loggerC.log(Level.FINE, "Created {0}.", this);
    }

    public void destroy() {
        Iterator<PhysicsGhostObject> it = this.ghostMap.values().iterator();
        while (it.hasNext()) {
            removeGhostObject(it.next());
        }
    }

    public PhysicsSpace.BroadphaseType getBroadphaseType() {
        return this.broadphaseType;
    }

    public CollisionConfiguration getConfiguration() {
        return this.collisionConfiguration;
    }

    public Collection<PhysicsGhostObject> getGhostObjectList() {
        return Collections.unmodifiableCollection(this.ghostMap.values());
    }

    public Collection<PhysicsCollisionObject> getPcoList() {
        TreeSet treeSet = new TreeSet();
        treeSet.addAll(this.ghostMap.values());
        return treeSet;
    }

    public int getRayTestFlags() {
        return this.rayTestFlags;
    }

    public Vector3f getWorldMax(Vector3f vector3f) {
        return vector3f == null ? this.worldMax.m1292clone() : vector3f.set(this.worldMax);
    }

    public Vector3f getWorldMin(Vector3f vector3f) {
        return vector3f == null ? this.worldMin.m1292clone() : vector3f.set(this.worldMin);
    }

    public boolean hasClosest(CollisionShape collisionShape, CollisionShape collisionShape2) {
        return hasClosest(nativeId(), collisionShape.getShapeType(), collisionShape2.getShapeType());
    }

    public boolean hasContact(CollisionShape collisionShape, CollisionShape collisionShape2) {
        return hasContact(nativeId(), collisionShape.getShapeType(), collisionShape2.getShapeType());
    }

    public void initThread(long j10) {
        setNativeId(j10);
        physicsSpaceTL.set(this);
    }

    public boolean isEmpty() {
        return this.ghostMap.isEmpty();
    }

    public boolean isForceUpdateAllAabbs() {
        return isForceUpdateAllAabbs(nativeId());
    }

    public boolean isOverlapFilterEnabled() {
        return isOverlapFilterEnabled(nativeId());
    }

    public boolean isUsingDeterministicDispatch() {
        return getDeterministicOverlappingPairs(nativeId());
    }

    public long jniEnvId() {
        return getJniEnvId(nativeId());
    }

    public boolean needsCollision(PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2) {
        PhysicsCollisionGroupListener physicsCollisionGroupListener = this.cgListeners.get(Integer.valueOf(physicsCollisionObject.getCollisionGroup()));
        PhysicsCollisionGroupListener physicsCollisionGroupListener2 = this.cgListeners.get(Integer.valueOf(physicsCollisionObject2.getCollisionGroup()));
        boolean collide = physicsCollisionGroupListener != null ? physicsCollisionGroupListener.collide(physicsCollisionObject, physicsCollisionObject2) : true;
        if (physicsCollisionGroupListener2 == null || physicsCollisionObject.getCollisionGroup() == physicsCollisionObject2.getCollisionGroup()) {
            return collide;
        }
        return physicsCollisionGroupListener2.collide(physicsCollisionObject, physicsCollisionObject2) && collide;
    }

    public int pairTest(PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2, PhysicsCollisionListener physicsCollisionListener) {
        return pairTest(nativeId(), physicsCollisionObject.nativeId(), physicsCollisionObject2.nativeId(), physicsCollisionListener);
    }

    public List<PhysicsRayTestResult> rayTest(Vector3f vector3f, Vector3f vector3f2) {
        ArrayList arrayList = new ArrayList(10);
        rayTest(vector3f, vector3f2, arrayList);
        return arrayList;
    }

    public List<PhysicsRayTestResult> rayTestDp(Vec3d vec3d, Vec3d vec3d2, List<PhysicsRayTestResult> list) {
        list.clear();
        rayTestNativeDp(vec3d, vec3d2, nativeId(), list, this.rayTestFlags);
        list.sort(hitFractionComparator);
        return list;
    }

    public List<PhysicsRayTestResult> rayTestRaw(Vector3f vector3f, Vector3f vector3f2) {
        ArrayList arrayList = new ArrayList(10);
        rayTestRaw(vector3f, vector3f2, arrayList);
        return arrayList;
    }

    public void remove(Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof PhysicsCollisionObject) {
            removeCollisionObject((PhysicsCollisionObject) obj);
            return;
        }
        throw new IllegalArgumentException("Cannot remove a " + obj.getClass().getCanonicalName() + " from a collision space.");
    }

    public void removeCollisionGroupListener(int i10) {
        C13702E.H(Integer.bitCount(i10) == 1, "exactly one bit set");
        this.cgListeners.remove(Integer.valueOf(i10));
    }

    public void removeCollisionObject(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "collision object");
        if (physicsCollisionObject instanceof PhysicsGhostObject) {
            removeGhostObject((PhysicsGhostObject) physicsCollisionObject);
            return;
        }
        throw new IllegalArgumentException("Unknown type of collision object: " + physicsCollisionObject.getClass().getCanonicalName());
    }

    public void setForceUpdateAllAabbs(boolean z10) {
        setForceUpdateAllAabbs(nativeId(), z10);
    }

    public void setOverlapFilterEnabled(boolean z10) {
        setOverlapFilterEnabled(nativeId(), z10);
    }

    public void setRayTestFlags(int i10) {
        this.rayTestFlags = i10;
    }

    public List<PhysicsSweepTestResult> sweepTest(ConvexShape convexShape, Transform transform, Transform transform2) {
        LinkedList linkedList = new LinkedList();
        sweepTest(convexShape, transform, transform2, linkedList);
        return linkedList;
    }

    public void useDeterministicDispatch(boolean z10) {
        setDeterministicOverlappingPairs(nativeId(), z10);
    }

    public CollisionSpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType, int i10) {
        this(vector3f, vector3f2, broadphaseType, i10, new CollisionConfiguration());
    }

    public CollisionSpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType, int i10, CollisionConfiguration collisionConfiguration) {
        this.rayTestFlags = 4;
        this.cgListeners = new ConcurrentHashMap(20);
        this.ghostMap = new ConcurrentHashMap(64);
        Vector3f vector3f3 = new Vector3f(10000.0f, 10000.0f, 10000.0f);
        this.worldMax = vector3f3;
        Vector3f vector3f4 = new Vector3f(-10000.0f, -10000.0f, -10000.0f);
        this.worldMin = vector3f4;
        C13702E.d(vector3f, "world min");
        C13702E.d(vector3f2, "world max");
        C13702E.t(broadphaseType, "broadphase type");
        C13702E.i(i10, "number of solvers", 1, 64);
        C13702E.t(collisionConfiguration, "configuration");
        vector3f4.set(vector3f);
        vector3f3.set(vector3f2);
        this.broadphaseType = broadphaseType;
        this.numSolvers = i10;
        this.collisionConfiguration = collisionConfiguration;
        create();
    }

    public List<PhysicsRayTestResult> rayTest(Vector3f vector3f, Vector3f vector3f2, List<PhysicsRayTestResult> list) {
        list.clear();
        rayTestNative(vector3f, vector3f2, nativeId(), list, this.rayTestFlags);
        list.sort(hitFractionComparator);
        return list;
    }

    public List<PhysicsRayTestResult> rayTestRaw(Vector3f vector3f, Vector3f vector3f2, List<PhysicsRayTestResult> list) {
        list.clear();
        rayTestNative(vector3f, vector3f2, nativeId(), list, this.rayTestFlags);
        return list;
    }

    public List<PhysicsSweepTestResult> sweepTest(ConvexShape convexShape, Transform transform, Transform transform2, List<PhysicsSweepTestResult> list) {
        return sweepTest(convexShape, transform, transform2, list, 0.0f);
    }

    public List<PhysicsSweepTestResult> sweepTest(ConvexShape convexShape, Transform transform, Transform transform2, List<PhysicsSweepTestResult> list, float f10) {
        C13702E.t(transform, "start");
        C13702E.t(transform2, "end");
        C13702E.t(list, "results");
        long nativeId = convexShape.nativeId();
        long nativeId2 = nativeId();
        list.clear();
        sweepTestNative(nativeId, transform, transform2, nativeId2, list, f10);
        return list;
    }
}
