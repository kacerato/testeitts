package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class Convex2dShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(Convex2dShape.class.getName());
    private static final String tagBase = "base";
    private ConvexShape base;

    public Convex2dShape() {
    }

    private static native long createShape(long j10);

    private void createShape() {
        setNativeId(createShape(this.base.nativeId()));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    @Override
    public boolean canScale(Vector3f vector3f) {
        return this.base.canScale(vector3f);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.base = (ConvexShape) cloner.clone(this.base);
        createShape();
        copyShapeProperties((Convex2dShape) obj);
    }

    public ConvexShape getBaseShape() {
        return this.base;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.base = (ConvexShape) capsule.readSavable(tagBase, null);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void setScale(Vector3f vector3f) {
        super.setScale(vector3f);
        this.base.updateScale();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.base, tagBase, (Savable) null);
    }

    public Convex2dShape(ConvexShape convexShape) {
        C13702E.t(convexShape, tagBase);
        this.base = convexShape;
        createShape();
    }

    public Convex2dShape(FloatBuffer floatBuffer) {
        C13702E.t(floatBuffer, "flipped buffer");
        int limit = floatBuffer.limit();
        C13702E.F(limit, "buffer limit");
        C13702E.H(limit % 3 == 0, "buffer limit a multiple of 3");
        this.base = new HullCollisionShape(floatBuffer);
        createShape();
    }
}
