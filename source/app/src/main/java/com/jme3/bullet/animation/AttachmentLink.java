package com.jme3.bullet.animation;

import com.jme3.anim.Joint;
import com.jme3.animation.Bone;
import com.jme3.bullet.RotationOrder;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.joints.New6Dof;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.joints.SixDofJoint;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import jf.g;
import p000if.C13702E;
import p000if.C13710f;
import p000if.C13722r;

public class AttachmentLink extends PhysicsLink {
    static final boolean $assertionsDisabled = false;
    private static final String tagAttachedModel = "attachedModel";
    private static final String tagEndModelTransform = "endModelTransform";
    private static final String tagStartModelTransform = "startModelTransform";
    private Spatial attachedModel;
    private Transform endModelTransform;
    private Transform startModelTransform;
    public static final Logger logger2 = Logger.getLogger(AttachmentLink.class.getName());
    private static final Matrix3f matrixIdentity = new Matrix3f();
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);

    public AttachmentLink() {
        this.endModelTransform = null;
        this.startModelTransform = new Transform();
    }

    private Transform localModelTransform(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        Vector3f translation = transform.getTranslation();
        Quaternion rotation = transform.getRotation();
        Vector3f scale = transform.getScale();
        getRigidBody().getTransform(transform);
        f.i(transform, getControl().meshTransform(null).invert(), transform);
        Bone bone = getBone();
        f.i(transform, (bone != null ? C13722r.g(bone, null) : getArmatureJoint().getModelTransform()).invert(), transform);
        Vector3f localOffset = localOffset(null);
        localOffset.multLocal(scale);
        g.r(rotation, localOffset, localOffset);
        translation.subtractLocal(localOffset);
        return transform;
    }

    public void blendToKinematicMode(float f10, Transform transform) {
        C13702E.p(f10, "blend interval");
        if (isReleased()) {
            throw new IllegalStateException("Cannot change modes once released.");
        }
        blendToKinematicMode(f10);
        this.endModelTransform = transform;
        if (transform != null) {
            this.startModelTransform.set(this.attachedModel.getLocalTransform());
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.attachedModel = (Spatial) cloner.clone(this.attachedModel);
        this.endModelTransform = (Transform) cloner.clone(this.endModelTransform);
        this.startModelTransform = (Transform) cloner.clone(this.startModelTransform);
    }

    @Override
    public void dynamicUpdate() {
        this.attachedModel.setLocalTransform(localModelTransform(null));
    }

    @Override
    public void freeze(boolean z10) {
        if (z10 || isKinematic()) {
            blendToKinematicMode(0.0f, null);
        } else {
            setDynamic(translateIdentity);
        }
    }

    public Spatial getAttachedModel() {
        return this.attachedModel;
    }

    @Override
    public boolean isReleased() {
        return getJoint() == null;
    }

    @Override
    public void kinematicUpdate(float f10) {
        Transform transform = new Transform();
        if (this.endModelTransform != null) {
            Quaternion rotation = this.startModelTransform.getRotation();
            Quaternion rotation2 = this.endModelTransform.getRotation();
            if (rotation.dot(rotation2) < 0.0f) {
                rotation2.multLocal(-1.0f);
            }
            f.L(kinematicWeight(), this.startModelTransform, this.endModelTransform, transform);
            this.attachedModel.setLocalTransform(transform);
        }
        super.kinematicUpdate(f10);
    }

    @Override
    public String name() {
        return "Attachment:" + boneName();
    }

    @Override
    public final Transform physicsTransform(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        transform.setTranslation(localOffset(null));
        transform.setRotation(rotateIdentity);
        transform.setScale(1.0f);
        f.i(transform, this.attachedModel.getLocalTransform(), transform);
        Bone bone = getBone();
        Transform g10 = bone != null ? C13722r.g(bone, null) : getArmatureJoint().getModelTransform().m1289clone();
        f.i(transform, g10, transform);
        getControl().meshTransform(g10);
        f.i(transform, g10, transform);
        return transform;
    }

    public void postRebuild(AttachmentLink attachmentLink) {
        postRebuildLink(attachmentLink);
        if (attachmentLink.isReleased()) {
            setDynamic(translateIdentity);
            release();
            PhysicsRigidBody rigidBody = getRigidBody();
            if (rigidBody.isInWorld()) {
                getControl().getPhysicsSpace().removeCollisionObject(rigidBody);
            }
            setRigidBody(attachmentLink.getRigidBody());
        }
        this.endModelTransform = (Transform) C13710f.c(attachmentLink.endModelTransform);
        this.startModelTransform.set(attachmentLink.startModelTransform);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.attachedModel = (Spatial) capsule.readSavable(tagAttachedModel, null);
        this.endModelTransform = (Transform) capsule.readSavable(tagEndModelTransform, new Transform());
        this.startModelTransform = (Transform) capsule.readSavable(tagStartModelTransform, new Transform());
    }

    public void release() {
        if (isKinematic()) {
            throw new IllegalStateException("Cannot release an attachment in kinematic mode.");
        }
        if (isReleased()) {
            throw new IllegalStateException("Cannot release the same attachment twice.");
        }
        PhysicsJoint joint = getJoint();
        joint.destroy();
        getControl().getPhysicsSpace().removeJoint(joint);
        setJoint(null);
    }

    @Override
    public void setRagdollMode() {
        getControl().verifyReadyForDynamicMode("put " + name() + " into ragdoll mode");
        setDynamic(getControl().gravity(null));
        super.setRagdollMode();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.attachedModel, tagAttachedModel, (Savable) null);
        capsule.write(this.endModelTransform, tagEndModelTransform, (Savable) null);
        capsule.write(this.startModelTransform, tagStartModelTransform, (Savable) null);
    }

    public AttachmentLink(DacLinks dacLinks, Bone bone, PhysicsLink physicsLink, Spatial spatial, CollisionShape collisionShape, LinkConfig linkConfig, Vector3f vector3f) {
        super(dacLinks, bone, collisionShape, linkConfig, vector3f);
        PhysicsJoint new6Dof;
        this.endModelTransform = null;
        this.startModelTransform = new Transform();
        this.attachedModel = spatial;
        setParent(physicsLink);
        PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
        Transform physicsTransform = physicsLink.physicsTransform(null);
        Transform invert = physicsTransform.invert();
        Transform physicsTransform2 = physicsTransform(null);
        Transform i10 = f.i(physicsTransform2, invert, null);
        Vector3f localToWorld = dacLinks.getTransformer().localToWorld(bone.getModelSpacePosition(), null);
        physicsTransform.setScale(1.0f);
        Vector3f U10 = f.U(physicsTransform, localToWorld, null);
        physicsTransform2.setScale(1.0f);
        Vector3f U11 = f.U(physicsTransform2, localToWorld, null);
        Matrix3f rotationMatrix = i10.getRotation().toRotationMatrix();
        Matrix3f matrix3f = matrixIdentity;
        RotationOrder rotationOrder = linkConfig.rotationOrder();
        if (rotationOrder == null) {
            new6Dof = new SixDofJoint(rigidBody, getRigidBody(), U10, U11, rotationMatrix, matrix3f, true);
        } else {
            new6Dof = new New6Dof(rigidBody, getRigidBody(), U10, U11, rotationMatrix, matrix3f, rotationOrder);
        }
        setJoint(new6Dof);
        new RangeOfMotion().setup(new6Dof, false, false, false);
    }

    public AttachmentLink(DacLinks dacLinks, Joint joint, PhysicsLink physicsLink, Spatial spatial, CollisionShape collisionShape, LinkConfig linkConfig, Vector3f vector3f) {
        super(dacLinks, joint, collisionShape, linkConfig, vector3f);
        PhysicsJoint new6Dof;
        this.endModelTransform = null;
        this.startModelTransform = new Transform();
        this.attachedModel = spatial;
        setParent(physicsLink);
        PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
        Transform physicsTransform = physicsLink.physicsTransform(null);
        Transform invert = physicsTransform.invert();
        Transform physicsTransform2 = physicsTransform(null);
        Transform i10 = f.i(physicsTransform2, invert, null);
        Vector3f localToWorld = dacLinks.getTransformer().localToWorld(joint.getModelTransform().getTranslation(), null);
        physicsTransform.setScale(1.0f);
        Vector3f U10 = f.U(physicsTransform, localToWorld, null);
        physicsTransform2.setScale(1.0f);
        Vector3f U11 = f.U(physicsTransform2, localToWorld, null);
        Matrix3f rotationMatrix = i10.getRotation().toRotationMatrix();
        Matrix3f matrix3f = matrixIdentity;
        RotationOrder rotationOrder = linkConfig.rotationOrder();
        if (rotationOrder == null) {
            new6Dof = new SixDofJoint(rigidBody, getRigidBody(), U10, U11, rotationMatrix, matrix3f, true);
        } else {
            new6Dof = new New6Dof(rigidBody, getRigidBody(), U10, U11, rotationMatrix, matrix3f, rotationOrder);
        }
        setJoint(new6Dof);
        new RangeOfMotion().setup(new6Dof, false, false, false);
    }
}
