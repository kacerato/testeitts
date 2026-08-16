package i9;

import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.math.Vector3f;

public class b {

    public PhysicsRigidBody f91607d;

    public int f91608e;

    public int f91609f;

    public boolean f91611h;

    public CollisionShape f91613j;

    public Object f91614k;

    public ExposableLayerReference f91604a = new ExposableLayerReference();

    public float f91605b = 0.0f;

    public float f91606c = 0.5f;

    public boolean f91610g = false;

    public boolean f91612i = true;

    public final Vector3 f91615l = new Vector3();

    public final Quaternion f91616m = new Quaternion();

    public final Runnable f91617n = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            synchronized (Cc.c.f2503k) {
                b.this.f91607d.setCollisionShape(b.this.f91613j);
            }
        }
    }

    public b(CollisionShape collisionShape, Object userObject) {
        this.f91613j = collisionShape;
        this.f91614k = userObject;
    }

    public final void c() {
        PhysicsRigidBody physicsRigidBody = new PhysicsRigidBody(this.f91613j, 0.0f);
        this.f91607d = physicsRigidBody;
        physicsRigidBody.setUserObject(this.f91614k);
        this.f91607d.setRestitution(this.f91605b);
        float M10 = Nc.b.M(0.0f, this.f91606c);
        this.f91606c = M10;
        this.f91607d.setFriction(M10);
        d();
        w();
        synchronized (Cc.c.f2503k) {
            K8.a.f10984o.f2506c.add(this.f91607d);
        }
    }

    public void d() {
        if (this.f91607d == null) {
            return;
        }
        Vector3f vector3f = (Vector3f) JP.acquire(Vector3f.class);
        com.jme3.math.Quaternion quaternion = (com.jme3.math.Quaternion) JP.acquire(com.jme3.math.Quaternion.class);
        synchronized (Cc.c.f2503k) {
            vector3f.set(this.f91615l.getX(), this.f91615l.getY(), this.f91615l.getZ());
            quaternion.set(this.f91616m.getX(), this.f91616m.getY(), this.f91616m.getZ(), this.f91616m.I());
            this.f91607d.setPhysicsLocation(vector3f);
            this.f91607d.setPhysicsRotation(quaternion);
        }
        JP.release(vector3f);
        JP.release(quaternion);
    }

    public b e() {
        b bVar = new b(this.f91613j, this.f91614k);
        bVar.f91604a = this.f91604a.clone();
        bVar.f91606c = this.f91606c;
        bVar.f91605b = this.f91605b;
        return bVar;
    }

    public void f() {
        if (this.f91610g) {
            try {
                synchronized (Cc.c.f2503k) {
                    K8.a.f10984o.f2506c.removeCollisionObject(this.f91607d);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f91607d = null;
            this.f91610g = false;
        }
    }

    public float g() {
        return this.f91605b;
    }

    public PhysicsCollisionObject h() {
        return this.f91607d;
    }

    public CollisionShape i() {
        return this.f91613j;
    }

    public float j() {
        return this.f91606c;
    }

    public boolean k() {
        return this.f91610g;
    }

    public void l() {
        K8.a.B(this.f91617n);
    }

    public final void m() {
    }

    public void n(float bounciness) {
        PhysicsRigidBody physicsRigidBody;
        boolean z10 = this.f91605b != bounciness;
        this.f91605b = bounciness;
        if (!z10 || (physicsRigidBody = this.f91607d) == null) {
            return;
        }
        physicsRigidBody.setRestitution(bounciness);
    }

    public void o(float friction) {
        PhysicsRigidBody physicsRigidBody;
        float M10 = Nc.b.M(0.0f, friction);
        boolean z10 = this.f91606c != M10;
        this.f91606c = M10;
        if (!z10 || (physicsRigidBody = this.f91607d) == null) {
            return;
        }
        physicsRigidBody.setFriction(M10);
    }

    public void p(ExposableLayerReference layerReference) {
        this.f91604a = layerReference;
        if (this.f91607d != null) {
            w();
        }
    }

    public void q(Vector3 position) {
        this.f91615l.set(position);
        d();
    }

    public void r(Quaternion rotation) {
        this.f91616m.u0(rotation);
        d();
    }

    public void s(float px, float py, float pz, Quaternion rotation) {
        this.f91615l.set(px, py, pz);
        this.f91616m.u0(rotation);
        d();
    }

    public void t(Vector3 position, Quaternion rotation) {
        this.f91615l.set(position);
        this.f91616m.u0(rotation);
        d();
    }

    public void u() {
        if (this.f91610g) {
            Cc.c cVar = K8.a.f10984o;
            if (cVar.f2506c != null) {
                try {
                    if (this.f91607d != null) {
                        try {
                            synchronized (Cc.c.f2503k) {
                                cVar.f2506c.removeCollisionObject(this.f91607d);
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    this.f91607d = null;
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            this.f91610g = false;
        }
    }

    public void v() {
        if (this.f91610g) {
            m();
            w();
        }
        if (this.f91610g) {
            return;
        }
        c();
        this.f91610g = true;
    }

    public final void w() {
        if (this.f91607d == null) {
            return;
        }
        if (this.f91608e == this.f91604a.i().f79543c && this.f91609f == this.f91604a.i().hashCode()) {
            return;
        }
        this.f91608e = this.f91604a.i().f79543c;
        this.f91609f = this.f91604a.i().hashCode();
        int g10 = this.f91604a.g();
        int h10 = this.f91604a.h();
        synchronized (Cc.c.f2503k) {
            this.f91607d.setCollisionGroup(g10);
            this.f91607d.setCollideWithGroups(h10);
        }
    }
}
