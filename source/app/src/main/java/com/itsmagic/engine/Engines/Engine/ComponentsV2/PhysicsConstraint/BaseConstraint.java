package com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint;

import C5.b;
import D5.h;
import D5.k;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvObjectReference;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.bullet.joints.Constraint;
import com.jme3.bullet.objects.PhysicsRigidBody;
import gb.C13317e;
import h9.InterfaceC13435a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import k9.C13951a;

public abstract class BaseConstraint extends Component implements Serializable {

    public final Vector3 f74503D0;

    public transient GameObject f74504E;

    public transient GameObject f74505F;

    public transient GameObject f74506G;

    public ConstraintPivot f74507H;

    public transient GameObject f74508I;

    public transient GameObject f74509J;

    public ConstraintHitch f74510K;

    public final Vector3 f74511L;

    public final Vector3 f74512M;

    public final Vector3 f74513N;

    public final Vector3 f74514O;

    public PhysicsRigidBody f74515P;

    public PhysicsRigidBody f74516Q;

    public final Vector3 f74517R;

    public final Vector3 f74518S;

    public final Vector3 f74519T;

    public final Vector3 f74520U;

    public final Vector3 f74521V;

    public final Vector3 f74522W;

    public final Vector3 f74523X;

    public final Vector3 f74524Y;

    public final Vector3 f74525Z;

    public final Vector3 f74526b1;

    @Expose
    private boolean cblb;

    @Expose
    private AdvObjectReference hitchReference;

    public boolean f74527i1;

    public Constraint f74528m1;

    public final Vector3 f74529q0;

    @Expose
    private AdvObjectReference targetReference;

    public final Vector3 f74530v0;

    public class a implements k {
        public a() {
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            return BaseConstraint.this.f74504E;
        }

        @Override
        public String getExtraTittle() {
            return " (" + Lang.l(Lang.T.OBJECT) + ")";
        }

        @Override
        public GameObject getParent() {
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            BaseConstraint.this.setTargetObject(gameObject);
        }
    }

    public class b implements k {
        public b() {
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            return BaseConstraint.this.f74508I;
        }

        @Override
        public String getExtraTittle() {
            return " (" + Lang.l(Lang.T.OBJECT) + ")";
        }

