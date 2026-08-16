package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Utils.Freeze;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Vehicle.VehicleWheel;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsVehicle;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jdt.core.Signature;
import rb.InterfaceC15168a;

public class VehiclePhysics extends PhysicsComponent {

    public static final String f74456v1 = "VehiclePhysics";

    public static final Class f74457y1 = VehiclePhysics.class;

    public final Vector3f f74458D0;

    public int f74459H;

    public int f74460I;

    public Vector3 f74461J;

    public Vector3f f74462K;

    public Vector3 f74463L;

    public Vector3f f74464M;

    public float f74465N;

    public float f74466O;

    public float f74467P;

    public CompoundCollisionShape f74468Q;

    public PhysicsVehicle f74469R;

    public int f74470S;

    public boolean f74471T;

    public Transform.G f74472U;

    public transient List<VehicleWheel> f74473V;

    public float f74474W;

    public boolean f74475X;

    public boolean f74476Y;

    public final Vector3f f74477Z;

    @Expose
    @eb.f
    public float angularDamping;

    public final Vector3f f74478b1;

    @Expose
    @eb.f
    public float bounciness;

    @Expose
    public InspectorEditor carSetupEditor;

    @Expose
    @eb.f
    public float ccdMotionThreshold;

    @Expose
    @eb.f
    public float ccdSweptSphereRadius;

    @Expose
    private boolean collisionEvents;

    @Expose
    public Curve dampingOverSpeed;

    @Expose
    public Freeze freeze;

    @Expose
    @eb.f
    public float friction;

    @Expose
    @eb.f
    private Vector3 gravityMultiplier;

    public final Quaternion f74479i1;

    @Expose
    public ExposableLayerReference layerReference;

    @Expose
    public Curve lengthOverSpeed;

    @Expose
    @eb.f
    public float linearDamping;

    public boolean f74480m1;

    @Expose
    @eb.f
    public float mass;

    @Expose
    @eb.f
    public float maxSpeed;

    @Expose
    @eb.f
    public float maxSuspensionTravelCm;

    public final Vector3f f74481q0;

    public Component f74482q1;

    @Expose
    public InspectorEditor rbSetupEditor;

    @Expose
    public Curve stiffnessOverSpeed;

    @Expose
    @eb.f
    public float suspensionDamping;

    @Expose
    @eb.f
    public float suspensionStiffness;

    @Expose
    public boolean useGravity;

