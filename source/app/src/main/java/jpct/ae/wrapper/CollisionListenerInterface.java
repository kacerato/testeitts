package jpct.ae.wrapper;

import anywheresoftware.b4a.BA;
import com.threed.jpct.CollisionEvent;
import com.threed.jpct.CollisionListener;

@BA.Hide
class CollisionListenerInterface implements CollisionListener {
    private static final long serialVersionUID = 1;

    private final BA f94397ba;
    private final String eventName;
    private final boolean requiresPolygonIDs;
    private final JCollisionListener sender;

    public CollisionListenerInterface(BA ba2, JCollisionListener jCollisionListener, String str, boolean z10) {
        this.f94397ba = ba2;
        this.eventName = str;
        this.sender = jCollisionListener;
        this.requiresPolygonIDs = z10;
    }

    @Override
    public void collision(CollisionEvent collisionEvent) {
        this.f94397ba.raiseEvent(this.sender, (String.valueOf(this.eventName) + "_CollisionListener").toLowerCase(BA.cul), new Object[]{Integer.valueOf(collisionEvent.getAlgorithm()), collisionEvent.getPolygonIDs(), Integer.valueOf(collisionEvent.getType()), collisionEvent.toString(), collisionEvent.getFirstContact(), collisionEvent.getObject(), collisionEvent.getSource(), collisionEvent.getTargets()});
    }

    @Override
    public boolean requiresPolygonIDs() {
        return this.requiresPolygonIDs;
    }
}
