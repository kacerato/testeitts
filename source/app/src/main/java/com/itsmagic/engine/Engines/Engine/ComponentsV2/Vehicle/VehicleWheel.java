package com.itsmagic.engine.Engines.Engine.ComponentsV2.Vehicle;

import C5.b;
import D5.h;
import Ic.A;
import Ic.C2626e;
import JAVARuntime.Color;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.VehiclePhysics;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.bullet.objects.PhysicsVehicle;
import com.jme3.math.Vector3f;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import ib.C13599f;
import ib.InterfaceC13594a;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import javax.vecmath.Quat4f;

public class VehicleWheel extends Component implements Serializable {

    public static final float f77528R2 = 0.01f;

    public static final float f77529V2 = 0.25f;

    public static final float f77530i3 = 0.005f;

    public static final boolean f77531m3 = true;

    public static final String f77532q3 = "VehicleWheel";

    public static final Class f77533v3 = VehicleWheel.class;

    public float f77534D0;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f77535D2;

    public transient Vector3 f77536E;

    public transient Vector3 f77537F;

    public final Quat4f f77538F1;

    public final List<GameObject> f77539F2;

    public transient Vector3 f77540G;

    public final transient Vector3 f77541H;

    public float f77542H1;

    public final Vector3 f77543H2;

    public final transient Quaternion f77544I;

    public final transient com.itsmagic.engine.Engines.Engine.Vector.f f77545J;

    public transient boolean f77546K;

    public transient VehiclePhysics f77547L;

    public float f77548L1;

    public GizmoObject f77549L2;

    public transient com.jme3.bullet.objects.VehicleWheel f77550M;

    public float f77551M1;

    public JAVARuntime.Component f77552M2;

    public transient boolean f77553N;

    public transient boolean f77554O;

    public transient boolean f77555P;

    public transient boolean f77556Q;

    public transient float f77557R;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f77558R1;

    public transient float f77559S;

    public transient float f77560T;

    public final transient Vector3 f77561U;

    public transient float f77562V;

    public final Quaternion f77563V1;

    public final transient Quaternion f77564W;

    public float f77565X;

    public float f77566Y;

    public float f77567Z;

    public float f77568b1;

    public final Quaternion f77569b2;

    @Expose
    @eb.f
    public float camber;

    @Expose
    @eb.f
    public float frictionSlip;

    public boolean f77570i1;

    public final Quaternion f77571i2;

    public float f77572m1;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f77573m2;

    public final C2626e f77574q0;

    public float f77575q1;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f77576q2;

    @Expose
    @eb.f
    public float radius;

    @Expose
    private boolean refactoredChildren;

    @Expose
    @eb.f
    public float suspensionRestLength;

    public float f77577v0;

    public final InterfaceC13594a f77578v1;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f77579v2;

