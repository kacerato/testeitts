package com.jme3.bullet.objects;

import android.provider.MediaStore;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.simsilica.mathd.Matrix3d;
import com.simsilica.mathd.Quatd;
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class PhysicsGhostObject extends PhysicsCollisionObject {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(PhysicsGhostObject.class.getName());
    private static final String tagPhysicsLocation = "physicsLocation";
    private static final String tagPhysicsRotation = "physicsRotation";
    private List<PhysicsCollisionObject> overlappingObjects = new LinkedList();

    public PhysicsGhostObject() {
    }

    private void addOverlappingObject(PhysicsCollisionObject physicsCollisionObject) {
        this.overlappingObjects.add(physicsCollisionObject);
    }

    private void buildObject() {
        if (!hasAssignedNativeObject()) {
            long createGhostObject = createGhostObject();
            setNativeId(createGhostObject);
            logger2.log(Level.FINE, "Created {0}.", this);
            setGhostFlags(createGhostObject);
            initUserPointer();
        }
        PhysicsCollisionObject.attachCollisionShape(nativeId(), getCollisionShape().nativeId());
    }

    private static native long createGhostObject();

    private static native int getOverlappingCount(long j10);

    private native void getOverlappingObjects(long j10);

    private static native void setGhostFlags(long j10);

    private static native void setPhysicsLocation(long j10, Vector3f vector3f);

    private static native void setPhysicsLocationDp(long j10, Vec3d vec3d);

    private static native void setPhysicsRotation(long j10, Matrix3f matrix3f);

    private static native void setPhysicsRotation(long j10, Quaternion quaternion);

    private static native void setPhysicsRotationDp(long j10, Matrix3d matrix3d);

    private static native void setPhysicsRotationDp(long j10, Quatd quatd);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        PhysicsGhostObject physicsGhostObject = (PhysicsGhostObject) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.overlappingObjects = (List) cloner.clone(this.overlappingObjects);
        buildObject();
        copyPcoProperties(physicsGhostObject);
        setPhysicsLocation(physicsGhostObject.getPhysicsLocation(null));
        setPhysicsRotation(physicsGhostObject.getPhysicsRotationMatrix(null));
        cloneIgnoreList(cloner, physicsGhostObject);
    }

    public PhysicsCollisionObject getOverlapping(int i10) {
        return this.overlappingObjects.get(i10);
    }

    public int getOverlappingCount() {
        return getOverlappingCount(nativeId());
    }

    public List<PhysicsCollisionObject> getOverlappingObjects() {
        this.overlappingObjects.clear();
        getOverlappingObjects(nativeId());
        return this.overlappingObjects;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        buildObject();
        readPcoProperties(capsule);
        setPhysicsLocation((Vector3f) capsule.readSavable(tagPhysicsLocation, new Vector3f()));
        setPhysicsRotation((Matrix3f) capsule.readSavable(tagPhysicsRotation, new Matrix3f()));
    }

    @Override
    public void setCollisionShape(CollisionShape collisionShape) {
        super.setCollisionShape(collisionShape);
        buildObject();
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
        capsule.write(getPhysicsLocation(null), tagPhysicsLocation, (Savable) null);
        capsule.write(getPhysicsRotationMatrix(null), tagPhysicsRotation, (Savable) null);
    }

    public PhysicsGhostObject(CollisionShape collisionShape) {
        super.setCollisionShape(collisionShape);
        buildObject();
    }

    public void setPhysicsRotation(Quaternion quaternion) {
        C13702E.y(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        setPhysicsRotation(nativeId(), quaternion);
    }

    public void setPhysicsRotationDp(Quatd quatd) {
        C13702E.t(quatd, MediaStore.Images.ImageColumns.ORIENTATION);
        setPhysicsRotationDp(nativeId(), quatd);
    }
}
