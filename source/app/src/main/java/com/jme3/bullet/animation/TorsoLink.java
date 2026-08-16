package com.jme3.bullet.animation;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.anim.Joint;
import com.jme3.animation.Bone;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import jf.g;
import p000if.C13702E;
import p000if.C13710f;
import p000if.C13722r;
import p000if.C13723s;

public class TorsoLink extends PhysicsLink {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(TorsoLink.class.getName());
    private static final String tagEndBoneTransforms = "endBoneTransforms";
    private static final String tagEndModelTransform = "endModelTransform";
    private static final String tagManagedArmatureJoints = "managedArmatureJoints";
    private static final String tagManagedBones = "managedBones";
    private static final String tagMeshToModel = "meshToModel";
    private static final String tagPrevBoneTransforms = "prevBoneTransforms";
    private static final String tagStartBoneTransforms = "startBoneTransforms";
    private static final String tagStartModelTransform = "startModelTransform";
    private static final String tagSubmode = "submode";
    private Transform[] endBoneTransforms;
    private Transform endModelTransform;
    private Joint[] managedArmatureJoints;
    private Bone[] managedBones;
    private Transform meshToModel;
    private Transform[] prevBoneTransforms;
    private Transform[] startBoneTransforms;
    private Transform startModelTransform;
    private KinematicSubmode submode;

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