    public final Vector3f f77580y1;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return VehicleWheel.f77533v3;
        }

        @Override
        public String c() {
            return VehicleWheel.f77532q3;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.VEHICLE);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.VEHICLE_WHEEL);
        }
    }

    public class b implements InterfaceC13594a {
        public b() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f hierarchyMatrix) {
            VehicleWheel.this.refreshConnectionPointFromHierarchy(hierarchyMatrix);
        }
    }

    public class c implements Runnable {

        public final GameObject f77582b;

        public final List f77583c;

        public final HashMap f77584d;

        public class a implements Runnable {

            public class RunnableC1287a implements Runnable {

                public final GameObject f77587b;

                public RunnableC1287a(final GameObject val$child) {
                    this.f77587b = val$child;
                }

                @Override
                public void run() {
                    this.f77587b.transform.e2((C13599f) c.this.f77584d.get(this.f77587b));
                }
            }

            public a() {
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < c.this.f77583c.size(); i10++) {
                    GameObject gameObject = (GameObject) c.this.f77583c.get(i10);
                    gameObject.F1(c.this.f77582b);
                    K8.a.h(2, new RunnableC1287a(gameObject));
                }
            }
        }

        public c(final GameObject val$newParent, final List val$models, final HashMap val$snapshopHashMap) {
            this.f77582b = val$newParent;
            this.f77583c = val$models;
            this.f77584d = val$snapshopHashMap;
        }

        @Override
        public void run() {
            this.f77582b.transform.G3();
            this.f77582b.transform.setPosition(0.0f);
            this.f77582b.transform.setScale(1.0f);
            K8.a.h(2, new a());
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehicleWheel.this.radius + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehicleWheel.this.radius = variable.float_value;
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehicleWheel.this.suspensionRestLength + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehicleWheel.this.suspensionRestLength = variable.float_value;
            }
        }
    }

    public class f implements h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehicleWheel.this.frictionSlip + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehicleWheel.this.frictionSlip = variable.float_value;
            }
        }
    }

    public class g implements h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehicleWheel.this.camber + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehicleWheel.this.camber = variable.float_value;
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public VehicleWheel() {
        super(f77532q3);
        this.radius = 0.5f;
        this.suspensionRestLength = 0.2f;
        this.frictionSlip = 0.9f;
        this.refactoredChildren = false;
        this.camber = 0.0f;
        this.f77536E = null;
        this.f77537F = new Vector3(0.0f, -1.0f, 0.0f);
        this.f77540G = new Vector3(-1.0f, 0.0f, 0.0f);
        this.f77541H = new Vector3();
        this.f77544I = new Quaternion();
        this.f77545J = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77546K = false;
        this.f77554O = false;
        this.f77555P = false;
        this.f77556Q = true;
        this.f77557R = 0.01f;
        this.f77559S = 0.25f;
        this.f77560T = 0.005f;
        this.f77561U = new Vector3();
        this.f77562V = 0.0f;
        this.f77564W = new Quaternion();
        this.f77566Y = 0.0f;
        this.f77567Z = 0.0f;
        this.f77574q0 = new C2626e();
        this.f77570i1 = false;
        this.f77578v1 = new b();
        this.f77580y1 = new Vector3f();
        this.f77538F1 = new Quat4f();
        this.f77542H1 = 0.0f;
        this.f77548L1 = 0.0f;
        this.f77551M1 = 0.0f;
        this.f77558R1 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77563V1 = new Quaternion();
        this.f77569b2 = new Quaternion();
        this.f77571i2 = new Quaternion();
        this.f77573m2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77576q2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77579v2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77535D2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77539F2 = new SteppedArrayList(12);
        this.f77543H2 = new Vector3();
        this.f77549L2 = null;
    }

    private boolean areWheelHierarchyListenerPropertiesOutdated() {
        return (!this.f77554O && !this.f77555P && this.f77556Q && this.f77557R == 0.01f && this.f77559S == 0.25f && this.f77560T == 0.005f) ? false : true;
    }

    private void clearVehiclePhysicsBinding() {
        detachFromVehiclePhysics();
        removeWheelHierarchyMatrixListeners();
        this.f77547L = null;
    }

    private void detachFromVehiclePhysics() {
        VehiclePhysics vehiclePhysics;
        if (this.f77546K && (vehiclePhysics = this.f77547L) != null) {
            vehiclePhysics.removeWheel(this, this.f77550M);
        }
        this.f77550M = null;
        this.f77546K = false;
        this.f77536E = null;
        this.f77562V = 0.0f;
        this.f77563V1.C0();
        this.f77564W.C0();
        syncWheelChildOffsets();
    }

    private void editorSetScales1(GameObject gameObject) {
    }

    private void migrateToNewStructure() {
        if (this.refactoredChildren) {
            return;
        }
        this.refactoredChildren = true;
        HashMap hashMap = new HashMap();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            GameObject C10 = this.f79250n.C(i10);
            hashMap.put(C10, C10.transform.Z3());
            steppedArrayList.add(C10);
        }
        GameObject gameObject = new GameObject("[AutoGen-ModelPivot]");
        gameObject.R1(this.f79250n);
        K8.a.h(1, new c(gameObject, steppedArrayList, hashMap));
    }

    private void reconcileVehiclePhysicsBinding(VehiclePhysics nextVehiclePhysics) {
        VehiclePhysics vehiclePhysics;
        if (!isHierarchyActive()) {
            clearVehiclePhysicsBinding();
            return;
        }
        VehiclePhysics vehiclePhysics2 = this.f77547L;
        if (vehiclePhysics2 != nextVehiclePhysics) {
            clearVehiclePhysicsBinding();
            this.f77547L = nextVehiclePhysics;
        } else if (this.f77546K && (vehiclePhysics2 == null || vehiclePhysics2.f74469R == null)) {
            detachFromVehiclePhysics();
        }
        refreshHierarchyMatrixListenerBinding();
        if (this.f77546K || (vehiclePhysics = this.f77547L) == null || vehiclePhysics.f74469R == null) {
            return;
        }
        this.f77546K = vehiclePhysics.addWheel(this);
    }

    private void refreshConnectionPointFromCurrentHierarchy() {
        Transform transform;
        VehiclePhysics vehiclePhysics;
        GameObject gameObject;
        Transform transform2;
        GameObject gameObject2 = this.f79250n;
        if (gameObject2 == null || (transform = gameObject2.transform) == null || (vehiclePhysics = this.f77547L) == null || (gameObject = vehiclePhysics.f79250n) == null || (transform2 = gameObject.transform) == null) {
            return;
        }
        transform.Q0(transform2, this.f77545J);
        refreshConnectionPointFromHierarchy(this.f77545J);
    }

    public void refreshConnectionPointFromHierarchy(com.itsmagic.engine.Engines.Engine.Vector.f hierarchyMatrix) {
        VehiclePhysics vehiclePhysics;
        if (hierarchyMatrix == null) {
            return;
        }
        hierarchyMatrix.D1(this.f77561U);
        Vector3 vector3 = this.f77536E;
        boolean z10 = vector3 == null || !vector3.equalsApprox(this.f77561U, 0.01f);
        if (this.f77536E == null) {
            this.f77536E = new Vector3();
        }
        this.f77536E.set(this.f77561U);
        if (!z10 || (vehiclePhysics = this.f77547L) == null || !this.f77546K || this.f77550M == null) {
            return;
        }
        vehiclePhysics.requestWheelRefresh();
    }

    private void refreshHierarchyMatrixListenerBinding() {
        GameObject gameObject;
        GameObject gameObject2 = this.f79250n;
        if (gameObject2 == null || gameObject2.transform == null) {
            return;
        }
        VehiclePhysics resolveVehiclePhysicsFromHierarchy = resolveVehiclePhysicsFromHierarchy();
        if (this.f77547L != resolveVehiclePhysicsFromHierarchy) {
            if (this.f77553N) {
                removeWheelHierarchyMatrixListeners();
            }
            this.f77547L = resolveVehiclePhysicsFromHierarchy;
        }
        VehiclePhysics vehiclePhysics = this.f77547L;
        if (vehiclePhysics == null || (gameObject = vehiclePhysics.f79250n) == null || gameObject.transform == null) {
            removeWheelHierarchyMatrixListeners();
            return;
        }
        if (this.f77553N) {
            if (areWheelHierarchyListenerPropertiesOutdated()) {
                updateWheelHierarchyListenerProperties();
            }
        } else {
            saveWheelHierarchyListenerProperties();
            this.f79250n.transform.r(this.f77547L.f79250n.transform, this.f77578v1, this.f77554O, this.f77555P, this.f77556Q, this.f77557R, this.f77559S, this.f77560T);
            this.f77553N = true;
        }
    }

    private void removeWheelHierarchyMatrixListeners() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null && this.f77553N) {
            transform.M2(this.f77578v1);
        }
        this.f77553N = false;
        this.f77554O = false;
        this.f77555P = false;
        this.f77556Q = true;
        this.f77557R = 0.01f;
        this.f77559S = 0.25f;
        this.f77560T = 0.005f;
    }

    private VehiclePhysics resolveVehiclePhysicsFromHierarchy() {
        if (C13317e.J(this.f79250n)) {
            return (VehiclePhysics) this.f79250n.i0(VehiclePhysics.class);
        }
        return null;
    }

    private void saveWheelHierarchyListenerProperties() {
        this.f77554O = false;
        this.f77555P = false;
        this.f77556Q = true;
        this.f77557R = 0.01f;
        this.f77559S = 0.25f;
        this.f77560T = 0.005f;
    }

    private void syncWheelChildOffsets() {
        Transform transform;
        if (C13317e.J(this.f79250n)) {
            List<GameObject> z02 = this.f79250n.z0();
            for (int i10 = 0; i10 < z02.size(); i10++) {
                GameObject gameObject = z02.get(i10);
                if (C13317e.J(gameObject) && (transform = gameObject.transform) != null) {
                    float f10 = this.f77562V;
                    if (Nc.b.k(transform.h0().getY() - f10) > 0.01f) {
                        gameObject.transform.u3(f10);
                    }
                    this.f77564W.u0(this.f77563V1);
                    if (!gameObject.transform.i0().r(this.f77564W)) {
                        gameObject.transform.x3(this.f77564W);
                    }
                }
            }
        }
    }

    private void updateSuspensionTravelPercentage() {
        float suspensionLength = this.f77550M.getSuspensionLength();
        float f10 = this.f77575q1;
        if (!Float.isFinite(suspensionLength) || !Float.isFinite(f10) || f10 <= 0.0f) {
            this.f77572m1 = 0.0f;
            this.f77570i1 = false;
        } else {
            float I10 = Nc.b.I(suspensionLength / f10) / this.suspensionRestLength;
            this.f77572m1 = I10;
            this.f77570i1 = I10 <= 0.95f;
        }
    }

    private void updateWheelHierarchyListenerProperties() {
        GameObject gameObject;
        Transform transform;
        VehiclePhysics vehiclePhysics = this.f77547L;
        if (vehiclePhysics == null || (gameObject = vehiclePhysics.f79250n) == null || (transform = gameObject.transform) == null || !this.f79250n.transform.w4(transform, this.f77578v1, this.f77554O, this.f77555P, this.f77556Q, this.f77557R, this.f77559S, this.f77560T)) {
            return;
        }
        saveWheelHierarchyListenerProperties();
    }

    private void updateWheelModel(Vector3f tmpChassisPhysicsPos, com.jme3.math.Quaternion tmpChassisPhysicsRot) {
        if (C13317e.G(this.f79250n)) {
            return;
        }
        GameObject gameObject = this.f79250n;
        Transform transform = gameObject.transform;
        VehiclePhysics vehiclePhysics = this.f77547L;
        if (vehiclePhysics == null || vehiclePhysics.f74469R == null || C13317e.G(gameObject) || C13317e.G(this.f79250n.f79294k)) {
            return;
        }
        GameObject gameObject2 = this.f77547L.f79250n;
        if (C13317e.G(gameObject2)) {
            return;
        }
        this.f77539F2.clear();
        GameObject gameObject3 = this.f79250n.f79294k;
        while (gameObject3 != null && gameObject3 != gameObject2) {
            this.f77539F2.add(gameObject3);
            gameObject3 = gameObject3.f79294k;
        }
        if (gameObject3 != gameObject2) {
            return;
        }
        this.f77576q2.f1(tmpChassisPhysicsPos, tmpChassisPhysicsRot, gameObject2.transform.j0());
        this.f77573m2.s0(this.f77576q2);
        for (int size = this.f77539F2.size() - 1; size >= 0; size--) {
            GameObject gameObject4 = this.f77539F2.get(size);
            this.f77535D2.Z0(gameObject4.transform.h0(), gameObject4.transform.i0(), gameObject4.transform.j0());
            com.itsmagic.engine.Engines.Engine.Vector.f fVar = this.f77573m2;
            fVar.L(this.f77535D2, fVar);
        }
        this.f77558R1.l(this.f77573m2);
        this.f77558R1.E();
        com.itsmagic.engine.Engines.Engine.Vector.f fVar2 = this.f77558R1;
        Vector3f vector3f = this.f77580y1;
        fVar2.S(vector3f, vector3f);
        this.f77543H2.set(transform.h0());
        float y10 = this.f77543H2.getY();
        this.f77543H2.setY(this.f77580y1.getY());
        this.f77562V = this.f77543H2.getY() - y10;
        this.f77571i2.v(0.0f, this.f77551M1, 0.0f);
        this.f77569b2.v(0.0f, 0.0f, this.camber);
        this.f77563V1.v(this.f77548L1, 0.0f, 0.0f);
        this.f77571i2.i0(this.f77569b2);
        this.f77571i2.i0(this.f77563V1);
        this.f77563V1.u0(this.f77571i2);
        this.f77535D2.Z0(this.f77543H2, this.f77563V1, transform.j0());
        this.f77573m2.L(this.f77535D2, this.f77579v2);
        this.f77579v2.D1(this.f77541H);
        this.f77579v2.r1(this.f77544I);
        VehiclePhysics vehiclePhysics2 = this.f77547L;
        if (vehiclePhysics2 == null || !C13317e.J(vehiclePhysics2.f79250n) || this.f77536E == null) {
            this.f77572m1 = 0.0f;
            this.f77570i1 = false;
        } else {
            updateSuspensionTravelPercentage();
        }
    }

    public boolean addToVehicle(PhysicsVehicle physicsVehicle, VehiclePhysics vehiclePhysics) {
        if (physicsVehicle != null && vehiclePhysics != null && C13317e.J(this.f79250n)) {
            refreshHierarchyMatrixListenerBinding();
            if (this.f77536E == null) {
                refreshConnectionPointFromCurrentHierarchy();
            }
            if (this.f77536E == null) {
                this.f77536E = new Vector3();
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                try {
                    this.f79250n.transform.u0(vector3);
                    this.f77536E.set(vehiclePhysics.f79250n.transform.S1(vector3));
                } finally {
                    JP.release(vector3);
                }
            }
            try {
                com.jme3.bullet.objects.VehicleWheel addWheel = physicsVehicle.addWheel(this.f77536E.toVector3f(), this.f77537F.toVector3f(), this.f77540G.toVector3f(), this.suspensionRestLength * ((vehiclePhysics.maxSuspensionTravelCm * vehiclePhysics.lengthOverSpeed.p(Nc.b.k(vehiclePhysics.getSpeedPercentage()))) / 100.0f), this.radius, false);
                this.f77550M = addWheel;
                if (addWheel == null) {
                    System.out.println("FAILED TO ADD VEHICLE WHEEL");
                }
                boolean z10 = this.f77550M != null;
                this.f77546K = z10;
                return z10;
            } catch (Exception e10) {
                e10.printStackTrace();
                this.f77546K = false;
            }
        }
        return false;
    }

    public void beforeVehiclePhysics(VehiclePhysics vehiclePhysics) {
        if (this.f77550M != null) {
            float speedPercentage = vehiclePhysics.getSpeedPercentage();
            float p10 = vehiclePhysics.maxSuspensionTravelCm * vehiclePhysics.lengthOverSpeed.p(Nc.b.k(speedPercentage));
            float p11 = vehiclePhysics.suspensionStiffness * vehiclePhysics.stiffnessOverSpeed.p(Nc.b.k(speedPercentage));
            float p12 = vehiclePhysics.suspensionDamping * vehiclePhysics.dampingOverSpeed.p(Nc.b.k(speedPercentage));
            float M10 = Nc.b.M(8.0f, p11);
            this.f77575q1 = p10 / 100.0f;
            this.f77550M.setRadius(this.radius);
            this.f77550M.setRestLength(this.suspensionRestLength * this.f77575q1);
            this.f77550M.setFrictionSlip(this.frictionSlip);
            this.f77550M.setMaxSuspensionForce(10000.0f);
            this.f77550M.setMaxSuspensionTravelCm(p10);
            this.f77550M.setSuspensionStiffness(M10);
            this.f77550M.setWheelsDampingCompression(0.83f * p12);
            this.f77550M.setWheelsDampingRelaxation(p12 * 0.88f);
            this.f77567Z = this.suspensionRestLength * this.f77575q1;
        }
    }

    public void clearVehicleAttachmentForRebuild(PhysicsVehicle physicsVehicle) {
        com.jme3.bullet.objects.VehicleWheel vehicleWheel = this.f77550M;
        if (vehicleWheel != null && physicsVehicle != null) {
            try {
                physicsVehicle.removeWheel(vehicleWheel.getIndex());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.f77550M = null;
        this.f77546K = false;
    }

    public void drawGizmo() {
        if (this.f77549L2 == null) {
            GizmoObject gizmoObject = new GizmoObject(Vertex.E1(Vertex.v.CIRCLE, null).x2());
            this.f77549L2 = gizmoObject;
            gizmoObject.setColor(new Color(0, 255, 0));
            this.f77549L2.setRenderMode(GizmoElement.RenderMode.WireFrame);
        }
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
        Quaternion quaternion2 = (Quaternion) JP.acquire(Quaternion.class);
        this.f79250n.J0().u0(vector3);
        this.f77549L2.setPosition(vector3.toJAVARuntime());
        this.f77549L2.setScale(this.radius * 2.0f);
        this.f79250n.transform.C0(quaternion);
        quaternion.i0(Quaternion.m(0.0f, 0.0f, 1.0f, 90.0f, quaternion2));
        quaternion.i0(Quaternion.m(0.0f, 1.0f, 0.0f, 65.0f, quaternion2));
        this.f77549L2.setRotation(quaternion.N0());
        Ub.a.a(this.f77549L2);
        JP.release(vector3);
        JP.release(quaternion);
        JP.release(quaternion2);
    }

    public float getCamber() {
        return this.camber;
    }

    public float getCurrentBrake() {
        return this.f77534D0;
    }

    public float getCurrentSteer() {
        return this.f77568b1;
    }

    public float getCurrentTorque() {
        return this.f77577v0;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.VEHICLE_WHEEL);
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_vehiclewheel;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_vehicle;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        GameObject gameObject = this.f79250n;
        d dVar = new d();
        String l10 = Lang.l(Lang.T.RADIUS);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(dVar, l10, aVar);
        if (gameObject != null) {
            bVar.d(gameObject, this, TestVFXEffect.f77524P, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b(new e(), Lang.l(Lang.T.SUSPENSION_REST_LENGTH), aVar);
        if (gameObject != null) {
            bVar2.d(gameObject, this, "suspensionRestLength", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new f(), Lang.l(Lang.T.FRICTION_SLIP), aVar);
        if (gameObject != null) {
            bVar3.d(gameObject, this, "frictionSlip", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new g(), "Camber", aVar);
        if (gameObject != null) {
            bVar4.d(gameObject, this, "camber", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar4);
        return linkedList;
    }

    public Vector3 getModelPosition() {
        return this.f77541H;
    }

    public Quaternion getModelRotation() {
        return this.f77544I;
    }

    public float getRotation() {
        com.jme3.bullet.objects.VehicleWheel vehicleWheel = this.f77550M;
        if (vehicleWheel != null) {
            return Nc.b.J1(vehicleWheel.getRotationAngle());
        }
        return 0.0f;
    }

    public float getSkidding() {
        return this.f77565X;
    }

    public float getSuspensionTravelPercentage() {
        return this.f77572m1;
    }

    @Override
    public String getTitle() {
        return f77532q3;
    }

    @Override
    public Component.e getType() {
        return Component.e.VehicleWheel;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public void incrementRotation(float r10) {
        if (this.f77550M != null) {
            C2626e c2626e = this.f77574q0;
            c2626e.d(c2626e.b() + ((float) Nc.b.K1(r10)));
        }
    }

    public boolean isGrounded() {
        return this.f77570i1;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        migrateToNewStructure();
        reconcileVehiclePhysicsBinding(resolveVehiclePhysicsFromHierarchy());
    }

    @Override
    public void onDetach() {
        clearVehiclePhysicsBinding();
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            reconcileVehiclePhysicsBinding(resolveVehiclePhysicsFromHierarchy());
        } else {
            clearVehiclePhysicsBinding();
        }
    }

    @Override
    public void onHostPhysicsEntityChanged(PhysicsComponent physicsComponent) {
        super.onHostPhysicsEntityChanged(physicsComponent);
        reconcileVehiclePhysicsBinding(physicsComponent instanceof VehiclePhysics ? (VehiclePhysics) physicsComponent : physicsComponent == null ? resolveVehiclePhysicsFromHierarchy() : null);
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        reconcileVehiclePhysicsBinding(resolveVehiclePhysicsFromHierarchy());
    }

    public void posVehiclePhysics(VehiclePhysics vehiclePhysics, Vector3f tmpChassisPhysicsPos, com.jme3.math.Quaternion tmpChassisPhysicsRot) {
        com.jme3.bullet.objects.VehicleWheel vehicleWheel = this.f77550M;
        if (vehicleWheel != null) {
            vehicleWheel.updatePhysicsState();
            this.f77550M.getWheelWorldLocation(this.f77580y1);
            com.jme3.bullet.objects.VehicleWheel vehicleWheel2 = this.f77550M;
            vehicleWheel2.setRotationAngle(Nc.b.z(this.f77542H1, vehicleWheel2.getRotationAngle(), 1.0f - this.f77566Y));
            this.f77550M.setRotationAngle(this.f77550M.getRotationAngle() + this.f77574q0.c(0.0f));
            float rotationAngle = this.f77550M.getRotationAngle();
            this.f77542H1 = rotationAngle;
            this.f77548L1 = Nc.b.J1(rotationAngle);
            this.f77551M1 = Nc.b.J1(this.f77550M.getSteerAngle());
            updateWheelModel(tmpChassisPhysicsPos, tmpChassisPhysicsRot);
            this.f77565X = 1.0f - this.f77550M.getSkidInfo();
            if (c8.b.k()) {
                this.f79250n.posWheelPhysics();
            }
        }
    }

    @Override
    public void posWheelPhysics() {
        syncWheelChildOffsets();
    }

    public void setBrake(float brake) {
        this.f77534D0 = A.b(brake);
    }

    public void setCamber(float camber) {
        this.camber = camber;
    }

    public void setRotation(float r10) {
        com.jme3.bullet.objects.VehicleWheel vehicleWheel = this.f77550M;
        if (vehicleWheel != null) {
            vehicleWheel.setRotationAngle((float) Nc.b.K1(r10));
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77552M2 = run;
    }

    public void setSkidding(float skidding) {
        this.f77565X = skidding;
    }

    public void setSteering(float steer) {
        this.f77568b1 = A.b(steer);
    }

    public void setTorque(float torque) {
        this.f77577v0 = A.b(torque);
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77552M2;
        if (component != null) {
            return component;
        }
        JAVARuntime.VehicleWheel vehicleWheel = new JAVARuntime.VehicleWheel(this);
        this.f77552M2 = vehicleWheel;
        return vehicleWheel;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        if (c8.b.l()) {
            editorSetScales1(this.f79250n);
        }
        drawGizmo();
    }

    @Override
    public Component mo1248clone() {
        VehicleWheel vehicleWheel = new VehicleWheel();
        vehicleWheel.radius = this.radius;
        vehicleWheel.suspensionRestLength = this.suspensionRestLength;
        vehicleWheel.frictionSlip = this.frictionSlip;
        vehicleWheel.refactoredChildren = this.refactoredChildren;
        return vehicleWheel;
    }
}
