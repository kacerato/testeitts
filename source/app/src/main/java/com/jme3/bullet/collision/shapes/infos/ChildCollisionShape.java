package com.jme3.bullet.collision.shapes.infos;

import com.jme3.bullet.collision.shapes.BoxCollisionShape;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.EmptyShape;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;

public class ChildCollisionShape implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(ChildCollisionShape.class.getName());
    private static final String tagOffset = "location";
    private static final String tagRotation = "rotation";
    private static final String tagShape = "shape";
    private Vector3f offset;
    private Matrix3f rotation;
    private CollisionShape shape;

    public ChildCollisionShape() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.offset = (Vector3f) cloner.clone(this.offset);
        this.rotation = (Matrix3f) cloner.clone(this.rotation);
        this.shape = (CollisionShape) cloner.clone(this.shape);
    }

    public Vector3f copyOffset(Vector3f vector3f) {
        return vector3f == null ? this.offset.m1292clone() : vector3f.set(this.offset);
    }

    public Quaternion copyRotation(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        quaternion.fromRotationMatrix(this.rotation);
        return quaternion;
    }

    public Matrix3f copyRotationMatrix(Matrix3f matrix3f) {
        return matrix3f == null ? this.rotation.m1282clone() : matrix3f.set(this.rotation);
    }

    public Transform copyTransform(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        transform.setTranslation(this.offset);
        transform.getRotation().fromRotationMatrix(this.rotation);
        transform.setScale(1.0f);
        return transform;
    }

    public CollisionShape getShape() {
        return this.shape;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.offset = (Vector3f) capsule.readSavable("location", new Vector3f());
        this.rotation = (Matrix3f) capsule.readSavable("rotation", new Matrix3f());
        this.shape = (CollisionShape) capsule.readSavable(tagShape, new BoxCollisionShape(1.0f));
    }

    public void setTransform(Vector3f vector3f, Matrix3f matrix3f) {
        this.offset.set(vector3f);
        this.rotation.set(matrix3f);
    }

    public ChildCollisionShape[] split(Triangle triangle) {
        C13702E.t(triangle, "parent triangle");
        ChildCollisionShape[] childCollisionShapeArr = new ChildCollisionShape[2];
        CollisionShape collisionShape = this.shape;
        if (collisionShape instanceof EmptyShape) {
            return childCollisionShapeArr;
        }
        Transform copyTransform = copyTransform(null);
        this.shape.getScale(copyTransform.getScale());
        ChildCollisionShape[] split = ((HullCollisionShape) collisionShape).split(f.T(copyTransform, triangle, null));
        Transform transform = new Transform();
        for (int i10 = 0; i10 < 2; i10++) {
            ChildCollisionShape childCollisionShape = split[i10];
            if (childCollisionShape != null) {
                childCollisionShape.copyTransform(transform);
                f.i(transform, copyTransform, transform);
                childCollisionShapeArr[i10] = new ChildCollisionShape(transform.getTranslation(), this.rotation, split[i10].getShape());
            }
        }
        return childCollisionShapeArr;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.offset, "location", (Savable) null);
        capsule.write(this.rotation, "rotation", (Savable) null);
        capsule.write(this.shape, tagShape, (Savable) null);
    }

    public ChildCollisionShape(Vector3f vector3f, Matrix3f matrix3f, CollisionShape collisionShape) {
        C13702E.t(collisionShape, tagShape);
        if (!(collisionShape instanceof CompoundCollisionShape)) {
            this.offset = vector3f.m1292clone();
            this.rotation = matrix3f.m1282clone();
            this.shape = collisionShape;
            return;
        }
        throw new IllegalArgumentException("CompoundCollisionShapes cannot be child shapes!");
    }

    @Override
    public ChildCollisionShape jmeClone() {
        try {
            return (ChildCollisionShape) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public ChildCollisionShape(Vector3f vector3f, CollisionShape collisionShape) {
        C13702E.t(collisionShape, tagShape);
        if (!(collisionShape instanceof CompoundCollisionShape)) {
            this.offset = vector3f.m1292clone();
            this.rotation = new Matrix3f();
            this.shape = collisionShape;
            return;
        }
        throw new IllegalArgumentException("CompoundCollisionShapes cannot be child shapes!");
    }
}
