package com.jme3.math;

import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResult;
import com.jme3.collision.CollisionResults;
import com.jme3.collision.UnsupportedCollisionException;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.io.Serializable;

public final class Ray implements Savable, Cloneable, Collidable, Serializable {
    static final boolean $assertionsDisabled = false;
    static final long serialVersionUID = 1;
    public Vector3f origin = new Vector3f();
    public Vector3f direction = new Vector3f(0.0f, 0.0f, 1.0f);
    public float limit = Float.POSITIVE_INFINITY;

    public Ray() {
    }

    private boolean intersects(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, boolean z10, boolean z11) {
        float f10;
        TempVars tempVars = TempVars.get();
        Vector3f vector3f5 = tempVars.vect1;
        Vector3f vector3f6 = tempVars.vect2;
        Vector3f vector3f7 = tempVars.vect3;
        Vector3f vector3f8 = tempVars.vect4;
        Vector3f subtract = this.origin.subtract(vector3f, vector3f5);
        Vector3f subtract2 = vector3f2.subtract(vector3f, vector3f6);
        Vector3f subtract3 = vector3f3.subtract(vector3f, vector3f7);
        Vector3f cross = subtract2.cross(subtract3, vector3f8);
        float dot = this.direction.dot(cross);
        if (dot > 1.1920929E-7f) {
            f10 = 1.0f;
        } else {
            if (dot >= -1.1920929E-7f) {
                tempVars.release();
                return false;
            }
            dot = -dot;
            f10 = -1.0f;
        }
        float dot2 = this.direction.dot(subtract.cross(subtract3, subtract3)) * f10;
        if (dot2 >= 0.0f) {
            float dot3 = this.direction.dot(subtract2.crossLocal(subtract)) * f10;
            if (dot3 >= 0.0f && (z11 ? dot3 <= dot : dot2 + dot3 <= dot)) {
                float dot4 = (-f10) * subtract.dot(cross);
                if (dot4 >= 0.0f) {
                    tempVars.release();
                    if (vector3f4 == null) {
                        return true;
                    }
                    float f11 = 1.0f / dot;
                    float f12 = dot4 * f11;
                    if (!z10) {
                        Vector3f vector3f9 = vector3f4.set(this.origin);
                        Vector3f vector3f10 = this.direction;
                        vector3f9.addLocal(vector3f10.f81611x * f12, vector3f10.f81612y * f12, vector3f10.f81613z * f12);
                    } else {
                        vector3f4.set(f12, dot2 * f11, dot3 * f11);
                    }
                    return true;
                }
            }
        }
        tempVars.release();
        return false;
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        if (collidable instanceof BoundingVolume) {
            return ((BoundingVolume) collidable).collideWith(this, collisionResults);
        }
        if (!(collidable instanceof AbstractTriangle)) {
            throw new UnsupportedCollisionException();
        }
        AbstractTriangle abstractTriangle = (AbstractTriangle) collidable;
        float intersects = intersects(abstractTriangle.get1(), abstractTriangle.get2(), abstractTriangle.get3());
        if (Float.isInfinite(intersects) || Float.isNaN(intersects)) {
            return 0;
        }
        collisionResults.addCollision(new CollisionResult(new Vector3f(this.direction).multLocal(intersects).addLocal(this.origin), intersects));
        return 1;
    }

    public float distanceSquared(Vector3f vector3f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1;
        Vector3f vector3f3 = tempVars.vect2;
        vector3f.subtract(this.origin, vector3f2);
        float dot = this.direction.dot(vector3f2);
        if (dot > 0.0f) {
            this.origin.add(this.direction.mult(dot, vector3f3), vector3f3);
        } else {
            vector3f3.set(this.origin);
        }
        vector3f3.subtract(vector3f, vector3f2);
        float lengthSquared = vector3f2.lengthSquared();
        tempVars.release();
        return lengthSquared;
    }

    public Vector3f getDirection() {
        return this.direction;
    }

    public float getLimit() {
        return this.limit;
    }

    public Vector3f getOrigin() {
        return this.origin;
    }

    public boolean intersectWhere(Triangle triangle, Vector3f vector3f) {
        return intersectWhere(triangle.get(0), triangle.get(1), triangle.get(2), vector3f);
    }

    public boolean intersectWherePlanar(Triangle triangle, Vector3f vector3f) {
        return intersectWherePlanar(triangle.get(0), triangle.get(1), triangle.get(2), vector3f);
    }

