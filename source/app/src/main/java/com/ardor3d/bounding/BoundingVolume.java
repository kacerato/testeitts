package com.ardor3d.bounding;

import com.ardor3d.intersection.IntersectionRecord;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyPlane;
import com.ardor3d.math.type.ReadOnlyRay3;
import com.ardor3d.math.type.ReadOnlyTransform;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;
import java.io.Serializable;
import java.nio.FloatBuffer;

public abstract class BoundingVolume implements Serializable, Savable {
    private static final long serialVersionUID = 1;
    protected final Vector3 _center;
    protected int _checkPlane;

    public enum Type {
        Sphere,
        AABB,
        OBB
    }

    public BoundingVolume() {
        this._checkPlane = 0;
        this._center = new Vector3();
    }

    public abstract BoundingVolume clone(BoundingVolume boundingVolume);

    public abstract void computeFromPoints(FloatBuffer floatBuffer);

    public abstract void computeFromPrimitives(MeshData meshData, int i10, int[] iArr, int i11, int i12);

    public abstract boolean contains(ReadOnlyVector3 readOnlyVector3);

    public final double distanceSquaredTo(ReadOnlyVector3 readOnlyVector3) {
        return this._center.distanceSquared(readOnlyVector3);
    }

    public final double distanceTo(ReadOnlyVector3 readOnlyVector3) {
        return this._center.distance(readOnlyVector3);
    }

    public abstract double distanceToEdge(ReadOnlyVector3 readOnlyVector3);

    public final ReadOnlyVector3 getCenter() {
        return this._center;
    }

    public int getCheckPlane() {
        return this._checkPlane;
    }

    @Override
    public Class<? extends BoundingVolume> getClassTag() {
        return getClass();
    }

    public abstract Type getType();

    public abstract double getVolume();

    public abstract boolean intersects(BoundingVolume boundingVolume);

    public abstract boolean intersects(ReadOnlyRay3 readOnlyRay3);

    public abstract boolean intersectsBoundingBox(BoundingBox boundingBox);

    public abstract boolean intersectsOrientedBoundingBox(OrientedBoundingBox orientedBoundingBox);

    public abstract boolean intersectsSphere(BoundingSphere boundingSphere);

    public abstract IntersectionRecord intersectsWhere(ReadOnlyRay3 readOnlyRay3);

    public abstract BoundingVolume merge(BoundingVolume boundingVolume);

    public abstract BoundingVolume mergeLocal(BoundingVolume boundingVolume);

    public void read(InputCapsule inputCapsule) throws IOException {
        this._center.set((Vector3) inputCapsule.readSavable("center", new Vector3(Vector3.ZERO)));
    }

    public final void setCenter(ReadOnlyVector3 readOnlyVector3) {
        this._center.set(readOnlyVector3);
    }

    public final void setCheckPlane(int i10) {
        this._checkPlane = i10;
    }

    public abstract BoundingVolume transform(ReadOnlyTransform readOnlyTransform, BoundingVolume boundingVolume);

    public abstract ReadOnlyPlane.Side whichSide(ReadOnlyPlane readOnlyPlane);

    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._center, "center", new Vector3(Vector3.ZERO));
    }

    public void setCenter(double d10, double d11, double d12) {
        this._center.set(d10, d11, d12);
    }

    public BoundingVolume(Vector3 vector3) {
        this._checkPlane = 0;
        Vector3 vector32 = new Vector3();
        this._center = vector32;
        vector32.set(vector3);
    }
}
