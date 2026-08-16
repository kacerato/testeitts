package Cc;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Physics.DTOs.NativeHeightfieldCollisionShape;
import com.jme3.bullet.collision.PhysicsCollisionEvent;
import com.jme3.bullet.collision.PhysicsCollisionListener;
import com.jme3.bullet.collision.shapes.GImpactCollisionShape;
import com.jme3.bullet.collision.shapes.MeshCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.math.Vector3f;
import gb.C13317e;
import h9.InterfaceC13435a;
import j9.C13813a;

public class b implements PhysicsCollisionListener {
    public static Collider a(InterfaceC13435a physicsEntity, int triangleIndex) {
        ChildCollisionShape childCollisionShape;
        if (physicsEntity instanceof Collider) {
            return (Collider) physicsEntity;
        }
        ChildCollisionShape[] bulletShapeChildren = physicsEntity.getBulletShapeChildren();
        if (bulletShapeChildren.length == 0) {
            return null;
        }
        boolean z10 = true;
        if (bulletShapeChildren.length == 1 && (childCollisionShape = bulletShapeChildren[0]) != null && childCollisionShape.getShape() != null) {
            return physicsEntity.findColliderFromHash(childCollisionShape.getShape().userIndex());
        }
        if (triangleIndex < 0 || bulletShapeChildren.length <= 0) {
            return null;
        }
        for (ChildCollisionShape childCollisionShape2 : bulletShapeChildren) {
            if ((childCollisionShape2.getShape() instanceof GImpactCollisionShape) || (childCollisionShape2.getShape() instanceof MeshCollisionShape) || (childCollisionShape2.getShape() instanceof Dc.b) || (childCollisionShape2.getShape() instanceof NativeHeightfieldCollisionShape) || (childCollisionShape2.getShape() instanceof Dc.c)) {
                z10 = false;
            }
        }
        if (!z10) {
            return null;
        }
        try {
            ChildCollisionShape childCollisionShape3 = bulletShapeChildren[triangleIndex];
            if (childCollisionShape3 == null || childCollisionShape3.getShape() == null) {
                return null;
            }
            return physicsEntity.findColliderFromHash(childCollisionShape3.getShape().userIndex());
        } catch (Exception unused) {
            return null;
        }
    }

    public static C13813a b(InterfaceC13435a physicsEntity1, InterfaceC13435a physicsEntity2, Vector3f normal, float normalMultiplier, Vector3f colContactPoint, float appliedImpulse) {
        if (!physicsEntity1.keepContactList()) {
            return null;
        }
        C13813a findCollision = physicsEntity1.findCollision(physicsEntity2.getGameObjectForPhysics());
        if (findCollision == null) {
            findCollision = new C13813a();
            findCollision.f92646b = physicsEntity2.getGameObjectForPhysics();
            physicsEntity1.addCollision(findCollision);
        }
        findCollision.f92647c = physicsEntity2;
        return findCollision;
    }

