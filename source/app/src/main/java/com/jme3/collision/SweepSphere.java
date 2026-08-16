package com.jme3.collision;

import com.jme3.math.AbstractTriangle;
import com.jme3.math.FastMath;
import com.jme3.math.Plane;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import java.io.PrintStream;

@Deprecated
class SweepSphere implements Collidable {
    private final Vector3f velocity = new Vector3f();
    private final Vector3f center = new Vector3f();
    private final Vector3f dimension = new Vector3f();
    private final Vector3f invDim = new Vector3f();
    private final Triangle scaledTri = new Triangle();
    private final Plane triPlane = new Plane();
    private final Vector3f temp1 = new Vector3f();
    private final Vector3f temp2 = new Vector3f();
    private final Vector3f temp3 = new Vector3f();
    private final Vector3f sVelocity = new Vector3f();
    private final Vector3f sCenter = new Vector3f();

    private float collideWithSegment(Vector3f vector3f, Vector3f vector3f2, float f10, Vector3f vector3f3, Vector3f vector3f4, float f11, Vector3f vector3f5) {
        Vector3f subtractLocal = this.temp1.set(vector3f4).subtractLocal(vector3f3);
        Vector3f subtractLocal2 = this.temp2.set(vector3f3).subtractLocal(vector3f);
        float lengthSquared = subtractLocal.lengthSquared();
        float lengthSquared2 = subtractLocal2.lengthSquared();
        float dot = subtractLocal.dot(vector3f2);
        float dot2 = subtractLocal.dot(subtractLocal2);
        float lowestRoot = getLowestRoot(((-f10) * lengthSquared) + (dot * dot), ((lengthSquared * 2.0f) * vector3f2.dot(subtractLocal2)) - ((2.0f * dot) * dot2), ((1.0f - lengthSquared2) * lengthSquared) + (dot2 * dot2), f11);
        if (Float.isNaN(lowestRoot)) {
            return Float.NaN;
        }
        float f12 = ((dot * lowestRoot) - dot2) / lengthSquared;
        if (f12 < 0.0f || f12 >= 1.0f) {
            return Float.NaN;
        }
        vector3f5.scaleAdd(f12, subtractLocal, vector3f3);
        return lowestRoot;
    }

