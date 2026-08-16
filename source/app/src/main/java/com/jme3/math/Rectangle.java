package com.jme3.math;

import b2.AbstractC3834c;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.io.Serializable;
import u8.C15580b;

public final class Rectangle implements Savable, Cloneable, Serializable {
    static final long serialVersionUID = 1;

    private Vector3f f81604a;

    private Vector3f f81605b;

    private Vector3f f81606c;

    public Rectangle() {
        this.f81604a = new Vector3f();
        this.f81605b = new Vector3f();
        this.f81606c = new Vector3f();
    }

    public Vector3f calculateD() {
        Vector3f vector3f = this.f81605b;
        float f10 = vector3f.f81611x;
        Vector3f vector3f2 = this.f81606c;
        float f11 = f10 + vector3f2.f81611x;
        Vector3f vector3f3 = this.f81604a;
        return new Vector3f(f11 - vector3f3.f81611x, (vector3f.f81612y + vector3f2.f81612y) - vector3f3.f81612y, (vector3f.f81613z + vector3f2.f81613z) - vector3f3.f81613z);
    }

    public Vector3f calculateNormal(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.f81606c.subtract(this.f81605b).crossLocal(this.f81604a.subtract(this.f81605b)).normalizeLocal());
        return vector3f;
    }

    public Vector3f getA() {
        return this.f81604a;
    }

    public Vector3f getB() {
        return this.f81605b;
    }

    public Vector3f getC() {
        return this.f81606c;
    }

    public Vector3f random() {
        return random(null);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Vector3f vector3f = Vector3f.ZERO;
        this.f81604a = (Vector3f) capsule.readSavable("a", vector3f.m1292clone());
        this.f81605b = (Vector3f) capsule.readSavable(C15580b.f118629u, vector3f.m1292clone());
        this.f81606c = (Vector3f) capsule.readSavable(AbstractC3834c.f32824b1, vector3f.m1292clone());
    }

    public void setA(Vector3f vector3f) {
        this.f81604a = vector3f;
    }

    public void setB(Vector3f vector3f) {
        this.f81605b = vector3f;
    }

    public void setC(Vector3f vector3f) {
        this.f81606c = vector3f;
    }

    public String toString() {
        return Rectangle.class.getSimpleName() + " [A: " + ((Object) this.f81604a) + "  B: " + ((Object) this.f81605b) + "  C: " + ((Object) this.f81606c) + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        Vector3f vector3f = this.f81604a;
        Vector3f vector3f2 = Vector3f.ZERO;
        capsule.write(vector3f, "a", vector3f2);
        capsule.write(this.f81605b, C15580b.f118629u, vector3f2);
        capsule.write(this.f81606c, AbstractC3834c.f32824b1, vector3f2);
    }

    public Rectangle m1287clone() {
        try {
            Rectangle rectangle = (Rectangle) super.clone();
            rectangle.f81604a = this.f81604a.m1292clone();
            rectangle.f81605b = this.f81605b.m1292clone();
            rectangle.f81606c = this.f81606c.m1292clone();
            return rectangle;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f random(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        float nextRandomFloat = FastMath.nextRandomFloat();
        float nextRandomFloat2 = FastMath.nextRandomFloat();
        vector3f.set(this.f81604a.mult((1.0f - nextRandomFloat) - nextRandomFloat2).addLocal(this.f81605b.mult(nextRandomFloat).addLocal(this.f81606c.mult(nextRandomFloat2))));
        return vector3f;
    }

    public Rectangle(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        this.f81604a = vector3f;
        this.f81605b = vector3f2;
        this.f81606c = vector3f3;
    }
}
