package jpct.ae.wrapper;

import android.util.Log;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.CollisionEvent;

@BA.ShortName("JpctCollisionListener")
public class JCollisionListener extends AbsObjectWrapper<CollisionListenerInterface> {
    public static int EVENT_ALGORITHM_ELLIPSOID() {
        return 2;
    }

    public static int EVENT_ALGORITHM_RAY() {
        return 0;
    }

    public static int EVENT_ALGORITHM_SPHERE() {
        return 1;
    }

    public static int EVENT_TYPE_SOURCE() {
        return 1;
    }

    public static int EVENT_TYPE_TARGET() {
        return 0;
    }

    public void Initialize(BA ba2, String str, boolean z10) {
        if (ba2.subExists((String.valueOf(str) + "_CollisionListener").toLowerCase(BA.cul))) {
            setObject(new CollisionListenerInterface(ba2, this, str, z10));
            return;
        }
        Log.e("JPCT", "Sub " + str + "_CollisionListener - Doesn't exist!");
    }

    @BA.Hide
    public void collision(CollisionEvent collisionEvent) {
        ((CollisionListenerInterface) getObject()).collision(collisionEvent);
    }

    @BA.Hide
    public boolean requiresPolygonIDs() {
        return ((CollisionListenerInterface) getObject()).requiresPolygonIDs();
    }
}
