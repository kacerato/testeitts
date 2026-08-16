package com.jme3.light;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Plane;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.util.TempVars;
import java.io.IOException;

public class OrientedBoxProbeArea implements ProbeArea {
    private Transform transform = new Transform();
    private final Matrix4f uniformMatrix = new Matrix4f();

    public OrientedBoxProbeArea() {
    }

    private Vector3f getClosestPoint(TempVars tempVars, Vector3f vector3f) {
        Vector3f subtractLocal = tempVars.vect2.set(vector3f).subtractLocal(this.transform.getTranslation());
        Vector3f vector3f2 = tempVars.vect3.set(this.transform.getTranslation());
        float[] fArr = tempVars.fWdU;
        fArr[0] = this.transform.getScale().f81611x;
        fArr[1] = this.transform.getScale().f81612y;
        fArr[2] = this.transform.getScale().f81613z;
        for (int i10 = 0; i10 < 3; i10++) {
            Vector3f scaledAxis = getScaledAxis(i10, tempVars.vect1);
            scaledAxis.divideLocal(fArr[i10]);
            float dot = subtractLocal.dot(scaledAxis);
            float f10 = fArr[i10];
            vector3f2.addLocal(tempVars.vect4.set(scaledAxis).multLocal(FastMath.clamp(dot, -f10, f10)));
        }
        return vector3f2;
    }

