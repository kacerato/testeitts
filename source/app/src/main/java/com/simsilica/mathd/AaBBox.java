package com.simsilica.mathd;

import java.io.PrintStream;
import java.io.Serializable;

public final class AaBBox implements Cloneable, Serializable {
    static final long serialVersionUID = 42;
    private final Vec3d min = new Vec3d();
    private final Vec3d max = new Vec3d();

    public AaBBox() {
    }

    public static void main(String... strArr) {
        AaBBox aaBBox = new AaBBox(new Vec3d(5.0d, 5.0d, 0.0d), 2.0d);
        PrintStream printStream = System.out;
        printStream.println("box:" + ((Object) aaBBox) + "   center:" + ((Object) aaBBox.getCenter()) + "  extents:" + ((Object) aaBBox.getExtents()));
        aaBBox.setCenter(new Vec3d(7.0d, 2.0d, 1.0d));
        printStream.println("box:" + ((Object) aaBBox) + "   center:" + ((Object) aaBBox.getCenter()) + "  extents:" + ((Object) aaBBox.getExtents()));
    }

    public Vec3d getCenter() {
        return getCenter(null);
    }

    public Vec3d getExtents() {
        return getExtents(null);
    }

    public Vec3d getMax() {
        return this.max;
    }

    public Vec3d getMin() {
        return this.min;
    }

    public void set(Vec3d vec3d, Vec3d vec3d2) {
        this.min.set(vec3d);
        this.max.set(vec3d2);
    }

    public void setCenter(Vec3d vec3d) {
        double d10 = vec3d.f83547x;
        Vec3d vec3d2 = this.max;
        double d11 = vec3d2.f83547x;
        Vec3d vec3d3 = this.min;
        double d12 = d10 - ((d11 + vec3d3.f83547x) * 0.5d);
        double d13 = vec3d.f83548y - ((vec3d2.f83548y + vec3d3.f83548y) * 0.5d);
        double d14 = vec3d.f83549z - ((vec3d2.f83549z + vec3d3.f83549z) * 0.5d);
        vec3d3.addLocal(d12, d13, d14);
        this.max.addLocal(d12, d13, d14);
    }

    public void setForExtents(Vec3d vec3d, Vec3d vec3d2) {
        this.min.set(vec3d.f83547x, vec3d.f83548y, vec3d.f83549z);
        this.min.subtractLocal(vec3d2);
        this.max.set(vec3d.f83547x, vec3d.f83548y, vec3d.f83549z);
        this.max.addLocal(vec3d2);
    }

    public void setForRadius(Vec3d vec3d, double d10) {
        this.min.set(vec3d.f83547x - d10, vec3d.f83548y - d10, vec3d.f83549z - d10);
        this.max.set(vec3d.f83547x + d10, vec3d.f83548y + d10, vec3d.f83549z + d10);
    }

    public void setMax(Vec3d vec3d) {
        this.max.set(vec3d);
    }

    public void setMin(Vec3d vec3d) {
        this.min.set(vec3d);
    }

    public String toString() {
        return AaBBox.class.getName() + "[min=" + ((Object) this.min) + ", max=" + ((Object) this.max) + "]";
    }

    public AaBBox m1318clone() {
        return new AaBBox(this.min.m1323clone(), this.max.m1323clone());
    }

    public Vec3d getCenter(Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        vec3d.set(this.min);
        vec3d.addLocal(this.max);
        vec3d.multLocal(0.5d);
        return vec3d;
    }

    public Vec3d getExtents(Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        vec3d.set(this.max);
        vec3d.subtractLocal(this.min);
        vec3d.multLocal(0.5d);
        return vec3d;
    }

    public void setForRadius(double d10, double d11, double d12, double d13) {
        this.min.set(d10 - d13, d11 - d13, d12 - d13);
        this.max.set(d10 + d13, d11 + d13, d12 + d13);
    }

    public AaBBox(double d10) {
        setForRadius(new Vec3d(), d10);
    }

    public void setCenter(double d10, double d11, double d12) {
        Vec3d vec3d = this.max;
        double d13 = vec3d.f83547x;
        Vec3d vec3d2 = this.min;
        double d14 = d10 - ((d13 + vec3d2.f83547x) * 0.5d);
        double d15 = d11 - ((vec3d.f83548y + vec3d2.f83548y) * 0.5d);
        double d16 = d12 - ((vec3d.f83549z + vec3d2.f83549z) * 0.5d);
        vec3d2.addLocal(d14, d15, d16);
        this.max.addLocal(d14, d15, d16);
    }

    public AaBBox(Vec3d vec3d, double d10) {
        setForRadius(vec3d, d10);
    }

    public AaBBox(Vec3d vec3d, Vec3d vec3d2) {
        set(vec3d, vec3d2);
    }
}
