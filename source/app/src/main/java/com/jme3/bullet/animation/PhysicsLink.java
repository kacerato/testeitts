package com.jme3.bullet.animation;

import com.jme3.anim.Joint;
import com.jme3.animation.Bone;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import mf.C14234j;
import p000if.C13702E;
import p000if.C13724t;

public abstract class PhysicsLink implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(PhysicsLink.class.getName());
    private static final String tagArmatureJoint = "armatureJoint";
    private static final String tagBlendInterval = "blendInterval";
    private static final String tagBone = "bone";
    private static final String tagChildren = "children";
    private static final String tagControl = "control";
    private static final String tagDensity = "density";
    private static final String tagIkControllers = "ikControllers";
    private static final String tagJoint = "joint";
    private static final String tagKinematicWeight = "kinematicWeight";
    private static final String tagKpTransform = "kpTransform";
    private static final String tagKpVelocity = "kpVelocity";
    private static final String tagLocalOffset = "offset";
    private static final String tagParent = "parent";
    private static final String tagRigidBody = "rigidBody";
    private Joint armatureJoint;
    private Bone bone;
    private DacLinks control;
    private float density;
    private Vector3f localOffset;
    private PhysicsRigidBody rigidBody;
    private ArrayList<IKController> ikControllers = new ArrayList<>(8);
    private ArrayList<PhysicsLink> children = new ArrayList<>(8);
    private float blendInterval = 1.0f;
    private float kinematicWeight = 1.0f;
    private PhysicsJoint joint = null;
    private PhysicsLink parent = null;
    private Transform kpTransform = new Transform();
    private Vector3f kpVelocity = new Vector3f();
    private Vector3f tmpScale = new Vector3f();

    public PhysicsLink() {
    }

    private PhysicsRigidBody createRigidBody(LinkConfig linkConfig, CollisionShape collisionShape) {
        float k10 = C14234j.k(collisionShape);
        float mass = linkConfig.mass(k10);
        this.density = mass / k10;
        PhysicsRigidBody physicsRigidBody = new PhysicsRigidBody(collisionShape, mass);
        float damping = this.control.damping();
        physicsRigidBody.setDamping(damping, damping);
        physicsRigidBody.setKinematic(true);
        physicsRigidBody.setUserObject(this);
        return physicsRigidBody;
    }

    private void setKinematicWeight(float f10) {
        boolean z10 = this.kinematicWeight > 0.0f;
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        this.kinematicWeight = f10;
        boolean z11 = f10 > 0.0f;
        if (z10 && !z11) {
            this.rigidBody.setKinematic(false);
            updateRigidBodyTransform();
            this.rigidBody.setLinearVelocity(this.kpVelocity);
        } else {
            if (!z11 || z10) {
                return;
            }
            this.rigidBody.getTransform(this.kpTransform);
            this.rigidBody.getLinearVelocity(this.kpVelocity);
            this.rigidBody.setKinematic(true);
        }
    }

    private void updateKPTransform() {
        Bone bone = this.bone;
        if (bone != null) {
            this.control.physicsTransform(bone, this.localOffset, this.kpTransform);
        } else {
            this.control.physicsTransform(this.armatureJoint, this.localOffset, this.kpTransform);
        }
    }

    private void updateRigidBodyTransform() {
        this.rigidBody.setPhysicsLocation(this.kpTransform.getTranslation());
        this.rigidBody.setPhysicsRotation(this.kpTransform.getRotation());
        Vector3f scale = this.kpTransform.getScale();
        this.rigidBody.getScale(this.tmpScale);
        if (this.control.areWithinTolerance(scale, this.tmpScale)) {
            return;
        }
        this.rigidBody.setPhysicsScale(scale);
    }

    public void addIKController(IKController iKController) {
        C13702E.t(iKController, "controller");
        this.ikControllers.add(iKController);
    }

    public void blendToKinematicMode(float f10) {
        this.blendInterval = f10;
        setKinematicWeight(Float.MIN_VALUE);
    }

    public String boneName() {
        Bone bone = this.bone;
        return bone != null ? bone.getName() : this.armatureJoint.getName();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.armatureJoint = (Joint) cloner.clone(this.armatureJoint);
        this.bone = (Bone) cloner.clone(this.bone);
        this.control = (DacLinks) cloner.clone(this.control);
        this.ikControllers = (ArrayList) cloner.clone(this.ikControllers);
        this.children = (ArrayList) cloner.clone(this.children);
        this.joint = (PhysicsJoint) cloner.clone(this.joint);
        this.parent = (PhysicsLink) cloner.clone(this.parent);
        this.rigidBody = (PhysicsRigidBody) cloner.clone(this.rigidBody);
        this.kpTransform = (Transform) cloner.clone(this.kpTransform);
        this.kpVelocity = (Vector3f) cloner.clone(this.kpVelocity);
        this.localOffset = (Vector3f) cloner.clone(this.localOffset);
        this.tmpScale = (Vector3f) cloner.clone(this.tmpScale);
    }

    public int countChildren() {
        return this.children.size();
    }

    public float density() {
        return this.density;
    }

    public void disableAllIKControllers() {
        Iterator<IKController> it = this.ikControllers.iterator();
        while (it.hasNext()) {
            it.next().setEnabled(false);
        }
    }

    public abstract void dynamicUpdate();

    public abstract void freeze(boolean z10);

    public final Joint getArmatureJoint() {
        return this.armatureJoint;
    }

    public final Bone getBone() {
        return this.bone;
    }

    public DacLinks getControl() {
        return this.control;
    }

    public PhysicsJoint getJoint() {
        return this.joint;
    }

    public PhysicsLink getParent() {
        return this.parent;
    }

    public final PhysicsRigidBody getRigidBody() {
        return this.rigidBody;
    }

    public boolean isKinematic() {
        return this.kinematicWeight > 0.0f;
    }

    public boolean isReleased() {
        return false;
    }

    public void kinematicUpdate(float f10) {
        float f11 = this.blendInterval;
        if (f11 == 0.0f) {
            setKinematicWeight(1.0f);
        } else {
            setKinematicWeight(this.kinematicWeight + (f10 / f11));
        }
        Vector3f translation = this.kpTransform.getTranslation(null);
        updateKPTransform();
        if (f10 > 0.0f) {
            this.kpTransform.getTranslation().subtract(translation, this.kpVelocity);
            this.kpVelocity.divideLocal(f10);
        }
    }

    public float kinematicWeight() {
        return this.kinematicWeight;
    }

    public PhysicsLink[] listChildren() {
        PhysicsLink[] physicsLinkArr = new PhysicsLink[this.children.size()];
        this.children.toArray(physicsLinkArr);
        return physicsLinkArr;
    }

    public IKController[] listIKControllers() {
        IKController[] iKControllerArr = new IKController[this.ikControllers.size()];
        this.ikControllers.toArray(iKControllerArr);
        return iKControllerArr;
    }

    public Vector3f localOffset(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.localOffset);
        return vector3f;
    }

    public abstract String name();

    public Transform physicsTransform(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        if (isKinematic()) {
            transform.set(this.kpTransform);
        } else {
            this.rigidBody.getTransform(transform);
        }
        return transform;
    }

    public void postRebuildLink(PhysicsLink physicsLink) {
        if (physicsLink.isKinematic()) {
            this.blendInterval = physicsLink.blendInterval;
            this.kinematicWeight = physicsLink.kinematicWeight();
        } else {
            this.blendInterval = 0.0f;
            this.kinematicWeight = 1.0f;
        }
    }

    public void postTick() {
    }

    public void preTick(float f10) {
        if (isKinematic()) {
            updateRigidBodyTransform();
            return;
        }
        Iterator<IKController> it = this.ikControllers.iterator();
        while (it.hasNext()) {
            it.next().preTick(f10);
        }
    }

    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.ikControllers = capsule.readSavableArrayList(tagIkControllers, new ArrayList(1));
        this.children = capsule.readSavableArrayList(tagChildren, new ArrayList(1));
        this.armatureJoint = (Joint) capsule.readSavable(tagArmatureJoint, null);
        this.bone = (Bone) capsule.readSavable(tagBone, null);
        this.control = (DacLinks) capsule.readSavable(tagControl, null);
        this.blendInterval = capsule.readFloat(tagBlendInterval, 1.0f);
        this.density = capsule.readFloat(tagDensity, 1.0f);
        this.kinematicWeight = capsule.readFloat(tagKinematicWeight, 1.0f);
        this.joint = (PhysicsJoint) capsule.readSavable(tagJoint, null);
        this.parent = (PhysicsLink) capsule.readSavable("parent", null);
        this.rigidBody = (PhysicsRigidBody) capsule.readSavable(tagRigidBody, null);
        this.kpTransform = (Transform) capsule.readSavable(tagKpTransform, new Transform());
        this.kpVelocity = (Vector3f) capsule.readSavable(tagKpVelocity, new Vector3f());
        this.localOffset = (Vector3f) capsule.readSavable("offset", new Vector3f());
        this.rigidBody.setUserObject(this);
    }

    public boolean removeIKController(IKController iKController) {
        C13702E.t(iKController, "controller");
        return this.ikControllers.remove(iKController);
    }

    public void setDynamic(Vector3f vector3f) {
        C13702E.d(vector3f, "uniform acceleration");
        this.control.verifyReadyForDynamicMode("put " + name() + " into dynamic mode");
        setKinematicWeight(0.0f);
        this.rigidBody.setGravity(vector3f);
        this.rigidBody.setEnableSleep(false);
    }

    public final void setJoint(PhysicsJoint physicsJoint) {
        this.joint = physicsJoint;
    }

    public final void setParent(PhysicsLink physicsLink) {
        this.parent = physicsLink;
        physicsLink.children.add(this);
    }

    public void setRagdollMode() {
        for (IKController iKController : listIKControllers()) {
            iKController.setRagdollMode();
        }
    }

    public void setRigidBody(PhysicsRigidBody physicsRigidBody) {
        this.rigidBody = physicsRigidBody;
    }

    public void update(float f10) {
        if (this.kinematicWeight > 0.0f) {
            kinematicUpdate(f10);
        } else {
            dynamicUpdate();
        }
    }

    public Vector3f velocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (isKinematic()) {
            vector3f.set(this.kpVelocity);
        } else {
            this.rigidBody.getLinearVelocity(vector3f);
        }
        return vector3f;
    }

    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.writeSavableArrayList(this.ikControllers, tagIkControllers, null);
        capsule.writeSavableArrayList(this.children, tagChildren, null);
        capsule.write(this.armatureJoint, tagArmatureJoint, (Savable) null);
        capsule.write(this.bone, tagBone, (Savable) null);
        capsule.write(this.control, tagControl, (Savable) null);
        capsule.write(this.blendInterval, tagBlendInterval, 1.0f);
        capsule.write(this.density, tagDensity, 1.0f);
        capsule.write(this.kinematicWeight, tagKinematicWeight, 1.0f);
        capsule.write(this.joint, tagJoint, (Savable) null);
        capsule.write(this.parent, "parent", (Savable) null);
        capsule.write(this.rigidBody, tagRigidBody, (Savable) null);
        capsule.write(this.kpTransform, tagKpTransform, (Savable) null);
        capsule.write(this.kpVelocity, tagKpVelocity, (Savable) null);
        capsule.write(this.localOffset, "offset", (Savable) null);
    }

    @Override
    public PhysicsLink jmeClone() {
        try {
            return (PhysicsLink) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public PhysicsLink(DacLinks dacLinks, Bone bone, CollisionShape collisionShape, LinkConfig linkConfig, Vector3f vector3f) {
        this.control = dacLinks;
        this.bone = bone;
        this.rigidBody = createRigidBody(linkConfig, collisionShape);
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Creating link for bone {0} with mass={1}", new Object[]{C13724t.s(bone.getName()), Float.valueOf(this.rigidBody.getMass())});
        }
        this.localOffset = vector3f.m1292clone();
        updateKPTransform();
    }

    public PhysicsLink(DacLinks dacLinks, Joint joint, CollisionShape collisionShape, LinkConfig linkConfig, Vector3f vector3f) {
        this.control = dacLinks;
        this.armatureJoint = joint;
        this.rigidBody = createRigidBody(linkConfig, collisionShape);
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Creating link for joint {0} with mass={1}", new Object[]{C13724t.s(joint.getName()), Float.valueOf(this.rigidBody.getMass())});
        }
        this.localOffset = vector3f.m1292clone();
        updateKPTransform();
    }
}
