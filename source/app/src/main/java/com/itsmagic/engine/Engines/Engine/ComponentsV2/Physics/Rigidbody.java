package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Utils.Freeze;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jdt.core.Signature;
import rb.InterfaceC15168a;

public class Rigidbody extends PhysicsComponent {

    public static final String f74418b1 = "Rigidbody";

    public static final Class f74419i1 = Rigidbody.class;

    public Component f74420D0;

    public int f74421H;

    public int f74422I;

    public Vector3 f74423J;

    public Vector3f f74424K;

    public Vector3 f74425L;

    public Vector3f f74426M;

    public float f74427N;

    public float f74428O;

    public float f74429P;

    public CompoundCollisionShape f74430Q;

    public PhysicsRigidBody f74431R;

    public int f74432S;

    public boolean f74433T;

    public Transform.G f74434U;

    public final Vector3f f74435V;

    public final Vector3f f74436W;

    public final Quaternion f74437X;

    public final Vector3f f74438Y;

    public final Vector3f f74439Z;

    @Expose
    @eb.f
    public float angularDamping;

    @Expose
    @eb.f
    public float bounciness;

    @Expose
    @eb.f
    public float ccdMotionThreshold;

    @Expose
    @eb.f
    public float ccdSweptSphereRadius;

    @Expose
    private boolean collisionEvents;

    @Expose
    public p collisionMode;

    @Expose
    public Freeze freeze;

    @Expose
    @eb.f
    public float friction;

    @Expose
    @eb.f
    private Vector3 gravityMultiplier;

    @Expose
    public ExposableLayerReference layerReference;

    @Expose
    @eb.f
    public float linearDamping;

    @Expose
    @eb.f
    public float mass;

    public final Quaternion f74440q0;

    @Expose
    public boolean useGravity;

