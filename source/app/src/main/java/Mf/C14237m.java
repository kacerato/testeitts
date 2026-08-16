package mf;

import android.provider.Telephony;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.jme3.app.state.AppState;
import com.jme3.bounding.BoundingBox;
import com.jme3.bullet.BulletAppState;
import com.jme3.bullet.CollisionConfiguration;
import com.jme3.bullet.DeformableSpace;
import com.jme3.bullet.MultiBody;
import com.jme3.bullet.MultiBodyLink;
import com.jme3.bullet.MultiBodySpace;
import com.jme3.bullet.PhysicsSoftSpace;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.RayTestFlag;
import com.jme3.bullet.SoftBodyWorldInfo;
import com.jme3.bullet.SolverInfo;
import com.jme3.bullet.SolverMode;
import com.jme3.bullet.SolverType;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.GImpactCollisionShape;
import com.jme3.bullet.collision.shapes.HeightfieldCollisionShape;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import com.jme3.bullet.collision.shapes.MeshCollisionShape;
import com.jme3.bullet.collision.shapes.SimplexCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.joints.New6Dof;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.joints.SixDofJoint;
import com.jme3.bullet.joints.motors.TranslationalLimitMotor;
import com.jme3.bullet.objects.MultiBodyCollider;
import com.jme3.bullet.objects.PhysicsBody;
import com.jme3.bullet.objects.PhysicsCharacter;
import com.jme3.bullet.objects.PhysicsGhostObject;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.bullet.objects.PhysicsVehicle;
import com.jme3.bullet.objects.VehicleWheel;
import com.jme3.bullet.objects.infos.Cluster;
import com.jme3.bullet.objects.infos.SoftBodyConfig;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import java.io.PrintStream;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.logging.Logger;
import javax.xml.transform.OutputKeys;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import p000if.C13702E;
import p000if.C13724t;

public class C14237m extends jme3utilities.debug.d {

    public static final Logger f96976A = Logger.getLogger(C14237m.class.getName());

    public static final Vector3f f96977B = new Vector3f(1.0f, 1.0f, 1.0f);

    public boolean f96978q;

    public boolean f96979r;

    public boolean f96980s;

    public boolean f96981t;

    public boolean f96982u;

    public boolean f96983v;

    public boolean f96984w;

    public boolean f96985x;

    public boolean f96986y;

    public boolean f96987z;

    public static class a {

        public static final int[] f96988a;