    @Override
    public void collision(PhysicsCollisionEvent event) {
        boolean z10;
        Collider collider;
        Collider collider2;
        C13813a b10;
        C13813a b11;
        try {
            InterfaceC13435a interfaceC13435a = (InterfaceC13435a) event.getObjectA().getUserObject();
            InterfaceC13435a interfaceC13435a2 = (InterfaceC13435a) event.getObjectB().getUserObject();
            if (interfaceC13435a.getGameObjectForPhysics() == null) {
                System.out.println("Object of p1 is null type:" + interfaceC13435a.getClass().getSimpleName());
                return;
            }
            if (interfaceC13435a2.getGameObjectForPhysics() == null) {
                System.out.println("Object of p2 is null type:" + interfaceC13435a2.getClass().getSimpleName());
                return;
            }
            if ((interfaceC13435a.keepContactList() || interfaceC13435a2.keepContactList()) && event.getDistance1() < 0.0f) {
                Vector3f normalWorldOnB = event.getNormalWorldOnB();
                Vector3f positionWorldOnA = event.getPositionWorldOnA();
                float appliedImpulse = event.getAppliedImpulse();
                Collider a10 = a(interfaceC13435a, event.getIndex0());
                Collider a11 = a(interfaceC13435a2, event.getIndex1());
                if (a10 != null && C13317e.J(a10.f79250n) && a10.getAttachedPhysicsObject() == interfaceC13435a2.getGameObjectForPhysics()) {
                    z10 = true;
                } else {
                    z10 = false;
                    a11 = a10;
                    a10 = a11;
                }
                if (z10 || a10 == null || !C13317e.J(a10.f79250n) || a10.getAttachedPhysicsObject() != interfaceC13435a.getGameObjectForPhysics()) {
                    collider = a10;
                    collider2 = a11;
                } else {
                    collider2 = a10;
                    collider = a11;
                }
                C13813a b12 = b(interfaceC13435a, interfaceC13435a2, normalWorldOnB, 1.0f, positionWorldOnA, appliedImpulse);
                if (b12 != null) {
                    b12.f92650g = collider;
                    C13813a.C1794a e10 = b12.e();
                    e10.f92655a.set(normalWorldOnB);
                    e10.f92656b.set(positionWorldOnA);
                    e10.f92657c = appliedImpulse;
                    e10.f92658d = Nc.b.k(event.getDistance1());
                    e10.f92659e = collider;
                    b12.f92648d.add(e10);
                    if (interfaceC13435a2 instanceof BasePool.K) {
                        BasePool.K k10 = (BasePool.K) interfaceC13435a2;
                        b12.f92652j = k10.b();
                        b12.f92653k = k10.c();
                        e10.f92661g = k10.b();
                        e10.f92662h = k10.c();
                    }
                }
                if (collider2 != null && collider2.getGameObjectForPhysics() != interfaceC13435a.getGameObjectForPhysics() && (b11 = b(collider2, interfaceC13435a2, normalWorldOnB, 1.0f, positionWorldOnA, appliedImpulse)) != null) {
                    b11.f92650g = collider;
                    C13813a.C1794a e11 = b11.e();
                    e11.f92655a.set(normalWorldOnB);
                    e11.f92656b.set(positionWorldOnA);
                    e11.f92657c = appliedImpulse;
                    e11.f92658d = Nc.b.k(event.getDistance1());
                    e11.f92659e = collider;
                    b11.f92648d.add(e11);
                    if (interfaceC13435a2 instanceof BasePool.K) {
                        BasePool.K k11 = (BasePool.K) interfaceC13435a2;
                        b11.f92652j = k11.b();
                        b11.f92653k = k11.c();
                        e11.f92661g = k11.b();
                        e11.f92662h = k11.c();
                    }
                }
                C13813a b13 = b(interfaceC13435a2, interfaceC13435a, normalWorldOnB, -1.0f, positionWorldOnA, appliedImpulse);
                if (b13 != null) {
                    b13.f92650g = collider2;
                    C13813a.C1794a e12 = b13.e();
                    e12.f92655a.set(normalWorldOnB);
                    e12.f92655a.mulLocal(-1.0f);
                    e12.f92656b.set(positionWorldOnA);
                    e12.f92657c = appliedImpulse;
                    e12.f92658d = Nc.b.k(event.getDistance1());
                    e12.f92659e = collider2;
                    b13.f92648d.add(e12);
                    if (interfaceC13435a instanceof BasePool.K) {
                        BasePool.K k12 = (BasePool.K) interfaceC13435a;
                        b13.f92652j = k12.b();
                        b13.f92653k = k12.c();
                        e12.f92661g = k12.b();
                        e12.f92662h = k12.c();
                    }
                }
                if (collider == null || collider.getGameObjectForPhysics() == interfaceC13435a2.getGameObjectForPhysics() || (b10 = b(collider, interfaceC13435a, normalWorldOnB, -1.0f, positionWorldOnA, appliedImpulse)) == null) {
                    return;
                }
                b10.f92650g = collider2;
                C13813a.C1794a e13 = b10.e();
                e13.f92655a.set(normalWorldOnB);
                e13.f92655a.mulLocal(-1.0f);
                e13.f92656b.set(positionWorldOnA);
                e13.f92657c = appliedImpulse;
                e13.f92658d = Nc.b.k(event.getDistance1());
                e13.f92659e = collider2;
                b10.f92648d.add(e13);
                if (interfaceC13435a instanceof BasePool.K) {
                    BasePool.K k13 = (BasePool.K) interfaceC13435a;
                    b10.f92652j = k13.b();
                    b10.f92653k = k13.c();
                    e13.f92661g = k13.b();
                    e13.f92662h = k13.c();
                }
            }
        } catch (Exception e14) {
            e14.printStackTrace();
        }
    }
}
