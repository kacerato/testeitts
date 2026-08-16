package com.jme3.bullet.animation;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.anim.Joint;
import com.jme3.animation.Bone;
import com.jme3.bullet.RotationOrder;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.joints.New6Dof;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.joints.SixDofJoint;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.util.DebugShapeFactory;
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

public class BoneLink extends PhysicsLink {
    static final boolean $assertionsDisabled = false;
    private static final String tagEndBoneTransforms = "endBoneTransforms";
    private static final String tagManagedArmatureJoints = "managedArmatureJoints";
    private static final String tagManagedBones = "managedBones";
    private static final String tagPrevBoneTransforms = "prevBoneTransforms";
    private static final String tagStartBoneTransforms = "startBoneTransforms";
    private static final String tagSubmode = "submode";
    private Transform[] endBoneTransforms;
    private Joint[] managedArmatureJoints;
    private Bone[] managedBones;
    private Transform[] prevBoneTransforms;
    private Transform[] startBoneTransforms;
    private KinematicSubmode submode;
    private Matrix3f tmpMatrix;
    public static final Logger logger2 = Logger.getLogger(BoneLink.class.getName());
    private static final Matrix3f matrixIdentity = new Matrix3f();
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$animation$KinematicSubmode;

        static {
            int[] iArr = new int[KinematicSubmode.values().length];
            $SwitchMap$com$jme3$bullet$animation$KinematicSubmode = iArr;
            try {
                iArr[KinematicSubmode.Amputated.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$KinematicSubmode[KinematicSubmode.Animated.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$KinematicSubmode[KinematicSubmode.Bound.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$KinematicSubmode[KinematicSubmode.Frozen.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$bullet$animation$KinematicSubmode[KinematicSubmode.Reset.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public BoneLink() {
        this.managedBones = null;
        this.managedArmatureJoints = null;
        this.submode = KinematicSubmode.Animated;
        this.tmpMatrix = new Matrix3f();
        this.endBoneTransforms = null;
        this.prevBoneTransforms = null;
        this.startBoneTransforms = null;
    }

    private Transform copyManagedTransform(int i10, Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        Bone[] boneArr = this.managedBones;
        if (boneArr != null) {
            C13722r.f(boneArr[i10], transform);
        } else {
            transform.set(this.managedArmatureJoints[i10].getLocalTransform());
        }
        return transform;
    }

    private Transform localBoneTransform(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        Vector3f translation = transform.getTranslation();
        Quaternion rotation = transform.getRotation();
        Vector3f scale = transform.getScale();
        getRigidBody().getTransform(transform);
        f.i(transform, getControl().meshTransform(null).invert(), transform);
        if (this.managedBones != null) {
            RagUtils.meshToLocal(getBone().getParent(), transform);
        } else {
            RagUtils.meshToLocal(getArmatureJoint().getParent(), transform);
        }
        Vector3f localOffset = localOffset(null);
        localOffset.multLocal(scale);
        g.r(rotation, localOffset, localOffset);
        translation.subtractLocal(localOffset);
        return transform;
    }

    private void setManagedTransform(int i10, Transform transform) {
        Bone[] boneArr = this.managedBones;
        if (boneArr != null) {
            Bone bone = boneArr[i10];
            C13722r.y(bone, transform);
            bone.updateModelTransforms();
        } else {
            Joint joint = this.managedArmatureJoints[i10];
            joint.setLocalTransform(transform);
            joint.updateModelTransforms();
        }
    }

    private void setUserControl(boolean z10) {
        Bone[] boneArr = this.managedBones;
        if (boneArr != null) {
            for (Bone bone : boneArr) {
                bone.setUserControl(z10);
            }
        }
    }

    public void addJoint(PhysicsLink physicsLink) {
        int length;
        setParent(physicsLink);
        Transform physicsTransform = physicsLink.physicsTransform(null);
        physicsTransform.setScale(1.0f);
        Transform invert = physicsTransform.invert();
        Transform physicsTransform2 = physicsTransform(null);
        physicsTransform2.setScale(1.0f);
        Transform i10 = f.i(physicsTransform2, invert, null);
        Spatial transformer = getControl().getTransformer();
        Bone bone = getBone();
        Vector3f localToWorld = transformer.localToWorld(bone != null ? bone.getModelSpacePosition() : getArmatureJoint().getModelTransform().getTranslation(), null);
        PhysicsRigidBody rigidBody = physicsLink.getRigidBody();
        PhysicsRigidBody rigidBody2 = getRigidBody();
        Vector3f U10 = f.U(physicsTransform, localToWorld, null);
        Vector3f U11 = f.U(physicsTransform2, localToWorld, null);
        i10.getRotation().toRotationMatrix(this.tmpMatrix);
        Matrix3f matrix3f = this.tmpMatrix;
        Matrix3f matrix3f2 = matrixIdentity;
        String boneName = boneName();
        RotationOrder rotationOrder = getControl().config(boneName).rotationOrder();
        PhysicsJoint sixDofJoint = rotationOrder == null ? new SixDofJoint(rigidBody, rigidBody2, U10, U11, matrix3f, matrix3f2, true) : new New6Dof(rigidBody, rigidBody2, U10, U11, matrix3f, matrix3f2, rotationOrder);
        setJoint(sixDofJoint);
        getControl().getJointLimits(boneName).setup(sixDofJoint, false, false, false);
        if (bone != null) {
            Bone[] listManagedBones = getControl().listManagedBones(boneName);
            this.managedBones = listManagedBones;
            length = listManagedBones.length;
        } else {
            Joint[] listManagedArmatureJoints = getControl().listManagedArmatureJoints(boneName);
            this.managedArmatureJoints = listManagedArmatureJoints;
            length = listManagedArmatureJoints.length;
        }
        this.startBoneTransforms = new Transform[length];
        for (int i11 = 0; i11 < length; i11++) {
            this.startBoneTransforms[i11] = new Transform();
        }
    }

    public void blendToKinematicMode(KinematicSubmode kinematicSubmode, float f10) {
        C13702E.t(kinematicSubmode, tagSubmode);
        C13702E.p(f10, "blend interval");
        blendToKinematicMode(f10);
        this.submode = kinematicSubmode;
        int countManaged = countManaged();
        for (int i10 = 0; i10 < countManaged; i10++) {
            Transform[] transformArr = this.prevBoneTransforms;
            this.startBoneTransforms[i10].set(transformArr == null ? copyManagedTransform(i10, null) : transformArr[i10]);
        }
        if (kinematicSubmode == KinematicSubmode.Animated) {
            setUserControl(false);
        } else {
            setUserControl(true);
        }
    }

    public int boneIndex(int i10) {
        C13702E.i(i10, "managed index", 0, countManaged() - 1);
        Bone[] boneArr = this.managedBones;
        if (boneArr == null) {
            return this.managedArmatureJoints[i10].getId();
        }
        return getControl().getSkeleton().getBoneIndex(boneArr[i10]);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.managedBones = (Bone[]) cloner.clone(this.managedBones);
        this.managedArmatureJoints = (Joint[]) cloner.clone(this.managedArmatureJoints);
        this.tmpMatrix = (Matrix3f) cloner.clone(this.tmpMatrix);
        this.endBoneTransforms = (Transform[]) cloner.clone(this.endBoneTransforms);
        this.prevBoneTransforms = (Transform[]) cloner.clone(this.prevBoneTransforms);
        this.startBoneTransforms = (Transform[]) cloner.clone(this.startBoneTransforms);
    }

    public int countManaged() {
        Bone[] boneArr = this.managedBones;
        return boneArr != null ? boneArr.length : this.managedArmatureJoints.length;
    }

    @Override
    public void dynamicUpdate() {
        int countManaged = countManaged();
        for (int i10 = 1; i10 < countManaged; i10++) {
            setManagedTransform(i10, this.prevBoneTransforms[i10]);
        }
        Transform localBoneTransform = localBoneTransform(null);
        int i11 = 0;
        if (this.managedBones != null) {
            C13722r.y(getBone(), localBoneTransform);
            Bone[] boneArr = this.managedBones;
            int length = boneArr.length;
            while (i11 < length) {
                boneArr[i11].updateModelTransforms();
                i11++;
            }
            return;
        }
        getArmatureJoint().setLocalTransform(localBoneTransform);
        Joint[] jointArr = this.managedArmatureJoints;
        int length2 = jointArr.length;
        while (i11 < length2) {
            jointArr[i11].updateModelTransforms();
            i11++;
        }
    }

    public Vector3f[] footprint() {
        CollisionShape collisionShape = getRigidBody().getCollisionShape();
        Transform physicsTransform = physicsTransform(null);
        physicsTransform.setScale(1.0f);
        return DebugShapeFactory.footprint(collisionShape, physicsTransform, 0);
    }

    @Override
    public void freeze(boolean z10) {
        if (z10 || isKinematic()) {
            blendToKinematicMode(KinematicSubmode.Frozen, 0.0f);
        } else {
            setDynamic(translateIdentity, true, true, true);
        }
    }

    @Override
    public void kinematicUpdate(float f10) {
        Transform transform = new Transform();
        int countManaged = countManaged();
        for (int i10 = 0; i10 < countManaged; i10++) {
            int i11 = AnonymousClass1.$SwitchMap$com$jme3$bullet$animation$KinematicSubmode[this.submode.ordinal()];
            if (i11 == 1) {
                getControl().copyBindTransform(boneIndex(i10), transform);
                transform.setScale(0.001f);
            } else if (i11 == 2) {
                copyManagedTransform(i10, transform);
            } else if (i11 == 3) {
                getControl().copyBindTransform(boneIndex(i10), transform);
            } else if (i11 == 4) {
                transform.set(this.prevBoneTransforms[i10]);
            } else {
                if (i11 != 5) {
                    throw new IllegalStateException(this.submode.toString());
                }
                transform.set(this.endBoneTransforms[i10]);
            }
            if (kinematicWeight() < 1.0f) {
                Transform transform2 = this.startBoneTransforms[i10];
                Quaternion rotation = transform2.getRotation();
                g.p(rotation);
                Quaternion rotation2 = transform.getRotation();
                if (rotation.dot(rotation2) < 0.0f) {
                    rotation2.multLocal(-1.0f);
                }
                g.p(rotation2);
                f.L(kinematicWeight(), transform2, transform, transform);
            }
            setManagedTransform(i10, transform);
        }
        super.kinematicUpdate(f10);
    }

    @Override
    public String name() {
        return "Bone:" + boneName();
    }

    public void postRebuild(BoneLink boneLink) {
        int countManaged = countManaged();
        postRebuildLink(boneLink);
        if (boneLink.isKinematic()) {
            this.submode = boneLink.submode;
        } else {
            this.submode = KinematicSubmode.Frozen;
        }
        this.endBoneTransforms = (Transform[]) C13710f.c(boneLink.endBoneTransforms);
        this.prevBoneTransforms = (Transform[]) C13710f.c(boneLink.prevBoneTransforms);
        for (int i10 = 0; i10 < countManaged; i10++) {
            this.startBoneTransforms[i10].set(boneLink.startBoneTransforms[i10]);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Savable[] readSavableArray = capsule.readSavableArray(tagManagedArmatureJoints, null);
        if (readSavableArray != null) {
            this.managedArmatureJoints = new Joint[readSavableArray.length];
            for (int i10 = 0; i10 < readSavableArray.length; i10++) {
                this.managedArmatureJoints[i10] = (Joint) readSavableArray[i10];
            }
        }
        Savable[] readSavableArray2 = capsule.readSavableArray(tagManagedBones, null);
        if (readSavableArray2 != null) {
            this.managedBones = new Bone[readSavableArray2.length];
            for (int i11 = 0; i11 < readSavableArray2.length; i11++) {
                this.managedBones[i11] = (Bone) readSavableArray2[i11];
            }
        }
        this.submode = (KinematicSubmode) capsule.readEnum(tagSubmode, KinematicSubmode.class, KinematicSubmode.Animated);
        this.endBoneTransforms = RagUtils.readTransformArray(capsule, tagEndBoneTransforms);
        this.prevBoneTransforms = RagUtils.readTransformArray(capsule, tagPrevBoneTransforms);
        this.startBoneTransforms = RagUtils.readTransformArray(capsule, tagStartBoneTransforms);
    }

    public void setDynamic(Vector3f vector3f, boolean z10, boolean z11, boolean z12) {
        C13702E.d(vector3f, "uniform acceleration");
        getControl().verifyReadyForDynamicMode("put " + name() + " into dynamic mode");
        super.setDynamic(vector3f);
        getControl().getJointLimits(boneName()).setup(getJoint(), z10, z11, z12);
        setUserControl(true);
    }

    public void setEndBoneTransforms(Transform[] transformArr) {
        C13702E.t(transformArr, "transforms");
        C13702E.H(transformArr.length == countManaged(), "one element for each managed bone");
        this.endBoneTransforms = transformArr;
    }

    public void setLocalTransform(int i10, Transform transform) {
        C13702E.i(i10, FirebaseAnalytics.d.f67690b0, 1, countManaged() - 1);
        Transform[] transformArr = this.prevBoneTransforms;
        if (transformArr != null) {
            transformArr[i10].set(transform);
        }
    }

    @Override
    public void setRagdollMode() {
        getControl().verifyReadyForDynamicMode("put " + name() + " into ragdoll mode");
        setDynamic(getControl().gravity(null), false, false, false);
        super.setRagdollMode();
    }

    @Override
    public void update(float f10) {
        int countManaged = countManaged();
        if (this.prevBoneTransforms == null) {
            this.prevBoneTransforms = new Transform[countManaged];
            for (int i10 = 0; i10 < countManaged; i10++) {
                this.prevBoneTransforms[i10] = copyManagedTransform(i10, null);
            }
        }
        super.update(f10);
        for (int i11 = 0; i11 < countManaged; i11++) {
            copyManagedTransform(i11, this.prevBoneTransforms[i11]);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.managedArmatureJoints, tagManagedArmatureJoints, (Savable[]) null);
        capsule.write(this.managedBones, tagManagedBones, (Savable[]) null);
        capsule.write(this.submode, tagSubmode, KinematicSubmode.Animated);
        capsule.write(this.endBoneTransforms, tagEndBoneTransforms, (Savable[]) null);
        capsule.write(this.prevBoneTransforms, tagPrevBoneTransforms, new Transform[0]);
        capsule.write(this.startBoneTransforms, tagStartBoneTransforms, new Transform[0]);
    }

    public BoneLink(DacLinks dacLinks, Bone bone, CollisionShape collisionShape, LinkConfig linkConfig, Vector3f vector3f) {
        super(dacLinks, bone, collisionShape, linkConfig, vector3f);
        this.managedBones = null;
        this.managedArmatureJoints = null;
        this.submode = KinematicSubmode.Animated;
        this.tmpMatrix = new Matrix3f();
        this.endBoneTransforms = null;
        this.prevBoneTransforms = null;
        this.startBoneTransforms = null;
    }

    public void setDynamic(Vector3f vector3f, Quaternion quaternion) {
        RotationOrder rotationOrder;
        C13702E.d(vector3f, "uniform acceleration");
        getControl().verifyReadyForDynamicMode("put " + name() + " into dynamic mode");
        super.setDynamic(vector3f);
        PhysicsJoint joint = getJoint();
        if (joint instanceof SixDofJoint) {
            rotationOrder = RotationOrder.XYZ;
        } else {
            rotationOrder = ((New6Dof) joint).getRotationOrder();
        }
        quaternion.toRotationMatrix(this.tmpMatrix);
        new RangeOfMotion(rotationOrder.matrixToEuler(this.tmpMatrix, null)).setup(joint, false, false, false);
        setUserControl(true);
    }

    public BoneLink(DacLinks dacLinks, Joint joint, CollisionShape collisionShape, LinkConfig linkConfig, Vector3f vector3f) {
        super(dacLinks, joint, collisionShape, linkConfig, vector3f);
        this.managedBones = null;
        this.managedArmatureJoints = null;
        this.submode = KinematicSubmode.Animated;
        this.tmpMatrix = new Matrix3f();
        this.endBoneTransforms = null;
        this.prevBoneTransforms = null;
        this.startBoneTransforms = null;
    }

    @Override
    public void setDynamic(Vector3f vector3f) {
        C13702E.d(vector3f, "uniform acceleration");
        getControl().verifyReadyForDynamicMode("put " + name() + " into dynamic mode");
        super.setDynamic(vector3f);
        setUserControl(true);
    }
}
