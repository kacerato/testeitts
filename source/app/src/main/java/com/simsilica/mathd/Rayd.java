package com.simsilica.mathd;

import com.jme3.math.Ray;
import java.io.Serializable;
import java.util.Objects;

public class Rayd implements Cloneable, Serializable {
    static final long serialVersionUID = 42;
    private Vec3d direction;
    private Vec3d origin;

    public Rayd() {
    }

    public double distanceSq(Vec3d vec3d, double d10) {
        return getClosestPoint(vec3d, d10, null).distanceSq(vec3d);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Rayd rayd = (Rayd) obj;
        return Objects.equals(rayd.direction, this.direction) && Objects.equals(rayd.origin, this.origin);
    }

    public Vec3d getClosestPoint(Vec3d vec3d, double d10, Vec3d vec3d2) {
        if (vec3d2 == null) {
            vec3d2 = new Vec3d(vec3d).subtractLocal(this.origin);
        } else {
            vec3d2.set(vec3d).subtractLocal(this.origin);
        }
        double dot = this.direction.dot(vec3d2);
        if (d10 > 0.0d) {
            dot = Math.min(dot, d10);
        }
        if (dot > 0.0d) {
            vec3d2.set(this.direction).multLocal(dot).addLocal(this.origin);
        } else {
            vec3d2.set(this.origin);
        }
        return vec3d2;
    }

    public final Vec3d getDirection() {
        return this.direction;
    }

    public final Vec3d getOrigin() {
        return this.origin;
    }

    public int hashCode() {
        return Objects.hash(this.origin, this.direction);
    }

    public double intersectSphere(double d10, Vec3d vec3d, double d11, boolean z10) {
        Vec3d subtract = vec3d.subtract(this.origin);
        double dot = subtract.dot(this.direction);
        if ((z10 && dot < 0.0d) || dot < (-d11)) {
            return -1.0d;
        }
        if (d10 > 0.0d && dot > d10 + d11) {
            return -1.0d;
        }
        double lengthSq = subtract.lengthSq() - (dot * dot);
        if (lengthSq == 0.0d) {
            if (dot >= 0.0d && dot <= d10) {
                return dot;
            }
            return -1.0d;
        }
        double sqrt = Math.sqrt((d11 * d11) - lengthSq);
        double d12 = dot - sqrt;
        if (d12 < 0.0d) {
            if (z10) {
                return -1.0d;
            }
            d12 = dot + sqrt;
        }
        if (d12 < 0.0d) {
            return -1.0d;
        }
        if (d10 <= 0.0d || d12 <= d10) {
            return d12;
        }
        return -1.0d;
    }

    public boolean isSimilar(Rayd rayd, double d10) {
        return rayd != null && this.origin.isSimilar(rayd.origin, d10) && this.direction.isSimilar(rayd.direction, d10);
    }

    public Vec3d project(double d10, Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d(this.direction);
        } else {
            vec3d.set(this.direction);
        }
        vec3d.multLocal(d10);
        vec3d.addLocal(this.origin);
        return vec3d;
    }

    public final Rayd set(Vec3d vec3d, Vec3d vec3d2) {
        setOrigin(vec3d);
        setDirection(vec3d2);
        return this;
    }

    public final void setDirection(Vec3d vec3d) {
        if (vec3d == null) {
            throw new IllegalArgumentException("Direction cannot be null");
        }
        if (Math.abs(vec3d.lengthSq() - 1.0d) <= 1.0E-4d) {
            this.direction = vec3d;
            return;
        }
        throw new IllegalArgumentException("Direction is not of unit length:" + ((Object) vec3d) + "  lengthSq:" + vec3d.lengthSq());
    }

    public final void setOrigin(Vec3d vec3d) {
        if (vec3d == null) {
            throw new IllegalArgumentException("Origin cannot be null");
        }
        this.origin = vec3d;
    }

    public Ray toRay() {
        return new Ray(this.origin.toVector3f(), this.direction.toVector3f());
    }

    public String toString() {
        return "Rayd[origin:" + ((Object) this.origin) + ", direction:" + ((Object) this.direction) + "]";
    }

    public Rayd(Vec3d vec3d, Vec3d vec3d2) {
        setOrigin(vec3d);
        setDirection(vec3d2);
    }

    public final Rayd m1322clone() {
        return new Rayd(this.origin.m1323clone(), this.direction.m1323clone());
    }

    public final Rayd set(Rayd rayd) {
        return set(rayd.origin.m1323clone(), rayd.direction.m1323clone());
    }

    public final Rayd set(Ray ray) {
        return set(new Vec3d(ray.origin), new Vec3d(ray.direction));
    }

    public Rayd(Ray ray) {
        this(new Vec3d(ray.origin), new Vec3d(ray.direction));
    }
}
