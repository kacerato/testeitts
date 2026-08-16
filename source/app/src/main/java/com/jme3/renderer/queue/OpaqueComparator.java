package com.jme3.renderer.queue;

import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;

public class OpaqueComparator implements GeometryComparator {
    private Camera cam;
    private final Vector3f tempVec = new Vector3f();
    private final Vector3f tempVec2 = new Vector3f();

    public float distanceToCam(Geometry geometry) {
        if (geometry == null) {
            return Float.NEGATIVE_INFINITY;
        }
        float f10 = geometry.queueDistance;
        if (f10 != Float.NEGATIVE_INFINITY) {
            return f10;
        }
        Vector3f location = this.cam.getLocation();
        Vector3f direction = this.cam.getDirection(this.tempVec2);
        (geometry.getWorldBound() != null ? geometry.getWorldBound().getCenter() : geometry.getWorldTranslation()).subtract(location, this.tempVec);
        float dot = this.tempVec.dot(direction);
        geometry.queueDistance = dot;
        return dot;
    }

    @Override
    public void setCamera(Camera camera) {
        this.cam = camera;
    }

    @Override
    public int compare(Geometry geometry, Geometry geometry2) {
        int compare = Integer.compare(geometry.getMaterial().getSortId(), geometry2.getMaterial().getSortId());
        if (compare != 0) {
            return compare;
        }
        float distanceToCam = distanceToCam(geometry);
        float distanceToCam2 = distanceToCam(geometry2);
        if (distanceToCam == distanceToCam2) {
            return 0;
        }
        return distanceToCam < distanceToCam2 ? -1 : 1;
    }
}
