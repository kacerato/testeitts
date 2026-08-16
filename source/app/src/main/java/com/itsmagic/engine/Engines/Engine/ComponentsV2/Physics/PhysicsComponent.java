package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics;

import Ic.C2639s;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Utils.Freeze;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import h9.C13436b;
import h9.InterfaceC13435a;
import j9.C13813a;
import j9.C13814b;

public abstract class PhysicsComponent extends Component implements InterfaceC13435a {

    public final C2639s<Collider> f74415E;

    public final C13814b f74416F;

    public transient C13436b f74417G;

    public PhysicsComponent(String serializedComponentType) {
        super(serializedComponentType);
        this.f74415E = new C2639s<>();
        this.f74416F = new C13814b(this);
    }

    private C13436b getBulletShapeChildrenCache() {
        if (this.f74417G == null) {
            this.f74417G = new C13436b();
        }
        return this.f74417G;
    }

    private void propagateHostPhysicsEntityChanged(PhysicsComponent physicsComponent) {
        for (int i10 = 0; i10 < this.f79250n.N(); i10++) {
            Component L10 = this.f79250n.L(i10);
            if (L10 != this) {
                L10.onHostPhysicsEntityChanged(physicsComponent);
            }
        }
        for (int i11 = 0; i11 < this.f79250n.D(); i11++) {
            propagateHostPhysicsEntityChanged(this.f79250n.C(i11), physicsComponent);
        }
    }

    public boolean acceptColliders() {
        return true;
    }

    public void addColliderByHash(Collider collider) {
        this.f74415E.l(collider.hashCode(), collider);
    }

    @Override
    public void addCollision(C13813a collision) {
        try {
            this.f74416F.a(collision);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void beforeCollisionEvents() {
        this.f74416F.j(this.f79250n);
    }

    public boolean colliderWith(String name) {
        return this.f74416F.b(name);
    }

    public C13813a collisionAt(int i10) {
        return this.f74416F.c(i10);
    }

    public int collisionCount() {
        return this.f74416F.d();
    }

    public void disabledUpdatePhysics() {
    }

    public boolean enableCollisionEvents() {
        return true;
    }

    public boolean enablePredictUnconstraintMotion() {
        return false;
    }

    @Override
    public Collider findColliderFromHash(int hash) {
        return this.f74415E.get(hash);
    }

    @Override
    public C13813a findCollision(GameObject other) {
        return this.f74416F.f(other);
    }

    public abstract PhysicsCollisionObject getBulletObject();

    public abstract CompoundCollisionShape getBulletShape();

    @Override
    public ChildCollisionShape[] getBulletShapeChildren() {
        return getBulletShapeChildrenCache().b(getBulletShape());
    }

    public Freeze getFreeze() {
        return null;
    }

    @Override
    public GameObject getGameObjectForPhysics() {
        return this.f79250n;
    }

    public float getInvMass() {
        return 0.0f;
    }

    public Vector3 getVelocity() {
        return new Vector3();
    }

    @Override
    public void invalidateBulletShapeChildrenCache() {
        getBulletShapeChildrenCache().c();
    }

    @Override
    public boolean isActiveForPhysics() {
        return isHierarchyActive();
    }

    public boolean isColliding() {
        return this.f74416F.g();
    }

    public boolean isDynamic() {
        return false;
    }

    public abstract void onColliderChanged();

    @Override
    public void onDetach() {
        this.f74415E.clear();
        C13436b c13436b = this.f74417G;
        if (c13436b != null) {
            c13436b.a();
        }
        super.onDetach();
    }

    public void onPhysicsGetTransformations() {
        this.f74416F.h(this.f79250n);
    }

    public final void propagateDettachHostPhysicsEntityChanged() {
        propagateHostPhysicsEntityChanged(null);
    }

    public final void propagateNewHostPhysicsEntityChanged() {
        if (getBulletShape() == null) {
            throw new RuntimeException("Please fill bullet shape before sending events");
        }
        propagateHostPhysicsEntityChanged(this);
    }

    public void removeColliderByHash(Collider collider) {
        this.f74415E.l(collider.hashCode(), collider);
    }

    @Override
    public void resyncOnFrame() {
        this.f74416F.i(this.f79250n);
    }

    public void updatePhysics() {
    }

    private void propagateHostPhysicsEntityChanged(GameObject gameObject, PhysicsComponent physicsComponent) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            if (gameObject.L(i10) instanceof PhysicsComponent) {
                return;
            }
        }
        for (int i11 = 0; i11 < gameObject.N(); i11++) {
            Component L10 = gameObject.L(i11);
            if (L10 != this) {
                L10.onHostPhysicsEntityChanged(physicsComponent);
            }
        }
        for (int i12 = 0; i12 < gameObject.D(); i12++) {
            propagateHostPhysicsEntityChanged(gameObject.C(i12), physicsComponent);
        }
    }
}
