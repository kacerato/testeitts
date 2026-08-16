package mf;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.joints.JointEnd;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.objects.PhysicsBody;
import java.util.logging.Logger;

public class C14235k implements BulletDebugAppState.DebugAppStateFilter {

    public static final Logger f96973b = Logger.getLogger(C14235k.class.getName());

    public final Object f96974a;

    public C14235k(Object obj) {
        this.f96974a = obj;
    }

    @Override
    public boolean displayObject(Object obj) {
        if (obj instanceof PhysicsCollisionObject) {
            if (((PhysicsCollisionObject) obj).getApplicationData() == this.f96974a) {
                return false;
            }
        } else if (obj instanceof PhysicsJoint) {
            PhysicsJoint physicsJoint = (PhysicsJoint) obj;
            PhysicsBody body = physicsJoint.getBody(JointEnd.A);
            if (body != null && body.getApplicationData() == this.f96974a) {
                return false;
            }
            PhysicsBody body2 = physicsJoint.getBody(JointEnd.B);
            if (body2 != null && body2.getApplicationData() == this.f96974a) {
                return false;
            }
        }
        return true;
    }
}