    private CollisionResult collideWithTriangle(AbstractTriangle abstractTriangle) {
        float f10;
        boolean z10;
        float f11;
        boolean z11;
        this.scaledTri.get1().set(abstractTriangle.get1()).multLocal(this.invDim);
        this.scaledTri.get2().set(abstractTriangle.get2()).multLocal(this.invDim);
        this.scaledTri.get3().set(abstractTriangle.get3()).multLocal(this.invDim);
        this.velocity.mult(this.invDim, this.sVelocity);
        this.center.mult(this.invDim, this.sCenter);
        this.triPlane.setPlanePoints(this.scaledTri);
        float dot = this.triPlane.getNormal().dot(this.sVelocity);
        if (dot > 0.0f) {
            return null;
        }
        float pseudoDistance = this.triPlane.pseudoDistance(this.sCenter);
        if (dot == 0.0f) {
            if (FastMath.abs(pseudoDistance) >= 1.0f) {
                return null;
            }
            System.out.println("EMBEDDED");
            return null;
        }
        float f12 = ((-1.0f) - pseudoDistance) / dot;
        float f13 = (1.0f - pseudoDistance) / dot;
        if (f12 > f13) {
            f13 = f12;
            f12 = f13;
        }
        if (f12 <= 1.0f && f13 >= 0.0f) {
            float max = Math.max(f12, 0.0f);
            Math.min(f13, 1.0f);
            Vector3f vector3f = new Vector3f();
            Vector3f vector3f2 = new Vector3f();
            vector3f.set(this.sVelocity);
            vector3f.multLocal(max);
            vector3f.addLocal(this.sCenter);
            vector3f.subtractLocal(this.triPlane.getNormal());
            if (isPointInTriangle(vector3f, this.scaledTri)) {
                vector3f.multLocal(this.dimension);
                vector3f2.set(this.velocity).multLocal(max);
                vector3f2.addLocal(this.center);
                vector3f2.subtractLocal(vector3f).normalizeLocal();
                CollisionResult collisionResult = new CollisionResult();
                collisionResult.setContactPoint(vector3f);
                collisionResult.setContactNormal(vector3f2);
                collisionResult.setDistance(max * this.velocity.length());
                return collisionResult;
            }
            float lengthSquared = this.sVelocity.lengthSquared();
            Vector3f vector3f3 = this.scaledTri.get1();
            Vector3f vector3f4 = this.scaledTri.get2();
            Vector3f vector3f5 = this.scaledTri.get3();
            float collideWithVertex = collideWithVertex(this.sCenter, this.sVelocity, lengthSquared, vector3f3, 1.0f);
            boolean z12 = true;
            if (Float.isNaN(collideWithVertex)) {
                f10 = 1.0f;
                z10 = false;
            } else {
                vector3f.set(vector3f3);
                f10 = collideWithVertex;
                z10 = true;
            }
            float collideWithVertex2 = collideWithVertex(this.sCenter, this.sVelocity, lengthSquared, vector3f4, f10);
            if (!Float.isNaN(collideWithVertex2)) {
                vector3f.set(vector3f4);
                f10 = collideWithVertex2;
                z10 = true;
            }
            float collideWithVertex3 = collideWithVertex(this.sCenter, this.sVelocity, lengthSquared, vector3f5, f10);
            if (Float.isNaN(collideWithVertex3)) {
                f11 = f10;
                z11 = z10;
            } else {
                vector3f.set(vector3f5);
                f11 = collideWithVertex3;
                z11 = true;
            }
            float collideWithSegment = collideWithSegment(this.sCenter, this.sVelocity, lengthSquared, vector3f3, vector3f4, f11, vector3f);
            if (!Float.isNaN(collideWithSegment)) {
                f11 = collideWithSegment;
                z11 = true;
            }
            float collideWithSegment2 = collideWithSegment(this.sCenter, this.sVelocity, lengthSquared, vector3f4, vector3f5, f11, vector3f);
            if (!Float.isNaN(collideWithSegment2)) {
                f11 = collideWithSegment2;
                z11 = true;
            }
            float collideWithSegment3 = collideWithSegment(this.sCenter, this.sVelocity, lengthSquared, vector3f5, vector3f3, f11, vector3f);
            if (Float.isNaN(collideWithSegment3)) {
                z12 = z11;
            } else {
                f11 = collideWithSegment3;
            }
            if (z12) {
                vector3f.multLocal(this.dimension);
                vector3f2.set(this.velocity).multLocal(max);
                vector3f2.addLocal(this.center);
                vector3f2.subtractLocal(vector3f).normalizeLocal();
                CollisionResult collisionResult2 = new CollisionResult();
                collisionResult2.setContactPoint(vector3f);
                collisionResult2.setContactNormal(vector3f2);
                collisionResult2.setDistance(this.velocity.length() * f11);
                return collisionResult2;
            }
        }
        return null;
    }

    private float collideWithVertex(Vector3f vector3f, Vector3f vector3f2, float f10, Vector3f vector3f3, float f11) {
        this.temp1.set(vector3f).subtractLocal(vector3f3);
        return getLowestRoot(f10, vector3f2.dot(this.temp1) * 2.0f, this.temp1.negateLocal().lengthSquared() - 1.0f, f11);
    }

    private static float getLowestRoot(float f10, float f11, float f12, float f13) {
        float f14 = (f11 * f11) - ((4.0f * f10) * f12);
        if (f14 < 0.0f) {
            return Float.NaN;
        }
        float sqrt = FastMath.sqrt(f14);
        float f15 = -f11;
        float f16 = f10 * 2.0f;
        float f17 = (f15 - sqrt) / f16;
        float f18 = (f15 + sqrt) / f16;
        if (f17 > f18) {
            f17 = f18;
            f18 = f17;
        }
        if (f17 > 0.0f && f17 < f13) {
            return f17;
        }
        if (f18 <= 0.0f || f18 >= f13) {
            return Float.NaN;
        }
        return f18;
    }

    private boolean isPointInTriangle(Vector3f vector3f, AbstractTriangle abstractTriangle) {
        return pointsOnSameSide(vector3f, abstractTriangle.get1(), abstractTriangle.get2(), abstractTriangle.get3()) && pointsOnSameSide(vector3f, abstractTriangle.get2(), abstractTriangle.get1(), abstractTriangle.get3()) && pointsOnSameSide(vector3f, abstractTriangle.get3(), abstractTriangle.get1(), abstractTriangle.get2());
    }

