package com.jme3.effect.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class EmitterBoxShape implements EmitterShape {
    private Vector3f len;
    private Vector3f min;

    public EmitterBoxShape() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.min = (Vector3f) cloner.clone(this.min);
        this.len = (Vector3f) cloner.clone(this.len);
    }

    @Override
    public EmitterShape deepClone() {
        try {
            EmitterBoxShape emitterBoxShape = (EmitterBoxShape) super.clone();
            emitterBoxShape.min = this.min.m1292clone();
            emitterBoxShape.len = this.len.m1292clone();
            return emitterBoxShape;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f getLen() {
        return this.len;
    }

    public Vector3f getMin() {
        return this.min;
    }

    @Override
    public void getRandomPoint(Vector3f vector3f) {
        vector3f.f81611x = this.min.f81611x + (this.len.f81611x * FastMath.nextRandomFloat());
        vector3f.f81612y = this.min.f81612y + (this.len.f81612y * FastMath.nextRandomFloat());
        vector3f.f81613z = this.min.f81613z + (this.len.f81613z * FastMath.nextRandomFloat());
    }

    @Override
    public void getRandomPointAndNormal(Vector3f vector3f, Vector3f vector3f2) {
        getRandomPoint(vector3f);
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.min = (Vector3f) capsule.readSavable("min", null);
        this.len = (Vector3f) capsule.readSavable("length", null);
    }

    public void setLen(Vector3f vector3f) {
        this.len = vector3f;
    }

    public void setMin(Vector3f vector3f) {
        this.min = vector3f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.min, "min", (Savable) null);
        capsule.write(this.len, "length", (Savable) null);
    }

    public EmitterBoxShape(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f != null && vector3f2 != null) {
            this.min = vector3f;
            Vector3f vector3f3 = new Vector3f();
            this.len = vector3f3;
            vector3f3.set(vector3f2).subtractLocal(vector3f);
            return;
        }
        throw new IllegalArgumentException("min or max cannot be null");
    }
}
