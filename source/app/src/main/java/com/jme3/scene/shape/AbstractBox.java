package com.jme3.scene.shape;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import java.io.IOException;

public abstract class AbstractBox extends Mesh {
    public final Vector3f center = new Vector3f(0.0f, 0.0f, 0.0f);
    public float xExtent;
    public float yExtent;
    public float zExtent;

    public final Vector3f[] computeVertices() {
        Vector3f[] vector3fArr = {Vector3f.UNIT_X.mult(this.xExtent), Vector3f.UNIT_Y.mult(this.yExtent), Vector3f.UNIT_Z.mult(this.zExtent)};
        return new Vector3f[]{this.center.subtract(vector3fArr[0]).subtractLocal(vector3fArr[1]).subtractLocal(vector3fArr[2]), this.center.add(vector3fArr[0]).subtractLocal(vector3fArr[1]).subtractLocal(vector3fArr[2]), this.center.add(vector3fArr[0]).addLocal(vector3fArr[1]).subtractLocal(vector3fArr[2]), this.center.subtract(vector3fArr[0]).addLocal(vector3fArr[1]).subtractLocal(vector3fArr[2]), this.center.add(vector3fArr[0]).subtractLocal(vector3fArr[1]).addLocal(vector3fArr[2]), this.center.subtract(vector3fArr[0]).subtractLocal(vector3fArr[1]).addLocal(vector3fArr[2]), this.center.add(vector3fArr[0]).addLocal(vector3fArr[1]).addLocal(vector3fArr[2]), this.center.subtract(vector3fArr[0]).addLocal(vector3fArr[1]).addLocal(vector3fArr[2])};
    }

    public abstract void doUpdateGeometryIndices();

    public abstract void doUpdateGeometryNormals();

    public abstract void doUpdateGeometryTextures();

    public abstract void doUpdateGeometryVertices();

    public final Vector3f getCenter() {
        return this.center;
    }

    public final float getXExtent() {
        return this.xExtent;
    }

    public final float getYExtent() {
        return this.yExtent;
    }

    public final float getZExtent() {
        return this.zExtent;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.xExtent = capsule.readFloat("xExtent", 0.0f);
        this.yExtent = capsule.readFloat("yExtent", 0.0f);
        this.zExtent = capsule.readFloat("zExtent", 0.0f);
        this.center.set((Vector3f) capsule.readSavable("center", Vector3f.ZERO.m1292clone()));
    }

    public final void updateGeometry() {
        doUpdateGeometryVertices();
        doUpdateGeometryNormals();
        doUpdateGeometryTextures();
        doUpdateGeometryIndices();
        setStatic();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.xExtent, "xExtent", 0.0f);
        capsule.write(this.yExtent, "yExtent", 0.0f);
        capsule.write(this.zExtent, "zExtent", 0.0f);
        capsule.write(this.center, "center", Vector3f.ZERO);
    }

    public final void updateGeometry(Vector3f vector3f, float f10, float f11, float f12) {
        if (vector3f != null) {
            this.center.set(vector3f);
        }
        this.xExtent = f10;
        this.yExtent = f11;
        this.zExtent = f12;
        updateGeometry();
    }

    public final void updateGeometry(Vector3f vector3f, Vector3f vector3f2) {
        this.center.set(vector3f2).addLocal(vector3f).multLocal(0.5f);
        float f10 = vector3f2.f81611x;
        Vector3f vector3f3 = this.center;
        updateGeometry(vector3f3, f10 - vector3f3.f81611x, vector3f2.f81612y - vector3f3.f81612y, vector3f2.f81613z - vector3f3.f81613z);
    }
}
