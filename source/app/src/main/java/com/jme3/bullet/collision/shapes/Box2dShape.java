package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;

public class Box2dShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(Box2dShape.class.getName());
    private static final String tagX = "halfExtentX";
    private static final String tagY = "halfExtentY";
    private float halfExtentX;
    private float halfExtentY;

    public Box2dShape() {
        this.halfExtentX = 1.0f;
        this.halfExtentY = 1.0f;
    }

    private static native long createShape(float f10, float f11, float f12);

    private void createShape() {
        setNativeId(createShape(this.halfExtentX, this.halfExtentY, this.margin));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        createShape();
        copyShapeProperties((Box2dShape) obj);
    }

    public Vector3f getHalfExtents(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.halfExtentX, this.halfExtentY, this.margin);
        return vector3f;
    }

    @Override
    public float maxRadius() {
        Vector3f vector3f = this.scale;
        return f.r(vector3f.f81611x * this.halfExtentX, vector3f.f81612y * this.halfExtentY);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.halfExtentX = capsule.readFloat(tagX, 1.0f);
        this.halfExtentY = capsule.readFloat(tagY, 1.0f);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.halfExtentX, tagX, 1.0f);
        capsule.write(this.halfExtentY, tagY, 1.0f);
    }

    public Box2dShape(float f10) {
        this.halfExtentX = 1.0f;
        this.halfExtentY = 1.0f;
        C13702E.p(f10, "half extent");
        this.halfExtentX = f10;
        this.halfExtentY = f10;
        createShape();
    }

    public Box2dShape(float f10, float f11) {
        this.halfExtentX = 1.0f;
        this.halfExtentY = 1.0f;
        C13702E.p(f10, "half extent on X");
        C13702E.p(f11, "half extent on Y");
        this.halfExtentX = f10;
        this.halfExtentY = f11;
        createShape();
    }

    public Box2dShape(Vector2f vector2f) {
        this.halfExtentX = 1.0f;
        this.halfExtentY = 1.0f;
        C13702E.r(vector2f, "half extents");
        this.halfExtentX = vector2f.f81609x;
        this.halfExtentY = vector2f.f81610y;
        createShape();
    }

    public Box2dShape(Vector3f vector3f) {
        this.halfExtentX = 1.0f;
        this.halfExtentY = 1.0f;
        C13702E.s(vector3f, "half extents");
        this.halfExtentX = vector3f.f81611x;
        this.halfExtentY = vector3f.f81612y;
        createShape();
    }
}
