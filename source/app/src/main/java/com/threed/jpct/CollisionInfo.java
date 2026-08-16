package com.threed.jpct;

public final class CollisionInfo {
    SimpleVector eRadius;
    SimpleVector eSpaceBasePoint;
    SimpleVector eSpaceVelocity;
    SimpleVector intersectionPoint;
    SimpleVector invERadius;
    SimpleVector invERadiusOrg;
    float nearestDistance;
    SimpleVector r3Dest;
    SimpleVector r3Pos;
    SimpleVector r3Velocity;
    Object3D collisionObject = null;
    boolean foundCollision = false;
    boolean collision = false;
    boolean isPartOfCollision = false;
    Matrix addTransMat = null;
    Matrix addRotMat = null;

    public void calculateInverseAndDest() {
        SimpleVector simpleVector = this.eRadius;
        if (simpleVector != null) {
            SimpleVector create = SimpleVector.create(1.0f / simpleVector.f83625x, 1.0f / simpleVector.f83626y, 1.0f / simpleVector.f83627z);
            this.invERadiusOrg = create;
            this.invERadius = SimpleVector.create(create);
        }
        recalcDest();
    }

    public float getMaxRadius() {
        SimpleVector simpleVector = this.eRadius;
        return Math.max(Math.max(simpleVector.f83625x, simpleVector.f83626y), this.eRadius.f83627z);
    }

    public void recalcDest() {
        SimpleVector simpleVector = this.r3Pos;
        if (simpleVector == null || this.r3Velocity == null) {
            return;
        }
        SimpleVector create = SimpleVector.create(simpleVector);
        this.r3Dest = create;
        create.add(this.r3Velocity);
    }

    public void setIntersectionPoint(SimpleVector simpleVector) {
        if (this.intersectionPoint == null) {
            this.intersectionPoint = SimpleVector.create();
        }
        this.intersectionPoint.set(simpleVector);
    }

    public void setScale(float f10) {
        this.invERadius.set(this.invERadiusOrg);
        this.invERadius.scalarMul(f10);
    }
}
