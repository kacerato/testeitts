package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
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
import java.util.LinkedList;
import java.util.List;
import rb.InterfaceC15168a;

public class AreaTrigger extends PhysicsComponent {

    public static final String f74358U = "AreaTrigger";

    public static final Class f74359V = AreaTrigger.class;

    public CompoundCollisionShape f74360H;

    public PhysicsRigidBody f74361I;

    public int f74362J;

    public int f74363K;

    public boolean f74364L;

    public boolean f74365M;

    public int f74366N;

    public boolean f74367O;

    public final Vector3f f74368P;

    public final Quaternion f74369Q;

    public final Vector3f f74370R;

    public final Quaternion f74371S;

    public Component f74372T;

    @Expose
    private boolean collisionEvents;

    @Expose
    public ExposableLayerReference layerReference;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return AreaTrigger.f74359V;
        }

        @Override
        public String c() {
            return AreaTrigger.f74358U;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.AREA_TRIGGER);
        }
    }

    public class b implements InterfaceC15168a {
        public b() {
        }

        @Override
        public void a(Layer newLayer) {
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", AreaTrigger.this.collisionEvents + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AreaTrigger.this.collisionEvents = variable.booolean_value.booleanValue();
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public AreaTrigger() {
        super(f74358U);
        this.layerReference = new ExposableLayerReference();
        this.collisionEvents = true;
        this.f74364L = false;
        this.f74367O = false;
        this.f74368P = new Vector3f();
        this.f74369Q = new Quaternion();
        this.f74370R = new Vector3f();
        this.f74371S = new Quaternion();
    }

    private void addToPhysics() {
        if (this.f74360H == null) {
            this.f74360H = new CompoundCollisionShape();
        }
        PhysicsRigidBody physicsRigidBody = new PhysicsRigidBody(this.f74360H, 0.0f);
        this.f74361I = physicsRigidBody;
        physicsRigidBody.setUserObject(this);
        fillPositionCache(this.f79250n.transform.Z0());
        this.f74361I.setPhysicsLocation(this.f74368P);
        this.f74361I.setGravity(new Vector3f(0.0f, -9.81f, 0.0f));
        this.f74361I.setContactResponse(false);
        fillCriticalTransformCache();
        this.f74361I.setPhysicsLocation(this.f74368P);
        this.f74361I.setPhysicsRotation(this.f74369Q);
        synchronized (Cc.c.f2503k) {
            K8.a.f10984o.f2506c.add(this.f74361I);
        }
        propagateNewHostPhysicsEntityChanged();
    }

    private void fillCriticalTransformCache() {
        fillPositionCache(this.f79250n.transform.h0());
        com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion i02 = this.f79250n.transform.i0();
        this.f74369Q.set(i02.getX(), i02.getY(), i02.getZ(), i02.I());
    }

    private void fillPositionCache(Vector3 position) {
        this.f74368P.set(position.getX(), position.getY(), position.getZ());
    }

    private void updateLayer() {
        if (this.f74362J == this.layerReference.i().f79543c && this.f74363K == this.layerReference.i().hashCode()) {
            return;
        }
        this.f74362J = this.layerReference.i().f79543c;
        this.f74363K = this.layerReference.i().hashCode();
        int g10 = this.layerReference.g();
        int h10 = this.layerReference.h();
        synchronized (Cc.c.f2503k) {
            this.f74361I.setCollisionGroup(g10);
            this.f74361I.setCollideWithGroups(h10);
        }
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        if (this.f74364L) {
            try {
                synchronized (Cc.c.f2503k) {
                    K8.a.f10984o.f2506c.removeCollisionObject(this.f74361I);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f74362J = 0;
            this.f74363K = 0;
            this.f74360H = null;
            this.f74361I = null;
            this.f74364L = false;
            propagateDettachHostPhysicsEntityChanged();
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
    public PhysicsCollisionObject getBulletObject() {
        return this.f74361I;
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        if (this.f74360H == null) {
            this.f74360H = new CompoundCollisionShape();
        }
        return this.f74360H;
    }

    @Override
    public String getDisplayableTitle() {
        return f74358U;
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
        linkedList.add(this.layerReference.d(Lang.l(Lang.T.LAYER), context, new b()));
        linkedList.add(new C5.b(new c(), "Script collision events", b.a.SLBoolean));
        linkedList.add(new C5.b(Lang.l(Lang.T.COLLIDERS) + " " + this.f74366N, 12));
        if (c8.b.j()) {
            linkedList.add(new C5.b(Lang.l(Lang.T.TRIGGERS) + " " + collisionCount(), 12));
        }
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f74358U;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void onColliderChanged() {
        invalidateBulletShapeChildrenCache();
        this.f74367O = true;
    }

    @Override
    public void onDetach() {
        if (this.f74364L) {
            Cc.c cVar = K8.a.f10984o;
            if (cVar.f2506c != null) {
                try {
                    if (this.f74361I != null) {
                        try {
                            synchronized (Cc.c.f2503k) {
                                cVar.f2506c.removeCollisionObject(this.f74361I);
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    this.f74360H = null;
                    this.f74361I = null;
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            this.f74364L = false;
            propagateDettachHostPhysicsEntityChanged();
        }
        super.onDetach();
    }

    @Override
    public void onPhysicsGetTransformations() {
        super.onPhysicsGetTransformations();
        if (this.f74361I == null || this.f79250n.transform.w1() == Transform.G.STATIC) {
            return;
        }
        this.f79250n.transform.z3(this.f74361I.getPhysicsRotation(this.f74371S));
        this.f79250n.transform.q3(this.f74361I.getPhysicsLocation(this.f74370R));
    }

    public void prePhysic() {
        if (this.f79250n.transform.w1() != Transform.G.STATIC) {
            fillCriticalTransformCache();
            this.f74361I.setPhysicsLocation(this.f74368P);
            this.f74361I.setPhysicsRotation(this.f74369Q);
        }
        updateLayer();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.f74364L) {
            return;
        }
        addToPhysics();
        this.f74364L = true;
    }

    @Override
    public void setRuntime(Component run) {
        this.f74372T = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74372T;
        if (component != null) {
            return component;
        }
        JAVARuntime.AreaTrigger areaTrigger = new JAVARuntime.AreaTrigger(this);
        this.f74372T = areaTrigger;
        return areaTrigger;
    }

    @Override
    public void updatePhysics() {
        super.updatePhysics();
        this.f74366N = getBulletShape().countChildren();
        if (this.f74364L) {
            if (this.f74365M) {
                synchronized (Cc.c.f2503k) {
                    this.f74361I.setCollisionShape(this.f74360H);
                }
                this.f74365M = false;
            }
            prePhysic();
        }
        if (this.f74367O && this.f74364L) {
            if (this.f74361I != null) {
                synchronized (Cc.c.f2503k) {
                    try {
                        K8.a.f10984o.f2506c.remove(this.f74361I);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    this.f74361I.setCollisionShape(this.f74360H);
                    K8.a.f10984o.f2506c.add(this.f74361I);
                }
            }
            this.f74367O = false;
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        AreaTrigger areaTrigger = new AreaTrigger();
        areaTrigger.collisionEvents = this.collisionEvents;
        areaTrigger.layerReference = this.layerReference.clone();
        return areaTrigger;
    }
}
