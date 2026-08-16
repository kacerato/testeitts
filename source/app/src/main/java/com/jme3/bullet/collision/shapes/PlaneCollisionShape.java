package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.Plane;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;

public class PlaneCollisionShape extends CollisionShape {
    public static final Logger logger2 = Logger.getLogger(PlaneCollisionShape.class.getName());
    private static final String tagCollisionPlane = "collisionPlane";
    private Plane plane;

    public PlaneCollisionShape() {
    }

    private static native long createShape(Vector3f vector3f, float f10);

    private void createShape() {
        setNativeId(createShape(this.plane.getNormal(), this.plane.getConstant()));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.plane = (Plane) cloner.clone(this.plane);
        createShape();
        copyShapeProperties((PlaneCollisionShape) obj);
    }

    public final Plane getPlane() {
        return this.plane.m1284clone();
    }

    @Override
    public float maxRadius() {
        return Float.POSITIVE_INFINITY;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.plane = (Plane) capsule.readSavable(tagCollisionPlane, new Plane());
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.plane, tagCollisionPlane, new Plane());
    }

    public PlaneCollisionShape(Plane plane) {
        this.plane = plane.m1284clone();
        createShape();
    }
}