    public static void main(String[] strArr) {
        SweepSphere sweepSphere = new SweepSphere();
        sweepSphere.setCenter(Vector3f.ZERO);
        sweepSphere.setDimension(1.0f);
        sweepSphere.setVelocity(new Vector3f(10.0f, 10.0f, 10.0f));
        SweepSphere sweepSphere2 = new SweepSphere();
        sweepSphere2.setCenter(new Vector3f(5.0f, 5.0f, 5.0f));
        sweepSphere2.setDimension(1.0f);
        sweepSphere2.setVelocity(new Vector3f(-10.0f, -10.0f, -10.0f));
        CollisionResults collisionResults = new CollisionResults();
        sweepSphere.collideWith(sweepSphere2, collisionResults);
        if (collisionResults.size() > 0) {
            CollisionResult closestCollision = collisionResults.getClosestCollision();
            PrintStream printStream = System.out;
            printStream.println("D = " + closestCollision.getDistance());
            printStream.println("P = " + ((Object) closestCollision.getContactPoint()));
            printStream.println("N = " + ((Object) closestCollision.getContactNormal()));
        }
    }

    private boolean pointsOnSameSide(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        this.temp1.set(vector3f4).subtractLocal(vector3f3);
        this.temp3.set(this.temp1);
        this.temp2.set(vector3f).subtractLocal(vector3f3);
        this.temp1.crossLocal(this.temp2);
        this.temp2.set(vector3f2).subtractLocal(vector3f3);
        this.temp3.crossLocal(this.temp2);
        return this.temp1.dot(this.temp3) >= 0.0f;
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) throws UnsupportedCollisionException {
        if (collidable instanceof AbstractTriangle) {
            CollisionResult collideWithTriangle = collideWithTriangle((AbstractTriangle) collidable);
            if (collideWithTriangle == null) {
                return 0;
            }
            collisionResults.addCollision(collideWithTriangle);
            return 1;
        }
        if (!(collidable instanceof SweepSphere)) {
            throw new UnsupportedCollisionException();
        }
        CollisionResult collideWithSweepSphere = collideWithSweepSphere((SweepSphere) collidable);
        if (collideWithSweepSphere == null) {
            return 0;
        }
        collisionResults.addCollision(collideWithSweepSphere);
        return 1;
    }

    public CollisionResult collideWithSweepSphere(SweepSphere sweepSphere) {
        this.temp1.set(this.velocity).subtractLocal(sweepSphere.velocity);
        this.temp2.set(this.center).subtractLocal(sweepSphere.center);
        this.temp3.set(this.dimension).addLocal(sweepSphere.dimension);
        float lowestRoot = getLowestRoot(this.temp1.lengthSquared(), this.temp1.dot(this.temp2) * 2.0f, this.temp2.lengthSquared() - (this.temp3.getX() * this.temp3.getX()), 1.0f);
        if (Float.isNaN(lowestRoot)) {
            return null;
        }
        CollisionResult collisionResult = new CollisionResult();
        collisionResult.setDistance(this.velocity.length() * lowestRoot);
        this.temp1.set(this.velocity).multLocal(lowestRoot).addLocal(this.center);
        this.temp2.set(sweepSphere.velocity).multLocal(lowestRoot).addLocal(sweepSphere.center);
        this.temp3.set(this.temp2).subtractLocal(this.temp1);
        this.temp2.set(this.temp3).normalizeLocal();
        collisionResult.setContactNormal(new Vector3f(this.temp2));
        this.temp3.set(this.temp2).multLocal(this.dimension).addLocal(this.temp1);
        collisionResult.setContactPoint(new Vector3f(this.temp3));
        return collisionResult;
    }

    public Vector3f getCenter() {
        return this.center;
    }

    public Vector3f getDimension() {
        return this.dimension;
    }

    public Vector3f getVelocity() {
        return this.velocity;
    }

    public void setCenter(Vector3f vector3f) {
        this.center.set(vector3f);
    }

    public void setDimension(Vector3f vector3f) {
        this.dimension.set(vector3f);
        this.invDim.set(1.0f, 1.0f, 1.0f).divideLocal(vector3f);
    }

    public void setVelocity(Vector3f vector3f) {
        this.velocity.set(vector3f);
    }

    public void setDimension(float f10, float f11, float f12) {
        this.dimension.set(f10, f11, f12);
        this.invDim.set(1.0f, 1.0f, 1.0f).divideLocal(this.dimension);
    }

    public void setDimension(float f10) {
        this.dimension.set(f10, f10, f10);
        this.invDim.set(1.0f, 1.0f, 1.0f).divideLocal(this.dimension);
    }
}
