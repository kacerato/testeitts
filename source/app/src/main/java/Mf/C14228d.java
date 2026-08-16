package mf;

import com.jme3.bullet.animation.DacLinks;
import com.jme3.bullet.animation.PhysicsLink;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.debug.BulletDebugAppState;
import com.jme3.bullet.joints.JointEnd;
import com.jme3.bullet.joints.PhysicsJoint;
import java.util.logging.Logger;

public class C14228d implements BulletDebugAppState.DebugAppStateFilter {

    public static final Logger f96961b = Logger.getLogger(C14228d.class.getName());

    public final DacLinks f96962a;

    public C14228d(DacLinks dacLinks) {
        this.f96962a = dacLinks;
    }

    @Override
    public boolean displayObject(Object obj) {
        if (obj instanceof PhysicsCollisionObject) {
            Object userObject = ((PhysicsCollisionObject) obj).getUserObject();
            if ((userObject instanceof PhysicsLink) && ((PhysicsLink) userObject).getControl() == this.f96962a) {
                return true;
            }
        } else if (obj instanceof PhysicsJoint) {
            PhysicsJoint physicsJoint = (PhysicsJoint) obj;
            if (displayObject(physicsJoint.getBody(JointEnd.A)) || displayObject(physicsJoint.getBody(JointEnd.B))) {
                return true;
            }
        }
        return false;
    }
}
