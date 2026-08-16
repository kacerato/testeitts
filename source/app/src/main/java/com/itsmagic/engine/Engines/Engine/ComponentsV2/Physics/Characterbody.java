package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics;

import C5.b;
import Gb.c;
import JAVARuntime.Color;
import JAVARuntime.Component;
import JAVARuntime.GizmoObject;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CapsuleCollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.objects.PhysicsCharacter;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;
import rb.InterfaceC15168a;

public class Characterbody extends PhysicsComponent {

    public static final String f74375i1 = "Characterbody";

    public static final Class f74376m1 = Characterbody.class;

    public float f74377D0;

    public final List<Vector2> f74378H;

    public int f74379I;

    public int f74380J;

    public PhysicsCharacter f74381K;

    public int f74382L;

    public boolean f74383M;

    public Vector3 f74384N;

    public float f74385O;

    public float f74386P;

    public GizmoObject f74387Q;

    public final Vector3f f74388R;

    public final Vector3f f74389S;

    public final Vector3f f74390T;

    public final Vector3f f74391U;

    public final Vector3 f74392V;

    public boolean f74393W;

    public final Vector3 f74394X;

    public final Transform f74395Y;

    public final Vector3 f74396Z;

    public Component f74397b1;

    @Expose
    @eb.f
    private Vector3 gravityMultiplier;

    @Expose
    @eb.f
    private float height;

    @Expose
    @eb.f
    private float jumpForce;

    @Expose
    public ExposableLayerReference layerReference;

    @Expose
    @eb.f
    private float mass;

    @Expose
    @eb.f
    private float maxSlopeDegress;

    public final Vector3 f74398q0;

    @Expose
    @eb.f
    private float stepHeight;

    @Expose
    public boolean useGravity;

    public float f74399v0;

