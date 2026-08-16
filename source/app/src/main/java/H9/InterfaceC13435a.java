package h9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import j9.C13813a;

public interface InterfaceC13435a {

    public static final ChildCollisionShape[] f90466J4 = new ChildCollisionShape[0];

    void addCollision(C13813a collision);

    void beforeCollisionEvents();

    void disabledUpdatePhysics();

    boolean enableCollisionEvents();

    Collider findColliderFromHash(int hash);

    C13813a findCollision(GameObject other);

    CompoundCollisionShape getBulletShape();

    ChildCollisionShape[] getBulletShapeChildren();

    GameObject getGameObjectForPhysics();

    void invalidateBulletShapeChildrenCache();

    boolean isActiveForPhysics();

    default boolean keepContactList() {
        return true;
    }

    void onPhysicsGetTransformations();

    void resyncOnFrame();

    void updatePhysics();
}