    public TorsoLink() {
        this.managedBones = null;
        this.managedArmatureJoints = null;
        this.submode = KinematicSubmode.Animated;
        this.endModelTransform = null;
        this.meshToModel = null;
        this.startModelTransform = new Transform();
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
            Bone parent = getBone().getParent();
            if (parent != null) {
                RagUtils.meshToLocal(parent, transform);
            }
        } else {
            Joint parent2 = getArmatureJoint().getParent();
            if (parent2 != null) {
                RagUtils.meshToLocal(parent2, transform);
            }
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

    public void blendToKinematicMode(KinematicSubmode kinematicSubmode, float f10, Transform transform) {
        C13702E.t(kinematicSubmode, tagSubmode);
        C13702E.p(f10, "blend interval");
        blendToKinematicMode(f10);
        this.submode = kinematicSubmode;
        this.endModelTransform = transform;
        if (transform != null) {
            this.startModelTransform.set(getControl().getSpatial().getLocalTransform());
        }
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
        this.endModelTransform = (Transform) cloner.clone(this.endModelTransform);
        this.meshToModel = (Transform) cloner.clone(this.meshToModel);
        this.endBoneTransforms = (Transform[]) cloner.clone(this.endBoneTransforms);
        this.prevBoneTransforms = (Transform[]) cloner.clone(this.prevBoneTransforms);
        this.startBoneTransforms = (Transform[]) cloner.clone(this.startBoneTransforms);
        this.startModelTransform = (Transform) cloner.clone(this.startModelTransform);
    }

    public final int countManaged() {
        Bone[] boneArr = this.managedBones;
        return boneArr != null ? boneArr.length : this.managedArmatureJoints.length;
    }

    @Override
    public void dynamicUpdate() {
        Spatial spatial = getControl().getSpatial();
        Node parent = spatial.getParent();
        Transform transform = parent == null ? new Transform() : C13723s.W(parent, null).invert();
        Transform i10 = f.i(this.meshToModel, getRigidBody().getTransform(null), null);
        f.i(i10, transform, i10);
        spatial.setLocalTransform(i10);
        int countManaged = countManaged();
        int i11 = 0;
        for (int i12 = 0; i12 < countManaged; i12++) {
            setManagedTransform(i12, this.prevBoneTransforms[i12]);
        }
        localBoneTransform(i10);
        if (this.managedBones != null) {
            C13722r.y(getBone(), i10);
            Bone[] boneArr = this.managedBones;
            int length = boneArr.length;
            while (i11 < length) {
                boneArr[i11].updateModelTransforms();
                i11++;
            }
            return;
        }
        getArmatureJoint().setLocalTransform(i10);
        Joint[] jointArr = this.managedArmatureJoints;
        int length2 = jointArr.length;
        while (i11 < length2) {
            jointArr[i11].updateModelTransforms();
            i11++;
        }
    }

    @Override
    public void freeze(boolean z10) {
        blendToKinematicMode(KinematicSubmode.Frozen, 0.0f, null);
    }

    @Override
    public void kinematicUpdate(float f10) {
        Transform transform = new Transform();
        if (this.endModelTransform != null) {
            Quaternion rotation = this.startModelTransform.getRotation();
            g.p(rotation);
            Quaternion rotation2 = this.endModelTransform.getRotation();
            if (rotation.dot(rotation2) < 0.0f) {
                rotation2.multLocal(-1.0f);
            }
            g.p(rotation2);
            f.L(kinematicWeight(), this.startModelTransform, this.endModelTransform, transform);
            getControl().getSpatial().setLocalTransform(transform);
        }
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
                Quaternion rotation3 = transform2.getRotation();
                g.p(rotation3);
                Quaternion rotation4 = transform.getRotation();
                if (rotation3.dot(rotation4) < 0.0f) {
                    rotation4.multLocal(-1.0f);
                }
                g.p(rotation4);
                f.L(kinematicWeight(), transform2, transform, transform);
            } else {
                this.endModelTransform = null;
            }
            setManagedTransform(i10, transform);
        }
        super.kinematicUpdate(f10);
    }

    @Override
    public String name() {
        return "Torso:";
    }

    public void postRebuild(TorsoLink torsoLink) {
        int countManaged = countManaged();
        postRebuildLink(torsoLink);
        if (torsoLink.isKinematic()) {
            this.submode = torsoLink.submode;
        } else {
            this.submode = KinematicSubmode.Frozen;
        }
        this.endModelTransform = (Transform) C13710f.c(torsoLink.endModelTransform);
        this.startModelTransform.set(torsoLink.startModelTransform);
        this.endBoneTransforms = (Transform[]) C13710f.c(torsoLink.endBoneTransforms);
        this.prevBoneTransforms = (Transform[]) C13710f.c(torsoLink.prevBoneTransforms);
        for (int i10 = 0; i10 < countManaged; i10++) {
            this.startBoneTransforms[i10].set(torsoLink.startBoneTransforms[i10]);
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
        this.endModelTransform = (Transform) capsule.readSavable(tagEndModelTransform, new Transform());
        this.meshToModel = (Transform) capsule.readSavable(tagMeshToModel, new Transform());
        this.startModelTransform = (Transform) capsule.readSavable(tagStartModelTransform, new Transform());
        this.endBoneTransforms = RagUtils.readTransformArray(capsule, tagEndBoneTransforms);
        this.prevBoneTransforms = RagUtils.readTransformArray(capsule, tagPrevBoneTransforms);
        this.startBoneTransforms = RagUtils.readTransformArray(capsule, tagStartBoneTransforms);
    }

    @Override
    public void setDynamic(Vector3f vector3f) {
        C13702E.d(vector3f, "uniform acceleration");
        getControl().verifyReadyForDynamicMode("put " + name() + " into dynamic mode");
        super.setDynamic(vector3f);
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
        setDynamic(getControl().gravity(null));
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
        capsule.write(this.endModelTransform, tagEndModelTransform, new Transform());
        capsule.write(this.meshToModel, tagMeshToModel, new Transform());
        capsule.write(this.startModelTransform, tagStartModelTransform, new Transform());
        capsule.write(this.endBoneTransforms, tagEndBoneTransforms, (Savable[]) null);
        capsule.write(this.prevBoneTransforms, tagPrevBoneTransforms, new Transform[0]);
        capsule.write(this.startBoneTransforms, tagStartBoneTransforms, new Transform[0]);
    }

    public TorsoLink(DacLinks dacLinks, Bone bone, CollisionShape collisionShape, LinkConfig linkConfig, Transform transform, Vector3f vector3f) {
        super(dacLinks, bone, collisionShape, linkConfig, vector3f);
        this.managedBones = null;
        this.managedArmatureJoints = null;
        this.submode = KinematicSubmode.Animated;
        this.endModelTransform = null;
        this.meshToModel = null;
        this.startModelTransform = new Transform();
        this.endBoneTransforms = null;
        this.prevBoneTransforms = null;
        this.startBoneTransforms = null;
        this.meshToModel = transform.m1289clone();
        this.managedBones = dacLinks.listManagedBones("");
        int countManaged = countManaged();
        this.startBoneTransforms = new Transform[countManaged];
        for (int i10 = 0; i10 < countManaged; i10++) {
            this.startBoneTransforms[i10] = new Transform();
        }
    }

    public TorsoLink(DacLinks dacLinks, Joint joint, CollisionShape collisionShape, LinkConfig linkConfig, Transform transform, Vector3f vector3f) {
        super(dacLinks, joint, collisionShape, linkConfig, vector3f);
        this.managedBones = null;
        this.managedArmatureJoints = null;
        this.submode = KinematicSubmode.Animated;
        this.endModelTransform = null;
        this.meshToModel = null;
        this.startModelTransform = new Transform();
        this.endBoneTransforms = null;
        this.prevBoneTransforms = null;
        this.startBoneTransforms = null;
        this.meshToModel = transform.m1289clone();
        Joint[] listManagedArmatureJoints = dacLinks.listManagedArmatureJoints("");
        this.managedArmatureJoints = listManagedArmatureJoints;
        int length = listManagedArmatureJoints.length;
        this.startBoneTransforms = new Transform[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.startBoneTransforms[i10] = new Transform();
        }
    }
}
