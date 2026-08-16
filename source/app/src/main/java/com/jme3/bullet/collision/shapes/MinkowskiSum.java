package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.h;
import p000if.C13702E;

public class MinkowskiSum extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(MinkowskiSum.class.getName());
    private static final String tagShapeA = "shapeA";
    private static final String tagShapeB = "shapeB";
    private ConvexShape shapeA;
    private ConvexShape shapeB;

    public MinkowskiSum() {
    }

    private static native long createShape(long j10, long j11);

    private void createShape() {
        setNativeId(createShape(this.shapeA.nativeId(), this.shapeB.nativeId()));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        this.margin = this.shapeA.getMargin() + this.shapeB.getMargin();
    }

    @Override
    public boolean canScale(Vector3f vector3f) {
        return super.canScale(vector3f) && h.C(vector3f);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.shapeA = (ConvexShape) cloner.clone(this.shapeA);
        this.shapeB = (ConvexShape) cloner.clone(this.shapeB);
        createShape();
        copyShapeProperties((MinkowskiSum) obj);
    }

    @Override
    public float getMargin() {
        this.margin = this.shapeA.nativeMargin() + this.shapeB.nativeMargin();
        return super.getMargin();
    }

    public ConvexShape getShapeA() {
        return this.shapeA;
    }

    public ConvexShape getShapeB() {
        return this.shapeB;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.shapeA = (ConvexShape) capsule.readSavable(tagShapeA, null);
        this.shapeB = (ConvexShape) capsule.readSavable(tagShapeB, null);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void setMargin(float f10) {
        logger2.log(Level.WARNING, "Cannot directly alter the margin of a MinkowskiSum");
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.shapeA, tagShapeA, (Savable) null);
        capsule.write(this.shapeB, tagShapeB, (Savable) null);
    }

    public MinkowskiSum(ConvexShape convexShape, ConvexShape convexShape2) {
        C13702E.t(convexShape, "shape A");
        C13702E.t(convexShape, "shape B");
        this.shapeA = convexShape;
        this.shapeB = convexShape2;
        createShape();
    }
}
