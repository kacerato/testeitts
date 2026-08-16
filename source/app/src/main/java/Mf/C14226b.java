package mf;

import com.jme3.bullet.CollisionSpace;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.objects.PhysicsRigidBody;
import java.util.logging.Logger;

public class C14226b implements BulletDebugAppState.DebugAppStateFilter {

    public static final Logger f96958a = Logger.getLogger(C14226b.class.getName());

    @Override
    public boolean displayObject(Object obj) {
        if (!(obj instanceof PhysicsRigidBody)) {
            return false;
        }
        PhysicsRigidBody physicsRigidBody = (PhysicsRigidBody) obj;
        CollisionSpace collisionSpace = physicsRigidBody.getCollisionSpace();
        if (!physicsRigidBody.isDynamic() || !(collisionSpace instanceof PhysicsSpace)) {
            return false;
        }
        float accuracy = ((PhysicsSpace) collisionSpace).getAccuracy();
        return (physicsRigidBody.getSquaredSpeed() * accuracy) * accuracy > physicsRigidBody.getCcdSquareMotionThreshold();
    }
}
