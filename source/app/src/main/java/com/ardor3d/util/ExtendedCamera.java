package com.ardor3d.util;

import com.ardor3d.bounding.BoundingBox;
import com.ardor3d.bounding.BoundingSphere;
import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.Vector4;
import com.ardor3d.math.type.ReadOnlyMatrix4;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.Camera;

public class ExtendedCamera extends Camera {
    protected final Vector3[] _corners;
    protected final Vector3 _extents;

    public ExtendedCamera() {
        this(0, 0);
    }

    private void init() {
        int i10 = 0;
        while (true) {
            Vector3[] vector3Arr = this._corners;
            if (i10 >= vector3Arr.length) {
                return;
            }
            vector3Arr[i10] = new Vector3();
            i10++;
        }
    }

    public void calculateFrustum() {
        calculateFrustum(this._frustumNear, this._frustumFar);
    }

    public Vector3[] getCorners() {
        return this._corners;
    }

    public void pack(BoundingVolume boundingVolume) {
        ReadOnlyVector3 center = boundingVolume.getCenter();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            Vector3[] vector3Arr = this._corners;
            if (i11 >= vector3Arr.length) {
                break;
            }
            vector3Arr[i11].set(center);
            i11++;
        }
        if (boundingVolume instanceof BoundingBox) {
            ((BoundingBox) boundingVolume).getExtent(this._extents);
        } else if (boundingVolume instanceof BoundingSphere) {
            BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
            this._extents.set(boundingSphere.getRadius(), boundingSphere.getRadius(), boundingSphere.getRadius());
        }
        this._corners[0].addLocal(this._extents.getX(), this._extents.getY(), this._extents.getZ());
        this._corners[1].addLocal(this._extents.getX(), -this._extents.getY(), this._extents.getZ());
        this._corners[2].addLocal(this._extents.getX(), this._extents.getY(), -this._extents.getZ());
        this._corners[3].addLocal(this._extents.getX(), -this._extents.getY(), -this._extents.getZ());
        this._corners[4].addLocal(-this._extents.getX(), this._extents.getY(), this._extents.getZ());
        this._corners[5].addLocal(-this._extents.getX(), -this._extents.getY(), this._extents.getZ());
        this._corners[6].addLocal(-this._extents.getX(), this._extents.getY(), -this._extents.getZ());
        this._corners[7].addLocal(-this._extents.getX(), -this._extents.getY(), -this._extents.getZ());
        ReadOnlyMatrix4 modelViewMatrix = getModelViewMatrix();
        Vector4 fetchTempInstance = Vector4.fetchTempInstance();
        double d10 = Double.MAX_VALUE;
        double d11 = -1.7976931348623157E308d;
        while (true) {
            Vector3[] vector3Arr2 = this._corners;
            if (i10 >= vector3Arr2.length) {
                Vector4.releaseTempInstance(fetchTempInstance);
                double min = Math.min(Math.max(getFrustumNear(), d10), getFrustumFar());
                double max = Math.max(min, Math.min(getFrustumFar(), d11));
                double d12 = min / this._frustumNear;
                setFrustumLeft(getFrustumLeft() * d12);
                setFrustumRight(getFrustumRight() * d12);
                setFrustumTop(getFrustumTop() * d12);
                setFrustumBottom(getFrustumBottom() * d12);
                setFrustumNear(min);
                setFrustumFar(max);
                return;
            }
            fetchTempInstance.set(vector3Arr2[i10].getX(), this._corners[i10].getY(), this._corners[i10].getZ(), 1.0d);
            modelViewMatrix.applyPre(fetchTempInstance, fetchTempInstance);
            d10 = Math.min(-fetchTempInstance.getZ(), d10);
            d11 = Math.max(-fetchTempInstance.getZ(), d11);
            i10++;
        }
    }

    public ExtendedCamera(int i10, int i11) {
        super(i10, i11);
        this._corners = new Vector3[8];
        this._extents = new Vector3();
        init();
    }

    public void calculateFrustum(double d10, double d11) {
        double d12;
        double d13 = this._frustumTop;
        double d14 = this._frustumBottom;
        double d15 = this._frustumNear;
        double d16 = (((d13 - d14) * d10) * 0.5d) / d15;
        double d17 = this._frustumRight;
        double d18 = this._frustumLeft;
        double d19 = (((d17 - d18) * d10) * 0.5d) / d15;
        double d20 = (((d13 - d14) * d11) * 0.5d) / d15;
        double d21 = (((d17 - d18) * d11) * 0.5d) / d15;
        if (getProjectionMode() == Camera.ProjectionMode.Parallel) {
            double d22 = this._frustumTop;
            double d23 = this._frustumBottom;
            d12 = (d22 - d23) * 0.5d;
            double d24 = this._frustumRight;
            double d25 = this._frustumLeft;
            d19 = (d24 - d25) * 0.5d;
            d20 = (d22 - d23) * 0.5d;
            d21 = (d24 - d25) * 0.5d;
        } else {
            d12 = d16;
        }
        double d26 = d19;
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        double d27 = d20;
        Vector3 fetchTempInstance4 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance5 = Vector3.fetchTempInstance();
        fetchTempInstance3.set(getDirection()).multiplyLocal(d10);
        fetchTempInstance.set(getLocation()).addLocal(fetchTempInstance3);
        fetchTempInstance3.set(getDirection()).multiplyLocal(d11);
        fetchTempInstance2.set(getLocation()).addLocal(fetchTempInstance3);
        fetchTempInstance4.set(getLeft()).multiplyLocal(d26);
        fetchTempInstance5.set(getUp()).multiplyLocal(d12);
        this._corners[0].set(fetchTempInstance).subtractLocal(fetchTempInstance4).subtractLocal(fetchTempInstance5);
        this._corners[1].set(fetchTempInstance).subtractLocal(fetchTempInstance4).addLocal(fetchTempInstance5);
        this._corners[2].set(fetchTempInstance).addLocal(fetchTempInstance4).addLocal(fetchTempInstance5);
        this._corners[3].set(fetchTempInstance).addLocal(fetchTempInstance4).subtractLocal(fetchTempInstance5);
        fetchTempInstance4.set(getLeft()).multiplyLocal(d21);
        fetchTempInstance5.set(getUp()).multiplyLocal(d27);
        this._corners[4].set(fetchTempInstance2).subtractLocal(fetchTempInstance4).subtractLocal(fetchTempInstance5);
        this._corners[5].set(fetchTempInstance2).subtractLocal(fetchTempInstance4).addLocal(fetchTempInstance5);
        this._corners[6].set(fetchTempInstance2).addLocal(fetchTempInstance4).addLocal(fetchTempInstance5);
        this._corners[7].set(fetchTempInstance2).addLocal(fetchTempInstance4).subtractLocal(fetchTempInstance5);
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance3);
        Vector3.releaseTempInstance(fetchTempInstance4);
        Vector3.releaseTempInstance(fetchTempInstance5);
    }

    public ExtendedCamera(Camera camera) {
        super(camera);
        this._corners = new Vector3[8];
        this._extents = new Vector3();
        init();
    }
}
