package mf;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.joints.JointEnd;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.objects.PhysicsBody;
import java.util.logging.Logger;

public class C14225a implements BulletDebugAppState.DebugAppStateFilter {

    public static final Logger f96956b = Logger.getLogger(C14225a.class.getName());

    public final Object f96957a;

    public C14225a(Object obj) {
        this.f96957a = obj;
    }

    @Override
    public boolean displayObject(Object obj) {
        if (obj instanceof PhysicsCollisionObject) {
            if (((PhysicsCollisionObject) obj).getApplicationData() == this.f96957a) {
                return true;
            }
        } else if (obj instanceof PhysicsJoint) {
            PhysicsJoint physicsJoint = (PhysicsJoint) obj;
            PhysicsBody body = physicsJoint.getBody(JointEnd.A);
            if (body != null && body.getApplicationData() == this.f96957a) {
                return true;
            }
            PhysicsBody body2 = physicsJoint.getBody(JointEnd.B);
            if (body2 != null && body2.getApplicationData() == this.f96957a) {
                return true;
            }
        }
        return false;
    }
}
