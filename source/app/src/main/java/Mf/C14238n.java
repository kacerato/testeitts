package mf;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.joints.JointEnd;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.objects.PhysicsBody;
import java.util.logging.Logger;

public class C14238n implements BulletDebugAppState.DebugAppStateFilter {

    public static final Logger f96989b = Logger.getLogger(C14238n.class.getName());

    public final Object f96990a;

    public C14238n(Object obj) {
        this.f96990a = obj;
    }

    @Override
    public boolean displayObject(Object obj) {
        if (obj instanceof PhysicsCollisionObject) {
            if (((PhysicsCollisionObject) obj).getUserObject() == this.f96990a) {
                return true;
            }
        } else if (obj instanceof PhysicsJoint) {
            PhysicsJoint physicsJoint = (PhysicsJoint) obj;
            PhysicsBody body = physicsJoint.getBody(JointEnd.A);
            if (body != null && body.getUserObject() == this.f96990a) {
                return true;
            }
            PhysicsBody body2 = physicsJoint.getBody(JointEnd.B);
            if (body2 != null && body2.getUserObject() == this.f96990a) {
                return true;
            }
        }
        return false;
    }
}
