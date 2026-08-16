package com.jme3.bullet;

import com.jme3.app.Application;
import com.jme3.app.state.AbstractAppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.debug.DebugConfiguration;
import com.jme3.bullet.debug.DebugInitListener;
import com.jme3.bullet.util.NativeLibrary;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Spatial;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class BulletAppState extends AbstractAppState implements PhysicsTickListener {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(BulletAppState.class.getName());
    private PhysicsSpace.BroadphaseType broadphaseType;
    private CollisionConfiguration collisionConfiguration;
    private BulletDebugAppState debugAppState;
    private final DebugConfiguration debugConfig;
    private ScheduledThreadPoolExecutor executor;
    private volatile boolean isRunning;
    private int numSolvers;
    private final Callable<Boolean> parallelPhysicsUpdate;
    private Future physicsFuture;
    private SolverType solverType;
    private float speed;
    private AppStateManager stateManager;
    private ThreadingType threadingType;
    private float tpf;
    private final Vector3f worldMax;
    private final Vector3f worldMin;

    public enum ThreadingType {
        SEQUENTIAL,
        PARALLEL
    }

    public BulletAppState() {
        this.isRunning = false;
        this.broadphaseType = PhysicsSpace.BroadphaseType.DBVT;
        this.parallelPhysicsUpdate = new Callable<Boolean>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Boolean call() throws Exception {
                BulletAppState.this.debugConfig.getSpace().update(BulletAppState.this.isEnabled() ? BulletAppState.this.tpf * BulletAppState.this.speed : 0.0f);
                return Boolean.TRUE;
            }
        };
        this.collisionConfiguration = new CollisionConfiguration();
        this.debugConfig = new DebugConfiguration();
        this.speed = 1.0f;
        this.numSolvers = NativeLibrary.countThreads();
        this.solverType = SolverType.SI;
        this.threadingType = ThreadingType.SEQUENTIAL;
        this.worldMax = new Vector3f(10000.0f, 10000.0f, 10000.0f);
        this.worldMin = new Vector3f(-10000.0f, -10000.0f, -10000.0f);
    }

    @Override
    public void cleanup() {
        super.cleanup();
        BulletDebugAppState bulletDebugAppState = this.debugAppState;
        if (bulletDebugAppState != null) {
            this.stateManager.detach(bulletDebugAppState);
            this.debugAppState = null;
        }
        stopPhysics();
    }

    public int countSolvers() {
        return this.numSolvers;
    }

    public BulletDebugAppState createDebugAppState() {
        return new BulletDebugAppState(this.debugConfig);
    }

    public PhysicsSpace createPhysicsSpace(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType) {
        if (this.solverType == SolverType.SI) {
            return new PhysicsSpace(vector3f, vector3f2, broadphaseType, this.numSolvers, this.collisionConfiguration);
        }
        int i10 = this.numSolvers;
        if (i10 == 1) {
            return new PhysicsSpace(vector3f, vector3f2, broadphaseType, this.solverType, this.collisionConfiguration);
        }
        throw new IllegalArgumentException(String.format("num=%d, type=%s", Integer.valueOf(i10), this.solverType));
    }

    public float debugAxisLength() {
        return this.debugConfig.axisArrowLength();
    }

    public float debugAxisLineWidth() {
        return this.debugConfig.axisLineWidth();
    }

    public PhysicsSpace.BroadphaseType getBroadphaseType() {
        return this.broadphaseType;
    }

    public CollisionConfiguration getCollisionConfiguration() {
        return this.collisionConfiguration;
    }

    public BulletDebugAppState getDebugAppState() {
        return this.debugAppState;
    }

    public Camera getDebugCamera() {
        return this.debugConfig.getCamera();
    }

    public DebugConfiguration getDebugConfiguration() {
        return this.debugConfig;
    }

    public PhysicsSpace getPhysicsSpace() {
        return this.debugConfig.getSpace();
    }

    public SolverType getSolverType() {
        return this.solverType;
    }

    public float getSpeed() {
        return this.speed;
    }

    public ThreadingType getThreadingType() {
        return this.threadingType;
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        super.initialize(appStateManager, application);
        this.debugConfig.initialize(application);
        startPhysics();
    }

    public boolean isDebugEnabled() {
        return this.debugConfig.isEnabled();
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    @Override
    public void physicsTick(PhysicsSpace physicsSpace, float f10) {
    }

    @Override
    public void postRender() {
        super.postRender();
        Future future = this.physicsFuture;
        if (future != null) {
            try {
                future.get();
                this.physicsFuture = null;
            } catch (InterruptedException | ExecutionException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    @Override
    public void prePhysicsTick(PhysicsSpace physicsSpace, float f10) {
    }

    @Override
    public void render(RenderManager renderManager) {
        super.render(renderManager);
        ThreadingType threadingType = this.threadingType;
        if (threadingType == ThreadingType.PARALLEL) {
            this.physicsFuture = this.executor.submit(this.parallelPhysicsUpdate);
        } else if (threadingType == ThreadingType.SEQUENTIAL) {
            this.debugConfig.getSpace().update(isEnabled() ? this.tpf * this.speed : 0.0f);
        }
    }

    public void setBroadphaseType(PhysicsSpace.BroadphaseType broadphaseType) {
        C13702E.t(broadphaseType, "broadphase type");
        this.broadphaseType = broadphaseType;
    }

    public void setCollisionConfiguration(CollisionConfiguration collisionConfiguration) {
        C13702E.t(collisionConfiguration, "configuration");
        this.collisionConfiguration = collisionConfiguration;
    }

    public void setDebugAngularVelocityFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        BulletDebugAppState bulletDebugAppState = this.debugAppState;
        if (bulletDebugAppState == null) {
            this.debugConfig.setAngularVelocityFilter(debugAppStateFilter);
        } else {
            bulletDebugAppState.setAngularVelocityFilter(debugAppStateFilter);
        }
    }

    public void setDebugAxisLength(float f10) {
        C13702E.p(f10, "length");
        this.debugConfig.setAxisArrowLength(f10);
    }

    public void setDebugAxisLineWidth(float f10) {
        C13702E.h(f10, "width", 0.0f, Float.MAX_VALUE);
        this.debugConfig.setAxisLineWidth(f10);
    }

    public void setDebugBoundingBoxFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        BulletDebugAppState bulletDebugAppState = this.debugAppState;
        if (bulletDebugAppState == null) {
            this.debugConfig.setBoundingBoxFilter(debugAppStateFilter);
        } else {
            bulletDebugAppState.setBoundingBoxFilter(debugAppStateFilter);
        }
    }

    public void setDebugCamera(Camera camera) {
        this.debugConfig.setCamera(camera);
    }

    public void setDebugEnabled(boolean z10) {
        this.debugConfig.setEnabled(z10);
    }

    public void setDebugFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        this.debugConfig.setFilter(debugAppStateFilter);
    }

    public void setDebugGravityVectorFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        BulletDebugAppState bulletDebugAppState = this.debugAppState;
        if (bulletDebugAppState == null) {
            this.debugConfig.setGravityVectorFilter(debugAppStateFilter);
        } else {
            bulletDebugAppState.setGravityVectorFilter(debugAppStateFilter);
        }
    }

    public void setDebugInitListener(DebugInitListener debugInitListener) {
        this.debugConfig.setInitListener(debugInitListener);
    }

    public void setDebugJointLineWidth(float f10) {
        C13702E.h(f10, "width", 1.0f, Float.MAX_VALUE);
        BulletDebugAppState bulletDebugAppState = this.debugAppState;
        if (bulletDebugAppState == null) {
            this.debugConfig.setJointLineWidth(f10);
        } else {
            bulletDebugAppState.setJointLineWidth(f10);
        }
    }

    public void setDebugShadowMode(RenderQueue.ShadowMode shadowMode) {
        C13702E.t(shadowMode, "mode");
        BulletDebugAppState bulletDebugAppState = this.debugAppState;
        if (bulletDebugAppState != null) {
            bulletDebugAppState.getRootNode().setShadowMode(shadowMode);
        }
        this.debugConfig.setShadowMode(shadowMode);
    }

    public void setDebugSweptSphereFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        BulletDebugAppState bulletDebugAppState = this.debugAppState;
        if (bulletDebugAppState == null) {
            this.debugConfig.setSweptSphereFilter(debugAppStateFilter);
        } else {
            bulletDebugAppState.setSweptSphereFilter(debugAppStateFilter);
        }
    }

    public void setDebugVelocityVectorFilter(BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        BulletDebugAppState bulletDebugAppState = this.debugAppState;
        if (bulletDebugAppState == null) {
            this.debugConfig.setVelocityVectorFilter(debugAppStateFilter);
        } else {
            bulletDebugAppState.setVelocityVectorFilter(debugAppStateFilter);
        }
    }

    public void setDebugViewPorts(ViewPort... viewPortArr) {
        C13702E.t(viewPortArr, "view ports");
        this.debugConfig.setViewPorts(viewPortArr);
    }

    public void setNumSolvers(int i10) {
        C13702E.i(i10, "number of solvers", 1, 64);
        this.numSolvers = i10;
    }

    public void setPhysicsSpace(PhysicsSpace physicsSpace) {
        this.debugConfig.setSpace(physicsSpace);
    }

    public void setRunning(boolean z10) {
        this.isRunning = z10;
    }

    public void setSolverType(SolverType solverType) {
        C13702E.t(solverType, "solver");
        this.solverType = solverType;
    }

    public void setSpeed(float f10) {
        C13702E.p(f10, "speed");
        this.speed = f10;
    }

    public void setThreadingType(ThreadingType threadingType) {
        this.threadingType = threadingType;
    }

    public void setTransformSpatial(Spatial spatial) {
        this.debugConfig.setTransformSpatial(spatial);
    }

    public void setWorldMax(Vector3f vector3f) {
        C13702E.d(this.worldMin, "world max");
        this.worldMax.set(vector3f);
    }

    public void setWorldMin(Vector3f vector3f) {
        C13702E.d(vector3f, "world min");
        this.worldMin.set(vector3f);
    }

    public void startPhysics() {
        if (this.isRunning) {
            return;
        }
        int ordinal = this.threadingType.ordinal();
        if (ordinal == 0) {
            PhysicsSpace createPhysicsSpace = createPhysicsSpace(this.worldMin, this.worldMax, this.broadphaseType);
            this.debugConfig.setSpace(createPhysicsSpace);
            createPhysicsSpace.addTickListener(this);
        } else {
            if (ordinal != 1) {
                throw new IllegalStateException(this.threadingType.toString());
            }
            startPhysicsOnExecutor();
            this.debugConfig.getSpace();
        }
        setRunning(true);
    }

    public boolean startPhysicsOnExecutor() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.executor;
        if (scheduledThreadPoolExecutor != null) {
            scheduledThreadPoolExecutor.shutdown();
        }
        this.executor = new ScheduledThreadPoolExecutor(1);
        try {
            return ((Boolean) this.executor.submit(new Callable<Boolean>(this) {
                final BulletAppState this$0;

                {
                    this.this$0 = this;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Boolean call() throws Exception {
                    BulletAppState bulletAppState = this.this$0;
                    PhysicsSpace createPhysicsSpace = bulletAppState.createPhysicsSpace(bulletAppState.worldMin, this.this$0.worldMax, this.this$0.broadphaseType);
                    this.this$0.debugConfig.setSpace(createPhysicsSpace);
                    createPhysicsSpace.addTickListener(this);
                    return Boolean.TRUE;
                }
            }).get()).booleanValue();
        } catch (InterruptedException | ExecutionException e10) {
            logger.log(Level.SEVERE, (String) null, e10);
            return false;
        }
    }

    @Override
    public void stateAttached(AppStateManager appStateManager) {
        super.stateAttached(appStateManager);
        this.stateManager = appStateManager;
        if (!this.isRunning) {
            startPhysics();
        }
        if (this.threadingType == ThreadingType.PARALLEL) {
            CollisionSpace.setLocalThreadPhysicsSpace(this.debugConfig.getSpace());
        }
    }

    public void stopPhysics() {
        if (this.isRunning) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.executor;
            if (scheduledThreadPoolExecutor != null) {
                scheduledThreadPoolExecutor.shutdown();
                this.executor = null;
            }
            this.debugConfig.getSpace().removeTickListener(this);
            setPhysicsSpace(null);
            setRunning(false);
        }
    }

    @Override
    public void update(float f10) {
        BulletDebugAppState bulletDebugAppState;
        super.update(f10);
        this.tpf = f10;
        boolean isEnabled = this.debugConfig.isEnabled();
        if (isEnabled && this.debugAppState == null) {
            BulletDebugAppState createDebugAppState = createDebugAppState();
            this.debugAppState = createDebugAppState;
            this.stateManager.attach(createDebugAppState);
        } else if (!isEnabled && (bulletDebugAppState = this.debugAppState) != null) {
            this.stateManager.detach(bulletDebugAppState);
            this.debugAppState = null;
        }
        this.debugConfig.getSpace().distributeEvents();
    }

    public Vector3f worldMax() {
        return this.worldMax.m1292clone();
    }

    public Vector3f worldMin() {
        return this.worldMin.m1292clone();
    }

    public BulletAppState(PhysicsSpace.BroadphaseType broadphaseType) {
        this(new Vector3f(-10000.0f, -10000.0f, -10000.0f), new Vector3f(10000.0f, 10000.0f, 10000.0f), broadphaseType);
    }

    public BulletAppState(Vector3f vector3f, Vector3f vector3f2) {
        this(vector3f, vector3f2, PhysicsSpace.BroadphaseType.AXIS_SWEEP_3);
    }

    public BulletAppState(Vector3f vector3f, Vector3f vector3f2, PhysicsSpace.BroadphaseType broadphaseType) {
        this.isRunning = false;
        this.broadphaseType = PhysicsSpace.BroadphaseType.DBVT;
        this.parallelPhysicsUpdate = new Callable<Boolean>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Boolean call() throws Exception {
                BulletAppState.this.debugConfig.getSpace().update(BulletAppState.this.isEnabled() ? BulletAppState.this.tpf * BulletAppState.this.speed : 0.0f);
                return Boolean.TRUE;
            }
        };
        this.collisionConfiguration = new CollisionConfiguration();
        this.debugConfig = new DebugConfiguration();
        this.speed = 1.0f;
        this.numSolvers = NativeLibrary.countThreads();
        this.solverType = SolverType.SI;
        this.threadingType = ThreadingType.SEQUENTIAL;
        Vector3f vector3f3 = new Vector3f(10000.0f, 10000.0f, 10000.0f);
        this.worldMax = vector3f3;
        Vector3f vector3f4 = new Vector3f(-10000.0f, -10000.0f, -10000.0f);
        this.worldMin = vector3f4;
        C13702E.d(vector3f, "world min");
        C13702E.d(vector3f2, "world max");
        C13702E.t(broadphaseType, "broadphase type");
        vector3f4.set(vector3f);
        vector3f3.set(vector3f2);
        this.broadphaseType = broadphaseType;
    }
}
