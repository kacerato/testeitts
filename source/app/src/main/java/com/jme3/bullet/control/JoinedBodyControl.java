package com.jme3.bullet.control;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.infos.RigidBodyMotionState;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class JoinedBodyControl extends AbstractPhysicsControl {
    private static final String tagRigidBody = "rigidBody";
    private PhysicsRigidBody rigidBody;
    public static final Logger logger3 = Logger.getLogger(JoinedBodyControl.class.getName());
    private static final Quaternion tmpUpdateOrientation = new Quaternion();
    private static final Vector3f tmpUpdateLocation = new Vector3f();

    public JoinedBodyControl() {
    }

    @Override
    public void addPhysics() {
        PhysicsSpace physicsSpace = getPhysicsSpace();
        physicsSpace.addCollisionObject(this.rigidBody);
        for (PhysicsJoint physicsJoint : this.rigidBody.listJoints()) {
            physicsSpace.addJoint(physicsJoint);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.rigidBody = (PhysicsRigidBody) cloner.clone(this.rigidBody);
    }

    @Override
    public void createSpatialData(Spatial spatial) {
    }

    public PhysicsRigidBody getRigidBody() {
        return this.rigidBody;
    }

    public boolean isKinematic() {
        return !this.rigidBody.isDynamic();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        PhysicsRigidBody physicsRigidBody = (PhysicsRigidBody) jmeImporter.getCapsule(this).readSavable(tagRigidBody, null);
        this.rigidBody = physicsRigidBody;
        physicsRigidBody.setUserObject(this);
    }

    @Override
    public void removePhysics() {
        PhysicsSpace physicsSpace = getPhysicsSpace();
        for (PhysicsJoint physicsJoint : this.rigidBody.listJoints()) {
            physicsJoint.destroy();
            physicsSpace.removeJoint(physicsJoint);
        }
        physicsSpace.removeCollisionObject(this.rigidBody);
    }

    @Override
    public void removeSpatialData(Spatial spatial) {
    }

    public void setKinematic(boolean z10) {
        this.rigidBody.setKinematic(z10);
    }

    @Override
    public void setPhysicsLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "new location");
        this.rigidBody.setPhysicsLocation(vector3f);
    }

    @Override
    public void setPhysicsRotation(Quaternion quaternion) {
        C13702E.y(quaternion, "new orientation");
        this.rigidBody.setPhysicsRotation(quaternion);
    }

    @Override
    public void update(float f10) {
        if (isEnabled()) {
            if (this.rigidBody.isDynamic()) {
                RigidBodyMotionState motionState = this.rigidBody.getMotionState();
                Vector3f vector3f = tmpUpdateLocation;
                motionState.getLocation(vector3f);
                Quaternion quaternion = tmpUpdateOrientation;
                motionState.getOrientation(quaternion);
                applyPhysicsTransform(vector3f, quaternion);
                return;
            }
            Vector3f vector3f2 = tmpUpdateLocation;
            vector3f2.set(getSpatialTranslation());
            setPhysicsLocation(vector3f2);
            Quaternion quaternion2 = tmpUpdateOrientation;
            quaternion2.set(getSpatialRotation());
            setPhysicsRotation(quaternion2);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.rigidBody, tagRigidBody, (Savable) null);
    }

    public JoinedBodyControl(CollisionShape collisionShape, float f10) {
        C13702E.t(collisionShape, "shape");
        C13702E.E(f10, "mass");
        PhysicsRigidBody physicsRigidBody = new PhysicsRigidBody(collisionShape, f10);
        this.rigidBody = physicsRigidBody;
        physicsRigidBody.setUserObject(this);
    }
}
