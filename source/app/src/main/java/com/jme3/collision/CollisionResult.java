package com.jme3.collision;

import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;

public class CollisionResult implements Comparable<CollisionResult> {
    private Vector3f contactNormal;
    private Vector3f contactPoint;
    private float distance;
    private Geometry geometry;
    private int triangleIndex;

    public CollisionResult(Geometry geometry, Vector3f vector3f, float f10, int i10) {
        this.geometry = geometry;
        this.contactPoint = vector3f;
        this.distance = f10;
        this.triangleIndex = i10;
    }

    public boolean equals(Object obj) {
        return obj instanceof CollisionResult ? ((CollisionResult) obj).compareTo(this) == 0 : super.equals(obj);
    }

    public Vector3f getContactNormal() {
        return this.contactNormal;
    }

    public Vector3f getContactPoint() {
        return this.contactPoint;
    }

    public float getDistance() {
        return this.distance;
    }

    public Geometry getGeometry() {
        return this.geometry;
    }

    public Triangle getTriangle(Triangle triangle) {
        if (triangle == null) {
            triangle = new Triangle();
        }
        this.geometry.getMesh().getTriangle(this.triangleIndex, triangle);
        triangle.calculateCenter();
        triangle.calculateNormal();
        return triangle;
    }

    public int getTriangleIndex() {
        return this.triangleIndex;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.distance);
    }

    public void setContactNormal(Vector3f vector3f) {
        this.contactNormal = vector3f;
    }

    public void setContactPoint(Vector3f vector3f) {
        this.contactPoint = vector3f;
    }

    public void setDistance(float f10) {
        this.distance = f10;
    }

    public void setGeometry(Geometry geometry) {
        this.geometry = geometry;
    }

    public void setTriangleIndex(int i10) {
        this.triangleIndex = i10;
    }

    public String toString() {
        return "CollisionResult[geometry=" + ((Object) this.geometry) + ", contactPoint=" + ((Object) this.contactPoint) + ", contactNormal=" + ((Object) this.contactNormal) + ", distance=" + this.distance + ", triangleIndex=" + this.triangleIndex + "]";
    }

    @Override
    public int compareTo(CollisionResult collisionResult) {
        return Float.compare(this.distance, collisionResult.distance);
    }

    public CollisionResult(Vector3f vector3f, float f10) {
        this.contactPoint = vector3f;
        this.distance = f10;
    }

    public CollisionResult() {
    }
}
