package com.jme3.bullet;

import G0.E;
import com.jme3.app.AppTask;
import com.jme3.bullet.collision.ContactListener;
import com.jme3.bullet.collision.PhysicsCollisionListener;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.control.PhysicsControl;
import com.jme3.bullet.joints.Constraint;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.objects.PhysicsBody;
import com.jme3.bullet.objects.PhysicsCharacter;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsVehicle;
import com.jme3.bullet.util.NativeLibrary;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.util.SafeArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class PhysicsSpace extends CollisionSpace implements ContactListener {
    static final boolean $assertionsDisabled = false;
    public static final int AXIS_X = 0;
    public static final int AXIS_Y = 1;
    public static final int AXIS_Z = 2;
    public static final Logger logger = Logger.getLogger(PhysicsSpace.class.getName());
    protected static final ThreadLocal<Queue<AppTask<?>>> pQueueTL = new ThreadLocal<Queue<AppTask<?>>>() {
        @Override
        public Queue<AppTask<?>> initialValue() {
            return new ConcurrentLinkedQueue();
        }
    };
    private float accuracy;
    private final Map<Long, PhysicsCharacter> characterMap;
    private final Vector3f gravity;
    private final Map<Long, PhysicsJoint> jointMap;
    private ContactManager manager;
    private int maxSubSteps;
    private float maxTimeStep;
    private final Queue<AppTask<?>> pQueue;
    private final Map<Long, PhysicsRigidBody> rigidMap;
    private SolverInfo solverInfo;
    private SolverType solverType;
    private final Collection<PhysicsTickListener> tickListeners;
    private final Map<Long, PhysicsVehicle> vehicleMap;

    public enum BroadphaseType {
        SIMPLE,
        AXIS_SWEEP_3,
        AXIS_SWEEP_3_32,
        DBVT
    }

    public PhysicsSpace(BroadphaseType broadphaseType) {
        this(new Vector3f(-10000.0f, -10000.0f, -10000.0f), new Vector3f(10000.0f, 10000.0f, 10000.0f), broadphaseType);
    }

    private static native void addAction(long j10, long j11);

    private void addCharacter(PhysicsCharacter physicsCharacter) {
        if (contains(physicsCharacter)) {
            logger.log(Level.WARNING, "{0} is already added to {1}.", new Object[]{physicsCharacter, this});
            return;
        }
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Adding {0} to {1}.", new Object[]{physicsCharacter, this});
        }
        long nativeId = physicsCharacter.nativeId();
        this.characterMap.put(Long.valueOf(nativeId), physicsCharacter);
        long nativeId2 = nativeId();
        addCharacterObject(nativeId2, nativeId);
        addAction(nativeId2, physicsCharacter.getControllerId());
    }

    private static native void addCharacterObject(long j10, long j11);

    private static native void addConstraintC(long j10, long j11, boolean z10);

    private static native void addRigidBody(long j10, long j11, int i10, int i11);

    private void addRigidBody(PhysicsRigidBody physicsRigidBody) {
        if (contains(physicsRigidBody)) {
            logger.log(Level.WARNING, "{0} is already added to {1}.", new Object[]{physicsRigidBody, this});
            return;
        }
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Adding {0} to {1}.", new Object[]{physicsRigidBody, this});
        }
        long nativeId = physicsRigidBody.nativeId();
        this.rigidMap.put(Long.valueOf(nativeId), physicsRigidBody);
        boolean z10 = false;
        if (physicsRigidBody.isKinematic()) {
            physicsRigidBody.setKinematic(false);
            z10 = true;
        }
        boolean isStatic = physicsRigidBody.isStatic();
        int i10 = isStatic ? 2 : 1;
        int i11 = isStatic ? -3 : -1;
        long nativeId2 = nativeId();
        addRigidBody(nativeId2, nativeId, i10, i11);
        if (z10) {
            physicsRigidBody.setKinematic(true);
        }
        if (physicsRigidBody instanceof PhysicsVehicle) {
            PhysicsVehicle physicsVehicle = (PhysicsVehicle) physicsRigidBody;
            if (logger2.isLoggable(level)) {
                logger2.log(level, "Adding action for {0} to {1}.", new Object[]{physicsVehicle, this});
            }
            physicsVehicle.createVehicle(this);
            long vehicleId = physicsVehicle.getVehicleId();
            this.vehicleMap.put(Long.valueOf(vehicleId), physicsVehicle);
            addAction(nativeId2, vehicleId);
        }
    }

    private boolean checkGravity(Vector3f vector3f) {
        getGravity(nativeId(), vector3f);
        return this.gravity.equals(vector3f);
    }

    private static native void clearForces(long j10);

    private static native int countManifolds(long j10);

    private native long createPhysicsSpace(Vector3f vector3f, Vector3f vector3f2, int i10, int i11, long j10);

    public static <V> Future<V> enqueueOnThisThread(Callable<V> callable) {
        AppTask<?> appTask = new AppTask<>(callable);
        pQueueTL.get().add(appTask);
        return appTask;
    }

    private static native void getGravity(long j10, Vector3f vector3f);

    private static native long getManifoldByIndex(long j10, int i10);

    private static native int getNumConstraints(long j10);

    public static PhysicsSpace getPhysicsSpace() {
        return (PhysicsSpace) CollisionSpace.getCollisionSpace();
    }

    private static native long getSolverInfo(long j10);

    public static native int getWorldType(long j10);

    private static native boolean isCcdWithStaticOnly(long j10);

    private static native boolean isSpeculativeContactRestitution(long j10);

    private void postTick(float f10) {
        Iterator<PhysicsTickListener> it = this.tickListeners.iterator();
        while (it.hasNext()) {
            it.next().physicsTick(this, f10);
        }
    }

    private void preTick(float f10) {
        while (true) {
            AppTask<?> poll = this.pQueue.poll();
            if (poll == null) {
                poll = pQueueTL.get().poll();
            }
            if (poll == null) {
                break;
            }
            if (!poll.isCancelled()) {
                try {
                    poll.invoke();
                } catch (RuntimeException e10) {
                    logger.log(Level.SEVERE, (String) null, (Throwable) e10);
                }
            }
        }
        Iterator<PhysicsTickListener> it = this.tickListeners.iterator();
        while (it.hasNext()) {
            it.next().prePhysicsTick(this, f10);
        }
    }

    private static native void removeAction(long j10, long j11);

    private void removeCharacter(PhysicsCharacter physicsCharacter) {
        long nativeId = physicsCharacter.nativeId();
        if (!this.characterMap.containsKey(Long.valueOf(nativeId))) {
            logger.log(Level.WARNING, "{0} does not exist in {1}.", new Object[]{physicsCharacter, this});
            return;
        }
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Removing {0} from {1}.", new Object[]{physicsCharacter, this});
        }
        this.characterMap.remove(Long.valueOf(nativeId));
        long nativeId2 = nativeId();
        removeAction(nativeId2, physicsCharacter.getControllerId());
        removeCharacterObject(nativeId2, nativeId);
    }

    private static native void removeCharacterObject(long j10, long j11);

    private static native void removeConstraint(long j10, long j11);

    private static native void removeRigidBody(long j10, long j11);

    private void removeRigidBody(PhysicsRigidBody physicsRigidBody) {
        long nativeId = physicsRigidBody.nativeId();
        if (!this.rigidMap.containsKey(Long.valueOf(nativeId))) {
            logger.log(Level.WARNING, "{0} does not exist in {1}.", new Object[]{physicsRigidBody, this});
            return;
        }
        long nativeId2 = nativeId();
        if (physicsRigidBody instanceof PhysicsVehicle) {
            PhysicsVehicle physicsVehicle = (PhysicsVehicle) physicsRigidBody;
            Logger logger2 = logger;
            Level level = Level.FINE;
            if (logger2.isLoggable(level)) {
                logger2.log(level, "Removing action for {0} from {1}.", new Object[]{physicsVehicle, this});
            }
            long vehicleId = physicsVehicle.getVehicleId();
            this.vehicleMap.remove(Long.valueOf(vehicleId));
            removeAction(nativeId2, vehicleId);
        }
        Logger logger3 = logger;
        Level level2 = Level.FINE;
        if (logger3.isLoggable(level2)) {
            logger3.log(level2, "Removing {0} from {1}.", new Object[]{physicsRigidBody, this});
        }
        this.rigidMap.remove(Long.valueOf(nativeId));
        removeRigidBody(nativeId2, nativeId);
    }

    private static native void setCcdWithStaticOnly(long j10, boolean z10);

    private static native void setGravity(long j10, Vector3f vector3f);

    private static native void setSolverType(long j10, int i10);

    private static native void setSpeculativeContactRestitution(long j10, boolean z10);

    private static native void stepSimulation(long j10, float f10, int i10, float f11, int i11);

    public void activateAll(boolean z10) {
        Iterator<PhysicsRigidBody> it = this.rigidMap.values().iterator();
        while (it.hasNext()) {
            it.next().activate(z10);
        }
    }

    @Override
    public void add(Object obj) {
        C13702E.t(obj, "object");
        if (obj instanceof PhysicsControl) {
            ((PhysicsControl) obj).setPhysicsSpace(this);
            return;
        }
        if (!(obj instanceof Spatial)) {
            if (obj instanceof PhysicsJoint) {
                addJoint((PhysicsJoint) obj);
                return;
            } else {
                super.add(obj);
                return;
            }
        }
        Spatial spatial = (Spatial) obj;
        for (int i10 = 0; i10 < spatial.getNumControls(); i10++) {
            if (spatial.getControl(i10) instanceof PhysicsControl) {
                add(spatial.getControl(i10));
            }
        }
    }

    public void addAll(Spatial spatial) {
        add(spatial);
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                addAll(it.next());
            }
        }
    }

    public void addCollisionListener(PhysicsCollisionListener physicsCollisionListener) {
        C13702E.t(physicsCollisionListener, E.a.f7280a);
        this.manager.addCollisionListener(physicsCollisionListener);
    }

    @Override
    public void addCollisionObject(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "collision object");
        if (physicsCollisionObject instanceof PhysicsRigidBody) {
            addRigidBody((PhysicsRigidBody) physicsCollisionObject);
        } else if (physicsCollisionObject instanceof PhysicsCharacter) {
            addCharacter((PhysicsCharacter) physicsCollisionObject);
        } else {
            super.addCollisionObject(physicsCollisionObject);
        }
    }

    public void addContactListener(ContactListener contactListener) {
        C13702E.t(contactListener, E.a.f7280a);
        this.manager.addContactListener(contactListener, 15);
    }

    public void addJoint(PhysicsJoint physicsJoint) {
        C13702E.t(physicsJoint, "joint");
        if (contains(physicsJoint)) {
            logger.log(Level.WARNING, "{0} is already added to {1}.", new Object[]{physicsJoint, this});
            return;
        }
        PhysicsBody bodyA = physicsJoint.getBodyA();
        if (bodyA != null && !contains(bodyA)) {
            logger.log(Level.WARNING, "{0} at the A end of {1} has not yet been added to {2}.", new Object[]{bodyA, physicsJoint, this});
        }
        PhysicsBody bodyB = physicsJoint.getBodyB();
        if (bodyB != null && !contains(bodyB)) {
            logger.log(Level.WARNING, "{0} at the B end of {1} has not yet been added to {2}.", new Object[]{bodyB, physicsJoint, this});
        }
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Adding {0} to {1}.", new Object[]{physicsJoint, this});
        }
        long nativeId = physicsJoint.nativeId();
        this.jointMap.put(Long.valueOf(nativeId), physicsJoint);
        physicsJoint.setPhysicsSpace(this);
        if (physicsJoint instanceof Constraint) {
            addConstraintC(nativeId(), nativeId, false);
        }
    }

    public void addOngoingCollisionListener(PhysicsCollisionListener physicsCollisionListener) {
        C13702E.t(physicsCollisionListener, E.a.f7280a);
        this.manager.addOngoingCollisionListener(physicsCollisionListener);
    }

    public void addTickListener(PhysicsTickListener physicsTickListener) {
        C13702E.t(physicsTickListener, E.a.f7280a);
        this.tickListeners.add(physicsTickListener);
    }

    public void clearForces() {
        clearForces(nativeId());
    }

    public boolean contains(PhysicsJoint physicsJoint) {
        return this.jointMap.containsKey(Long.valueOf(physicsJoint.nativeId()));
    }

    public int countCollisionListeners() {
        return this.manager.countCollisionListeners();
    }

    public int countJoints() {
        return getNumConstraints(nativeId());
    }

    public int countManifolds() {
        return countManifolds(nativeId());
    }

    public int countRigidBodies() {
        return this.rigidMap.size();
    }

    public int countTickListeners() {
        return this.tickListeners.size();
    }

    @Override
    public void create() {
        int ordinal = getBroadphaseType().ordinal();
        initThread(createPhysicsSpace(getWorldMin(null), getWorldMax(null), ordinal, countSolvers(), getConfiguration().nativeId()));
        initSolverInfo();
        logger.log(Level.FINE, "Created {0}.", this);
    }

    @Override
    public void destroy() {
        super.destroy();
        Iterator<PhysicsCharacter> it = this.characterMap.values().iterator();
        while (it.hasNext()) {
            removeCharacter(it.next());
        }
        Iterator<PhysicsJoint> it2 = this.jointMap.values().iterator();
        while (it2.hasNext()) {
            removeJoint(it2.next());
        }
        Iterator<PhysicsRigidBody> it3 = this.rigidMap.values().iterator();
        while (it3.hasNext()) {
            removeRigidBody(it3.next());
        }
    }

    public void distributeEvents() {
        this.manager.distributeEvents();
    }

    public <V> Future<V> enqueue(Callable<V> callable) {
        AppTask<?> appTask = new AppTask<>(callable);
        this.pQueue.add(appTask);
        return appTask;
    }

    public float getAccuracy() {
        return this.accuracy;
    }

    public Collection<PhysicsCharacter> getCharacterList() {
        return Collections.unmodifiableCollection(this.characterMap.values());
    }

    public ContactManager getContactManager() {
        return this.manager;
    }

    public Vector3f getGravity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.gravity);
        return vector3f;
    }

    public Collection<PhysicsJoint> getJointList() {
        return Collections.unmodifiableCollection(this.jointMap.values());
    }

    public Map<Long, PhysicsJoint> getJointMap() {
        return this.jointMap;
    }

    @Override
    public Collection<PhysicsCollisionObject> getPcoList() {
        Collection<PhysicsCollisionObject> pcoList = super.getPcoList();
        pcoList.addAll(this.rigidMap.values());
        pcoList.addAll(this.characterMap.values());
        return pcoList;
    }

    public Collection<PhysicsRigidBody> getRigidBodyList() {
        return Collections.unmodifiableCollection(this.rigidMap.values());
    }

    public SolverInfo getSolverInfo() {
        return this.solverInfo;
    }

    public int getSolverNumIterations() {
        return this.solverInfo.numIterations();
    }

    public SolverType getSolverType() {
        return this.solverType;
    }

    public Collection<PhysicsVehicle> getVehicleList() {
        return Collections.unmodifiableCollection(this.vehicleMap.values());
    }

    public void initSolverInfo() {
        this.solverInfo = new SolverInfo(getSolverInfo(nativeId()));
    }

    public boolean isCcdWithStaticOnly() {
        return isCcdWithStaticOnly(nativeId());
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty() && this.characterMap.isEmpty() && this.rigidMap.isEmpty() && this.jointMap.isEmpty();
    }

    public boolean isUsingScr() {
        return isSpeculativeContactRestitution(nativeId());
    }

    public long[] listManifoldIds() {
        long nativeId = nativeId();
        int countManifolds = countManifolds(nativeId);
        long[] jArr = new long[countManifolds];
        for (int i10 = 0; i10 < countManifolds; i10++) {
            jArr[i10] = getManifoldByIndex(nativeId, i10);
        }
        return jArr;
    }

    public int maxSubSteps() {
        return this.maxSubSteps;
    }

    public float maxTimeStep() {
        return this.maxTimeStep;
    }

    @Override
    public boolean onContactConceived(long j10, long j11, PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2) {
        return this.manager.onContactConceived(j10, j11, physicsCollisionObject, physicsCollisionObject2);
    }

    @Override
    public void onContactEnded(long j10) {
        this.manager.onContactEnded(j10);
    }

    @Override
    public void onContactProcessed(PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2, long j10) {
        this.manager.onContactProcessed(physicsCollisionObject, physicsCollisionObject2, j10);
    }

    @Override
    public void onContactStarted(long j10) {
        this.manager.onContactStarted(j10);
    }

    @Override
    public void remove(Object obj) {
        if (obj instanceof PhysicsControl) {
            ((PhysicsControl) obj).setPhysicsSpace(null);
            return;
        }
        if (!(obj instanceof Spatial)) {
            if (obj instanceof PhysicsJoint) {
                removeJoint((PhysicsJoint) obj);
                return;
            } else {
                super.remove(obj);
                return;
            }
        }
        Spatial spatial = (Spatial) obj;
        for (int i10 = 0; i10 < spatial.getNumControls(); i10++) {
            if (spatial.getControl(i10) instanceof PhysicsControl) {
                remove(spatial.getControl(i10));
            }
        }
    }

    public void removeAll(Spatial spatial) {
        remove(spatial);
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                removeAll(it.next());
            }
        }
    }

    public void removeCollisionListener(PhysicsCollisionListener physicsCollisionListener) {
        C13702E.t(physicsCollisionListener, E.a.f7280a);
        this.manager.removeCollisionListener(physicsCollisionListener);
    }

    @Override
    public void removeCollisionObject(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "collision object");
        if (physicsCollisionObject instanceof PhysicsRigidBody) {
            removeRigidBody((PhysicsRigidBody) physicsCollisionObject);
        } else if (physicsCollisionObject instanceof PhysicsCharacter) {
            removeCharacter((PhysicsCharacter) physicsCollisionObject);
        } else {
            super.removeCollisionObject(physicsCollisionObject);
        }
    }

    public void removeContactListener(ContactListener contactListener) {
        C13702E.t(contactListener, E.a.f7280a);
        this.manager.removeContactListener(contactListener);
    }

    public void removeJoint(PhysicsJoint physicsJoint) {
        C13702E.t(physicsJoint, "joint");
        long nativeId = physicsJoint.nativeId();
        if (!this.jointMap.containsKey(Long.valueOf(nativeId))) {
            logger.log(Level.WARNING, "{0} does not exist in {1}.", new Object[]{physicsJoint, this});
            return;
        }
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Removing {0} from {1}.", new Object[]{physicsJoint, this});
        }
        this.jointMap.remove(Long.valueOf(nativeId));
        physicsJoint.setPhysicsSpace(null);
        if (physicsJoint instanceof Constraint) {
            removeConstraint(nativeId(), nativeId);
        }
    }

    public void removeOngoingCollisionListener(PhysicsCollisionListener physicsCollisionListener) {
        C13702E.t(physicsCollisionListener, E.a.f7280a);
        this.manager.removeOngoingCollisionListener(physicsCollisionListener);
    }

    public void removeTickListener(PhysicsTickListener physicsTickListener) {
        C13702E.t(physicsTickListener, E.a.f7280a);
        this.tickListeners.remove(physicsTickListener);
    }

    public void setAccuracy(float f10) {
        C13702E.E(f10, "accuracy");
        this.accuracy = f10;
    }

    public void setCcdWithStaticOnly(boolean z10) {
        setCcdWithStaticOnly(nativeId(), z10);
    }

    public void setContactManager(ContactManager contactManager) {
        C13702E.t(contactManager, "manager");
        this.manager = contactManager;
    }

    public void setGravity(Vector3f vector3f) {
        this.gravity.set(vector3f);
        setGravity(nativeId(), vector3f);
    }

    public void setMaxSubSteps(int i10) {
        C13702E.q(i10, "steps");
        this.maxSubSteps = i10;
    }

    public void setMaxTimeStep(float f10) {
        C13702E.E(f10, "max time step");
        this.maxTimeStep = f10;
    }

    public void setSolverNumIterations(int i10) {
        C13702E.F(i10, "number of iterations");
        this.solverInfo.setNumIterations(i10);
    }

    public void update(float f10) {
        if (this.maxSubSteps == 0) {
            f10 = Math.min(f10, this.maxTimeStep);
        }
        update(f10, this.maxSubSteps);
    }

    public void updateSolver() {
        setSolverType(nativeId(), this.solverType.ordinal());
    }

    public void useScr(boolean z10) {
        setSpeculativeContactRestitution(nativeId(), z10);
    }

    public PhysicsSpace(Vector3f vector3f, Vector3f vector3f2) {
        this(vector3f, vector3f2, BroadphaseType.AXIS_SWEEP_3);
    }

    public PhysicsSpace(Vector3f vector3f, Vector3f vector3f2, BroadphaseType broadphaseType) {
        super(vector3f, vector3f2, broadphaseType, NativeLibrary.countThreads());
        this.tickListeners = new SafeArrayList(PhysicsTickListener.class);
        this.accuracy = 0.016666668f;
        this.maxTimeStep = 0.1f;
        this.manager = new DefaultContactManager(this);
        this.maxSubSteps = 4;
        this.characterMap = new ConcurrentHashMap(64);
        this.jointMap = new ConcurrentHashMap(64);
        this.rigidMap = new ConcurrentHashMap(64);
        this.vehicleMap = new ConcurrentHashMap(64);
        this.pQueue = new ConcurrentLinkedQueue();
        this.solverType = SolverType.SI;
        this.gravity = new Vector3f(0.0f, -9.81f, 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addContactListener(ContactListener contactListener, boolean z10, boolean z11, boolean z12) {
        C13702E.t(contactListener, E.a.f7280a);
        int i10 = z10;
        if (z11) {
            i10 = (z10 ? 1 : 0) | 2;
        }
        if (z12) {
            i10 = (i10 == true ? 1 : 0) | 4;
        }
        this.manager.addContactListener(contactListener, i10);
    }

    @Override
    public boolean contains(PhysicsCollisionObject physicsCollisionObject) {
        long nativeId = physicsCollisionObject.nativeId();
        if (physicsCollisionObject instanceof PhysicsRigidBody) {
            return this.rigidMap.containsKey(Long.valueOf(nativeId));
        }
        if (physicsCollisionObject instanceof PhysicsCharacter) {
            return this.characterMap.containsKey(Long.valueOf(nativeId));
        }
        return super.contains(physicsCollisionObject);
    }

    public void update(float f10, int i10) {
        this.manager.update(f10, i10, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(float f10, int i10, boolean z10, boolean z11, boolean z12) {
        int i11;
        if (z11) {
            i11 = (z10 ? 1 : 0) | 2;
        }
        if (z12) {
            i11 = (i11 == true ? 1 : 0) | 4;
        }
        this.manager.update(f10, i10, i11);
    }

    public void update(float f10, int i10, int i11) {
        if (NativeLibrary.jniEnvId() != jniEnvId()) {
            logger.log(Level.WARNING, "invoked from wrong thread");
        }
        stepSimulation(nativeId(), f10, i10, this.accuracy, i11);
    }

    public PhysicsSpace(Vector3f vector3f, Vector3f vector3f2, BroadphaseType broadphaseType, int i10) {
        super(vector3f, vector3f2, broadphaseType, i10);
        this.tickListeners = new SafeArrayList(PhysicsTickListener.class);
        this.accuracy = 0.016666668f;
        this.maxTimeStep = 0.1f;
        this.manager = new DefaultContactManager(this);
        this.maxSubSteps = 4;
        this.characterMap = new ConcurrentHashMap(64);
        this.jointMap = new ConcurrentHashMap(64);
        this.rigidMap = new ConcurrentHashMap(64);
        this.vehicleMap = new ConcurrentHashMap(64);
        this.pQueue = new ConcurrentLinkedQueue();
        this.solverType = SolverType.SI;
        this.gravity = new Vector3f(0.0f, -9.81f, 0.0f);
    }

    public PhysicsSpace(Vector3f vector3f, Vector3f vector3f2, BroadphaseType broadphaseType, int i10, CollisionConfiguration collisionConfiguration) {
        super(vector3f, vector3f2, broadphaseType, i10, collisionConfiguration);
        this.tickListeners = new SafeArrayList(PhysicsTickListener.class);
        this.accuracy = 0.016666668f;
        this.maxTimeStep = 0.1f;
        this.manager = new DefaultContactManager(this);
        this.maxSubSteps = 4;
        this.characterMap = new ConcurrentHashMap(64);
        this.jointMap = new ConcurrentHashMap(64);
        this.rigidMap = new ConcurrentHashMap(64);
        this.vehicleMap = new ConcurrentHashMap(64);
        this.pQueue = new ConcurrentLinkedQueue();
        this.solverType = SolverType.SI;
        this.gravity = new Vector3f(0.0f, -9.81f, 0.0f);
    }

    public PhysicsSpace(Vector3f vector3f, Vector3f vector3f2, BroadphaseType broadphaseType, SolverType solverType) {
        this(vector3f, vector3f2, broadphaseType, solverType, new CollisionConfiguration());
    }

    public PhysicsSpace(Vector3f vector3f, Vector3f vector3f2, BroadphaseType broadphaseType, SolverType solverType, CollisionConfiguration collisionConfiguration) {
        super(vector3f, vector3f2, broadphaseType, 1, collisionConfiguration);
        this.tickListeners = new SafeArrayList(PhysicsTickListener.class);
        this.accuracy = 0.016666668f;
        this.maxTimeStep = 0.1f;
        this.manager = new DefaultContactManager(this);
        this.maxSubSteps = 4;
        this.characterMap = new ConcurrentHashMap(64);
        this.jointMap = new ConcurrentHashMap(64);
        this.rigidMap = new ConcurrentHashMap(64);
        this.vehicleMap = new ConcurrentHashMap(64);
        this.pQueue = new ConcurrentLinkedQueue();
        this.solverType = SolverType.SI;
        this.gravity = new Vector3f(0.0f, -9.81f, 0.0f);
        C13702E.t(solverType, "solver type");
        if (this.solverType != solverType) {
            this.solverType = solverType;
            updateSolver();
        }
    }
}