        static {
            int[] iArr = new int[EnumC14229e.values().length];
            f96988a = iArr;
            try {
                iArr[EnumC14229e.BoundsInSpatials.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f96988a[EnumC14229e.Buckets.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f96988a[EnumC14229e.ChildShapes.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f96988a[EnumC14229e.ClustersInSofts.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f96988a[EnumC14229e.CullHints.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f96988a[EnumC14229e.Ignores.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f96988a[EnumC14229e.JointsInBodies.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f96988a[EnumC14229e.JointsInSpaces.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f96988a[EnumC14229e.MatParams.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f96988a[EnumC14229e.Motors.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f96988a[EnumC14229e.NativeIDs.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f96988a[EnumC14229e.NodesInClusters.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f96988a[EnumC14229e.NodesInSofts.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f96988a[EnumC14229e.Overrides.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f96988a[EnumC14229e.Pcos.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f96988a[EnumC14229e.ShadowModes.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f96988a[EnumC14229e.Transforms.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f96988a[EnumC14229e.UserData.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f96988a[EnumC14229e.VertexData.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    public C14237m() {
        this.f96978q = false;
        this.f96979r = false;
        this.f96980s = false;
        this.f96981t = false;
        this.f96982u = false;
        this.f96983v = false;
        this.f96984w = false;
        this.f96985x = false;
        this.f96986y = false;
        this.f96987z = true;
        J(new C14236l());
    }

    public static String d0(FloatBuffer floatBuffer, int i10) {
        Vector3f vector3f = new Vector3f();
        jf.d.g(floatBuffer, i10 * 3, vector3f);
        return jf.h.m(vector3f);
    }

    public boolean A0(EnumC14229e enumC14229e) {
        switch (a.f96988a[enumC14229e.ordinal()]) {
            case 1:
                return z();
            case 2:
                return A();
            case 3:
                return this.f96978q;
            case 4:
                return this.f96979r;
            case 5:
                return B();
            case 6:
                return this.f96980s;
            case 7:
                return this.f96981t;
            case 8:
                return this.f96982u;
            case 9:
                return C();
            case 10:
                return this.f96983v;
            case 11:
                return this.f96984w;
            case 12:
                return this.f96985x;
            case 13:
                return this.f96986y;
            case 14:
                return D();
            case 15:
                return this.f96987z;
            case 16:
                return E();
            case 17:
                return F();
            case 18:
                return G();
            case 19:
                return H();
            default:
                throw new IllegalArgumentException("dumpFlag = " + ((Object) enumC14229e));
        }
    }

    public C14237m B0(EnumC14229e enumC14229e, boolean z10) {
        switch (a.f96988a[enumC14229e.ordinal()]) {
            case 1:
                K(z10);
                return this;
            case 2:
                L(z10);
                return this;
            case 3:
                this.f96978q = z10;
                return this;
            case 4:
                this.f96979r = z10;
                return this;
            case 5:
                M(z10);
                return this;
            case 6:
                this.f96980s = z10;
                return this;
            case 7:
                this.f96981t = z10;
                return this;
            case 8:
                this.f96982u = z10;
                return this;
            case 9:
                N(z10);
                return this;
            case 10:
                this.f96983v = z10;
                return this;
            case 11:
                this.f96984w = z10;
                return this;
            case 12:
                this.f96985x = z10;
                return this;
            case 13:
                this.f96986y = z10;
                return this;
            case 14:
                O(z10);
                return this;
            case 15:
                this.f96987z = z10;
                return this;
            case 16:
                P(z10);
                return this;
            case 17:
                Q(z10);
                return this;
            case 18:
                R(z10);
                return this;
            case 19:
                S(z10);
                return this;
            default:
                throw new IllegalArgumentException("dumpFlag = " + ((Object) enumC14229e));
        }
    }

    public final void V(PhysicsRigidBody physicsRigidBody) {
        int i10 = (physicsRigidBody.isKinematic() || (physicsRigidBody instanceof PhysicsVehicle)) ? 4 : physicsRigidBody.isActive() ? 1 : 2;
        int activationState = physicsRigidBody.getActivationState();
        if (activationState != i10) {
            this.f94069m.printf(" act=%d", Integer.valueOf(activationState));
        }
    }

    public final void W(PhysicsRigidBody physicsRigidBody) {
        float friction = physicsRigidBody.getFriction();
        this.f94069m.print(" contact[fric=");
        this.f94069m.print(C13724t.e(friction));
        float restitution = physicsRigidBody.getRestitution();
        this.f94069m.print(" rest=");
        this.f94069m.print(C13724t.e(restitution));
        float contactDamping = physicsRigidBody.getContactDamping();
        this.f94069m.print(" damp=");
        this.f94069m.print(C13724t.e(contactDamping));
        float contactProcessingThreshold = physicsRigidBody.getContactProcessingThreshold();
        this.f94069m.print(" pth=");
        this.f94069m.print(C13724t.e(contactProcessingThreshold));
        float contactStiffness = physicsRigidBody.getContactStiffness();
        this.f94069m.print(" stiff=");
        this.f94069m.print(C13724t.e(contactStiffness));
        this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
    }

    public final void X(PhysicsRigidBody physicsRigidBody, String str) {
        b(str);
        this.f94069m.printf(" grav[%s] ", jf.h.m(physicsRigidBody.getGravity(null)));
        if (!physicsRigidBody.isGravityProtected()) {
            this.f94069m.print("NOT");
        }
        this.f94069m.print("protected ccd[mth=");
        float ccdMotionThreshold = physicsRigidBody.getCcdMotionThreshold();
        this.f94069m.print(C13724t.e(ccdMotionThreshold));
        if (ccdMotionThreshold > 0.0f) {
            this.f94069m.print(" r=");
            this.f94069m.print(C13724t.e(physicsRigidBody.getCcdSweptSphereRadius()));
        }
        float angularDamping = physicsRigidBody.getAngularDamping();
        float linearDamping = physicsRigidBody.getLinearDamping();
        this.f94069m.print("] damp[l=");
        this.f94069m.print(C13724t.e(linearDamping));
        this.f94069m.print(" a=");
        this.f94069m.print(C13724t.e(angularDamping));
        float linearSleepingThreshold = physicsRigidBody.getLinearSleepingThreshold();
        float angularSleepingThreshold = physicsRigidBody.getAngularSleepingThreshold();
        this.f94069m.print("] sleep[lth=");
        this.f94069m.print(C13724t.e(linearSleepingThreshold));
        this.f94069m.print(" ath=");
        this.f94069m.print(C13724t.e(angularSleepingThreshold));
        if (physicsRigidBody.isActive()) {
            float deactivationTime = physicsRigidBody.getDeactivationTime();
            this.f94069m.print(" time=");
            this.f94069m.print(C13724t.e(deactivationTime));
        }
        this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
        b(str);
        this.f94069m.printf(" v[%s]", jf.h.m(physicsRigidBody.getLinearVelocity(null)));
        this.f94069m.printf(" force[%s]", jf.h.m(physicsRigidBody.totalAppliedForce(null)));
        Vector3f linearFactor = physicsRigidBody.getLinearFactor(null);
        if (!jf.h.D(linearFactor)) {
            this.f94069m.printf(" lFact[%s]", jf.h.m(linearFactor));
        }
        b(str);
        this.f94069m.print(" inert[");
        this.f94069m.print(jf.h.m(f96977B.divide(physicsRigidBody.getInverseInertiaLocal(null))));
        this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
        this.f94069m.printf(" w[%s]", jf.h.m(physicsRigidBody.getAngularVelocity(null)));
        this.f94069m.printf(" torq[%s]", jf.h.m(physicsRigidBody.totalAppliedTorque(null)));
        Vector3f angularFactor = physicsRigidBody.getAngularFactor(null);
        if (jf.h.D(angularFactor)) {
            return;
        }
        this.f94069m.printf(" aFact[%s]", jf.h.m(angularFactor));
    }

    public final void Y(long j10) {
        if (this.f96984w) {
            this.f94069m.print(" #");
            this.f94069m.print(Long.toHexString(j10));
        }
    }

    public final void Z(PhysicsCollisionObject physicsCollisionObject) {
        int userIndex = physicsCollisionObject.userIndex();
        if (userIndex != -1) {
            this.f94069m.print(" userIndex=");
            this.f94069m.print(userIndex);
        }
        int userIndex2 = physicsCollisionObject.userIndex2();
        if (userIndex2 != -1) {
            this.f94069m.print(" userIndex2=");
            this.f94069m.print(userIndex2);
        }
        int userIndex3 = physicsCollisionObject.userIndex3();
        if (userIndex3 != -1) {
            this.f94069m.print(" userIndex3=");
            this.f94069m.print(userIndex3);
        }
    }

    @Override
    public C14237m clone() throws CloneNotSupportedException {
        return (C14237m) super.clone();
    }

    public void e0(BulletAppState bulletAppState) {
        C13702E.t(bulletAppState, "app state");
        o0(bulletAppState, "");
    }

    public void f0(PhysicsSpace physicsSpace) {
        g0(physicsSpace, "", null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02b8  */
    /* JADX WARN: Type inference failed for: r2v38, types: [java.util.Iterator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g0(PhysicsSpace physicsSpace, String str, BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        String str2;
        Collection collection;
        PhysicsSpace.BroadphaseType broadphaseType;
        int maxSubSteps;
        SolverInfo solverInfo;
        C13702E.t(str, OutputKeys.INDENT);
        String simpleName = physicsSpace.getClass().getSimpleName();
        Collection<PhysicsCharacter> characterList = physicsSpace.getCharacterList();
        int size = characterList.size();
        Collection<PhysicsGhostObject> ghostObjectList = physicsSpace.getGhostObjectList();
        int size2 = ghostObjectList.size();
        this.f94069m.printf("%n%s%s with %d char%s, %d ghost%s, ", str, simpleName, Integer.valueOf(size), size == 1 ? "" : "s", Integer.valueOf(size2), size2 == 1 ? "" : "s");
        Collection<PhysicsJoint> jointList = physicsSpace.getJointList();
        int size3 = jointList.size();
        this.f94069m.printf("%d joint%s, ", Integer.valueOf(size3), size3 == 1 ? "" : "s");
        Collection<MultiBody> arrayList = new ArrayList<>(0);
        if (physicsSpace instanceof MultiBodySpace) {
            arrayList = ((MultiBodySpace) physicsSpace).getMultiBodyList();
            int size4 = arrayList.size();
            this.f94069m.printf("%d multi%s, ", Integer.valueOf(size4), size4 == 1 ? "" : "s");
        }
        Collection<PhysicsRigidBody> rigidBodyList = physicsSpace.getRigidBodyList();
        int size5 = rigidBodyList.size();
        this.f94069m.printf("%d rigid%s, ", Integer.valueOf(size5), size5 == 1 ? "" : "s");
        Collection<PhysicsSoftBody> arrayList2 = new ArrayList(0);
        boolean z10 = physicsSpace instanceof PhysicsSoftSpace;
        if (!z10) {
            str2 = "s";
            if (physicsSpace instanceof DeformableSpace) {
                Collection softBodyList = ((DeformableSpace) physicsSpace).getSoftBodyList();
                int size6 = softBodyList.size();
                collection = softBodyList;
                this.f94069m.printf("%d soft%s, ", Integer.valueOf(size6), size6 == 1 ? "" : str2);
            }
            int size7 = physicsSpace.getVehicleList().size();
            this.f94069m.printf("%d vehicle%s", Integer.valueOf(size7), size7 != 1 ? str2 : "");
            Y(physicsSpace.nativeId());
            b(str);
            broadphaseType = physicsSpace.getBroadphaseType();
            this.f94069m.printf(" bphase=%s", broadphaseType);
            this.f94069m.printf(" grav[%s] timeStep[", jf.h.m(physicsSpace.getGravity(null)));
            maxSubSteps = physicsSpace.maxSubSteps();
            if (maxSubSteps != 0) {
                this.f94069m.printf("VAR max=%s", C13724t.e(physicsSpace.maxTimeStep()));
            } else {
                this.f94069m.printf("%s maxSS=%d", C13724t.e(physicsSpace.getAccuracy()), Integer.valueOf(maxSubSteps));
            }
            this.f94069m.printf("] listeners[c=%d cg=%d t=%d]", Integer.valueOf(physicsSpace.countCollisionListeners()), Integer.valueOf(physicsSpace.countCollisionGroupListeners()), Integer.valueOf(physicsSpace.countTickListeners()));
            b(str);
            SolverType solverType = physicsSpace.getSolverType();
            solverInfo = physicsSpace.getSolverInfo();
            this.f94069m.printf(" solver[%s iters=%d cfm=%s", solverType, Integer.valueOf(solverInfo.numIterations()), C13724t.e(solverInfo.globalCfm()));
            this.f94069m.printf(" batch=%d splitImp[th=", Integer.valueOf(solverInfo.minBatch()));
            if (solverInfo.isSplitImpulseEnabled()) {
                this.f94069m.print(C13724t.e(solverInfo.splitImpulseThreshold()));
            } else {
                this.f94069m.print(Logger.GLOBAL_LOGGER_NAME);
            }
            this.f94069m.printf(" erp=%s]", C13724t.e(solverInfo.splitImpulseErp()));
            this.f94069m.printf(" mode=%s]", SolverMode.describe(solverInfo.mode()));
            CollisionConfiguration configuration = physicsSpace.getConfiguration();
            C14236l x10 = x();
            this.f94069m.printf("%n%s conf[%s]", str, x10.X(configuration));
            if (physicsSpace.isCcdWithStaticOnly()) {
                this.f94069m.print(" CCDwso");
            }
            if (physicsSpace.isUsingDeterministicDispatch()) {
                this.f94069m.print(" DeterministicDispatch");
            }
            if (physicsSpace.isUsingScr()) {
                this.f94069m.print(" SCR");
            }
            this.f94069m.printf(" rayTest=%s", RayTestFlag.describe(physicsSpace.getRayTestFlags()));
            if (broadphaseType != PhysicsSpace.BroadphaseType.AXIS_SWEEP_3 || broadphaseType == PhysicsSpace.BroadphaseType.AXIS_SWEEP_3_32) {
                this.f94069m.printf(" worldMin[%s] worldMax[%s]", jf.h.m(physicsSpace.getWorldMin(null)), jf.h.m(physicsSpace.getWorldMax(null)));
            }
            if (z10) {
                SoftBodyWorldInfo worldInfo = ((PhysicsSoftSpace) physicsSpace).getWorldInfo();
                this.f94069m.printf("%n%s %s", str, x10.Y(worldInfo));
                Y(worldInfo.nativeId());
            }
            if (this.f96987z) {
                String str3 = str + y();
                for (PhysicsCharacter physicsCharacter : characterList) {
                    if (debugAppStateFilter == null || debugAppStateFilter.displayObject(physicsCharacter)) {
                        k0(physicsCharacter, str3);
                    }
                }
                for (PhysicsGhostObject physicsGhostObject : ghostObjectList) {
                    if (debugAppStateFilter == null || debugAppStateFilter.displayObject(physicsGhostObject)) {
                        l0(physicsGhostObject, str3);
                    }
                }
                Iterator<MultiBody> it = arrayList.iterator();
                while (it.hasNext()) {
                    v0(it.next(), str3, debugAppStateFilter);
                }
                for (PhysicsRigidBody physicsRigidBody : rigidBodyList) {
                    if (debugAppStateFilter == null || debugAppStateFilter.displayObject(physicsRigidBody)) {
                        m0(physicsRigidBody, str3);
                    }
                }
                for (PhysicsSoftBody physicsSoftBody : arrayList2) {
                    if (debugAppStateFilter == null || debugAppStateFilter.displayObject(physicsSoftBody)) {
                        n0(physicsSoftBody, str3);
                    }
                }
            }
            if (this.f96982u) {
                t0(jointList, str, debugAppStateFilter);
            }
            this.f94069m.println();
        }
        Collection softBodyList2 = ((PhysicsSoftSpace) physicsSpace).getSoftBodyList();
        int size8 = softBodyList2.size();
        collection = softBodyList2;
        str2 = "s";
        this.f94069m.printf("%d soft%s, ", Integer.valueOf(size8), size8 == 1 ? "" : str2);
        arrayList2 = collection;
        int size72 = physicsSpace.getVehicleList().size();
        this.f94069m.printf("%d vehicle%s", Integer.valueOf(size72), size72 != 1 ? str2 : "");
        Y(physicsSpace.nativeId());
        b(str);
        broadphaseType = physicsSpace.getBroadphaseType();
        this.f94069m.printf(" bphase=%s", broadphaseType);
        this.f94069m.printf(" grav[%s] timeStep[", jf.h.m(physicsSpace.getGravity(null)));
        maxSubSteps = physicsSpace.maxSubSteps();
        if (maxSubSteps != 0) {
        }
        this.f94069m.printf("] listeners[c=%d cg=%d t=%d]", Integer.valueOf(physicsSpace.countCollisionListeners()), Integer.valueOf(physicsSpace.countCollisionGroupListeners()), Integer.valueOf(physicsSpace.countTickListeners()));
        b(str);
        SolverType solverType2 = physicsSpace.getSolverType();
        solverInfo = physicsSpace.getSolverInfo();
        this.f94069m.printf(" solver[%s iters=%d cfm=%s", solverType2, Integer.valueOf(solverInfo.numIterations()), C13724t.e(solverInfo.globalCfm()));
        this.f94069m.printf(" batch=%d splitImp[th=", Integer.valueOf(solverInfo.minBatch()));
        if (solverInfo.isSplitImpulseEnabled()) {
        }
        this.f94069m.printf(" erp=%s]", C13724t.e(solverInfo.splitImpulseErp()));
        this.f94069m.printf(" mode=%s]", SolverMode.describe(solverInfo.mode()));
        CollisionConfiguration configuration2 = physicsSpace.getConfiguration();
        C14236l x102 = x();
        this.f94069m.printf("%n%s conf[%s]", str, x102.X(configuration2));
        if (physicsSpace.isCcdWithStaticOnly()) {
        }
        if (physicsSpace.isUsingDeterministicDispatch()) {
        }
        if (physicsSpace.isUsingScr()) {
        }
        this.f94069m.printf(" rayTest=%s", RayTestFlag.describe(physicsSpace.getRayTestFlags()));
        if (broadphaseType != PhysicsSpace.BroadphaseType.AXIS_SWEEP_3) {
        }
        this.f94069m.printf(" worldMin[%s] worldMax[%s]", jf.h.m(physicsSpace.getWorldMin(null)), jf.h.m(physicsSpace.getWorldMax(null)));
        if (z10) {
        }
        if (this.f96987z) {
        }
        if (this.f96982u) {
        }
        this.f94069m.println();
    }

    public void h0(CollisionShape collisionShape, String str) {
        C13702E.t(collisionShape, "shape");
        C13702E.t(str, OutputKeys.INDENT);
        b(str);
        C14236l x10 = x();
        this.f94069m.print(x10.Z(collisionShape));
        a(x10.J(collisionShape.getScale(null)));
        Y(collisionShape.nativeId());
        if (this.f96978q && (collisionShape instanceof CompoundCollisionShape)) {
            p0((CompoundCollisionShape) collisionShape, str + y());
        }
    }

    @Override
    public void i(AppState appState, String str) {
        C13702E.t(appState, "app state");
        C13702E.t(str, OutputKeys.INDENT);
        if (appState instanceof BulletAppState) {
            o0((BulletAppState) appState, str);
        } else {
            super.i(appState, str);
        }
    }

    public void i0(PhysicsJoint physicsJoint, String str) {
        C13702E.t(physicsJoint, "joint");
        C13702E.t(str, OutputKeys.INDENT);
        String str2 = str + y();
        b(str2);
        C14236l x10 = x();
        this.f94069m.print(x10.t0(physicsJoint, this.f96984w));
        String str3 = str2 + y();
        int i10 = 0;
        if (physicsJoint instanceof SixDofJoint) {
            SixDofJoint sixDofJoint = (SixDofJoint) physicsJoint;
            this.f94069m.printf("%n%s %s", str2, x10.l0(sixDofJoint));
            this.f94069m.printf("%n%s %s", str2, x10.u0(sixDofJoint));
            if (this.f96983v) {
                for (int i11 = 0; i11 < 3; i11++) {
                    this.f94069m.printf("%n%srot%s: ", str3, C13724t.c(i11));
                    this.f94069m.print(x10.d0(sixDofJoint.getRotationalLimitMotor(i11)));
                }
                TranslationalLimitMotor translationalLimitMotor = sixDofJoint.getTranslationalLimitMotor();
                while (i10 < 3) {
                    this.f94069m.printf("%n%stra%s: ", str3, C13724t.c(i10));
                    this.f94069m.print(x10.e0(translationalLimitMotor, i10));
                    i10++;
                }
                return;
            }
            return;
        }
        if (physicsJoint instanceof New6Dof) {
            New6Dof new6Dof = (New6Dof) physicsJoint;
            b(str2);
            this.f94069m.printf(" offset[%s]", jf.h.m(new6Dof.getPivotOffset(null)));
            this.f94069m.printf(" locA[%s]", jf.h.m(new6Dof.calculatedOriginA(null)));
            this.f94069m.printf(" locB[%s]", jf.h.m(new6Dof.calculatedOriginB(null)));
            b(str2);
            this.f94069m.printf(" angles[%s]", jf.h.m(new6Dof.getAngles(null)));
            this.f94069m.printf(" ro=%s", new6Dof.getRotationOrder().toString());
            this.f94069m.printf(" basA[%s]", C13724t.h(new6Dof.calculatedBasisA(null)));
            this.f94069m.printf(" basB[%s]", C13724t.h(new6Dof.calculatedBasisB(null)));
            if (this.f96983v) {
                while (i10 < 6) {
                    this.f94069m.printf("%n%s%s%s:", str3, i10 < 3 ? ExifInterface.GPS_DIRECTION_TRUE : "R", C13724t.c(i10 % 3));
                    this.f94069m.print(x10.o0(new6Dof, i10));
                    i10++;
                }
            }
        }
    }

    public void j0(MultiBodyCollider multiBodyCollider, String str) {
        C13702E.t(multiBodyCollider, "collider");
        C13702E.t(str, OutputKeys.INDENT);
        b(str);
        this.f94069m.print(Collider.f73199i3);
        C14236l x10 = x();
        this.f94069m.print(x10.m0(multiBodyCollider));
        this.f94069m.print(x10.x0(multiBodyCollider));
        if (!multiBodyCollider.isActive()) {
            this.f94069m.print("/inactive");
        }
        if (!multiBodyCollider.isContactResponse()) {
            this.f94069m.print("/NOresponse");
        }
        if (!multiBodyCollider.isInWorld()) {
            this.f94069m.print("/NOspace");
        }
        this.f94069m.printf(" mass=%s", C13724t.e(multiBodyCollider.mass()));
        this.f94069m.printf(" loc[%s]", jf.h.m(multiBodyCollider.getPhysicsLocation(null)));
        this.f94069m.print(x10.q0(multiBodyCollider));
        Z(multiBodyCollider);
        Y(multiBodyCollider.nativeId());
        h0(multiBodyCollider.getCollisionShape(), str + " ");
    }

    public void k0(PhysicsCharacter physicsCharacter, String str) {
        C13702E.t(physicsCharacter, FirebaseAnalytics.d.f67697f);
        C13702E.t(str, OutputKeys.INDENT);
        this.f94069m.printf("%n%sCharacter", str);
        C14236l x10 = x();
        this.f94069m.print(x10.m0(physicsCharacter));
        this.f94069m.print(x10.x0(physicsCharacter));
        this.f94069m.printf(" loc[%s]", jf.h.m(physicsCharacter.getPhysicsLocation(null)));
        this.f94069m.printf(" walk[%s]", jf.h.n(physicsCharacter.getWalkDirection(null)));
        this.f94069m.printf(" v[%s]", jf.h.m(physicsCharacter.getLinearVelocity(null)));
        this.f94069m.printf(" angV[%s]", jf.h.m(physicsCharacter.getAngularVelocity(null)));
        Z(physicsCharacter);
        Y(physicsCharacter.nativeId());
        b(str);
        this.f94069m.printf(" grav[%s]", jf.h.m(physicsCharacter.getGravity(null)));
        this.f94069m.printf(" up[%s]", jf.h.n(physicsCharacter.getUpDirection(null)));
        this.f94069m.print(" jumpSp=");
        this.f94069m.print(C13724t.e(physicsCharacter.getJumpSpeed()));
        float angularDamping = physicsCharacter.getAngularDamping();
        float linearDamping = physicsCharacter.getLinearDamping();
        this.f94069m.print("] damp[l=");
        this.f94069m.print(C13724t.e(linearDamping));
        this.f94069m.print(" a=");
        this.f94069m.print(C13724t.e(angularDamping));
        this.f94069m.print("] max[fallSp=");
        this.f94069m.print(C13724t.e(physicsCharacter.getFallSpeed()));
        this.f94069m.print(" pen=");
        this.f94069m.print(C13724t.e(physicsCharacter.getMaxPenetrationDepth()));
        this.f94069m.print(" slope=");
        this.f94069m.print(C13724t.e(physicsCharacter.getMaxSlope()));
        this.f94069m.print(" stepHt=");
        this.f94069m.print(C13724t.e(physicsCharacter.getStepHeight()));
        this.f94069m.print("] ");
        if (!physicsCharacter.isUsingGhostSweepTest()) {
            this.f94069m.print("NO");
        }
        this.f94069m.print("gsTest");
        this.f94069m.print(x10.q0(physicsCharacter));
        h0(physicsCharacter.getCollisionShape(), str + " ");
        b(str);
        int countIgnored = physicsCharacter.countIgnored();
        this.f94069m.printf(" with %d ignore%s", Integer.valueOf(countIgnored), countIgnored == 1 ? "" : "s");
        if (!this.f96980s || countIgnored <= 0) {
            return;
        }
        r0(physicsCharacter, str);
    }

    public void l0(PhysicsGhostObject physicsGhostObject, String str) {
        C13702E.t(physicsGhostObject, "ghost");
        C13702E.t(str, OutputKeys.INDENT);
        this.f94069m.printf("%n%sGhost", str);
        C14236l x10 = x();
        this.f94069m.print(x10.m0(physicsGhostObject));
        this.f94069m.print(x10.x0(physicsGhostObject));
        Vector3f physicsLocation = physicsGhostObject.getPhysicsLocation(null);
        this.f94069m.printf(" loc[%s]", jf.h.m(physicsLocation));
        Quaternion physicsRotation = physicsGhostObject.getPhysicsRotation(null);
        if (!jf.g.j(physicsRotation)) {
            this.f94069m.printf(" orient[%s]", jf.g.f(physicsRotation));
        }
        Z(physicsGhostObject);
        Y(physicsGhostObject.nativeId());
        CollisionShape collisionShape = physicsGhostObject.getCollisionShape();
        h0(collisionShape, str + " ");
        b(str);
        if ((collisionShape instanceof CompoundCollisionShape) || (collisionShape instanceof GImpactCollisionShape) || (collisionShape instanceof HeightfieldCollisionShape) || (collisionShape instanceof HullCollisionShape) || (collisionShape instanceof MeshCollisionShape) || (collisionShape instanceof SimplexCollisionShape)) {
            this.f94069m.printf(" aabb[%s]", x10.g(collisionShape.boundingBox(physicsLocation, physicsRotation, (BoundingBox) null)));
        }
        this.f94069m.print(x10.q0(physicsGhostObject));
        int countIgnored = physicsGhostObject.countIgnored();
        this.f94069m.printf(" with %d ignore%s", Integer.valueOf(countIgnored), countIgnored == 1 ? "" : "s");
        if (!this.f96980s || countIgnored <= 0) {
            return;
        }
        r0(physicsGhostObject, str);
    }

    public void m0(PhysicsRigidBody physicsRigidBody, String str) {
        C13702E.t(physicsRigidBody, Telephony.TextBasedSmsColumns.BODY);
        C13702E.t(str, OutputKeys.INDENT);
        b(str);
        if (physicsRigidBody instanceof PhysicsVehicle) {
            this.f94069m.print("Vehicle ");
        } else {
            this.f94069m.print("Rigid ");
        }
        this.f94069m.print(C14233i.a(physicsRigidBody));
        C14236l x10 = x();
        this.f94069m.print(x10.m0(physicsRigidBody));
        this.f94069m.print(x10.x0(physicsRigidBody));
        Vector3f location = physicsRigidBody.getMotionState().getLocation(null);
        this.f94069m.printf(" msLoc[%s]", jf.h.m(location));
        Vector3f physicsLocation = physicsRigidBody.getPhysicsLocation(null);
        if (!physicsLocation.equals(location)) {
            this.f94069m.printf(" loc[%s]", jf.h.m(physicsLocation));
        }
        Quaternion physicsRotation = physicsRigidBody.getPhysicsRotation(null);
        if (!jf.g.j(physicsRotation)) {
            this.f94069m.printf(" orient[%s]", jf.g.f(physicsRotation));
        }
        Z(physicsRigidBody);
        Y(physicsRigidBody.nativeId());
        b(str);
        V(physicsRigidBody);
        W(physicsRigidBody);
        if (physicsRigidBody.isDynamic()) {
            X(physicsRigidBody, str);
        }
        CollisionShape collisionShape = physicsRigidBody.getCollisionShape();
        h0(collisionShape, str + " ");
        b(str);
        if ((collisionShape instanceof CompoundCollisionShape) || (collisionShape instanceof GImpactCollisionShape) || (collisionShape instanceof HeightfieldCollisionShape) || (collisionShape instanceof HullCollisionShape) || (collisionShape instanceof MeshCollisionShape) || (collisionShape instanceof SimplexCollisionShape)) {
            this.f94069m.printf(" aabb[%s]", x10.g(collisionShape.boundingBox(physicsLocation, physicsRotation, (BoundingBox) null)));
        }
        this.f94069m.print(x10.q0(physicsRigidBody));
        this.f94069m.print(" with");
        if (physicsRigidBody instanceof PhysicsVehicle) {
            PhysicsVehicle physicsVehicle = (PhysicsVehicle) physicsRigidBody;
            int numWheels = physicsVehicle.getNumWheels();
            this.f94069m.printf(" %d wheel%s", Integer.valueOf(numWheels), numWheels == 1 ? "" : "s");
            if (numWheels > 0) {
                y0(physicsVehicle, str, numWheels);
            } else {
                this.f94069m.print(IIndexConstants.PARAMETER_SEPARATOR);
            }
        }
        int countIgnored = physicsRigidBody.countIgnored();
        this.f94069m.printf(" %d ignore%s", Integer.valueOf(countIgnored), countIgnored == 1 ? "" : "s");
        if (this.f96980s && countIgnored > 0) {
            r0(physicsRigidBody, str);
        }
        int countJoints = physicsRigidBody.countJoints();
        this.f94069m.printf(" and %d joint%s", Integer.valueOf(countJoints), countJoints == 1 ? "" : "s");
        if (!this.f96981t || countJoints <= 0) {
            return;
        }
        s0(physicsRigidBody, str);
    }

    public void n0(PhysicsSoftBody physicsSoftBody, String str) {
        C13702E.t(physicsSoftBody, Telephony.TextBasedSmsColumns.BODY);
        C13702E.t(str, OutputKeys.INDENT);
        this.f94069m.printf("%n%sSoft ", str);
        C14236l x10 = x();
        this.f94069m.print(x10.g(physicsSoftBody.boundingBox(null)));
        this.f94069m.print(" mass=");
        this.f94069m.print(C13724t.e(physicsSoftBody.getMass()));
        this.f94069m.print(" marg=");
        this.f94069m.print(C13724t.e(physicsSoftBody.margin()));
        Z(physicsSoftBody);
        Y(physicsSoftBody.nativeId());
        this.f94069m.printf("%n%s  vol=", str);
        this.f94069m.print(C13724t.e(physicsSoftBody.volume()));
        this.f94069m.print(" wind[");
        this.f94069m.print(jf.h.m(physicsSoftBody.windVelocity(null)));
        this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
        this.f94069m.print(x10.m0(physicsSoftBody));
        this.f94069m.print(x10.x0(physicsSoftBody));
        int countLinks = physicsSoftBody.countLinks();
        int countFaces = physicsSoftBody.countFaces();
        int countTetras = physicsSoftBody.countTetras();
        this.f94069m.printf(" with %d link%s, %d face%s, %d tetra%s", Integer.valueOf(countLinks), countLinks == 1 ? "" : "s", Integer.valueOf(countFaces), countFaces == 1 ? "" : "s", Integer.valueOf(countTetras), countTetras == 1 ? "" : "s");
        Quaternion physicsRotation = physicsSoftBody.getPhysicsRotation(null);
        if (!jf.g.j(physicsRotation)) {
            this.f94069m.printf(" orient[%s]", jf.g.f(physicsRotation));
        }
        SoftBodyConfig softConfig = physicsSoftBody.getSoftConfig();
        this.f94069m.printf("%n%s %s", str, x10.h0(softConfig));
        this.f94069m.printf("%n%s %s", str, x10.j0(softConfig));
        this.f94069m.printf("%n%s %s", str, x10.g0(physicsSoftBody.getSoftMaterial()));
        SoftBodyWorldInfo worldInfo = physicsSoftBody.getWorldInfo();
        this.f94069m.printf("%n%s %s ", str, x10.Y(worldInfo));
        if (!physicsSoftBody.isWorldInfoProtected()) {
            this.f94069m.print("NOT");
        }
        this.f94069m.print("protected");
        Y(worldInfo.nativeId());
        this.f94069m.printf("%n%s%s", str, x10.q0(physicsSoftBody));
        int countJoints = physicsSoftBody.countJoints();
        this.f94069m.printf(" with %d joint%s", Integer.valueOf(countJoints), countJoints == 1 ? "" : "s");
        if (!this.f96981t || countJoints <= 0) {
            this.f94069m.print(IIndexConstants.PARAMETER_SEPARATOR);
        } else {
            s0(physicsSoftBody, str);
            b(str);
        }
        int countClusters = physicsSoftBody.countClusters();
        this.f94069m.printf(" %d cluster%s", Integer.valueOf(countClusters), countClusters == 1 ? "" : "s");
        if (!this.f96979r || countClusters <= 0) {
            this.f94069m.print(IIndexConstants.PARAMETER_SEPARATOR);
        } else {
            q0(physicsSoftBody, str);
        }
        int countNodes = physicsSoftBody.countNodes();
        this.f94069m.printf(" %d node%s", Integer.valueOf(countNodes), countNodes == 1 ? "" : "s");
        int countPinnedNodes = physicsSoftBody.countPinnedNodes();
        if (countPinnedNodes > 0) {
            this.f94069m.printf(" (%d pinned)", Integer.valueOf(countPinnedNodes));
        }
        if (!this.f96986y || countNodes <= 0) {
            return;
        }
        w0(physicsSoftBody, str);
    }

    public void o0(BulletAppState bulletAppState, String str) {
        C13702E.t(str, OutputKeys.INDENT);
        this.f94069m.print(bulletAppState.getClass().getSimpleName());
        if (!bulletAppState.isEnabled()) {
            this.f94069m.println(" disabled");
            return;
        }
        this.f94069m.print(" enabled ");
        if (!bulletAppState.isDebugEnabled()) {
            this.f94069m.print("NO");
        }
        this.f94069m.print("debug ");
        this.f94069m.printf("speed=%s", C13724t.e(bulletAppState.getSpeed()));
        this.f94069m.printf(" bphase=%s", bulletAppState.getBroadphaseType());
        g0(bulletAppState.getPhysicsSpace(), str + y(), null);
    }

    public final void p0(CompoundCollisionShape compoundCollisionShape, String str) {
        C14236l x10 = x();
        for (ChildCollisionShape childCollisionShape : compoundCollisionShape.listChildren()) {
            b(str);
            CollisionShape shape = childCollisionShape.getShape();
            this.f94069m.print(x10.Z(shape));
            Vector3f copyOffset = childCollisionShape.copyOffset(null);
            if (!jf.h.E(copyOffset)) {
                this.f94069m.print(" offset[");
                this.f94069m.print(jf.h.m(copyOffset));
                this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
            }
            Quaternion copyRotation = childCollisionShape.copyRotation(null);
            if (!jf.g.j(copyRotation)) {
                this.f94069m.print(" rot[");
                this.f94069m.print(jf.g.f(copyRotation));
                this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
            }
            a(x10.J(shape.getScale(null)));
            Y(shape.nativeId());
        }
    }

    public final void q0(PhysicsSoftBody physicsSoftBody, String str) {
        this.f94069m.print(':');
        FloatBuffer copyClusterCenters = physicsSoftBody.copyClusterCenters(null);
        FloatBuffer copyClusterMasses = physicsSoftBody.copyClusterMasses(null);
        int countClusters = physicsSoftBody.countClusters();
        for (int i10 = 0; i10 < countClusters; i10++) {
            this.f94069m.printf("%n%s  [%d] com[", str, Integer.valueOf(i10));
            this.f94069m.print(d0(copyClusterCenters, i10));
            this.f94069m.print("] mass=");
            this.f94069m.print(C13724t.e(copyClusterMasses.get(i10)));
            this.f94069m.print(" damp[ang=");
            this.f94069m.print(C13724t.e(physicsSoftBody.get(Cluster.AngularDamping, i10)));
            this.f94069m.print(" lin=");
            this.f94069m.print(C13724t.e(physicsSoftBody.get(Cluster.LinearDamping, i10)));
            this.f94069m.print(" node=");
            this.f94069m.print(C13724t.e(physicsSoftBody.get(Cluster.NodeDamping, i10)));
            this.f94069m.print("] match=");
            this.f94069m.print(C13724t.e(physicsSoftBody.get(Cluster.Matching, i10)));
            this.f94069m.print(" scif=");
            this.f94069m.print(C13724t.e(physicsSoftBody.get(Cluster.SelfImpulse, i10)));
            this.f94069m.print(" maxSci=");
            this.f94069m.print(C13724t.e(physicsSoftBody.get(Cluster.MaxSelfImpulse, i10)));
            int countNodesInCluster = physicsSoftBody.countNodesInCluster(i10);
            this.f94069m.printf("  %d node%s", Integer.valueOf(countNodesInCluster), countNodesInCluster == 1 ? "" : "s");
            if (this.f96983v) {
                x0(physicsSoftBody, i10);
            }
        }
        b(str);
    }

    public final void r0(PhysicsCollisionObject physicsCollisionObject, String str) {
        this.f94069m.print(':');
        PhysicsCollisionObject[] listIgnoredPcos = physicsCollisionObject.listIgnoredPcos();
        String str2 = str + y();
        for (PhysicsCollisionObject physicsCollisionObject2 : listIgnoredPcos) {
            b(str2);
            this.f94069m.print(x().v0(physicsCollisionObject2, this.f96984w));
        }
        b(str);
    }

    public final void s0(PhysicsBody physicsBody, String str) {
        this.f94069m.print(':');
        PhysicsJoint[] listJoints = physicsBody.listJoints();
        C14236l x10 = x();
        String str2 = str + y();
        for (PhysicsJoint physicsJoint : listJoints) {
            this.f94069m.printf("%n%s%s", str2, x10.s0(physicsJoint, physicsBody, this.f96984w));
        }
    }

    public final void t0(Collection<? extends PhysicsJoint> collection, String str, BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        for (PhysicsJoint physicsJoint : collection) {
            if (debugAppStateFilter == null || debugAppStateFilter.displayObject(physicsJoint)) {
                i0(physicsJoint, str);
            }
        }
    }

    public final void u0(MultiBodyLink multiBodyLink, String str, BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        b(str);
        this.f94069m.printf("Link[%d] %s->", Integer.valueOf(multiBodyLink.index()), multiBodyLink.jointType());
        MultiBodyLink parentLink = multiBodyLink.getParentLink();
        if (parentLink == null) {
            this.f94069m.print("base");
        } else {
            this.f94069m.print(parentLink.index());
        }
        Y(multiBodyLink.nativeId());
        MultiBodyCollider collider = multiBodyLink.getCollider();
        if (collider != null) {
            if (debugAppStateFilter == null || debugAppStateFilter.displayObject(collider)) {
                j0(collider, str + y());
            }
        }
    }

    public final void v0(MultiBody multiBody, String str, BulletDebugAppState.DebugAppStateFilter debugAppStateFilter) {
        b(str);
        this.f94069m.print("MultiBody");
        this.f94069m.print(x().p0(multiBody));
        if (multiBody.hasFixedBase()) {
            this.f94069m.print("/fixed");
        }
        if (!multiBody.isUsingGyroTerm()) {
            this.f94069m.print("/NOgyro");
        }
        if (!multiBody.canSleep()) {
            this.f94069m.print("/NOsleep");
        }
        if (multiBody.isUsingRK4()) {
            this.f94069m.print("/RK4");
        }
        int size = multiBody.listColliders().size();
        int countConfiguredLinks = multiBody.countConfiguredLinks();
        this.f94069m.printf(" with %d collider%s, %d link%s", Integer.valueOf(size), size == 1 ? "" : "s", Integer.valueOf(countConfiguredLinks), countConfiguredLinks == 1 ? "" : "s");
        Y(multiBody.nativeId());
        b(str);
        float angularDamping = multiBody.angularDamping();
        float linearDamping = multiBody.linearDamping();
        this.f94069m.print(" damp[l=");
        this.f94069m.print(C13724t.e(linearDamping));
        this.f94069m.print(" a=");
        this.f94069m.print(C13724t.e(angularDamping));
        this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
        float maxAppliedImpulse = multiBody.maxAppliedImpulse();
        float maxCoordinateVelocity = multiBody.maxCoordinateVelocity();
        this.f94069m.print(" max[imp=");
        this.f94069m.print(C13724t.e(maxAppliedImpulse));
        this.f94069m.print(" v=");
        this.f94069m.print(C13724t.e(maxCoordinateVelocity));
        this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
        String str2 = str + y();
        MultiBodyCollider baseCollider = multiBody.getBaseCollider();
        if (baseCollider != null && (debugAppStateFilter == null || debugAppStateFilter.displayObject(baseCollider))) {
            j0(baseCollider, str2);
        }
        for (int i10 = 0; i10 < countConfiguredLinks; i10++) {
            u0(multiBody.getLink(i10), str2, debugAppStateFilter);
        }
    }

    public final void w0(PhysicsSoftBody physicsSoftBody, String str) {
        this.f94069m.print(':');
        FloatBuffer copyLocations = physicsSoftBody.copyLocations(null);
        FloatBuffer copyMasses = physicsSoftBody.copyMasses(null);
        FloatBuffer copyVelocities = physicsSoftBody.copyVelocities(null);
        IntBuffer copyLinks = physicsSoftBody.copyLinks(null);
        int countNodes = physicsSoftBody.countNodes();
        int countLinks = physicsSoftBody.countLinks();
        for (int i10 = 0; i10 < countNodes; i10++) {
            this.f94069m.printf("%n%s  [%d] deg=%d mass=%s loc[%s] v[%s]", str, Integer.valueOf(i10), Integer.valueOf(jf.d.f(copyLinks, 0, countLinks * 2, i10)), C13724t.e(copyMasses.get(i10)), d0(copyLocations, i10), d0(copyVelocities, i10));
        }
    }

    public final void x0(PhysicsSoftBody physicsSoftBody, int i10) {
        IntBuffer listNodesInCluster = physicsSoftBody.listNodesInCluster(i10, null);
        int capacity = listNodesInCluster.capacity();
        int countNodes = physicsSoftBody.countNodes();
        if (capacity == countNodes) {
            this.f94069m.print("(all)");
            return;
        }
        BitSet bitSet = new BitSet(countNodes);
        int i11 = 0;
        for (int i12 = 0; i12 < capacity; i12++) {
            bitSet.set(listNodesInCluster.get(i12));
        }
        this.f94069m.print('(');
        boolean z10 = false;
        while (i11 < countNodes) {
            if (bitSet.get(i11)) {
                if (z10) {
                    this.f94069m.print(IIndexConstants.PARAMETER_SEPARATOR);
                } else {
                    z10 = true;
                }
                int nextClearBit = bitSet.nextClearBit(i11) - i11;
                if (nextClearBit < 3) {
                    this.f94069m.printf(com.google.android.material.timepicker.f.f65291j, Integer.valueOf(i11));
                } else {
                    int i13 = (nextClearBit + i11) - 1;
                    this.f94069m.printf("%d-%d", Integer.valueOf(i11), Integer.valueOf(i13));
                    i11 = i13;
                }
            }
            i11++;
        }
        this.f94069m.print(')');
    }

    public final void y0(PhysicsVehicle physicsVehicle, String str, int i10) {
        this.f94069m.print(':');
        C14236l x10 = x();
        String str2 = str + y();
        for (int i11 = 0; i11 < i10; i11++) {
            this.f94069m.printf("%n%s[%d] ", str2, Integer.valueOf(i11));
            VehicleWheel wheel = physicsVehicle.getWheel(i11);
            this.f94069m.print(x10.f0(wheel));
            this.f94069m.printf("%n%s ", str2);
            this.f94069m.print(x10.i0(wheel));
            this.f94069m.print(" raycast=");
            float castRay = physicsVehicle.castRay(i11);
            this.f94069m.print(C13724t.e(castRay));
            if (castRay >= 0.0f) {
                this.f94069m.print(" skid=");
                this.f94069m.print(C13724t.e(wheel.getSkidInfo()));
            }
        }
        b(str);
    }

    @Override
    public C14236l x() {
        return (C14236l) super.x();
    }

    public C14237m(PrintStream printStream) {
        super(printStream);
        this.f96978q = false;
        this.f96979r = false;
        this.f96980s = false;
        this.f96981t = false;
        this.f96982u = false;
        this.f96983v = false;
        this.f96984w = false;
        this.f96985x = false;
        this.f96986y = false;
        this.f96987z = true;
        J(new C14236l());
    }
}
