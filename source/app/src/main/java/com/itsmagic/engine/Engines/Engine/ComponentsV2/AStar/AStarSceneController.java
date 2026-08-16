package com.itsmagic.engine.Engines.Engine.ComponentsV2.AStar;

import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public final class AStarSceneController {
    static {
        System.loadLibrary("native-astar");
    }

    public static synchronized List<Vector3> a(GameObject source, AStarWaypoint targetWaypoint, boolean ignoreY) {
        synchronized (AStarSceneController.class) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            if (source != null && targetWaypoint != null && targetWaypoint.f79250n != null) {
                long graphGuid = targetWaypoint.getGraphGuid();
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                try {
                    source.transform.u0(vector3);
                    float[] nativeCalculatePath = nativeCalculatePath(vector3.getX(), vector3.getY(), vector3.getZ(), graphGuid, ignoreY);
                    if (nativeCalculatePath != null && nativeCalculatePath.length >= 3) {
                        int i10 = 0;
                        while (true) {
                            int i11 = i10 + 2;
                            if (i11 >= nativeCalculatePath.length) {
                                return steppedArrayList;
                            }
                            steppedArrayList.add(new Vector3(nativeCalculatePath[i10], nativeCalculatePath[i10 + 1], nativeCalculatePath[i11]));
                            i10 += 3;
                        }
                    }
                    return steppedArrayList;
                } finally {
                    JP.release(vector3);
                }
            }
            return steppedArrayList;
        }
    }

    public static synchronized long b() {
        long nativeGetGraphVersion;
        synchronized (AStarSceneController.class) {
            nativeGetGraphVersion = nativeGetGraphVersion();
        }
        return nativeGetGraphVersion;
    }

    public static synchronized void c(AStarWaypointConnection connection) {
        synchronized (AStarSceneController.class) {
            if (connection == null) {
                return;
            }
            nativeRemoveConnection(connection.getGraphGuid());
        }
    }

    public static synchronized void d(AStarWaypoint waypoint) {
        synchronized (AStarSceneController.class) {
            if (waypoint == null) {
                return;
            }
            nativeRemoveWaypoint(waypoint.getGraphGuid());
        }
    }

    public static synchronized void e(AStarWaypointConnection connection) {
        synchronized (AStarSceneController.class) {
            if (connection != null) {
                if (connection.f79250n != null) {
                    long graphGuid = connection.getGraphGuid();
                    long waypointAGUID = connection.getWaypointAGUID();
                    long waypointBGUID = connection.getWaypointBGUID();
                    if (waypointAGUID != 0 && waypointBGUID != 0) {
                        nativeSyncConnection(graphGuid, connection.isHierarchyActive(), waypointAGUID, waypointBGUID);
                        return;
                    }
                    nativeRemoveConnection(graphGuid);
                }
            }
        }
    }

    public static synchronized void f(AStarWaypoint waypoint) {
        synchronized (AStarSceneController.class) {
            if (waypoint != null) {
                if (waypoint.f79250n != null) {
                    long graphGuid = waypoint.getGraphGuid();
                    Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                    try {
                        waypoint.f79250n.transform.u0(vector3);
                        nativeSyncWaypoint(graphGuid, waypoint.isActiveForGraph(), vector3.getX(), vector3.getY(), vector3.getZ());
                    } finally {
                        JP.release(vector3);
                    }
                }
            }
        }
    }

    private static native float[] nativeCalculatePath(float startX, float startY, float startZ, long targetWaypointGuid, boolean ignoreY);

    private static native long nativeGetGraphVersion();

    private static native void nativeRemoveConnection(long connectionGuid);

    private static native void nativeRemoveWaypoint(long waypointGuid);

    private static native void nativeSyncConnection(long connectionGuid, boolean active, long waypointAGuid, long waypointBGuid);

    private static native void nativeSyncWaypoint(long waypointGuid, boolean active, float x10, float y10, float z10);
}
