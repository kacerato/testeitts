package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import jf.h;
import jf.i;
import p000if.C13702E;

public class ConeCollisionShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(ConeCollisionShape.class.getName());
    private static final String tagAxis = "axis";
    private static final String tagHeight = "height";
    private static final String tagRadius = "radius";
    private int axis;
    private float height;
    private float radius;

    public ConeCollisionShape() {
    }

    private static native long createShape(int i10, float f10, float f11);

    private void createShape() {
        setNativeId(createShape(this.axis, this.radius, this.height));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    @Override
    public boolean canScale(Vector3f vector3f) {
        return super.canScale(vector3f) && h.D(vector3f);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        createShape();
        copyShapeProperties((ConeCollisionShape) obj);
    }

    public int getAxis() {
        return this.axis;
    }

    public float getHeight() {
        return this.height;
    }

    public float getRadius() {
        return this.radius;
    }

    @Override
    public float maxRadius() {
        return (f.r(this.radius, this.height / 2.0f) * this.scale.f81611x) + this.margin;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.radius = capsule.readFloat("radius", 0.5f);
        this.height = capsule.readFloat("height", 0.5f);
        this.axis = capsule.readInt(tagAxis, 1);
        createShape();
        readShapeProperties(capsule);
    }

    public float unscaledVolume() {
        return i.c(this.radius, this.height);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.radius, "radius", 0.5f);
        capsule.write(this.height, "height", 0.5f);
        capsule.write(this.axis, tagAxis, 1);
    }

    public ConeCollisionShape(float f10, float f11, int i10) {
        C13702E.p(f10, "radius");
        C13702E.p(f11, "height");
        C13702E.a(i10, "axis index");
        this.radius = f10;
        this.height = f11;
        this.axis = i10;
        createShape();
    }

    public ConeCollisionShape(float f10, float f11) {
        C13702E.p(f10, "radius");
        C13702E.p(f11, "height");
        this.radius = f10;
        this.height = f11;
        this.axis = 1;
        createShape();
    }
}
