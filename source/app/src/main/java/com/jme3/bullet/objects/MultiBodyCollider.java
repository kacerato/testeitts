package com.jme3.bullet.objects;

import android.provider.MediaStore;
import com.jme3.bullet.MultiBody;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.simsilica.mathd.Matrix3d;
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class MultiBodyCollider extends PhysicsCollisionObject {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(MultiBodyCollider.class.getName());
    private static final String tagMultiBody = "multiBody";
    private static final String tagPhysicsLocation = "physicsLocation";
    private static final String tagPhysicsRotation = "physicsRotation";
    private int linkIndex;
    private MultiBody multiBody;

    public MultiBodyCollider() {
    }

    private void buildObject() {
        setNativeId(createCollider(this.multiBody.nativeId(), this.linkIndex));
        logger2.log(Level.FINE, "Created {0}.", this);
        super.initUserPointer();
    }

    private static native long createCollider(long j10, int i10);

    private static native void setPhysicsLocation(long j10, Vector3f vector3f);

    private static native void setPhysicsLocationDp(long j10, Vec3d vec3d);

    private static native void setPhysicsRotation(long j10, Matrix3f matrix3f);

    private static native void setPhysicsRotationDp(long j10, Matrix3d matrix3d);

    public void attachShape(CollisionShape collisionShape) {
        C13702E.t(collisionShape, "shape");
        setCollisionShape(collisionShape);
        PhysicsCollisionObject.attachCollisionShape(nativeId(), collisionShape.nativeId());
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        unassignNativeObject();
        this.multiBody = (MultiBody) cloner.clone(this.multiBody);
        buildObject();
        MultiBodyCollider multiBodyCollider = (MultiBodyCollider) obj;
        cloneIgnoreList(cloner, multiBodyCollider);
        copyPcoProperties(multiBodyCollider);
        setPhysicsLocation(multiBodyCollider.getPhysicsLocation(null));
        setPhysicsRotation(multiBodyCollider.getPhysicsRotationMatrix(null));
    }

    public MultiBody getMultiBody() {
        return this.multiBody;
    }

    public int linkIndex() {
        return this.linkIndex;
    }

    public float mass() {
        int i10 = this.linkIndex;
        return i10 >= 0 ? this.multiBody.getLink(i10).mass() : this.multiBody.baseMass();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.multiBody = (MultiBody) capsule.readSavable(tagMultiBody, null);
        buildObject();
        readPcoProperties(capsule);
        setPhysicsLocation((Vector3f) capsule.readSavable(tagPhysicsLocation, new Vector3f()));
        setPhysicsRotation((Matrix3f) capsule.readSavable(tagPhysicsRotation, new Matrix3f()));
    }

    public void setPhysicsLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "location");
        setPhysicsLocation(nativeId(), vector3f);
    }

    public void setPhysicsLocationDp(Vec3d vec3d) {
        C13702E.t(vec3d, "location");
        setPhysicsLocationDp(nativeId(), vec3d);
    }

    public void setPhysicsRotation(Matrix3f matrix3f) {
        C13702E.t(matrix3f, MediaStore.Images.ImageColumns.ORIENTATION);
        setPhysicsRotation(nativeId(), matrix3f);
    }

    public void setPhysicsRotationDp(Matrix3d matrix3d) {
        C13702E.t(matrix3d, MediaStore.Images.ImageColumns.ORIENTATION);
        setPhysicsRotationDp(nativeId(), matrix3d);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.multiBody, tagMultiBody, (Savable) null);
        capsule.write(getPhysicsLocation(null), tagPhysicsLocation, (Savable) null);
        capsule.write(getPhysicsRotationMatrix(null), tagPhysicsRotation, (Savable) null);
    }

    public MultiBodyCollider(MultiBody multiBody, int i10) {
        C13702E.t(multiBody, "multibody");
        C13702E.i(i10, "link index", -1, Integer.MAX_VALUE);
        this.multiBody = multiBody;
        this.linkIndex = i10;
        buildObject();
    }
}
