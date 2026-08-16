package com.jme3.terrain.geomipmap.picking;

import com.jme3.math.Ray;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;

public class BresenhamYUpGridTracer {
    protected static float TOLERANCE = 1.0E-7f;
    private float distBetweenXIntersections;
    private float distBetweenZIntersections;
    private float distToNextXIntersection;
    private float distToNextZIntersection;
    protected float rayLength;
    private int stepXDirection;
    private int stepZDirection;
    protected Vector3f gridOrigin = new Vector3f();
    protected Vector3f gridSpacing = new Vector3f();
    protected Vector2f gridLocation = new Vector2f();
    protected Vector3f rayLocation = new Vector3f();
    protected Ray walkRay = new Ray();
    protected Direction stepDirection = Direction.None;

    public enum Direction {
        None,
        PositiveX,
        NegativeX,
        PositiveY,
        NegativeY,
        PositiveZ,
        NegativeZ
    }

    public Vector2f getGridLocation() {
        return this.gridLocation;
    }

    public Vector3f getGridOrigin() {
        return this.gridOrigin;
    }

    public Vector3f getGridSpacing() {
        return this.gridSpacing;
    }

    public Direction getLastStepDirection() {
        return this.stepDirection;
    }

    public boolean isRayPerpendicularToGrid() {
        return this.stepXDirection == 0 && this.stepZDirection == 0;
    }

    public void next() {
        float f10 = this.distToNextXIntersection;
        float f11 = this.distToNextZIntersection;
        if (f10 < f11) {
            this.rayLength = f10;
            Vector2f vector2f = this.gridLocation;
            float f12 = vector2f.f81609x;
            int i10 = this.stepXDirection;
            vector2f.f81609x = f12 + i10;
            this.distToNextXIntersection = f10 + this.distBetweenXIntersections;
            if (i10 == -1) {
                this.stepDirection = Direction.NegativeX;
            } else if (i10 == 0) {
                this.stepDirection = Direction.None;
            } else if (i10 == 1) {
                this.stepDirection = Direction.PositiveX;
            }
        } else {
            this.rayLength = f11;
            Vector2f vector2f2 = this.gridLocation;
            float f13 = vector2f2.f81610y;
            int i11 = this.stepZDirection;
            vector2f2.f81610y = f13 + i11;
            this.distToNextZIntersection = f11 + this.distBetweenZIntersections;
            if (i11 == -1) {
                this.stepDirection = Direction.NegativeZ;
            } else if (i11 == 0) {
                this.stepDirection = Direction.None;
            } else if (i11 == 1) {
                this.stepDirection = Direction.PositiveZ;
            }
        }
        this.rayLocation.set(this.walkRay.direction).multLocal(this.rayLength).addLocal(this.walkRay.origin);
    }

    public void setGridLocation(Vector2f vector2f) {
        this.gridLocation = vector2f;
    }

    public void setGridOrigin(Vector3f vector3f) {
        this.gridOrigin = vector3f;
    }

    public void setGridSpacing(Vector3f vector3f) {
        this.gridSpacing = vector3f;
    }

    public void startWalk(Ray ray) {
        this.walkRay.set(ray);
        Vector3f direction = this.walkRay.getDirection();
        Vector3f subtract = this.walkRay.getOrigin().subtract(this.gridOrigin);
        Vector2f vector2f = this.gridLocation;
        float f10 = subtract.f81611x;
        Vector3f vector3f = this.gridSpacing;
        vector2f.f81609x = (int) (f10 / vector3f.f81611x);
        vector2f.f81610y = (int) (subtract.f81613z / vector3f.f81613z);
        Vector3f vector3f2 = new Vector3f(1.0f / direction.f81611x, 1.0f, 1.0f / direction.f81613z);
        float f11 = direction.f81611x;
        float f12 = TOLERANCE;
        if (f11 > f12) {
            float f13 = this.gridLocation.f81609x + 1.0f;
            float f14 = this.gridSpacing.f81611x;
            float f15 = (f13 * f14) - subtract.f81611x;
            float f16 = vector3f2.f81611x;
            this.distToNextXIntersection = f15 * f16;
            this.distBetweenXIntersections = f14 * f16;
            this.stepXDirection = 1;
        } else if (f11 < (-f12)) {
            float f17 = subtract.f81611x;
            float f18 = this.gridLocation.f81609x;
            float f19 = this.gridSpacing.f81611x;
            this.distToNextXIntersection = (f17 - (f18 * f19)) * (-f11);
            this.distBetweenXIntersections = (-f19) * vector3f2.f81611x;
            this.stepXDirection = -1;
        } else {
            this.distToNextXIntersection = Float.MAX_VALUE;
            this.distBetweenXIntersections = Float.MAX_VALUE;
            this.stepXDirection = 0;
        }
        float f20 = direction.f81613z;
        if (f20 > f12) {
            float f21 = this.gridLocation.f81610y + 1.0f;
            float f22 = this.gridSpacing.f81613z;
            float f23 = (f21 * f22) - subtract.f81613z;
            float f24 = vector3f2.f81613z;
            this.distToNextZIntersection = f23 * f24;
            this.distBetweenZIntersections = f22 * f24;
            this.stepZDirection = 1;
        } else if (f20 < (-f12)) {
            float f25 = subtract.f81613z;
            float f26 = this.gridLocation.f81610y;
            float f27 = this.gridSpacing.f81613z;
            this.distToNextZIntersection = (f25 - (f26 * f27)) * (-f20);
            this.distBetweenZIntersections = (-f27) * vector3f2.f81613z;
            this.stepZDirection = -1;
        } else {
            this.distToNextZIntersection = Float.MAX_VALUE;
            this.distBetweenZIntersections = Float.MAX_VALUE;
            this.stepZDirection = 0;
        }
        this.rayLocation.set(subtract);
        this.rayLength = 0.0f;
        this.stepDirection = Direction.None;
    }
}
