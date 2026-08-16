package com.jme3.light;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.Intersection;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.util.TempVars;
import java.io.IOException;
import org.eclipse.jdt.internal.core.JavaElement;

public class SphereProbeArea implements ProbeArea {
    private Vector3f center;
    private float radius;
    private final Matrix4f uniformMatrix;

    public SphereProbeArea() {
        this.center = new Vector3f();
        this.radius = 1.0f;
        this.uniformMatrix = new Matrix4f();
    }

    private void updateMatrix() {
        Matrix4f matrix4f = this.uniformMatrix;
        Vector3f vector3f = this.center;
        matrix4f.m03 = vector3f.f81611x;
        matrix4f.m13 = vector3f.f81612y;
        matrix4f.m23 = vector3f.f81613z;
    }

    public Vector3f getCenter() {
        return this.center;
    }

    @Override
    public float getRadius() {
        return this.radius;
    }

    @Override
    public Matrix4f getUniformMatrix() {
        return this.uniformMatrix;
    }

    @Override
    public boolean intersectsBox(BoundingBox boundingBox, TempVars tempVars) {
        return Intersection.intersect(boundingBox, this.center, this.radius);
    }

    @Override
    public boolean intersectsFrustum(Camera camera, TempVars tempVars) {
        return Intersection.intersect(camera, this.center, this.radius);
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere, TempVars tempVars) {
        return Intersection.intersect(boundingSphere, this.center, this.radius);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.center = (Vector3f) capsule.readSavable("center", new Vector3f());
        this.radius = capsule.readFloat(TestVFXEffect.f77524P, 1.0f);
        updateMatrix();
    }

    @Override
    public void setCenter(Vector3f vector3f) {
        this.center.set(vector3f);
        updateMatrix();
    }

    @Override
    public void setRadius(float f10) {
        this.radius = f10;
        updateMatrix();
    }

    public String toString() {
        return "SphereProbeArea{center=" + ((Object) this.center) + ", radius=" + this.radius + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.center, "center", new Vector3f());
        capsule.write(this.radius, TestVFXEffect.f77524P, 1.0f);
    }

    public SphereProbeArea m1273clone() throws CloneNotSupportedException {
        return new SphereProbeArea(this.center, this.radius);
    }

    public SphereProbeArea(Vector3f vector3f, float f10) {
        this.center = new Vector3f();
        this.radius = 1.0f;
        this.uniformMatrix = new Matrix4f();
        this.center.set(vector3f);
        this.radius = f10;
        updateMatrix();
    }
}
