package i9;

import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import ib.C13600g;

public class C13592a {

    public PhysicsRigidBody f91596d;

    public int f91597e;

    public int f91598f;

    public CollisionShape f91600h;

    public Object f91601i;

    public ExposableLayerReference f91593a = new ExposableLayerReference();

    public float f91594b = 0.0f;

    public float f91595c = 0.5f;

    public boolean f91599g = false;

    public final Runnable f91602j = new RunnableC1772a();

    public class RunnableC1772a implements Runnable {
        public RunnableC1772a() {
        }

        @Override
        public void run() {
            if (C13592a.this.f91596d != null) {
                synchronized (Cc.c.f2503k) {
                    C13592a.this.f91596d.setCollisionShape(C13592a.this.f91600h);
                }
            }
        }
    }

    public C13592a(CollisionShape collisionShape, Object userObject) {
        this.f91600h = collisionShape;
        this.f91601i = userObject;
    }

    public final void c(GameObject gameObject) {
        PhysicsRigidBody physicsRigidBody = new PhysicsRigidBody(this.f91600h, 0.0f);
        this.f91596d = physicsRigidBody;
        physicsRigidBody.setUserObject(this.f91601i);
        this.f91596d.setRestitution(this.f91594b);
        float M10 = Nc.b.M(0.0f, this.f91595c);
        this.f91595c = M10;
        this.f91596d.setFriction(M10);
        d(gameObject);
        r();
        synchronized (Cc.c.f2503k) {
            K8.a.f10984o.f2506c.add(this.f91596d);
        }
    }

    public void d(GameObject gameObject) {
        if (this.f91596d == null) {
            return;
        }
        Vector3f vector3f = (Vector3f) JP.acquire(Vector3f.class);
        Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
        f fVar = (f) JP.acquire(f.class);
        try {
            C13600g.b(gameObject, fVar);
            fVar.E1(vector3f);
            fVar.s1(quaternion);
            synchronized (Cc.c.f2503k) {
                this.f91596d.setPhysicsLocation(vector3f);
                this.f91596d.setPhysicsRotation(quaternion);
            }
        } finally {
            JP.release(fVar);
            JP.release(vector3f);
            JP.release(quaternion);
        }
    }

    public C13592a e() {
        C13592a c13592a = new C13592a(this.f91600h, this.f91601i);
        c13592a.f91593a = this.f91593a.clone();
        c13592a.f91595c = this.f91595c;
        c13592a.f91594b = this.f91594b;
        return c13592a;
    }

    public void f(GameObject gameObject) {
        if (this.f91599g) {
            try {
                synchronized (Cc.c.f2503k) {
                    K8.a.f10984o.f2506c.removeCollisionObject(this.f91596d);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f91596d = null;
            this.f91599g = false;
        }
    }

    public float g() {
        return this.f91594b;
    }

    public PhysicsCollisionObject h() {
        return this.f91596d;
    }

    public CollisionShape i() {
        return this.f91600h;
    }

    public float j() {
        return this.f91595c;
    }

    public boolean k() {
        return this.f91599g;
    }

    public void l() {
        K8.a.B(this.f91602j);
    }

    public void m(float bounciness) {
        PhysicsRigidBody physicsRigidBody;
        boolean z10 = this.f91594b != bounciness;
        this.f91594b = bounciness;
        if (!z10 || (physicsRigidBody = this.f91596d) == null) {
            return;
        }
        physicsRigidBody.setRestitution(bounciness);
    }

    public void n(float friction) {
        PhysicsRigidBody physicsRigidBody;
        float M10 = Nc.b.M(0.0f, friction);
        boolean z10 = this.f91595c != M10;
        this.f91595c = M10;
        if (!z10 || (physicsRigidBody = this.f91596d) == null) {
            return;
        }
        physicsRigidBody.setFriction(M10);
    }

    public void o(ExposableLayerReference layerReference) {
        this.f91593a = layerReference;
        if (this.f91596d != null) {
            r();
        }
    }

    public void p() {
        if (this.f91599g) {
            Cc.c cVar = K8.a.f10984o;
            if (cVar.f2506c != null) {
                try {
                    if (this.f91596d != null) {
                        try {
                            synchronized (Cc.c.f2503k) {
                                cVar.f2506c.removeCollisionObject(this.f91596d);
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    this.f91596d = null;
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            this.f91599g = false;
        }
    }

    public void q(GameObject gameObject) {
        boolean z10 = this.f91599g;
        if (z10) {
            r();
        } else {
            if (z10) {
                return;
            }
            c(gameObject);
            this.f91599g = true;
        }
    }

    public final void r() {
        if (this.f91597e == this.f91593a.i().f79543c && this.f91598f == this.f91593a.i().hashCode()) {
            return;
        }
        this.f91597e = this.f91593a.i().f79543c;
        this.f91598f = this.f91593a.i().hashCode();
        int g10 = this.f91593a.g();
        int h10 = this.f91593a.h();
        synchronized (Cc.c.f2503k) {
            this.f91596d.setCollisionGroup(g10);
            this.f91596d.setCollideWithGroups(h10);
        }
    }
}