    public boolean intersectWherePlanarQuad(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        return intersects(vector3f, vector3f2, vector3f3, vector3f4, true, true);
    }

    public boolean intersectsWherePlane(Plane plane, Vector3f vector3f) {
        float dot = plane.getNormal().dot(this.direction);
        if (dot > -1.1920929E-7f && dot < 1.1920929E-7f) {
            return false;
        }
        float f10 = (-(plane.getNormal().dot(this.origin) - plane.getConstant())) / dot;
        if (f10 < 1.1920929E-7f) {
            return false;
        }
        vector3f.set(this.direction).multLocal(f10).addLocal(this.origin);
        return true;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Vector3f vector3f = Vector3f.ZERO;
        this.origin = (Vector3f) capsule.readSavable("origin", vector3f.m1292clone());
        this.direction = (Vector3f) capsule.readSavable("direction", vector3f.m1292clone());
    }

    public void set(Ray ray) {
        this.origin.set(ray.getOrigin());
        this.direction.set(ray.getDirection());
    }

    public void setDirection(Vector3f vector3f) {
        this.direction.set(vector3f);
    }

    public void setLimit(float f10) {
        this.limit = f10;
    }

    public void setOrigin(Vector3f vector3f) {
        this.origin.set(vector3f);
    }

    public String toString() {
        return Ray.class.getSimpleName() + " [Origin: " + ((Object) this.origin) + ", Direction: " + ((Object) this.direction) + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        Vector3f vector3f = this.origin;
        Vector3f vector3f2 = Vector3f.ZERO;
        capsule.write(vector3f, "origin", vector3f2);
        capsule.write(this.direction, "direction", vector3f2);
    }

    public Ray m1286clone() {
        try {
            Ray ray = (Ray) super.clone();
            ray.direction = this.direction.m1292clone();
            ray.origin = this.origin.m1292clone();
            return ray;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public boolean intersectWhere(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        return intersects(vector3f, vector3f2, vector3f3, vector3f4, false, false);
    }

    public boolean intersectWherePlanar(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        return intersects(vector3f, vector3f2, vector3f3, vector3f4, true, false);
    }

    public Ray(Vector3f vector3f, Vector3f vector3f2) {
        setOrigin(vector3f);
        setDirection(vector3f2);
    }

    public float intersects(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        float f10;
        float f11 = vector3f2.f81611x;
        float f12 = vector3f.f81611x;
        float f13 = f11 - f12;
        float f14 = vector3f2.f81612y;
        float f15 = vector3f.f81612y;
        float f16 = f14 - f15;
        float f17 = vector3f2.f81613z;
        float f18 = vector3f.f81613z;
        float f19 = f17 - f18;
        float f20 = vector3f3.f81611x - f12;
        float f21 = vector3f3.f81612y - f15;
        float f22 = vector3f3.f81613z - f18;
        float f23 = (f16 * f22) - (f19 * f21);
        float f24 = (f19 * f20) - (f13 * f22);
        float f25 = (f13 * f21) - (f16 * f20);
        Vector3f vector3f4 = this.direction;
        float f26 = vector3f4.f81611x;
        float f27 = f26 * f23;
        float f28 = vector3f4.f81612y;
        float f29 = vector3f4.f81613z;
        float f30 = f27 + (f28 * f24) + (f29 * f25);
        Vector3f vector3f5 = this.origin;
        float f31 = vector3f5.f81611x - f12;
        float f32 = vector3f5.f81612y - f15;
        float f33 = vector3f5.f81613z - f18;
        if (f30 <= 1.1920929E-7f) {
            if (f30 < -1.1920929E-7f) {
                f30 = -f30;
                f10 = -1.0f;
            }
            return Float.POSITIVE_INFINITY;
        }
        f10 = 1.0f;
        float f34 = ((((f32 * f22) - (f33 * f21)) * f26) + (((f33 * f20) - (f22 * f31)) * f28) + (((f21 * f31) - (f20 * f32)) * f29)) * f10;
        if (f34 >= 0.0f) {
            float f35 = ((f26 * ((f16 * f33) - (f19 * f32))) + (f28 * ((f19 * f31) - (f13 * f33))) + (f29 * ((f13 * f32) - (f16 * f31)))) * f10;
            if (f35 >= 0.0f && f34 + f35 <= f30) {
                float f36 = (-f10) * ((f31 * f23) + (f32 * f24) + (f33 * f25));
                if (f36 >= 0.0f) {
                    return f36 * (1.0f / f30);
                }
            }
        }
        return Float.POSITIVE_INFINITY;
    }
}
