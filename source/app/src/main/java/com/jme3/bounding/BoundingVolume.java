package com.jme3.bounding;

import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Matrix4f;
import com.jme3.math.Plane;
import com.jme3.math.Ray;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.Objects;

public abstract class BoundingVolume implements Savable, Cloneable, Collidable {
    protected Vector3f center;
    protected int checkPlane;

    public enum Type {
        Sphere,
        AABB,
        Capsule
    }

    public BoundingVolume() {
        this.checkPlane = 0;
        this.center = new Vector3f();
    }

    public abstract BoundingVolume clone(BoundingVolume boundingVolume);

    public int collideWith(Collidable collidable) {
        TempVars tempVars = TempVars.get();
        try {
            CollisionResults collisionResults = tempVars.collisionResults;
            collisionResults.clear();
            return collideWith(collidable, collisionResults);
        } finally {
            tempVars.release();
        }
    }

    public abstract void computeFromPoints(FloatBuffer floatBuffer);

    public abstract boolean contains(Vector3f vector3f);

    public final float distanceSquaredTo(Vector3f vector3f) {
        return this.center.distanceSquared(vector3f);
    }

    public final float distanceTo(Vector3f vector3f) {
        return this.center.distance(vector3f);
    }

    public abstract float distanceToEdge(Vector3f vector3f);

    public boolean equals(Object obj) {
        if (obj instanceof BoundingVolume) {
            return this == obj || this.center.equals(((BoundingVolume) obj).getCenter());
        }
        return false;
    }

    public final Vector3f getCenter() {
        return this.center;
    }

    public int getCheckPlane() {
        return this.checkPlane;
    }

    public abstract Type getType();

    public abstract float getVolume();

    public int hashCode() {
        return Objects.hash(this.center);
    }

    public abstract boolean intersects(BoundingVolume boundingVolume);

    public abstract boolean intersects(Ray ray);

    public abstract boolean intersects(Vector3f vector3f);

    public abstract boolean intersectsBoundingBox(BoundingBox boundingBox);

    public abstract boolean intersectsSphere(BoundingSphere boundingSphere);

    @Deprecated
    public abstract BoundingVolume merge(BoundingVolume boundingVolume);

    public abstract BoundingVolume mergeLocal(BoundingVolume boundingVolume);

    public BoundingVolume mergeWith(BoundingVolume boundingVolume) {
        return clone(null).mergeLocal(boundingVolume);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        this.center = (Vector3f) jmeImporter.getCapsule(this).readSavable("center", Vector3f.ZERO.m1292clone());
    }

    public final void setCenter(Vector3f vector3f) {
        this.center.set(vector3f);
    }

    public final void setCheckPlane(int i10) {
        this.checkPlane = i10;
    }

    public abstract BoundingVolume transform(Matrix4f matrix4f, BoundingVolume boundingVolume);

    public final BoundingVolume transform(Transform transform) {
        return transform(transform, (BoundingVolume) null);
    }

    public abstract BoundingVolume transform(Transform transform, BoundingVolume boundingVolume);

    public abstract Plane.Side whichSide(Plane plane);

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        jmeExporter.getCapsule(this).write(this.center, "center", Vector3f.ZERO);
    }

    public BoundingVolume m1264clone() {
        try {
            BoundingVolume boundingVolume = (BoundingVolume) super.clone();
            boundingVolume.center = this.center.m1292clone();
            return boundingVolume;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public final Vector3f getCenter(Vector3f vector3f) {
        vector3f.set(this.center);
        return vector3f;
    }

    public final void setCenter(float f10, float f11, float f12) {
        this.center.set(f10, f11, f12);
    }

    public BoundingVolume(Vector3f vector3f) {
        this.checkPlane = 0;
        Vector3f vector3f2 = new Vector3f();
        this.center = vector3f2;
        vector3f2.set(vector3f);
    }
}