    @Expose
    @eb.f
    private float width;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", Characterbody.this.gravityMultiplier.getY() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Characterbody.this.gravityMultiplier.setY(variable.float_value);
            }
        }
    }

    public class b extends AbstractC13203c {
        @Override
        public Class b() {
            return Characterbody.f74376m1;
        }

        @Override
        public String c() {
            return Characterbody.f74375i1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.CHARACTER_BODY);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Characterbody.this.mass + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Characterbody.this.mass = variable.float_value;
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f74403b;

            public a(final Variable val$variable) {
                this.f74403b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Characterbody - set height") : null;
                try {
                    Characterbody.this.setHeight(this.f74403b.float_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Characterbody.this.height + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public class a implements Runnable {

            public final Variable f74406b;

            public a(final Variable val$variable) {
                this.f74406b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Characterbody - set width") : null;
                try {
                    Characterbody.this.setWidth(this.f74406b.float_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Characterbody.this.width + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", Characterbody.this.stepHeight + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Characterbody.this.setStepHeight(variable.float_value);
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", Characterbody.this.maxSlopeDegress + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Characterbody.this.maxSlopeDegress = variable.float_value;
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", Characterbody.this.jumpForce + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Characterbody.this.jumpForce = variable.float_value;
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
            return new Variable("", Characterbody.this.useGravity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Characterbody.this.useGravity = variable.booolean_value.booleanValue();
            }
        }
    }

    static {
        C13201a.b(new b());
    }

    public Characterbody() {
        super(f74375i1);
        this.useGravity = true;
        this.gravityMultiplier = new Vector3(1.0f);
        this.height = 1.8f;
        this.width = 0.8f;
        this.stepHeight = 0.35f;
        this.maxSlopeDegress = 45.0f;
        this.mass = 80.0f;
        this.jumpForce = 7.5f;
        this.layerReference = new ExposableLayerReference();
        this.f74378H = new SteppedArrayList();
        this.f74383M = false;
        this.f74384N = new Vector3();
        this.f74388R = new Vector3f();
        this.f74389S = new Vector3f();
        this.f74390T = new Vector3f();
        this.f74391U = new Vector3f();
        this.f74392V = new Vector3();
        this.f74393W = false;
        this.f74394X = new Vector3();
        this.f74395Y = new Transform();
        this.f74396Z = new Vector3();
        this.f74398q0 = new Vector3();
        this.f74399v0 = 0.0f;
        this.f74377D0 = 0.0f;
    }

    private void addToPhysics() {
        if (this.height <= 0.0f) {
            this.height = 0.1f;
        }
        if (this.width <= 0.0f) {
            this.width = 0.1f;
        }
        float f10 = this.height;
        this.f74385O = f10;
        float f11 = this.width;
        this.f74386P = f11;
        PhysicsCharacter physicsCharacter = new PhysicsCharacter(new CapsuleCollisionShape(f11 / 2.0f, f10 / 2.0f), this.stepHeight);
        this.f74381K = physicsCharacter;
        physicsCharacter.setUserObject(this);
        float E10 = Nc.b.E(1.0f, this.maxSlopeDegress, 89.0f);
        this.maxSlopeDegress = E10;
        this.f74381K.setMaxSlope(Nc.b.E(0.0f, (float) Nc.b.K1(E10), 1.5707964f));
        this.f74381K.setJumpSpeed(this.jumpForce);
        fillPositionCache(this.f79250n.transform.h0());
        this.f74381K.warp(this.f74389S);
        updateLayer();
        synchronized (Cc.c.f2503k) {
            K8.a.f10984o.f2506c.add(this.f74381K);
        }
    }

    private void drawGizmo() {
        if (this.f74387Q == null) {
            GizmoObject gizmoObject = new GizmoObject();
            this.f74387Q = gizmoObject;
            gizmoObject.setColor(new Color(50, 0, 255, 0));
            this.f74387Q.setEnableTransparency(true);
            if (this.height <= 0.0f) {
                this.height = 0.1f;
            }
            if (this.width <= 0.0f) {
                this.width = 0.1f;
            }
            float f10 = this.height / 2.0f;
            float f11 = this.width;
            this.f74387Q.setVertex(new Gb.c(f10 + f11, f11 / 2.0f, 4, 8, c.a.VERTICAL).a().x2());
        }
        this.f74387Q.setPosition(this.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class)).toJAVARuntime());
        this.f74387Q.setRotation(this.f79250n.J0().B0().N0());
        Ub.a.a(this.f74387Q);
    }

    private void fillPositionCache(Vector3 position) {
        this.f74389S.set(position.getX(), position.getY(), position.getZ());
    }

    private boolean isSelectedAParent() {
        GameObject gameObject = this.f79250n;
        return gameObject != null && gameObject.f1();
    }

    private void removeFromPhysics() {
        try {
            synchronized (Cc.c.f2503k) {
                K8.a.f10984o.f2506c.remove(this.f74381K);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f74379I = 0;
        this.f74380J = 0;
        this.f74381K = null;
        this.f74383M = false;
        this.f74387Q = null;
    }

    private void updateLayer() {
        if (this.f74379I == this.layerReference.i().f79543c && this.f74380J == this.layerReference.i().hashCode()) {
            return;
        }
        this.f74379I = this.layerReference.i().f79543c;
        this.f74380J = this.layerReference.i().hashCode();
        int g10 = this.layerReference.g();
        int h10 = this.layerReference.h();
        synchronized (Cc.c.f2503k) {
            this.f74381K.setCollisionGroup(g10);
            this.f74381K.setCollideWithGroups(h10);
        }
    }

    @Override
    public boolean acceptColliders() {
        return false;
    }

    public void addForce(Vector2 vector2) {
        if (vector2 != null) {
            this.f74378H.add(vector2);
            return;
        }
        throw new NullPointerException("vector can't be null");
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        if (this.f74383M) {
            removeFromPhysics();
        }
    }

    @Override
    public void disabledUpdatePhysics() {
        super.disabledUpdatePhysics();
    }

    @Override
    public boolean enablePredictUnconstraintMotion() {
        return true;
    }

    @Override
    public PhysicsCollisionObject getBulletObject() {
        return this.f74381K;
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        return null;
    }

    @Override
    public String getDisplayableTitle() {
        return f74375i1;
    }

    public float getForwardSpeed() {
        return this.f74399v0;
    }

    public Vector3 getGravityMultiplier() {
        if (this.gravityMultiplier == null) {
            this.gravityMultiplier = new Vector3(1.0f);
        }
        return this.gravityMultiplier;
    }

    public float getHeight() {
        return this.height;
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
        c cVar = new c();
        String l10 = Lang.l(Lang.T.MASS);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(cVar, l10, aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "mass", cVar2));
        linkedList.add(new C5.b(new d(), Lang.l(Lang.T.HEIGHT), aVar).d(this.f79250n, this, "height", cVar2));
        linkedList.add(new C5.b(new e(), Lang.l(Lang.T.WIDTH), aVar).d(this.f79250n, this, "width", cVar2));
        linkedList.add(new C5.b(new f(), Lang.l(Lang.T.STEP_HEIGHT), aVar).d(this.f79250n, this, "stepHeight", cVar2));
        linkedList.add(new C5.b(new g(), "Max slope", aVar).d(this.f79250n, this, "maxSlopeDegress", cVar2));
        linkedList.add(new C5.b(new h(), Lang.l(Lang.T.JUMP_SPEED), aVar).d(this.f79250n, this, "jumpForce", cVar2));
        linkedList.add(this.layerReference.d(Lang.l(Lang.T.LAYER), context, new i()));
        linkedList.add(new C5.b(new j(), Lang.l(Lang.T.GRAVITY), b.a.SLBoolean));
        linkedList.add(new C5.b(new a(), "Gravity multiplier", aVar));
        return linkedList;
    }

    public float getJumpSpeed() {
        return this.jumpForce;
    }

    public Vector3 getOnPhysicsVelocity() {
        return this.f74394X;
    }

    public float getSideSpeed() {
        return this.f74377D0;
    }

    public float getStepHeight() {
        return this.stepHeight;
    }

    @Override
    public String getTitle() {
        return f74375i1;
    }

    @Override
    public Vector3 getVelocity() {
        if (this.f74384N == null) {
            this.f74384N = new Vector3();
        }
        return this.f74384N;
    }

    public float getWidth() {
        return this.width;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isGlobalDirections() {
        return this.f74393W;
    }

    public boolean isGrounded() {
        PhysicsCharacter physicsCharacter = this.f74381K;
        if (physicsCharacter == null) {
            return false;
        }
        return physicsCharacter.onGround();
    }

    public void jump() {
        PhysicsCharacter physicsCharacter = this.f74381K;
        if (physicsCharacter != null) {
            physicsCharacter.jump();
        }
    }

    @Override
    public void onColliderChanged() {
        invalidateBulletShapeChildrenCache();
    }

    @Override
    public void onDetach() {
        if (this.f74383M) {
            removeFromPhysics();
        }
        super.onDetach();
    }

    @Override
    public void onPhysicsGetTransformations() {
        super.onPhysicsGetTransformations();
        PhysicsCharacter physicsCharacter = this.f74381K;
        if (physicsCharacter != null) {
            this.f74394X.set(physicsCharacter.getLinearVelocity(this.f74388R));
            this.f74392V.set(this.f74381K.getPhysicsLocation());
            this.f79250n.transform.p3(this.f74392V);
        }
    }

    public void prePhysic() {
        if (C13317e.J(this.f79250n)) {
            if (this.useGravity) {
                getGravityMultiplier();
                if (K8.a.f10990u > 1) {
                    Vector3 a10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.r().a();
                    this.f74381K.setGravity(new Vector3f(a10.getX() * this.gravityMultiplier.getX(), a10.getY() * this.gravityMultiplier.getY(), a10.getZ() * this.gravityMultiplier.getZ()));
                } else {
                    this.f74381K.setGravity(new Vector3f(0.0f, 0.0f, 0.0f));
                }
            } else {
                this.f74388R.set(0.0f, 0.0f, 0.0f);
                this.f74381K.setGravity(this.f74388R);
            }
            try {
                fillPositionCache(this.f79250n.transform.h0());
                this.f74381K.warp(this.f74389S);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f74388R.set(0.0f, 0.0f, 0.0f);
            if (c8.b.k()) {
                float b10 = K8.d.b();
                if (this.f74393W) {
                    this.f74388R.set(this.f74377D0 * b10, 0.0f, this.f74399v0 * b10);
                } else {
                    this.f74388R.addLocal(this.f74390T.multLocal(this.f74399v0 * b10));
                    this.f74388R.addLocal(this.f74391U.multLocal(this.f74377D0 * b10));
                }
                for (int i10 = 0; i10 < this.f74378H.size(); i10++) {
                    Vector2 vector2 = this.f74378H.get(i10);
                    Vector3f vector3f = this.f74388R;
                    vector3f.f81611x += vector2.f79838x * b10;
                    vector3f.f81613z += vector2.f79839y * b10;
                }
                this.f74378H.clear();
            }
            try {
                this.f74381K.setJumpSpeed(this.jumpForce);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            try {
                this.f74381K.setWalkDirection(this.f74388R);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            float E10 = Nc.b.E(1.0f, this.maxSlopeDegress, 89.0f);
            this.maxSlopeDegress = E10;
            this.f74381K.setMaxSlope(Nc.b.E(0.0f, (float) Nc.b.K1(E10), 1.5707964f));
            this.f74381K.setStepHeight(this.stepHeight);
            updateLayer();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        drawGizmo();
        Vector3 forward = gameObject.transform.forward();
        Vector3 right = gameObject.transform.right();
        this.f74390T.set(forward.getX(), forward.getY(), forward.getZ());
        this.f74391U.set(right.getX(), right.getY(), right.getZ());
        if (this.f74383M) {
            return;
        }
        addToPhysics();
        prePhysic();
        this.f74383M = true;
    }

    public void setForwardSpeed(float forwardSpeed) {
        this.f74399v0 = forwardSpeed;
    }

    public void setGlobalDirections(boolean useGlobalDirections) {
        this.f74393W = useGlobalDirections;
    }

    public void setGravityMultiplier(Vector3 gravityMultiplier) {
        this.gravityMultiplier = gravityMultiplier;
    }

    public void setHeight(float height) {
        boolean z10 = this.height != height;
        this.height = height;
        if (z10) {
            this.f74387Q = null;
        }
    }

    public void setJumpSpeed(float jumpForce) {
        this.jumpForce = jumpForce;
    }

    @Override
    public void setRuntime(Component run) {
        this.f74397b1 = run;
    }

    public void setSideSpeed(float sideSpeed) {
        this.f74377D0 = sideSpeed;
    }

    public void setStepHeight(float stepHeight) {
        this.stepHeight = Nc.b.M(0.05f, stepHeight);
    }

    public void setVelocity(Vector3 velocity) {
        this.f74384N = velocity;
    }

    public void setWidth(float width) {
        boolean z10 = this.width != width;
        this.width = width;
        if (z10) {
            this.f74387Q = null;
        }
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74397b1;
        if (component != null) {
            return component;
        }
        JAVARuntime.Characterbody characterbody = new JAVARuntime.Characterbody(this);
        this.f74397b1 = characterbody;
        return characterbody;
    }

    @Override
    public void updatePhysics() {
        super.updatePhysics();
        if (this.f74383M) {
            if (this.f74385O != this.height || this.f74386P != this.width) {
                removeFromPhysics();
            }
            if (this.f74383M) {
                prePhysic();
            }
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Characterbody characterbody = new Characterbody();
        characterbody.useGravity = this.useGravity;
        characterbody.gravityMultiplier = this.gravityMultiplier.m1249clone();
        characterbody.height = this.height;
        characterbody.width = this.width;
        characterbody.stepHeight = this.stepHeight;
        characterbody.jumpForce = this.jumpForce;
        characterbody.layerReference = this.layerReference.clone();
        return characterbody;
    }

    public void addForce(float x10, float z10) {
        this.f74378H.add(new Vector2(x10, z10));
    }
}
