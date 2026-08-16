package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public abstract class CustomConvexShape extends ConvexShape {
    private static final String tagHalfExtents = "halfExtents";
    private static final String tagInertia = "inertia";
    private Vector3f halfExtents;
    private Vector3f inertia = new Vector3f();
    public static final Logger loggerY = Logger.getLogger(CustomConvexShape.class.getName());
    protected static final ThreadLocal<Vector3f> threadTmpVector = new ThreadLocal<Vector3f>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Vector3f initialValue() {
            return new Vector3f();
        }
    };

    public CustomConvexShape() {
    }

    private void createShape() {
        setNativeId(createShapeNative(this.halfExtents));
        setContactFilterEnabled(this.enableContactFilter);
        setMargin(this.margin);
    }

    private native long createShapeNative(Vector3f vector3f);

    private static native void setScaledInertia(long j10, float f10, float f11, float f12);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.halfExtents = (Vector3f) cloner.clone(this.halfExtents);
        this.inertia = (Vector3f) cloner.clone(this.inertia);
        createShape();
        copyShapeProperties((CustomConvexShape) obj);
    }

    public abstract Vector3f locateSupport(float f10, float f11, float f12);

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.halfExtents = (Vector3f) capsule.readSavable(tagHalfExtents, null);
        this.inertia = (Vector3f) capsule.readSavable(tagInertia, new Vector3f(1.0f, 1.0f, 1.0f));
        createShape();
        readShapeProperties(capsule);
    }

    public void setScaledInertia(float f10, float f11, float f12) {
        C13702E.E(f10, "X-axis inertia");
        C13702E.E(f11, "Y-axis inertia");
        C13702E.E(f12, "Z-axis inertia");
        this.inertia.set(f10, f11, f12);
        setScaledInertia(nativeId(), f10, f11, f12);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.halfExtents, tagHalfExtents, (Savable) null);
        capsule.write(this.inertia, tagInertia, new Vector3f(1.0f, 1.0f, 1.0f));
    }

    public CustomConvexShape(float f10, float f11, float f12) {
        C13702E.E(f10, "X half extent");
        C13702E.E(f11, "Y half extent");
        C13702E.E(f12, "Z half extent");
        this.halfExtents = new Vector3f(f10, f11, f12);
        createShape();
    }

    public CustomConvexShape(Vector3f vector3f) {
        if (vector3f == null) {
            this.halfExtents = null;
        } else {
            C13702E.G(vector3f, "half extents");
            this.halfExtents = vector3f.m1292clone();
        }
        createShape();
    }
}