        @Override
        public GameObject getParent() {
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            BaseConstraint.this.setHitchObject(gameObject);
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", BaseConstraint.this.cblb + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                BaseConstraint.this.cblb = variable.booolean_value.booleanValue();
            }
        }
    }

    public BaseConstraint(String SERIALIZED_NAME) {
        super(SERIALIZED_NAME);
        this.targetReference = new AdvObjectReference();
        this.hitchReference = new AdvObjectReference();
        this.cblb = true;
        this.f74511L = new Vector3();
        this.f74512M = new Vector3();
        this.f74513N = new Vector3();
        this.f74514O = new Vector3();
        this.f74517R = new Vector3();
        this.f74518S = new Vector3();
        this.f74519T = new Vector3();
        this.f74520U = new Vector3();
        this.f74521V = new Vector3();
        this.f74522W = new Vector3();
        this.f74523X = new Vector3();
        this.f74524Y = new Vector3();
        this.f74525Z = new Vector3();
        this.f74529q0 = new Vector3();
        this.f74530v0 = new Vector3();
        this.f74503D0 = new Vector3();
        this.f74526b1 = new Vector3();
        this.f74527i1 = false;
    }

    private void addToPhysics() {
        PhysicsComponent physicsComponent;
        GameObject gameObject;
        PhysicsComponent physicsComponent2;
        if (this.f74527i1 || !C13317e.J(this.f74506G)) {
            return;
        }
        C13951a.b(this.f74519T, this.f74509J);
        C13951a.b(this.f74520U, this.f74506G);
        this.f74509J.transform.u0(this.f74521V);
        this.f74506G.transform.u0(this.f74522W);
        if (this.f79250n.i0(InterfaceC13435a.class) == null || (physicsComponent = (PhysicsComponent) this.f79250n.i0(InterfaceC13435a.class)) == null || !(physicsComponent.getBulletObject() instanceof PhysicsRigidBody) || (gameObject = this.f74504E) == null || gameObject.i0(InterfaceC13435a.class) == null || (physicsComponent2 = (PhysicsComponent) this.f74504E.i0(InterfaceC13435a.class)) == null || !(physicsComponent2.getBulletObject() instanceof PhysicsRigidBody)) {
            return;
        }
        Transform.G w12 = this.f79250n.transform.w1();
        Transform.G g10 = Transform.G.STATIC;
        if (w12 == g10 && this.f74504E.transform.w1() == g10) {
            return;
        }
        Vector3 vector3 = this.f74525Z;
        C13951a.a(vector3, this.f74509J);
        Vector3 vector32 = this.f74529q0;
        C13951a.a(vector32, this.f74506G);
        Constraint internalCreateConstraint = internalCreateConstraint((PhysicsRigidBody) physicsComponent.getBulletObject(), (PhysicsRigidBody) physicsComponent2.getBulletObject(), this.f74519T, this.f74520U, vector3, vector32);
        this.f74528m1 = internalCreateConstraint;
        if (internalCreateConstraint.countEnds() >= 2) {
            this.f74528m1.setCollisionBetweenLinkedBodies(this.cblb);
        }
        synchronized (Cc.c.f2503k) {
            K8.a.f10984o.f2506c.addJoint(this.f74528m1);
        }
        this.f74527i1 = true;
        this.f74505F = this.f74504E;
        this.f74511L.set(this.f74519T);
        this.f74512M.set(this.f74520U);
        this.f74513N.set(vector3);
        this.f74514O.set(vector32);
        this.f74515P = (PhysicsRigidBody) physicsComponent.getBulletObject();
        this.f74516Q = (PhysicsRigidBody) physicsComponent2.getBulletObject();
    }

    private Constraint internalCreateConstraint(PhysicsRigidBody rbA, PhysicsRigidBody rbB, Vector3 pivotInA, Vector3 pivotInB, Vector3 axisInA, Vector3 axisInB) {
        Constraint createConstraint = createConstraint(rbA, rbB, pivotInA, pivotInB, axisInA, axisInB);
        this.f74528m1 = createConstraint;
        if (createConstraint != null) {
            return createConstraint;
        }
        throw new NullPointerException("constraint can't be null");
    }

    private void removeFromPhysics() {
        if (this.f74528m1 != null) {
            synchronized (Cc.c.f2503k) {
                K8.a.f10984o.f2506c.removeJoint(this.f74528m1);
            }
            this.f74528m1 = null;
        }
        this.f74527i1 = false;
    }

    private void searchHitch() {
        if (this.f74508I == null) {
            this.f74508I = this.hitchReference.k();
            this.f74509J = null;
            this.f74510K = null;
        }
        if (this.f74509J == null) {
            GameObject gameObject = this.f74508I;
            if (gameObject != null) {
                Component f02 = gameObject.f0(Component.e.ConstraintHitch);
                if (f02 != null) {
                    this.f74510K = (ConstraintHitch) f02;
                    this.f74509J = f02.f79250n;
                } else {
                    this.f74509J = this.f74508I;
                    this.f74510K = null;
                }
            } else {
                Component f03 = this.f79250n.f0(Component.e.ConstraintHitch);
                if (f03 != null) {
                    this.f74510K = (ConstraintHitch) f03;
                    this.f74509J = f03.f79250n;
                } else {
                    this.f74509J = this.f79250n;
                    this.f74510K = null;
                }
            }
        }
        if (this.f74509J == null) {
            this.f74509J = this.f79250n;
            this.f74510K = null;
        }
    }

    private void searchTarget() {
        GameObject gameObject;
        if (this.f74504E == null) {
            this.f74504E = this.targetReference.k();
            this.f74506G = null;
            this.f74507H = null;
        }
        if (this.f74506G != null || (gameObject = this.f74504E) == null) {
            return;
        }
        Component f02 = gameObject.f0(Component.e.ConstraintPivot);
        if (f02 != null) {
            this.f74507H = (ConstraintPivot) f02;
            this.f74506G = f02.f79250n;
            return;
        }
        GameObject gameObject2 = new GameObject("Pivot");
        ConstraintPivot constraintPivot = new ConstraintPivot();
        this.f74507H = constraintPivot;
        gameObject2.r(constraintPivot);
        gameObject2.F1(this.f74504E);
        this.f74506G = gameObject2;
    }

    public void copyFrom(BaseConstraint baseConstraint) {
        this.targetReference = baseConstraint.targetReference.i();
        this.hitchReference = baseConstraint.hitchReference.i();
        this.cblb = baseConstraint.cblb;
    }

    public Constraint createConstraint(PhysicsRigidBody rbA, PhysicsRigidBody rbB, Vector3 pivotInA, Vector3 pivotInB, Vector3 axisInA, Vector3 axisInB) {
        throw new RuntimeException("Override!");
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.targetReference.o(gameObject);
        this.hitchReference.o(gameObject);
        if (this.f74527i1) {
            removeFromPhysics();
        }
    }

    public Constraint getConstraint() {
        return this.f74528m1;
    }

    public Vector3 getGlobalPivotADirection() {
        GameObject gameObject = this.f74509J;
        return gameObject == null ? this.f79250n.J0().forward() : gameObject.J0().forward();
    }

    public Vector3 getGlobalPivotAPosition() {
        GameObject gameObject = this.f74509J;
        return gameObject == null ? this.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class)) : gameObject.J0().u0((Vector3) JP.acquire(Vector3.class));
    }

    public Vector3 getGlobalPivotBDirection() {
        GameObject gameObject = this.f74506G;
        if (gameObject == null) {
            return null;
        }
        return gameObject.J0().forward();
    }

    public Vector3 getGlobalPivotBPosition() {
        GameObject gameObject = this.f74506G;
        if (gameObject == null) {
            return null;
        }
        return gameObject.J0().u0((Vector3) JP.acquire(Vector3.class));
    }

    @Override
    public int getIconResource() {
        return R.drawable.chain_2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_physics;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new a(), Lang.l(Lang.T.TARGET)));
        linkedList.add(new C5.b(new b(), "Hitch"));
        linkedList.add(new C5.b(new c(), "Collision between bodies", b.a.SLBoolean));
        return linkedList;
    }

    public ConstraintPivot getTargetConstraintPivotComp() {
        return this.f74507H;
    }

    public GameObject getTargetObject() {
        return this.f74504E;
    }

    public GameObject getTargetPivot() {
        return this.f74506G;
    }

    @Override
    public String getTitle() {
        throw new RuntimeException("Override!!");
    }

    @Override
    public Component.e getType() {
        throw new RuntimeException("Override!!");
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isConnected() {
        return this.f74528m1 != null;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        removeFromPhysics();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.targetReference.o(gameObject);
        this.hitchReference.o(gameObject);
        searchTarget();
        searchHitch();
        if (C13317e.G(this.f74506G)) {
            this.f74506G = null;
        }
        if (c8.b.j()) {
            if (this.f74527i1) {
                if (this.f74505F != this.f74504E) {
                    removeFromPhysics();
                } else {
                    Transform.G w12 = gameObject.transform.w1();
                    Transform.G g10 = Transform.G.STATIC;
                    if (w12 == g10 && this.f74504E.transform.w1() == g10) {
                        removeFromPhysics();
                    } else if (gameObject.i0(InterfaceC13435a.class) != null) {
                        PhysicsComponent physicsComponent = (PhysicsComponent) gameObject.i0(InterfaceC13435a.class);
                        if (physicsComponent == null || !(physicsComponent.getBulletObject() instanceof PhysicsRigidBody)) {
                            removeFromPhysics();
                        } else if (this.f74515P != physicsComponent.getBulletObject()) {
                            removeFromPhysics();
                        } else if (this.f74504E.d0(InterfaceC13435a.class) != null) {
                            PhysicsComponent physicsComponent2 = (PhysicsComponent) this.f74504E.d0(InterfaceC13435a.class);
                            if (physicsComponent2 == null || !(physicsComponent2.getBulletObject() instanceof PhysicsRigidBody)) {
                                removeFromPhysics();
                            } else if (this.f74516Q != physicsComponent2.getBulletObject()) {
                                removeFromPhysics();
                            }
                        } else {
                            removeFromPhysics();
                        }
                    } else {
                        removeFromPhysics();
                    }
                }
            }
            boolean z10 = this.f74527i1;
            if (z10 && z10 && this.f74528m1.countEnds() >= 2) {
                this.f74528m1.setCollisionBetweenLinkedBodies(this.cblb);
            }
            if (this.f74527i1 || K8.a.f10990u <= 1) {
                return;
            }
            addToPhysics();
        }
    }

    @Override
    public JsonElement serialize(Context context) {
        this.targetReference.q();
        this.hitchReference.q();
        return super.serialize(context);
    }

    public void setHitchObject(GameObject gameObject) {
        this.f74508I = gameObject;
        if (gameObject != null) {
            this.hitchReference.p(gameObject);
        } else {
            this.hitchReference.p(null);
            this.f74508I = null;
        }
    }

    public void setTargetConstraintPivotComp(ConstraintPivot targetConstraintPivotComp) {
        this.f74507H = targetConstraintPivotComp;
    }

    public void setTargetObject(GameObject gameObject) {
        this.f74504E = gameObject;
        if (gameObject != null) {
            this.targetReference.p(gameObject);
        } else {
            this.targetReference.p(null);
            this.f74506G = null;
        }
    }

    @Override
    public Component mo1248clone() {
        throw new RuntimeException("Override!!");
    }
}
