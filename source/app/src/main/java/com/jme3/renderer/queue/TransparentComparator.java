package com.jme3.renderer.queue;

import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;

public class TransparentComparator implements GeometryComparator {
    private Camera cam;
    private final Vector3f tempVec = new Vector3f();

    private float distanceToCam(Geometry geometry) {
        return geometry.getWorldBound().distanceToEdge(this.cam.getLocation());
    }

    @Override
    public void setCamera(Camera camera) {
        this.cam = camera;
    }

    @Override
    public int compare(Geometry geometry, Geometry geometry2) {
        float distanceToCam = distanceToCam(geometry);
        float distanceToCam2 = distanceToCam(geometry2);
        if (distanceToCam == distanceToCam2) {
            return 0;
        }
        return distanceToCam < distanceToCam2 ? 1 : -1;
    }
}