    public final Quaternion f74483v0;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.linearDamping + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.linearDamping = variable.float_value;
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.angularDamping + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.angularDamping = variable.float_value;
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.bounciness + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.bounciness = variable.float_value;
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.useGravity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.useGravity = variable.booolean_value.booleanValue();
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.collisionEvents + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.collisionEvents = variable.booolean_value.booleanValue();
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.freeze.PX ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.freeze.PX = variable.booolean_value.booleanValue();
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.freeze.PY ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.freeze.PY = variable.booolean_value.booleanValue();
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.freeze.PZ ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.freeze.PZ = variable.booolean_value.booleanValue();
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.freeze.RX ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.freeze.RX = variable.booolean_value.booleanValue();
                VehiclePhysics.this.f74465N = -1.0f;
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.freeze.RY ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.freeze.RY = variable.booolean_value.booleanValue();
                VehiclePhysics.this.f74465N = -1.0f;
            }
        }
    }

    public class k extends AbstractC13203c {
        @Override
        public Class b() {
            return VehiclePhysics.f74457y1;
        }

        @Override
        public String c() {
            return VehiclePhysics.f74456v1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.VEHICLE_PHYSICS);
        }
    }

    public class l implements D5.h {
        public l() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.freeze.RZ ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.freeze.RZ = variable.booolean_value.booleanValue();
                VehiclePhysics.this.f74465N = -1.0f;
            }
        }
    }

    public class m implements D5.h {
        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.maxSpeed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.maxSpeed = variable.float_value;
            }
        }
    }

    public class n implements D5.h {
        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.maxSuspensionTravelCm + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.maxSuspensionTravelCm = variable.float_value;
            }
        }
    }

    public class o implements D5.h {
        public o() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.suspensionStiffness + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.suspensionStiffness = variable.float_value;
            }
        }
    }

    public class p implements D5.h {
        public p() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.suspensionDamping + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.suspensionDamping = variable.float_value;
            }
        }
    }

    public class q implements D5.h {
        public q() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            VehiclePhysics.this.loadDefaults();
        }
    }

    public class r implements D5.h {
        public r() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.mass + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.mass = variable.float_value;
            }
        }
    }

    public class s implements InterfaceC15168a {
        public s() {
        }

        @Override
        public void a(Layer newLayer) {
        }
    }

    public class t implements D5.h {
        public t() {
        }

        @Override
        public Variable get() {
            return new Variable("", VehiclePhysics.this.friction + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VehiclePhysics.this.friction = variable.float_value;
            }
        }
    }

    public enum u {
        Discrete,
        Continuous
    }

    static {
        C13201a.b(new k());
    }

    public VehiclePhysics() {
        super(f74456v1);
        this.maxSuspensionTravelCm = 50.0f;
        this.suspensionStiffness = 40.0f;
        this.suspensionDamping = 0.8f;
        this.maxSpeed = 100.0f;
        this.mass = 100.0f;
        this.useGravity = true;
        this.friction = 0.5f;
        this.linearDamping = 0.01f;
        this.angularDamping = 0.01f;
        this.bounciness = 0.0f;
        this.ccdMotionThreshold = 0.1f;
        this.ccdSweptSphereRadius = 0.1f;
        this.gravityMultiplier = new Vector3(1.0f);
        this.layerReference = new ExposableLayerReference();
        this.collisionEvents = true;
        this.freeze = new Freeze();
        this.carSetupEditor = new InspectorEditor();
        this.rbSetupEditor = new InspectorEditor();
        this.f74461J = new Vector3();
        this.f74462K = new Vector3f();
        this.f74463L = new Vector3();
        this.f74464M = new Vector3f();
        this.f74465N = -1.0f;
        this.f74466O = -9999.0f;
        this.f74467P = -9999.0f;
        this.f74471T = false;
        this.f74472U = null;
        this.f74473V = new LinkedList();
        this.f74475X = false;
        this.f74476Y = false;
        this.f74477Z = new Vector3f();
        this.f74481q0 = new Vector3f();
        this.f74483v0 = new Quaternion();
        this.f74458D0 = new Vector3f();
        this.f74478b1 = new Vector3f();
        this.f74479i1 = new Quaternion();
        this.f74480m1 = false;
        loadDefaults();
    }

    private void RemoveRigidbodyFromPhysics() {
        try {
            K8.a.f10984o.f2506c.remove(this.f74469R);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f74469R = null;
        this.f74468Q = null;
        this.f74480m1 = false;
        this.f74471T = false;
        this.f74459H = 0;
        this.f74460I = 0;
        this.f74465N = -1.0f;
        this.f74466O = -9999.0f;
        this.f74467P = -9999.0f;
        propagateDettachHostPhysicsEntityChanged();
    }

    private void addToPhysics() {
        float f10 = this.mass;
        if (f10 <= 0.0f) {
            f10 = 1.0f;
        }
        this.f74472U = this.f79250n.transform.w1();
        if (this.f79250n.transform.a2()) {
            f10 = 0.0f;
        }
        if (this.f74468Q == null) {
            this.f74468Q = new CompoundCollisionShape();
        }
        PhysicsVehicle physicsVehicle = new PhysicsVehicle(this.f74468Q, f10);
        this.f74469R = physicsVehicle;
        physicsVehicle.setUserObject(this);
        fillPositionCache(this.f79250n.transform.Z0());
        this.f74469R.setPhysicsLocation(this.f74481q0);
        this.f74469R.setGravity(new Vector3f(0.0f, -9.81f, 0.0f));
        fillCriticalTransformCache();
        this.f74469R.setPhysicsLocation(this.f74481q0);
        this.f74469R.setPhysicsRotation(this.f74483v0);
        updateLayer(this.f74469R);
        synchronized (Cc.c.f2503k) {
            K8.a.f10984o.f2506c.add(this.f74469R);
        }
        propagateNewHostPhysicsEntityChanged();
    }

    private void fillCriticalTransformCache() {
        fillPositionCache(this.f79250n.transform.h0());
        com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion i02 = this.f79250n.transform.i0();
        this.f74483v0.set(i02.getX(), i02.getY(), i02.getZ(), i02.I());
    }

    private void fillPositionCache(Vector3 position) {
        this.f74481q0.set(position.getX(), position.getY(), position.getZ());
    }

    public void loadDefaults() {
        this.maxSuspensionTravelCm = 50.0f;
        this.suspensionStiffness = 40.0f;
        this.suspensionDamping = 0.8f;
        this.maxSpeed = 100.0f;
        Curve curve = new Curve(N7.c.t());
        this.lengthOverSpeed = curve;
        curve.clear();
        this.lengthOverSpeed.f(0.0f, 1.0f);
        this.lengthOverSpeed.f(0.25f, 0.833f);
        this.lengthOverSpeed.f(0.75f, 0.733f);
        this.lengthOverSpeed.f(1.0f, 0.6f);
        this.lengthOverSpeed.apply();
        Curve curve2 = new Curve(N7.c.t());
        this.stiffnessOverSpeed = curve2;
        curve2.clear();
        this.stiffnessOverSpeed.f(0.0f, 0.2f);
        this.stiffnessOverSpeed.f(0.25f, 0.4f);
        this.stiffnessOverSpeed.f(0.75f, 0.6f);
        this.stiffnessOverSpeed.f(1.0f, 1.0f);
        this.stiffnessOverSpeed.apply();
        Curve curve3 = new Curve(N7.c.t());
        this.dampingOverSpeed = curve3;
        curve3.clear();
        this.dampingOverSpeed.f(0.7f, 0.7f);
        this.dampingOverSpeed.f(0.25f, 0.8f);
        this.dampingOverSpeed.f(0.75f, 0.9f);
        this.dampingOverSpeed.f(1.0f, 1.0f);
        this.dampingOverSpeed.apply();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void rebuildWheelsIfNeeded() {
        if (!this.f74475X || this.f74469R == null || this.f74476Y) {
            return;
        }
        this.f74476Y = true;
        try {
            this.f74475X = false;
            SteppedArrayList steppedArrayList = new SteppedArrayList(this.f74473V);
            for (int size = steppedArrayList.size() - 1; size >= 0; size--) {
                VehicleWheel vehicleWheel = (VehicleWheel) steppedArrayList.get(size);
                if (vehicleWheel != null) {
                    vehicleWheel.clearVehicleAttachmentForRebuild(this.f74469R);
                }
            }
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                VehicleWheel vehicleWheel2 = (VehicleWheel) steppedArrayList.get(i10);
                if (vehicleWheel2 != null) {
                    vehicleWheel2.addToVehicle(this.f74469R, this);
                }
            }
            if (this.f74469R.getController() != null) {
                this.f74469R.resetSuspension();
            }
            this.f74476Y = false;
        } catch (Throwable th2) {
            this.f74476Y = false;
            throw th2;
        }
    }

    private void updateLayer(PhysicsRigidBody bulletRigidbody) {
        if (this.f74459H == this.layerReference.i().f79543c && this.f74460I == this.layerReference.i().hashCode()) {
            return;
        }
        this.f74459H = this.layerReference.i().f79543c;
        this.f74460I = this.layerReference.i().hashCode();
        int g10 = this.layerReference.g();
        int h10 = this.layerReference.h();
        synchronized (Cc.c.f2503k) {
            bulletRigidbody.setCollisionGroup(g10);
            bulletRigidbody.setCollideWithGroups(h10);
        }
    }

    public void addForce(Vector3 force, Vector3 relativePosition) {
        if (force == null) {
            throw new NullPointerException("force can't be null");
        }
        if (relativePosition != null) {
            if (this.f74469R != null) {
                this.f74458D0.set(relativePosition.getX(), relativePosition.getY(), relativePosition.getZ());
                this.f74481q0.set(force.getX(), force.getY(), force.getZ());
                this.f74469R.applyForce(this.f74481q0, this.f74458D0);
                return;
            }
            return;
        }
        throw new NullPointerException("relativePosition can't be null");
    }

    public void addVelocity(float x10, float y10, float z10) {
        this.f74461J.addLocal(x10, y10, z10);
    }

    public boolean addWheel(VehicleWheel vehicleWheel) {
        if (this.f74473V == null) {
            this.f74473V = new LinkedList();
        }
        if (this.f74469R == null) {
            return false;
        }
        this.f74473V.add(vehicleWheel);
        if (!vehicleWheel.addToVehicle(this.f74469R, this)) {
            this.f74473V.remove(vehicleWheel);
            return false;
        }
        if (this.f74469R.getController() == null) {
            return true;
        }
        this.f74469R.resetSuspension();
        return true;
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        if (this.f74480m1) {
            RemoveRigidbodyFromPhysics();
        }
    }

    @Override
    public void disabledUpdatePhysics() {
        super.disabledUpdatePhysics();
    }

    @Override
    public boolean enableCollisionEvents() {
        return this.collisionEvents;
    }

    @Override
    public boolean enablePredictUnconstraintMotion() {
        return true;
    }

    public Vector3 getAngularVelocity() {
        if (this.f74463L == null) {
            this.f74463L = new Vector3();
        }
        return this.f74463L;
    }

    public float getBounciness() {
        return this.bounciness;
    }

    @Override
    public PhysicsCollisionObject getBulletObject() {
        return this.f74469R;
    }

    public PhysicsRigidBody getBulletRigibody() {
        return this.f74469R;
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        return this.f74468Q;
    }

    @Override
    public String getDisplayableTitle() {
        return f74456v1;
    }

    public Vector3 getGravityMultiplier() {
        if (this.gravityMultiplier == null) {
            this.gravityMultiplier = new Vector3(1.0f);
        }
        return this.gravityMultiplier;
    }

    @Override
    public int getIconResource() {
        return R.drawable.cube_v2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_physics;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (this.carSetupEditor == null) {
            this.carSetupEditor = new InspectorEditor();
        }
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.CAR_SETUP), true, this.carSetupEditor));
        C5.a aVar = bVar.f2064Q;
        aVar.f2043p = R.color.interface_panel;
        List<C5.b> list = aVar.f2042o;
        m mVar = new m();
        b.a aVar2 = b.a.SLFloat;
        list.add(new C5.b(mVar, "Max speed", aVar2));
        C5.b bVar2 = new C5.b(new n(), Lang.l(Lang.T.SUSPENSION_LENGTH), aVar2);
        if (gameObject != null) {
            bVar2.d(gameObject, this, "maxSuspensionTravelCm", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        bVar.f2064Q.f2042o.add(bVar2);
        bVar.f2064Q.f2042o.add(J9.c.a("Length over speed", this.lengthOverSpeed, context));
        C5.b bVar3 = new C5.b(new o(), Lang.l(Lang.T.SUSPENSION_STIFFNESS), aVar2);
        if (gameObject != null) {
            bVar3.d(gameObject, this, "suspensionStiffness", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        bVar.f2064Q.f2042o.add(bVar3);
        bVar.f2064Q.f2042o.add(J9.c.a("Stiffness over speed", this.stiffnessOverSpeed, context));
        bVar.f2064Q.f2042o.add(new C5.b(new p(), "Suspension damping", aVar2));
        bVar.f2064Q.f2042o.add(J9.c.a("Damping over speed", this.dampingOverSpeed, context));
        bVar.f2064Q.f2042o.add(new C5.b(new q(), "Reset", b.a.Button));
        linkedList.add(bVar);
        if (this.rbSetupEditor == null) {
            this.rbSetupEditor = new InspectorEditor();
        }
        C5.b bVar4 = new C5.b(new C5.a(Lang.l(Lang.T.RIGIDBODY_SETUP), true, this.rbSetupEditor));
        bVar4.f2064Q.f2043p = R.color.interface_panel;
        C5.b bVar5 = new C5.b(new r(), Lang.l(Lang.T.MASS), aVar2);
        if (gameObject != null) {
            bVar5.d(gameObject, this, "mass", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        bVar4.f2064Q.f2042o.add(bVar5);
        bVar4.f2064Q.f2042o.add(this.layerReference.d(Lang.l(Lang.T.LAYER), context, new s()));
        C5.b bVar6 = new C5.b(new t(), Lang.l(Lang.T.FRICTION), aVar2);
        if (gameObject != null) {
            bVar6.d(gameObject, this, "friction", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        bVar4.f2064Q.f2042o.add(bVar6);
        C5.b bVar7 = new C5.b(new a(), Lang.l(Lang.T.LINEAR_DAMPING), aVar2);
        if (gameObject != null) {
            bVar7.d(gameObject, this, "linearDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        bVar4.f2064Q.f2042o.add(bVar7);
        C5.b bVar8 = new C5.b(new b(), Lang.l(Lang.T.ANGULAR_DAMPING), aVar2);
        if (gameObject != null) {
            bVar8.d(gameObject, this, "angularDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        bVar4.f2064Q.f2042o.add(bVar8);
        C5.b bVar9 = new C5.b(new c(), "Bounciness", aVar2);
        if (gameObject != null) {
            bVar9.d(gameObject, this, "bounciness", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        bVar4.f2064Q.f2042o.add(bVar9);
        List<C5.b> list2 = bVar4.f2064Q.f2042o;
        d dVar = new d();
        String l10 = Lang.l(Lang.T.GRAVITY);
        b.a aVar3 = b.a.SLBoolean;
        list2.add(new C5.b(dVar, l10, aVar3));
        bVar4.f2064Q.f2042o.add(new C5.b(new e(), "Script collision events", aVar3));
        C5.b L10 = F5.c.L(Lang.l(Lang.T.GRAVITY_MULTIPLIER), this.gravityMultiplier, new Vector3(1.0f));
        if (gameObject != null) {
            L10.d(gameObject, this, "gravityMultiplier", com.itsmagic.engine.Engines.Engine.Animation.c.VEC3);
        }
        bVar4.f2064Q.f2042o.add(L10);
        String l11 = Lang.l(Lang.T.FREEZE_POSITION);
        b.a aVar4 = b.a.Vector;
        C5.b bVar10 = new C5.b(l11, aVar4, new C5.b[3]);
        bVar10.f2081p[0] = new C5.b(new f(), "X", aVar3);
        bVar10.f2081p[1] = new C5.b(new g(), "Y", aVar3);
        bVar10.f2081p[2] = new C5.b(new h(), Signature.SIG_BOOLEAN, aVar3);
        bVar4.f2064Q.f2042o.add(bVar10);
        C5.b bVar11 = new C5.b(Lang.l(Lang.T.FREEZE_ROTATION), aVar4, new C5.b[3]);
        bVar11.f2081p[0] = new C5.b(new i(), "X", aVar3);
        bVar11.f2081p[1] = new C5.b(new j(), "Y", aVar3);
        bVar11.f2081p[2] = new C5.b(new l(), Signature.SIG_BOOLEAN, aVar3);
        bVar4.f2064Q.f2042o.add(bVar11);
        bVar4.f2064Q.f2042o.add(new C5.b(Lang.l(Lang.T.COLLIDERS) + " " + this.f74470S, 12));
        linkedList.add(bVar4);
        if (c8.b.j()) {
            linkedList.add(new C5.b(Lang.l(Lang.T.COLLISIONS) + " " + collisionCount(), 12));
        }
        return linkedList;
    }

    @Override
    public float getInvMass() {
        return 1.0f / this.mass;
    }

    public float getSpeedInKMH() {
        return this.f74474W;
    }

    public float getSpeedPercentage() {
        float speedInKMH = getSpeedInKMH() / this.maxSpeed;
        return speedInKMH > 0.0f ? Nc.b.J(speedInKMH, 1.0f) : Nc.b.M(-1.0f, speedInKMH);
    }

    public float getSuspensionMaxLength() {
        PhysicsVehicle physicsVehicle = this.f74469R;
        if (physicsVehicle == null || physicsVehicle.getMaxSuspensionTravelCm() <= 0.0f) {
            return 0.0f;
        }
        return this.f74469R.getMaxSuspensionTravelCm() / 100.0f;
    }

    @Override
    public String getTitle() {
        return f74456v1;
    }

    @Override
    public Vector3 getVelocity() {
        return this.f74461J;
    }

    public List<VehicleWheel> getWheels() {
        return this.f74473V;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public boolean isDynamic() {
        return this.mass > 0.0f;
    }

    @Override
    public void onColliderChanged() {
        invalidateBulletShapeChildrenCache();
        this.f74471T = true;
    }

    @Override
    public void onDetach() {
        if (this.f74480m1) {
            RemoveRigidbodyFromPhysics();
        }
        super.onDetach();
    }

    @Override
    public void onPhysicsGetTransformations() {
        super.onPhysicsGetTransformations();
        PhysicsVehicle physicsVehicle = this.f74469R;
        if (physicsVehicle == null) {
            return;
        }
        try {
            float currentVehicleSpeedKmHour = physicsVehicle.getCurrentVehicleSpeedKmHour();
            if (Float.isNaN(currentVehicleSpeedKmHour)) {
                currentVehicleSpeedKmHour = 0.0f;
            }
            this.f74474W = currentVehicleSpeedKmHour;
        } catch (AssertionError | Exception e10) {
            e10.printStackTrace();
        }
        this.f74469R.getPhysicsRotation(this.f74479i1);
        this.f79250n.transform.z3(this.f74479i1);
        this.f74469R.getPhysicsLocation(this.f74478b1);
        Vector3 h02 = this.f79250n.transform.h0();
        if (this.freeze.PX) {
            this.f74478b1.setX(h02.getX());
        }
        if (this.freeze.PY) {
            this.f74478b1.setY(h02.getY());
        }
        if (this.freeze.PZ) {
            this.f74478b1.setZ(h02.getZ());
        }
        this.f79250n.transform.q3(this.f74478b1);
        if (this.f74469R.isDynamic()) {
            this.f74461J.set(this.f74469R.getLinearVelocity());
            this.f74463L.set(this.f74469R.getAngularVelocity());
        }
        if (c8.b.k()) {
            for (int i10 = 0; i10 < this.f74473V.size(); i10++) {
                this.f74473V.get(i10).posVehiclePhysics(this, this.f74478b1, this.f74479i1);
            }
        }
    }

    public void prePhysic() {
        if (C13317e.J(this.f79250n)) {
            float f10 = this.mass;
            if (f10 <= 0.0f) {
                f10 = 1.0f;
            }
            this.f74469R.setFriction(Nc.b.E(0.0f, this.friction, 1.0f));
            float E10 = Nc.b.E(0.0f, this.linearDamping, 1.0f);
            float E11 = Nc.b.E(0.0f, this.angularDamping, 1.0f);
            if (this.f74467P != E11 || this.f74466O != E10) {
                this.f74469R.setDamping(E10, E11);
                this.f74467P = E11;
                this.f74466O = E10;
            }
            this.f74469R.setRestitution(this.bounciness);
            if (this.f79250n.transform.U1()) {
                if (this.f74465N != f10) {
                    this.f74469R.setMass(f10);
                    this.f74465N = f10;
                }
            } else if (this.f74465N != Float.POSITIVE_INFINITY) {
                this.f74469R.setMass(0.0f);
                this.f74465N = Float.POSITIVE_INFINITY;
            }
            Freeze freeze = this.freeze;
            if (freeze.RX || freeze.RY || freeze.RZ) {
                this.f74469R.getInverseInertiaLocal(this.f74477Z);
                Freeze freeze2 = this.freeze;
                if (freeze2.RX) {
                    this.f74477Z.f81611x = 0.0f;
                }
                if (freeze2.RY) {
                    this.f74477Z.f81612y = 0.0f;
                }
                if (freeze2.RZ) {
                    this.f74477Z.f81613z = 0.0f;
                }
                this.f74469R.setInverseInertiaLocal(this.f74477Z);
            }
            if (this.f74472U != this.f79250n.transform.w1()) {
                if (this.f74480m1) {
                    synchronized (Cc.c.f2503k) {
                        try {
                            K8.a.f10984o.f2506c.remove(this.f74469R);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        K8.a.f10984o.f2506c.add(this.f74469R);
                    }
                }
                this.f74472U = this.f79250n.transform.w1();
            }
            if (this.useGravity) {
                getGravityMultiplier();
                if (K8.a.f10990u > 1) {
                    Vector3 a10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.r().a();
                    this.f74469R.setGravity(new Vector3f(this.freeze.PX ? 0.0f : a10.getX() * this.gravityMultiplier.getX(), this.freeze.PY ? 0.0f : a10.getY() * this.gravityMultiplier.getY(), this.freeze.PZ ? 0.0f : a10.getZ() * this.gravityMultiplier.getZ()));
                } else {
                    this.f74469R.setGravity(new Vector3f(0.0f, 0.0f, 0.0f));
                }
            } else {
                this.f74469R.setGravity(new Vector3f(0.0f, 0.0f, 0.0f));
            }
            if (this.f79250n.transform.U1()) {
                this.f74462K.set(this.f74461J.getX(), this.f74461J.getY(), this.f74461J.getZ());
                this.f74469R.setLinearVelocity(this.f74462K);
                getAngularVelocity();
                this.f74464M.set(this.f74463L.getX(), this.f74463L.getY(), this.f74463L.getZ());
                this.f74469R.setAngularVelocity(this.f74464M);
            } else {
                this.f74462K.set(0.0f, 0.0f, 0.0f);
                this.f74469R.setLinearVelocity(this.f74462K);
                getAngularVelocity();
                this.f74464M.set(0.0f, 0.0f, 0.0f);
                this.f74469R.setAngularVelocity(this.f74464M);
            }
            try {
                fillCriticalTransformCache();
                this.f74469R.setPhysicsLocation(this.f74481q0);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            try {
                this.f74469R.setPhysicsRotation(this.f74483v0);
            } catch (Exception e12) {
                e12.printStackTrace();
                this.f74469R.setPhysicsRotation(new Quaternion());
            }
            rebuildWheelsIfNeeded();
            updateLayer(this.f74469R);
            if (c8.b.k()) {
                for (int i10 = 0; i10 < this.f74473V.size(); i10++) {
                    this.f74473V.get(i10).beforeVehiclePhysics(this);
                }
            }
            if (!this.f74480m1 || this.f74469R == null) {
                return;
            }
            for (int i11 = 0; i11 < this.f74473V.size(); i11++) {
                VehicleWheel vehicleWheel = this.f74473V.get(i11);
                try {
                    this.f74469R.accelerate(i11, vehicleWheel.getCurrentTorque());
                    this.f74469R.brake(i11, vehicleWheel.getCurrentBrake());
                    this.f74469R.steer(i11, (float) Nc.b.K1(vehicleWheel.getCurrentSteer()));
                } catch (AssertionError unused) {
                    J4.d.b2("Vehicle physics invalid wheel id " + i11);
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
            }
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.f74480m1) {
            return;
        }
        this.f74480m1 = true;
        addToPhysics();
        prePhysic();
    }

    public void removeWheel(VehicleWheel vehicleWheel, com.jme3.bullet.objects.VehicleWheel wheelInfo) {
        if (this.f74473V == null) {
            this.f74473V = new LinkedList();
        }
        this.f74473V.remove(vehicleWheel);
        PhysicsVehicle physicsVehicle = this.f74469R;
        if (physicsVehicle == null || wheelInfo == null) {
            return;
        }
        try {
            physicsVehicle.removeWheel(wheelInfo.getIndex());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void requestWheelRefresh() {
        this.f74475X = true;
    }

    @Override
    public void resyncOnFrame() {
        super.resyncOnFrame();
        if (c8.b.k()) {
            this.f79250n.posPhysics();
        }
    }

    public void setAngularVelocity(Vector3 angularVelocity) {
        this.f74463L = angularVelocity;
    }

    public void setBounciness(float bounciness) {
        this.bounciness = bounciness;
    }

    public void setBrake(float brake, int wheelID) {
        if (this.f74469R != null) {
            if (wheelID >= 0 && wheelID < this.f74473V.size()) {
                this.f74473V.get(wheelID).setBrake(brake);
                return;
            }
            throw new RuntimeException("Invalid wheelID:" + wheelID);
        }
    }

    public void setGravityMultiplier(Vector3 gravityMultiplier) {
        this.gravityMultiplier = gravityMultiplier;
    }

    public void setMaxSpeed(float maxSpeed) {
        this.maxSpeed = maxSpeed;
    }

    @Override
    public void setRuntime(Component run) {
        this.f74482q1 = run;
    }

    public void setSteering(float steer, int wheelID) {
        if (this.f74469R != null) {
            if (wheelID >= 0 && wheelID < this.f74473V.size()) {
                this.f74473V.get(wheelID).setSteering(steer);
                return;
            }
            throw new RuntimeException("Invalid wheelID:" + wheelID);
        }
    }

    public void setTorque(float torque, int wheelID) {
        if (this.f74469R != null) {
            if (wheelID >= 0 && wheelID < this.f74473V.size()) {
                this.f74473V.get(wheelID).setTorque(torque);
                return;
            }
            throw new RuntimeException("Invalid wheelID:" + wheelID);
        }
    }

    public void setVelocity(Vector3 velocity) {
        if (velocity == null) {
            throw new NullPointerException("velocity can't be null");
        }
        this.f74461J = velocity;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74482q1;
        if (component != null) {
            return component;
        }
        JAVARuntime.VehiclePhysics vehiclePhysics = new JAVARuntime.VehiclePhysics(this);
        this.f74482q1 = vehiclePhysics;
        return vehiclePhysics;
    }

    @Override
    public void updatePhysics() {
        super.updatePhysics();
        CompoundCollisionShape compoundCollisionShape = this.f74468Q;
        if (compoundCollisionShape != null) {
            this.f74470S = compoundCollisionShape.countChildren();
        }
        if (this.f74480m1) {
            if (c8.b.k()) {
                this.f79250n.prePhysics();
            }
            prePhysic();
            if (this.f74471T) {
                if (this.f74480m1) {
                    synchronized (Cc.c.f2503k) {
                        this.f74469R.setCollisionShape(this.f74468Q);
                    }
                }
                this.f74471T = false;
            }
        }
    }

    public void addVelocity(Vector3 force) {
        addVelocity(force.getX(), force.getY(), force.getZ());
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        VehiclePhysics vehiclePhysics = new VehiclePhysics();
        vehiclePhysics.mass = this.mass;
        vehiclePhysics.useGravity = this.useGravity;
        vehiclePhysics.friction = this.friction;
        vehiclePhysics.linearDamping = this.linearDamping;
        vehiclePhysics.freeze = this.freeze.clone();
        vehiclePhysics.angularDamping = this.angularDamping;
        vehiclePhysics.bounciness = this.bounciness;
        vehiclePhysics.ccdMotionThreshold = this.ccdMotionThreshold;
        vehiclePhysics.ccdSweptSphereRadius = this.ccdSweptSphereRadius;
        vehiclePhysics.gravityMultiplier = this.gravityMultiplier.m1249clone();
        vehiclePhysics.layerReference = this.layerReference.clone();
        vehiclePhysics.maxSuspensionTravelCm = this.maxSuspensionTravelCm;
        vehiclePhysics.lengthOverSpeed = this.lengthOverSpeed.clone();
        vehiclePhysics.suspensionStiffness = this.suspensionStiffness;
        vehiclePhysics.stiffnessOverSpeed = this.stiffnessOverSpeed.clone();
        vehiclePhysics.suspensionDamping = this.suspensionDamping;
        vehiclePhysics.dampingOverSpeed = this.dampingOverSpeed.clone();
        vehiclePhysics.maxSpeed = this.maxSpeed;
        vehiclePhysics.rbSetupEditor = this.rbSetupEditor.clone();
        vehiclePhysics.carSetupEditor = this.carSetupEditor.clone();
        return vehiclePhysics;
    }

    public void addForce(float x10, float y10, float z10) {
        PhysicsVehicle physicsVehicle = this.f74469R;
        if (physicsVehicle != null) {
            physicsVehicle.applyForce(new Vector3f(x10, y10, z10), new Vector3f());
        }
    }

    public void addForce(Vector3 force) {
        if (force != null) {
            addForce(force.getX(), force.getY(), force.getZ());
            return;
        }
        throw new NullPointerException("force can't be null");
    }
}
