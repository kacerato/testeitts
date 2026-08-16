package com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import java.util.List;

public class a {

    public final Collider.o f73281a;

    public final CompoundCollisionShape f73282b;

    public final PhysicsComponent f73283c;

    public final List<W8.b> f73284d;

    public final f f73285e;

    public final Transform f73286f;

    public final Collider f73287g;

    public boolean f73288h;

    public a(Collider.o type, CompoundCollisionShape onPhysicsCompound, PhysicsComponent onPhysicsComponent, List<W8.b> shapeList, f matrix4, Transform bulletTransform, Collider collider) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f73284d = steppedArrayList;
        this.f73288h = false;
        this.f73281a = type;
        this.f73282b = onPhysicsCompound;
        this.f73283c = onPhysicsComponent;
        this.f73286f = bulletTransform;
        this.f73287g = collider;
        steppedArrayList.addAll(shapeList);
        this.f73285e = matrix4;
        try {
            a();
        } catch (Error | RuntimeException e10) {
            f();
            throw e10;
        }
    }

    public final void a() {
        for (int i10 = 0; i10 < this.f73284d.size(); i10++) {
            W8.b bVar = this.f73284d.get(i10);
            CollisionShape b10 = bVar.b();
            if (b10 != null) {
                if (!bVar.d()) {
                    Collider.o oVar = this.f73281a;
                    if (oVar == Collider.o.Sphere) {
                        float S02 = Nc.b.S0(this.f73285e.w1(), Nc.b.S0(this.f73285e.y1(), this.f73285e.A1()));
                        b10.setScale(new Vector3f(S02, S02, S02));
                    } else if (oVar == Collider.o.Capsule) {
                        float X02 = Nc.b.X0(this.f73285e.w1(), Nc.b.X0(this.f73285e.y1(), this.f73285e.A1()));
                        b10.setScale(new Vector3f(X02, X02, X02));
                    } else {
                        b10.setScale(new Vector3f(this.f73285e.w1(), this.f73285e.y1(), this.f73285e.A1()));
                    }
                }
                try {
                    synchronized (Cc.c.f2503k) {
                        this.f73282b.addChildShape(b10, this.f73286f);
                        this.f73283c.addColliderByHash(this.f73287g);
                        b10.setUserIndex(this.f73287g.hashCode());
                    }
                } catch (AssertionError e10) {
                    e10.printStackTrace();
                }
            }
        }
        this.f73288h = true;
    }

    public void b() {
        if (this.f73282b != null) {
            try {
                if (!this.f73284d.isEmpty()) {
                    for (int i10 = 0; i10 < this.f73284d.size(); i10++) {
                        W8.b bVar = this.f73284d.get(i10);
                        CollisionShape b10 = bVar.b();
                        if (b10 != null) {
                            try {
                                try {
                                    synchronized (Cc.c.f2503k) {
                                        this.f73282b.removeChildShape(b10);
                                    }
                                } catch (Throwable th2) {
                                    bVar.e();
                                    throw th2;
                                }
                            } catch (Error | Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        bVar.e();
                    }
                    this.f73284d.clear();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        PhysicsComponent physicsComponent = this.f73283c;
        if (physicsComponent != null) {
            physicsComponent.removeColliderByHash(this.f73287g);
        }
        this.f73283c.onColliderChanged();
        this.f73288h = false;
    }

    public PhysicsComponent c() {
        return this.f73283c;
    }

    public CompoundCollisionShape d() {
        return this.f73282b;
    }

    public boolean e() {
        return this.f73288h;
    }

    public final void f() {
        for (int i10 = 0; i10 < this.f73284d.size(); i10++) {
            W8.b bVar = this.f73284d.get(i10);
            if (bVar != null) {
                bVar.e();
            }
        }
        this.f73284d.clear();
    }
}