    private Vector3f getScaledAxis(int i10, Vector3f vector3f) {
        float f10;
        float f11;
        float f12;
        float f13;
        Matrix4f matrix4f = this.uniformMatrix;
        if (i10 == 0) {
            f10 = matrix4f.m00;
            f11 = matrix4f.m10;
            f12 = matrix4f.m20;
            f13 = matrix4f.m30;
        } else if (i10 == 1) {
            f10 = matrix4f.m01;
            f11 = matrix4f.m11;
            f12 = matrix4f.m21;
            f13 = matrix4f.m31;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Invalid axis, not in range [0, 2]");
            }
            f10 = matrix4f.m02;
            f11 = matrix4f.m12;
            f12 = matrix4f.m22;
            f13 = matrix4f.m32;
        }
        return vector3f.set(f10, f11, f12).multLocal(f13);
    }

    private boolean insidePlane(Plane plane, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        vector3f4.set(vector3f.dot(plane.getNormal()), vector3f2.dot(plane.getNormal()), vector3f3.dot(plane.getNormal()));
        return plane.pseudoDistance(this.transform.getTranslation()) >= (-((FastMath.abs(vector3f4.f81611x) + FastMath.abs(vector3f4.f81612y)) + FastMath.abs(vector3f4.f81613z)));
    }

    private void updateMatrix() {
        TempVars tempVars = TempVars.get();
        Matrix3f matrix3f = tempVars.tempMat3;
        Matrix4f matrix4f = this.uniformMatrix;
        this.transform.getRotation().toRotationMatrix(matrix3f);
        matrix4f.m00 = matrix3f.get(0, 0);
        matrix4f.m10 = matrix3f.get(1, 0);
        matrix4f.m20 = matrix3f.get(2, 0);
        matrix4f.m01 = matrix3f.get(0, 1);
        matrix4f.m11 = matrix3f.get(1, 1);
        matrix4f.m21 = matrix3f.get(2, 1);
        matrix4f.m02 = matrix3f.get(0, 2);
        matrix4f.m12 = matrix3f.get(1, 2);
        matrix4f.m22 = matrix3f.get(2, 2);
        matrix4f.m30 = this.transform.getScale().f81611x;
        matrix4f.m31 = this.transform.getScale().f81612y;
        matrix4f.m32 = this.transform.getScale().f81613z;
        matrix4f.m03 = this.transform.getTranslation().f81611x;
        matrix4f.m13 = this.transform.getTranslation().f81612y;
        matrix4f.m23 = this.transform.getTranslation().f81613z;
        tempVars.release();
    }

    public Vector3f getCenter() {
        return this.transform.getTranslation();
    }

    public Vector3f getExtent() {
        return this.transform.getScale();
    }

    @Override
    public float getRadius() {
        return Math.max(Math.max(this.transform.getScale().f81611x, this.transform.getScale().f81612y), this.transform.getScale().f81613z);
    }

    public Quaternion getRotation() {
        return this.transform.getRotation();
    }

    @Override
    public Matrix4f getUniformMatrix() {
        return this.uniformMatrix;
    }

    @Override
    public boolean intersectsBox(BoundingBox boundingBox, TempVars tempVars) {
        Vector3f scaledAxis = getScaledAxis(0, tempVars.vect1);
        Vector3f scaledAxis2 = getScaledAxis(1, tempVars.vect2);
        Vector3f scaledAxis3 = getScaledAxis(2, tempVars.vect3);
        Vector3f vector3f = tempVars.vect4;
        Plane plane = tempVars.plane;
        Vector3f center = boundingBox.getCenter();
        plane.setNormal(0.0f, 0.0f, -1.0f);
        plane.setConstant(-(center.f81613z + boundingBox.getZExtent()));
        if (!insidePlane(plane, scaledAxis, scaledAxis2, scaledAxis3, vector3f)) {
            return false;
        }
        plane.setNormal(0.0f, 0.0f, 1.0f);
        plane.setConstant(center.f81613z - boundingBox.getZExtent());
        if (!insidePlane(plane, scaledAxis, scaledAxis2, scaledAxis3, vector3f)) {
            return false;
        }
        plane.setNormal(0.0f, -1.0f, 0.0f);
        plane.setConstant(-(center.f81612y + boundingBox.getYExtent()));
        if (!insidePlane(plane, scaledAxis, scaledAxis2, scaledAxis3, vector3f)) {
            return false;
        }
        plane.setNormal(0.0f, 1.0f, 0.0f);
        plane.setConstant(center.f81612y - boundingBox.getYExtent());
        if (!insidePlane(plane, scaledAxis, scaledAxis2, scaledAxis3, vector3f)) {
            return false;
        }
        plane.setNormal(-1.0f, 0.0f, 0.0f);
        plane.setConstant(-(center.f81611x + boundingBox.getXExtent()));
        if (!insidePlane(plane, scaledAxis, scaledAxis2, scaledAxis3, vector3f)) {
            return false;
        }
        plane.setNormal(1.0f, 0.0f, 0.0f);
        plane.setConstant(center.f81611x - boundingBox.getXExtent());
        return insidePlane(plane, scaledAxis, scaledAxis2, scaledAxis3, vector3f);
    }

    @Override
    public boolean intersectsFrustum(Camera camera, TempVars tempVars) {
        Vector3f scaledAxis = getScaledAxis(0, tempVars.vect1);
        Vector3f scaledAxis2 = getScaledAxis(1, tempVars.vect2);
        Vector3f scaledAxis3 = getScaledAxis(2, tempVars.vect3);
        Vector3f vector3f = tempVars.vect4;
        for (int i10 = 5; i10 >= 0; i10--) {
            if (!insidePlane(camera.getWorldPlane(i10), scaledAxis, scaledAxis2, scaledAxis3, vector3f)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere, TempVars tempVars) {
        return boundingSphere.intersects(getClosestPoint(tempVars, boundingSphere.getCenter()));
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        this.transform = (Transform) jmeImporter.getCapsule(this).readSavable("transform", new Transform());
        updateMatrix();
    }

    @Override
    public void setCenter(Vector3f vector3f) {
        this.transform.setTranslation(vector3f);
        updateMatrix();
    }

    public void setExtent(Vector3f vector3f) {
        this.transform.setScale(vector3f);
        updateMatrix();
    }

    @Override
    public void setRadius(float f10) {
        this.transform.setScale(f10, f10, f10);
    }

    public void setRotation(Quaternion quaternion) {
        this.transform.setRotation(quaternion);
        updateMatrix();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        jmeExporter.getCapsule(this).write(this.transform, "transform", new Transform());
    }

    public OrientedBoxProbeArea m1272clone() throws CloneNotSupportedException {
        return new OrientedBoxProbeArea(this.transform);
    }

    public OrientedBoxProbeArea(Transform transform) {
        this.transform.set(transform);
        updateMatrix();
    }
}
