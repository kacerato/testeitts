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

public class c {

    public PhysicsRigidBody f91622d;

    public int f91623e;

    public int f91624f;

    public boolean f91626h;

    public CollisionShape f91627i;

    public Object f91628j;

    public ExposableLayerReference f91619a = new ExposableLayerReference();

    public float f91620b = 0.0f;

    public float f91621c = 0.5f;

    public boolean f91625g = false;

    public c(CollisionShape collisionShape, Object userObject) {
        this.f91627i = collisionShape;
        this.f91628j = userObject;
    }

    public final void a(GameObject gameObject) {
        PhysicsRigidBody physicsRigidBody = new PhysicsRigidBody(this.f91627i, 0.0f);
        this.f91622d = physicsRigidBody;
        physicsRigidBody.setUserObject(this.f91628j);
        this.f91622d.setRestitution(this.f91620b);
        float M10 = Nc.b.M(0.0f, this.f91621c);
        this.f91621c = M10;
        this.f91622d.setFriction(M10);
        b(gameObject);
        p();
        synchronized (Cc.c.f2503k) {
            K8.a.f10984o.f2506c.add(this.f91622d);
        }
    }

    public void b(GameObject gameObject) {
        if (this.f91622d == null) {
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
                this.f91622d.setPhysicsLocation(vector3f);
                this.f91622d.setPhysicsRotation(quaternion);
            }
        } finally {
            JP.release(fVar);
            JP.release(vector3f);
            JP.release(quaternion);
        }
    }

    public c c() {
        c cVar = new c(this.f91627i, this.f91628j);
        cVar.f91619a = this.f91619a.clone();
        cVar.f91621c = this.f91621c;
        cVar.f91620b = this.f91620b;
        return cVar;
    }

    public void d(GameObject gameObject) {
        if (this.f91625g) {
            try {
                synchronized (Cc.c.f2503k) {
                    K8.a.f10984o.f2506c.removeCollisionObject(this.f91622d);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f91622d = null;
            this.f91625g = false;
            this.f91626h = false;
        }
    }

    public float e() {
        return this.f91620b;
    }

    public PhysicsCollisionObject f() {
        return this.f91622d;
    }

    public CollisionShape g() {
        return this.f91627i;
    }

    public float h() {
        return this.f91621c;
    }

    public boolean i() {
        return this.f91625g;
    }

    public void j() {
        this.f91626h = true;
    }

    public void k(float bounciness) {
        PhysicsRigidBody physicsRigidBody;
        boolean z10 = this.f91620b != bounciness;
        this.f91620b = bounciness;
        if (!z10 || (physicsRigidBody = this.f91622d) == null) {
            return;
        }
        physicsRigidBody.setRestitution(bounciness);
    }

    public void l(float friction) {
        PhysicsRigidBody physicsRigidBody;
        float M10 = Nc.b.M(0.0f, friction);
        boolean z10 = this.f91621c != M10;
        this.f91621c = M10;
        if (!z10 || (physicsRigidBody = this.f91622d) == null) {
            return;
        }
        physicsRigidBody.setFriction(M10);
    }

    public void m(ExposableLayerReference layerReference) {
        this.f91619a = layerReference;
        if (this.f91622d != null) {
            p();
        }
    }

    public void n() {
        if (this.f91625g) {
            Cc.c cVar = K8.a.f10984o;
            if (cVar.f2506c != null) {
                try {
                    if (this.f91622d != null) {
                        try {
                            synchronized (Cc.c.f2503k) {
                                cVar.f2506c.removeCollisionObject(this.f91622d);
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    this.f91622d = null;
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            this.f91625g = false;
            this.f91626h = false;
        }
    }

    public void o(GameObject gameObject) {
        boolean z10 = this.f91625g;
        if (!z10) {
            if (z10) {
                return;
            }
            a(gameObject);
            this.f91625g = true;
            return;
        }
        if (this.f91626h) {
            if (this.f91622d != null) {
                synchronized (Cc.c.f2503k) {
                    try {
                        K8.a.f10984o.f2506c.remove(this.f91622d);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    this.f91622d.setCollisionShape(this.f91627i);
                    K8.a.f10984o.f2506c.add(this.f91622d);
                }
            }
            this.f91626h = false;
        }
        b(gameObject);
        p();
    }

    public final void p() {
        if (this.f91623e == this.f91619a.i().f79543c && this.f91624f == this.f91619a.i().hashCode()) {
            return;
        }
        this.f91623e = this.f91619a.i().f79543c;
        this.f91624f = this.f91619a.i().hashCode();
        int g10 = this.f91619a.g();
        int h10 = this.f91619a.h();
        synchronized (Cc.c.f2503k) {
            this.f91622d.setCollisionGroup(g10);
            this.f91622d.setCollideWithGroups(h10);
        }
    }
}
