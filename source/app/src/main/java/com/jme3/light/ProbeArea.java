package com.jme3.light;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.export.Savable;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.util.TempVars;

public interface ProbeArea extends Savable, Cloneable {
    float getRadius();

    Matrix4f getUniformMatrix();

    boolean intersectsBox(BoundingBox boundingBox, TempVars tempVars);

    boolean intersectsFrustum(Camera camera, TempVars tempVars);

    boolean intersectsSphere(BoundingSphere boundingSphere, TempVars tempVars);

    void setCenter(Vector3f vector3f);

    void setRadius(float f10);
}
