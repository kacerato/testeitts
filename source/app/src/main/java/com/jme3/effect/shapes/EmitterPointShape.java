package com.jme3.effect.shapes;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class EmitterPointShape implements EmitterShape {
    private Vector3f point;

    public EmitterPointShape() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.point = (Vector3f) cloner.clone(this.point);
    }

    @Override
    public EmitterShape deepClone() {
        try {
            EmitterPointShape emitterPointShape = (EmitterPointShape) super.clone();
            emitterPointShape.point = this.point.m1292clone();
            return emitterPointShape;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f getPoint() {
        return this.point;
    }

    @Override
    public void getRandomPoint(Vector3f vector3f) {
        vector3f.set(this.point);
    }

    @Override
    public void getRandomPointAndNormal(Vector3f vector3f, Vector3f vector3f2) {
        vector3f.set(this.point);
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
        this.point = (Vector3f) jmeImporter.getCapsule(this).readSavable("point", null);
    }

    public void setPoint(Vector3f vector3f) {
        this.point = vector3f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        jmeExporter.getCapsule(this).write(this.point, "point", (Savable) null);
    }

    public EmitterPointShape(Vector3f vector3f) {
        this.point = vector3f;
    }
}