    public boolean f74441v0;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.freeze.PX ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.freeze.PX = variable.booolean_value.booleanValue();
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.freeze.PY ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.freeze.PY = variable.booolean_value.booleanValue();
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.freeze.PZ ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.freeze.PZ = variable.booolean_value.booleanValue();
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.freeze.RX ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.freeze.RX = variable.booolean_value.booleanValue();
                Rigidbody.this.f74427N = -1.0f;
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.freeze.RY ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.freeze.RY = variable.booolean_value.booleanValue();
                Rigidbody.this.f74427N = -1.0f;
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.freeze.RZ ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.freeze.RZ = variable.booolean_value.booleanValue();
                Rigidbody.this.f74427N = -1.0f;
            }
        }
    }

    public class g extends AbstractC13203c {
        @Override
        public Class b() {
            return Rigidbody.f74419i1;
        }

        @Override
        public String c() {
            return Rigidbody.f74418b1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.RIGID_BODY);
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.mass + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.mass = variable.float_value;
            }
        }
    }

    public class i implements InterfaceC15168a {
        public i() {
        }

        @Override
        public void a(Layer newLayer) {
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.friction + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.friction = variable.float_value;
            }
        }
    }

    public class k implements D5.h {
        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.linearDamping + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.linearDamping = variable.float_value;
            }
        }
    }

    public class l implements D5.h {
        public l() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.angularDamping + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.angularDamping = variable.float_value;
            }
        }
    }

    public class m implements D5.h {
        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.bounciness + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.bounciness = variable.float_value;
            }
        }
    }

    public class n implements D5.h {
        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.collisionEvents + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.collisionEvents = variable.booolean_value.booleanValue();
            }
        }
    }

    public class o implements D5.h {
        public o() {
        }

        @Override
        public Variable get() {
            return new Variable("", Rigidbody.this.useGravity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Rigidbody.this.useGravity = variable.booolean_value.booleanValue();
            }
        }
    }

    public enum p {
        Discrete,
        Continuous
    }

    static {
        C13201a.b(new g());
    }

    public Rigidbody() {
        super(f74418b1);
        this.mass = 1.0f;
        this.useGravity = true;
        this.freeze = new Freeze();
        this.collisionMode = p.Discrete;
        this.friction = 0.5f;
        this.linearDamping = 0.01f;
        this.angularDamping = 0.01f;
        this.bounciness = 0.0f;
        this.ccdMotionThreshold = 0.1f;
        this.ccdSweptSphereRadius = 0.1f;
        this.gravityMultiplier = new Vector3(1.0f);
        this.layerReference = new ExposableLayerReference();
        this.collisionEvents = true;
        this.f74423J = new Vector3();
        this.f74424K = new Vector3f();
        this.f74425L = new Vector3();
        this.f74426M = new Vector3f();
        this.f74427N = -1.0f;
        this.f74428O = -9999.0f;
        this.f74429P = -9999.0f;
        this.f74433T = false;
        this.f74434U = null;
        this.f74435V = new Vector3f();
        this.f74436W = new Vector3f();
        this.f74437X = new Quaternion();
        this.f74438Y = new Vector3f();
        this.f74439Z = new Vector3f();
        this.f74440q0 = new Quaternion();
        this.f74441v0 = false;
    }

    private void RemoveRigidbodyFromPhysics() {
        try {
            K8.a.f10984o.f2506c.remove(this.f74431R);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f74431R = null;
        this.f74430Q = null;
        this.f74441v0 = false;
        this.f74433T = false;
        this.f74421H = 0;
        this.f74422I = 0;
        this.f74427N = -1.0f;
        this.f74428O = -9999.0f;
        this.f74429P = -9999.0f;
        propagateDettachHostPhysicsEntityChanged();
    }

    private void addToPhysics() {
        float f10 = this.mass;
        if (f10 <= 0.0f) {
            f10 = 1.0f;
        }
        this.f74434U = this.f79250n.transform.w1();
        if (this.f79250n.transform.a2()) {
            f10 = 0.0f;
        }
        if (this.f74430Q == null) {
            this.f74430Q = new CompoundCollisionShape();
        }
        PhysicsRigidBody physicsRigidBody = new PhysicsRigidBody(this.f74430Q, f10);
        this.f74431R = physicsRigidBody;
        physicsRigidBody.setUserObject(this);
        fillPositionCache(this.f79250n.transform.Z0());
        this.f74431R.setPhysicsLocation(this.f74436W);
        this.f74431R.setGravity(new Vector3f(0.0f, -9.81f, 0.0f));
        this.f74431R.setRestitution(this.bounciness);
        this.f74431R.setFriction(this.friction);
        this.f74431R.setContactProcessingThreshold(0.0f);
        fillCriticalTransformCache();
        this.f74431R.setPhysicsLocation(this.f74436W);
        this.f74431R.setPhysicsRotation(this.f74437X);
        updateLayer(this.f74431R);
        synchronized (Cc.c.f2503k) {
            K8.a.f10984o.f2506c.add(this.f74431R);
        }
        propagateNewHostPhysicsEntityChanged();
    }

    private void fillCriticalTransformCache() {
        fillPositionCache(this.f79250n.transform.h0());
        com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion i02 = this.f79250n.transform.i0();
        this.f74437X.set(i02.getX(), i02.getY(), i02.getZ(), i02.I());
    }

    private void fillPositionCache(Vector3 position) {
        this.f74436W.set(position.getX(), position.getY(), position.getZ());
    }

    private void updateLayer(PhysicsRigidBody bulletRigidbody) {
        if (this.f74421H == this.layerReference.i().f79543c && this.f74422I == this.layerReference.i().hashCode()) {
            return;
        }
        this.f74421H = this.layerReference.i().f79543c;
        this.f74422I = this.layerReference.i().hashCode();
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
            if (this.f74431R != null) {
                this.f74438Y.set(relativePosition.getX(), relativePosition.getY(), relativePosition.getZ());
                this.f74436W.set(force.getX(), force.getY(), force.getZ());
                this.f74431R.applyForce(this.f74436W, this.f74438Y);
                return;
            }
            return;
        }
        throw new NullPointerException("relativePosition can't be null");
    }

    public void addVelocity(float x10, float y10, float z10) {
        this.f74423J.addLocal(x10, y10, z10);
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        if (this.f74441v0) {
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
        if (this.f74425L == null) {
            this.f74425L = new Vector3();
        }
        return this.f74425L;
    }

    public float getBounciness() {
        return this.bounciness;
    }

    @Override
    public PhysicsCollisionObject getBulletObject() {
        return this.f74431R;
    }

    public PhysicsRigidBody getBulletRigibody() {
        return this.f74431R;
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        return this.f74430Q;
    }

    @Override
    public String getDisplayableTitle() {
        return f74418b1;
    }

    @Override
    public Freeze getFreeze() {
        return this.freeze;
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
        h hVar = new h();
        String l10 = Lang.l(Lang.T.MASS);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(hVar, l10, aVar);
        if (gameObject != null) {
            bVar.d(gameObject, this, "mass", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar);
        linkedList.add(this.layerReference.d(Lang.l(Lang.T.LAYER), context, new i()));
        C5.b bVar2 = new C5.b(new j(), Lang.l(Lang.T.FRICTION), aVar);
        if (gameObject != null) {
            bVar2.d(gameObject, this, "friction", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new k(), Lang.l(Lang.T.LINEAR_DAMPING), aVar);
        if (gameObject != null) {
            bVar3.d(gameObject, this, "linearDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new l(), Lang.l(Lang.T.ANGULAR_DAMPING), aVar);
        if (gameObject != null) {
            bVar4.d(gameObject, this, "angularDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new m(), "Bounciness", aVar);
        if (gameObject != null) {
            bVar5.d(gameObject, this, "bounciness", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar5);
        n nVar = new n();
        b.a aVar2 = b.a.SLBoolean;
        linkedList.add(new C5.b(nVar, "Script collision events", aVar2));
        linkedList.add(new C5.b(new o(), Lang.l(Lang.T.GRAVITY), aVar2));
        C5.b L10 = F5.c.L(Lang.l(Lang.T.GRAVITY_MULTIPLIER), this.gravityMultiplier, new Vector3(1.0f));
        if (gameObject != null) {
            L10.d(gameObject, this, "gravityMultiplier", com.itsmagic.engine.Engines.Engine.Animation.c.VEC3);
        }
        linkedList.add(L10);
        String l11 = Lang.l(Lang.T.FREEZE_POSITION);
        b.a aVar3 = b.a.Vector;
        C5.b bVar6 = new C5.b(l11, aVar3, new C5.b[3]);
        bVar6.f2081p[0] = new C5.b(new a(), "X", aVar2);
        bVar6.f2081p[1] = new C5.b(new b(), "Y", aVar2);
        bVar6.f2081p[2] = new C5.b(new c(), Signature.SIG_BOOLEAN, aVar2);
        linkedList.add(bVar6);
        C5.b bVar7 = new C5.b(Lang.l(Lang.T.FREEZE_ROTATION), aVar3, new C5.b[3]);
        bVar7.f2081p[0] = new C5.b(new d(), "X", aVar2);
        bVar7.f2081p[1] = new C5.b(new e(), "Y", aVar2);
        bVar7.f2081p[2] = new C5.b(new f(), Signature.SIG_BOOLEAN, aVar2);
        linkedList.add(bVar7);
        linkedList.add(new C5.b(Lang.l(Lang.T.COLLIDERS) + " " + this.f74432S, 12));
        if (c8.b.j()) {
            linkedList.add(new C5.b(Lang.l(Lang.T.COLLISIONS) + " " + collisionCount(), 12));
        }
        return linkedList;
    }

    @Override
    public float getInvMass() {
        return 1.0f / this.mass;
    }

    @Override
    public String getTitle() {
        return f74418b1;
    }

    @Override
    public Vector3 getVelocity() {
        return this.f74423J;
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
        this.f74433T = true;
    }

    @Override
    public void onDetach() {
        if (this.f74441v0) {
            RemoveRigidbodyFromPhysics();
            propagateDettachHostPhysicsEntityChanged();
        }
        super.onDetach();
    }

    @Override
    public void onPhysicsGetTransformations() {
        super.onPhysicsGetTransformations();
        PhysicsRigidBody physicsRigidBody = this.f74431R;
        if (physicsRigidBody == null) {
            return;
        }
        this.f79250n.transform.z3(physicsRigidBody.getPhysicsRotation(this.f74440q0));
        this.f74431R.getPhysicsLocation(this.f74439Z);
        Vector3 h02 = this.f79250n.transform.h0();
        this.f79250n.transform.setPosition(this.freeze.PX ? h02.getX() : this.f74439Z.f81611x, this.freeze.PY ? h02.getY() : this.f74439Z.f81612y, this.freeze.PZ ? h02.getZ() : this.f74439Z.f81613z);
        if (this.f74431R.isDynamic()) {
            this.f74423J.set(this.f74431R.getLinearVelocity());
            this.f74425L.set(this.f74431R.getAngularVelocity());
        } else {
            this.f74423J.set(0.0f);
            this.f74425L.set(0.0f);
        }
    }

    public void prePhysic() {
        if (C13317e.J(this.f79250n)) {
            float f10 = this.mass;
            if (f10 <= 0.0f) {
                f10 = 1.0f;
            }
            if (this.f74431R.isDynamic()) {
                float E10 = Nc.b.E(0.0f, this.linearDamping, 1.0f);
                float E11 = Nc.b.E(0.0f, this.angularDamping, 1.0f);
                if (this.f74429P != E11 || this.f74428O != E10) {
                    this.f74431R.setDamping(E10, E11);
                    this.f74429P = E11;
                    this.f74428O = E10;
                }
            }
            this.f74431R.setRestitution(this.bounciness);
            this.f74431R.setFriction(this.friction);
            if (this.f79250n.transform.U1()) {
                if (this.f74427N != f10) {
                    this.f74431R.setMass(f10);
                    this.f74427N = f10;
                }
            } else if (this.f74427N != Float.POSITIVE_INFINITY) {
                this.f74431R.setMass(0.0f);
                this.f74427N = Float.POSITIVE_INFINITY;
            }
            Freeze freeze = this.freeze;
            if (freeze.RX || freeze.RY || freeze.RZ) {
                this.f74431R.getInverseInertiaLocal(this.f74435V);
                Freeze freeze2 = this.freeze;
                if (freeze2.RX) {
                    this.f74435V.f81611x = 0.0f;
                }
                if (freeze2.RY) {
                    this.f74435V.f81612y = 0.0f;
                }
                if (freeze2.RZ) {
                    this.f74435V.f81613z = 0.0f;
                }
                this.f74431R.setInverseInertiaLocal(this.f74435V);
            }
            if (this.f74434U != this.f79250n.transform.w1()) {
                if (this.f74441v0) {
                    synchronized (Cc.c.f2503k) {
                        try {
                            K8.a.f10984o.f2506c.remove(this.f74431R);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        K8.a.f10984o.f2506c.add(this.f74431R);
                    }
                }
                this.f74434U = this.f79250n.transform.w1();
            }
            if (this.useGravity) {
                getGravityMultiplier();
                if (K8.a.f10990u > 1) {
                    Vector3 a10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.r().a();
                    this.f74431R.setGravity(new Vector3f(this.freeze.PX ? 0.0f : a10.getX() * this.gravityMultiplier.getX(), this.freeze.PY ? 0.0f : a10.getY() * this.gravityMultiplier.getY(), this.freeze.PZ ? 0.0f : a10.getZ() * this.gravityMultiplier.getZ()));
                } else {
                    this.f74431R.setGravity(new Vector3f(0.0f, 0.0f, 0.0f));
                }
            } else {
                this.f74431R.setGravity(new Vector3f(0.0f, 0.0f, 0.0f));
            }
            if (this.f79250n.transform.U1()) {
                this.f74424K.set(this.f74423J.getX(), this.f74423J.getY(), this.f74423J.getZ());
                this.f74431R.setLinearVelocity(this.f74424K);
                getAngularVelocity();
                this.f74426M.set(this.f74425L.getX(), this.f74425L.getY(), this.f74425L.getZ());
                this.f74431R.setAngularVelocity(this.f74426M);
            } else {
                this.f74424K.set(0.0f, 0.0f, 0.0f);
                this.f74431R.setLinearVelocity(this.f74424K);
                getAngularVelocity();
                this.f74426M.set(0.0f, 0.0f, 0.0f);
                this.f74431R.setAngularVelocity(this.f74426M);
            }
            fillCriticalTransformCache();
            this.f74431R.setPhysicsLocation(this.f74436W);
            this.f74431R.setPhysicsRotation(this.f74437X);
            updateLayer(this.f74431R);
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.f74441v0) {
            return;
        }
        addToPhysics();
        prePhysic();
        this.f74441v0 = true;
    }

    @Override
    public void resyncOnFrame() {
        super.resyncOnFrame();
        if (c8.b.k()) {
            this.f79250n.posPhysics();
        }
    }

    public void setAngularVelocity(Vector3 angularVelocity) {
        this.f74425L = angularVelocity;
    }

    public void setBounciness(float bounciness) {
        this.bounciness = bounciness;
    }

    public void setGravityMultiplier(Vector3 gravityMultiplier) {
        this.gravityMultiplier = gravityMultiplier;
    }

    @Override
    public void setRuntime(Component run) {
        this.f74420D0 = run;
    }

    public void setVelocity(Vector3 velocity) {
        if (velocity == null) {
            throw new NullPointerException("velocity can't be null");
        }
        this.f74423J = velocity;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74420D0;
        if (component != null) {
            return component;
        }
        JAVARuntime.Rigidbody rigidbody = new JAVARuntime.Rigidbody(this);
        this.f74420D0 = rigidbody;
        return rigidbody;
    }

    @Override
    public void updatePhysics() {
        super.updatePhysics();
        CompoundCollisionShape compoundCollisionShape = this.f74430Q;
        if (compoundCollisionShape != null) {
            this.f74432S = compoundCollisionShape.countChildren();
        }
        if (this.f74441v0) {
            if (c8.b.k()) {
                this.f79250n.prePhysics();
            }
            prePhysic();
            if (this.f74433T) {
                if (this.f74441v0) {
                    synchronized (Cc.c.f2503k) {
                        this.f74431R.setCollisionShape(this.f74430Q);
                    }
                }
                this.f74433T = false;
            }
        }
    }

    public void addVelocity(Vector3 force) {
        addVelocity(force.getX(), force.getY(), force.getZ());
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Rigidbody rigidbody = new Rigidbody();
        rigidbody.mass = this.mass;
        rigidbody.freeze = this.freeze.clone();
        rigidbody.useGravity = this.useGravity;
        rigidbody.collisionMode = this.collisionMode;
        rigidbody.friction = this.friction;
        rigidbody.linearDamping = this.linearDamping;
        rigidbody.angularDamping = this.angularDamping;
        rigidbody.bounciness = this.bounciness;
        rigidbody.ccdMotionThreshold = this.ccdMotionThreshold;
        rigidbody.ccdSweptSphereRadius = this.ccdSweptSphereRadius;
        rigidbody.gravityMultiplier = this.gravityMultiplier.m1249clone();
        rigidbody.layerReference = this.layerReference.clone();
        return rigidbody;
    }

    public void addForce(float x10, float y10, float z10) {
        PhysicsRigidBody physicsRigidBody = this.f74431R;
        if (physicsRigidBody != null) {
            physicsRigidBody.applyForce(new Vector3f(x10, y10, z10), new Vector3f());
        }
    }

    public void addForce(Vector3 force) {
        if (force != null) {
            addForce(force.getX(), force.getY(), force.getZ());
            return;
        }
        throw new NullPointerException("force can't be null");
    }

    public Rigidbody(float mass) {
        super(f74418b1);
        this.mass = 1.0f;
        this.useGravity = true;
        this.freeze = new Freeze();
        this.collisionMode = p.Discrete;
        this.friction = 0.5f;
        this.linearDamping = 0.01f;
        this.angularDamping = 0.01f;
        this.bounciness = 0.0f;
        this.ccdMotionThreshold = 0.1f;
        this.ccdSweptSphereRadius = 0.1f;
        this.gravityMultiplier = new Vector3(1.0f);
        this.layerReference = new ExposableLayerReference();
        this.collisionEvents = true;
        this.f74423J = new Vector3();
        this.f74424K = new Vector3f();
        this.f74425L = new Vector3();
        this.f74426M = new Vector3f();
        this.f74427N = -1.0f;
        this.f74428O = -9999.0f;
        this.f74429P = -9999.0f;
        this.f74433T = false;
        this.f74434U = null;
        this.f74435V = new Vector3f();
        this.f74436W = new Vector3f();
        this.f74437X = new Quaternion();
        this.f74438Y = new Vector3f();
        this.f74439Z = new Vector3f();
        this.f74440q0 = new Quaternion();
        this.f74441v0 = false;
        this.mass = mass;
    }
}
