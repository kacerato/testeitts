package com.jme3.bullet.animation;

import com.jme3.anim.AnimComposer;
import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.SkinningControl;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.animation.SkeletonControl;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.PhysicsTickListener;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.f;
import jf.o;
import p000if.C13702E;
import p000if.C13710f;
import p000if.C13718n;
import p000if.C13720p;
import p000if.C13722r;
import p000if.C13723s;
import p000if.C13724t;

public class DacLinks extends DacConfiguration implements PhysicsTickListener {
    static final boolean $assertionsDisabled = false;
    private static final String tagArmature = "armature";
    private static final String tagAttachmentLinks = "attachmentLinks";
    private static final String tagBindTransforms = "bindTransforms";
    private static final String tagBoneLinkList = "boneLinkList";
    private static final String tagPreComposer = "preComposer";
    private static final String tagSkeleton = "skeleton";
    private static final String tagTorsoLink = "torsoLink";
    private static final String tagTransformer = "transformer";
    public static final Logger logger3 = Logger.getLogger(DacLinks.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final Transform transformIdentity = new Transform();
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);
    private Armature armature = null;
    private boolean isReady = false;
    private List<BoneLink> boneLinkList = null;
    private Map<String, AttachmentLink> attachmentLinks = new HashMap(8);
    private Map<String, BoneLink> boneLinks = new HashMap(32);
    private PreComposer preComposer = null;
    private Skeleton skeleton = null;
    private Spatial transformer = null;
    private TorsoLink torsoLink = null;
    private Transform[] bindTransforms = null;

    private void addJoints(PhysicsLink physicsLink) {
        Iterator<String> it = childNames(physicsLink).iterator();
        while (it.hasNext()) {
            BoneLink findBoneLink = findBoneLink(it.next());
            findBoneLink.addJoint(physicsLink);
            this.boneLinkList.add(findBoneLink);
            addJoints(findBoneLink);
        }
    }

    private void checkForArmatureScaling() {
        float f10 = 1.0f;
        float f11 = 1.0f;
        for (Transform transform : this.bindTransforms) {
            Vector3f scale = transform.getScale();
            f11 = f.B(f11, scale.f81611x, scale.f81612y, scale.f81613z);
            f10 = f.G(f10, scale.f81611x, scale.f81612y, scale.f81613z);
        }
        if (f10 < 0.99f || f11 > 1.01f) {
            logger3.warning("Armature scaling detected:  minScale=" + f10 + " maxScale=" + f11);
        }
    }

    private List<String> childNames(PhysicsLink physicsLink) {
        String boneName = physicsLink == this.torsoLink ? "" : physicsLink.boneName();
        ArrayList arrayList = new ArrayList(8);
        for (String str : listLinkedBoneNames()) {
            if (this.armature == null) {
                Bone parent = findBone(str).getParent();
                if (parent != null && findManager(parent).equals(boneName)) {
                    arrayList.add(str);
                }
            } else {
                Joint parent2 = findArmatureJoint(str).getParent();
                if (parent2 != null && findManager(parent2).equals(boneName)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    private void createAttachmentLink(String str, SkeletonControl skeletonControl, String[] strArr) {
        BoneLink boneLink;
        Spatial spatial = (Spatial) C13710f.c(getAttachmentModel(str));
        o x10 = C13720p.x(spatial, null);
        skeletonControl.getAttachmentsNode(str).attachChild(spatial);
        Bone bone = this.skeleton.getBone(str);
        String str2 = strArr[this.skeleton.getBoneIndex(bone)];
        if (str2.equals("")) {
            boneLink = this.torsoLink;
        } else {
            boneLink = this.boneLinks.get(str2);
        }
        PhysicsLink physicsLink = boneLink;
        LinkConfig attachmentConfig = attachmentConfig(str);
        Vector3f center = attachmentConfig.centerHeuristic().center(x10, null);
        this.attachmentLinks.put(str, new AttachmentLink(this, bone, physicsLink, spatial, attachmentConfig.createShape(transformIdentity, center, x10), attachmentConfig, center));
    }

    private void createBoneLink(String str, o oVar) {
        Transform modelTransform;
        Joint joint;
        Bone bone;
        Vector3f vector3f;
        if (oVar == null || oVar.m() == 0) {
            throw new IllegalArgumentException(String.format("No mesh vertices for linked bone %s.", C13724t.s(str)));
        }
        if (this.skeleton != null) {
            Bone findBone = findBone(str);
            modelTransform = C13722r.g(findBone, null);
            bone = findBone;
            joint = null;
        } else {
            Joint findArmatureJoint = findArmatureJoint(str);
            modelTransform = findArmatureJoint.getModelTransform();
            joint = findArmatureJoint;
            bone = null;
        }
        Transform invert = modelTransform.invert();
        LinkConfig config = config(str);
        CenterHeuristic centerHeuristic = config.centerHeuristic();
        if (centerHeuristic == CenterHeuristic.Joint) {
            vector3f = translateIdentity;
        } else {
            Vector3f center = centerHeuristic.center(oVar, null);
            center.subtractLocal(modelTransform.getTranslation());
            vector3f = center;
        }
        CollisionShape createShape = config.createShape(invert, vector3f, oVar);
        invert.getTranslation().zero();
        Vector3f S10 = f.S(invert, vector3f, null);
        this.boneLinks.put(str, this.skeleton != null ? new BoneLink(this, bone, createShape, config, S10) : new BoneLink(this, joint, createShape, config, S10));
    }

    private void createTorsoLink(o oVar, Mesh[] meshArr) {
        Joint joint;
        Transform modelTransform;
        Joint joint2;
        Bone bone;
        Bone bone2;
        if (oVar == null || oVar.m() == 0) {
            throw new IllegalArgumentException("No mesh vertices for the torso. Make sure the root bone is not linked.");
        }
        String mainBoneName = mainBoneName();
        Skeleton skeleton = this.skeleton;
        if (skeleton != null) {
            if (mainBoneName == null) {
                bone2 = RagUtils.findMainBone(skeleton, meshArr);
                super.setMainBoneName(bone2.getName());
            } else {
                bone2 = skeleton.getBone(mainBoneName);
                if (bone2 == null) {
                    throw new IllegalStateException("Bone not found: " + C13724t.s(mainBoneName));
                }
            }
            modelTransform = C13722r.g(bone2, null);
            bone = bone2;
            joint2 = null;
        } else {
            if (mainBoneName == null) {
                joint = RagUtils.findMainJoint(this.armature, meshArr);
                super.setMainBoneName(joint.getName());
            } else {
                joint = this.armature.getJoint(mainBoneName);
                if (joint == null) {
                    throw new IllegalStateException("Joint not found: " + C13724t.s(mainBoneName));
                }
            }
            modelTransform = joint.getModelTransform();
            joint2 = joint;
            bone = null;
        }
        Transform invert = modelTransform.invert();
        LinkConfig config = config("");
        Vector3f center = config.centerHeuristic().center(oVar, null);
        center.subtractLocal(modelTransform.getTranslation());
        CollisionShape createShape = config.createShape(invert, center, oVar);
        invert.getTranslation().zero();
        Vector3f S10 = f.S(invert, center, null);
        Spatial spatial = getSpatial();
        Transform invert2 = spatial instanceof Node ? RagUtils.relativeTransform(this.transformer, (Node) spatial, null).invert() : transformIdentity;
        if (this.skeleton != null) {
            this.torsoLink = new TorsoLink(this, bone, createShape, config, invert2, S10);
        } else {
            this.torsoLink = new TorsoLink(this, joint2, createShape, config, invert2, S10);
        }
    }

    private void ignoreCollisions(int i10) {
        PhysicsRigidBody[] listRigidBodies = listRigidBodies();
        for (PhysicsRigidBody physicsRigidBody : listRigidBodies) {
            physicsRigidBody.clearIgnoreList();
        }
        HashMap hashMap = new HashMap(listRigidBodies.length);
        for (PhysicsRigidBody physicsRigidBody2 : listRigidBodies) {
            hashMap.clear();
            hashMap.put(physicsRigidBody2, Integer.valueOf(i10));
            RagUtils.ignoreCollisions(physicsRigidBody2, physicsRigidBody2, i10, hashMap);
        }
    }

    private void sortControls(Control control) {
        Spatial spatial = getSpatial();
        if (C13718n.d(this, spatial) > C13718n.d(control, spatial)) {
            spatial.removeControl(control);
            spatial.addControl(control);
            C13718n.d(this, spatial);
            C13718n.d(control, spatial);
        }
    }

    private void validateArmature() {
        RagUtils.validate(this.armature);
        for (String str : listLinkedBoneNames()) {
            Joint findArmatureJoint = findArmatureJoint(str);
            if (findArmatureJoint == null) {
                throw new IllegalArgumentException(String.format("Linked bone %s not found in armature.", C13724t.s(str)));
            }
            if (findArmatureJoint.getParent() == null) {
                logger3.log(Level.WARNING, "Linked bone {0} is a root joint.", C13724t.s(str));
            }
        }
        for (String str2 : listAttachmentBoneNames()) {
            if (findArmatureJoint(str2) == null) {
                throw new IllegalArgumentException(String.format("Attachment joint %s not found in armature.", C13724t.s(str2)));
            }
        }
    }

    private void validateSkeleton() {
        RagUtils.validate(this.skeleton);
        for (String str : listLinkedBoneNames()) {
            Bone findBone = findBone(str);
            if (findBone == null) {
                throw new IllegalArgumentException(String.format("Linked bone %s not found in skeleton.", C13724t.s(str)));
            }
            if (findBone.getParent() == null) {
                logger3.log(Level.WARNING, "Linked bone {0} is a root bone.", C13724t.s(str));
            }
        }
        for (String str2 : listAttachmentBoneNames()) {
            if (findBone(str2) == null) {
                throw new IllegalArgumentException(String.format("Attachment bone %s not found in skeleton.", C13724t.s(str2)));
            }
        }
    }

    @Override
    public void addPhysics() {
        PhysicsSpace physicsSpace = getPhysicsSpace();
        Vector3f gravity = gravity(null);
        TorsoLink torsoLink = this.torsoLink;
        if (torsoLink != null) {
            PhysicsRigidBody rigidBody = torsoLink.getRigidBody();
            physicsSpace.addCollisionObject(rigidBody);
            rigidBody.setGravity(gravity);
        }
        for (BoneLink boneLink : this.boneLinkList) {
            PhysicsRigidBody rigidBody2 = boneLink.getRigidBody();
            physicsSpace.addCollisionObject(rigidBody2);
            rigidBody2.setGravity(gravity);
            physicsSpace.addJoint(boneLink.getJoint());
        }
        for (AttachmentLink attachmentLink : this.attachmentLinks.values()) {
            PhysicsRigidBody rigidBody3 = attachmentLink.getRigidBody();
            physicsSpace.addCollisionObject(rigidBody3);
            rigidBody3.setGravity(gravity);
            physicsSpace.addJoint(attachmentLink.getJoint());
        }
    }

    @Override
    public float attachmentMass(String str) {
        C13702E.t(str, "bone name");
        if (getSpatial() == null) {
            return super.attachmentMass(str);
        }
        if (this.attachmentLinks.containsKey(str)) {
            return this.attachmentLinks.get(str).getRigidBody().getMass();
        }
        throw new IllegalArgumentException("No attachment for " + C13724t.s(str));
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        DacLinks dacLinks = (DacLinks) obj;
        this.boneLinkList = (List) cloner.clone(this.boneLinkList);
        this.attachmentLinks = new HashMap(8);
        for (Map.Entry<String, AttachmentLink> entry : dacLinks.attachmentLinks.entrySet()) {
            this.attachmentLinks.put(entry.getKey(), (AttachmentLink) cloner.clone(entry.getValue()));
        }
        this.boneLinks = new HashMap(32);
        for (Map.Entry<String, BoneLink> entry2 : dacLinks.boneLinks.entrySet()) {
            this.boneLinks.put(entry2.getKey(), (BoneLink) cloner.clone(entry2.getValue()));
        }
        this.armature = (Armature) cloner.clone(this.armature);
        this.preComposer = (PreComposer) cloner.clone(this.preComposer);
        this.skeleton = (Skeleton) cloner.clone(this.skeleton);
        this.transformer = (Spatial) cloner.clone(this.transformer);
        this.bindTransforms = (Transform[]) cloner.clone(this.bindTransforms);
        this.torsoLink = (TorsoLink) cloner.clone(this.torsoLink);
    }

    public Transform copyBindTransform(int i10, Transform transform) {
        Transform transform2 = this.bindTransforms[i10];
        return transform == null ? transform2.m1289clone() : transform.set(transform2);
    }

    @Override
    public void createSpatialData(Spatial spatial) {
        boolean isHardwareSkinningPreferred;
        String[] managerMap;
        Transform[] transformArr;
        SkeletonControl skeletonControl;
        RagUtils.validate(spatial);
        int c10 = C13723s.c(spatial, DacLinks.class);
        if (c10 > 1) {
            logger3.log(Level.WARNING, "Added a DynamicAnimControl to a model that already contains {0}.", Integer.valueOf(c10 - 1));
        }
        SkinningControl skinningControl = (SkinningControl) spatial.getControl(SkinningControl.class);
        int i10 = 0;
        if (skinningControl == null) {
            skeletonControl = (SkeletonControl) spatial.getControl(SkeletonControl.class);
            if (skeletonControl == null) {
                throw new IllegalArgumentException("The controlled spatial must have a SkinningControl or a SkeletonControl. Make sure the Control is there and not on some other Spatial.");
            }
            sortControls(skeletonControl);
            isHardwareSkinningPreferred = skeletonControl.isHardwareSkinningPreferred();
            skeletonControl.setHardwareSkinningPreferred(false);
            this.skeleton = skeletonControl.getSkeleton();
            validateSkeleton();
            managerMap = managerMap(this.skeleton);
            int boneCount = this.skeleton.getBoneCount();
            C13722r.A(this.skeleton, true);
            transformArr = new Transform[boneCount];
            Vector3f vector3f = new Vector3f();
            for (int i11 = 0; i11 < boneCount; i11++) {
                Bone bone = this.skeleton.getBone(i11);
                transformArr[i11] = C13722r.f(bone, null);
                vector3f.set(bone.getLocalScale());
                vector3f.divideLocal(bone.getBindScale());
                bone.setUserTransforms(translateIdentity, rotateIdentity, vector3f);
            }
            C13722r.A(this.skeleton, false);
            this.skeleton.updateWorldVectors();
            this.bindTransforms = new Transform[boneCount];
            for (int i12 = 0; i12 < boneCount; i12++) {
                this.bindTransforms[i12] = C13722r.e(this.skeleton.getBone(i12), null);
            }
        } else {
            Armature armature = skinningControl.getArmature();
            this.armature = armature;
            int jointCount = armature.getJointCount();
            Transform[] transformArr2 = new Transform[jointCount];
            for (int i13 = 0; i13 < jointCount; i13++) {
                transformArr2[i13] = this.armature.getJoint(i13).getLocalTransform().m1289clone();
            }
            sortControls(skinningControl);
            isHardwareSkinningPreferred = skinningControl.isHardwareSkinningPreferred();
            skinningControl.setHardwareSkinningPreferred(false);
            validateArmature();
            managerMap = managerMap(this.armature);
            this.armature.applyBindPose();
            this.bindTransforms = new Transform[jointCount];
            for (int i14 = 0; i14 < jointCount; i14++) {
                this.bindTransforms[i14] = this.armature.getJoint(i14).getLocalTransform().m1289clone();
            }
            AnimComposer animComposer = (AnimComposer) spatial.getControl(AnimComposer.class);
            if (animComposer == null) {
                logger3.log(Level.WARNING, "Didn't find an AnimComposer.");
            } else {
                int d10 = C13718n.d(animComposer, spatial);
                PreComposer preComposer = new PreComposer(this);
                this.preComposer = preComposer;
                spatial.addControlAt(d10, preComposer);
            }
            transformArr = transformArr2;
            skeletonControl = null;
        }
        checkForArmatureScaling();
        List<Mesh> listDacMeshes = RagUtils.listDacMeshes(spatial, null);
        Mesh[] meshArr = new Mesh[listDacMeshes.size()];
        listDacMeshes.toArray(meshArr);
        Geometry j10 = C13723s.j(spatial);
        this.transformer = j10;
        if (j10 == null) {
            this.transformer = spatial;
        }
        Map<String, o> coordsMap = RagUtils.coordsMap(meshArr, managerMap);
        createTorsoLink(coordsMap.get(""), meshArr);
        for (String str : listLinkedBoneNames()) {
            createBoneLink(str, coordsMap.get(str));
        }
        this.boneLinkList = new ArrayList(countLinkedBones());
        addJoints(this.torsoLink);
        for (String str2 : listAttachmentBoneNames()) {
            if (skinningControl == null) {
                createAttachmentLink(str2, skeletonControl, managerMap);
            } else {
                createAttachmentLink(str2, skinningControl, managerMap);
            }
        }
        if (skinningControl == null) {
            skeletonControl.setHardwareSkinningPreferred(isHardwareSkinningPreferred);
            int boneCount2 = this.skeleton.getBoneCount();
            while (i10 < boneCount2) {
                C13722r.y(this.skeleton.getBone(i10), transformArr[i10]);
                i10++;
            }
            this.skeleton.updateWorldVectors();
        } else {
            skinningControl.setHardwareSkinningPreferred(isHardwareSkinningPreferred);
            int jointCount2 = this.armature.getJointCount();
            while (i10 < jointCount2) {
                this.armature.getJoint(i10).setLocalTransform(transformArr[i10]);
                i10++;
            }
            this.armature.update();
        }
        ignoreCollisions(ignoredHops());
        if (this.added) {
            addPhysics();
        }
        logger3.log(Level.FINE, "Created ragdoll.");
    }

    public Joint findArmatureJoint(String str) {
        verifyAddedToSpatial("access an armature joint");
        return this.armature.getJoint(str);
    }

    public AttachmentLink findAttachmentLink(String str) {
        C13702E.j(str, "bone name");
        return this.attachmentLinks.get(str);
    }

    public Bone findBone(String str) {
        verifyAddedToSpatial("access a bone");
        return this.skeleton.getBone(str);
    }

    public BoneLink findBoneLink(String str) {
        C13702E.j(str, "bone name");
        return this.boneLinks.get(str);
    }

    public PhysicsLink findLink(String str) {
        C13702E.j(str, "link name");
        return str.startsWith("Bone:") ? findBoneLink(C13724t.v(str, "Bone:")) : str.equals("Torso:") ? this.torsoLink : findAttachmentLink(C13724t.v(str, "Attachment:"));
    }

    public Armature getArmature() {
        return this.armature;
    }

    public List<BoneLink> getBoneLinks() {
        return this.boneLinkList;
    }

    public Skeleton getSkeleton() {
        return this.skeleton;
    }

    public TorsoLink getTorsoLink() {
        return this.torsoLink;
    }

    public Spatial getTransformer() {
        return this.transformer;
    }

    public boolean isReady() {
        return this.isReady;
    }

    public Collection<AttachmentLink> listAttachmentLinks() {
        return this.attachmentLinks.values();
    }

    public <T extends PhysicsLink> List<T> listLinks(Class<T> cls) {
        ArrayList arrayList = new ArrayList(countLinks());
        TorsoLink torsoLink = this.torsoLink;
        if (torsoLink != null && cls.isAssignableFrom(torsoLink.getClass())) {
            arrayList.add(this.torsoLink);
        }
        for (BoneLink boneLink : this.boneLinkList) {
            if (cls.isAssignableFrom(boneLink.getClass())) {
                arrayList.add(boneLink);
            }
        }
        for (AttachmentLink attachmentLink : this.attachmentLinks.values()) {
            if (cls.isAssignableFrom(attachmentLink.getClass())) {
                arrayList.add(attachmentLink);
            }
        }
        return arrayList;
    }

    public Joint[] listManagedArmatureJoints(String str) {
        ArrayList arrayList = new ArrayList(8);
        if ("".equals(str)) {
            for (Joint joint : this.armature.getRoots()) {
                arrayList.add(joint);
                addUnlinkedDescendants(joint, arrayList);
            }
        } else {
            BoneLink findBoneLink = findBoneLink(str);
            if (findBoneLink == null) {
                throw new IllegalArgumentException("No link named " + C13724t.s(str));
            }
            Joint armatureJoint = findBoneLink.getArmatureJoint();
            arrayList.add(armatureJoint);
            addUnlinkedDescendants(armatureJoint, arrayList);
        }
        Joint[] jointArr = new Joint[arrayList.size()];
        arrayList.toArray(jointArr);
        return jointArr;
    }

    public Bone[] listManagedBones(String str) {
        ArrayList arrayList = new ArrayList(8);
        if ("".equals(str)) {
            for (Bone bone : this.skeleton.getRoots()) {
                arrayList.add(bone);
                addUnlinkedDescendants(bone, arrayList);
            }
        } else {
            BoneLink findBoneLink = findBoneLink(str);
            if (findBoneLink == null) {
                throw new IllegalArgumentException("No link named " + C13724t.s(str));
            }
            Bone bone2 = findBoneLink.getBone();
            arrayList.add(bone2);
            addUnlinkedDescendants(bone2, arrayList);
        }
        Bone[] boneArr = new Bone[arrayList.size()];
        arrayList.toArray(boneArr);
        return boneArr;
    }

    public PhysicsRigidBody[] listRigidBodies() {
        verifyAddedToSpatial("enumerate rigid bodies");
        PhysicsRigidBody[] physicsRigidBodyArr = new PhysicsRigidBody[countLinks()];
        TorsoLink torsoLink = this.torsoLink;
        int i10 = 0;
        if (torsoLink != null) {
            physicsRigidBodyArr[0] = torsoLink.getRigidBody();
            i10 = 1;
        }
        Iterator<BoneLink> it = this.boneLinkList.iterator();
        while (it.hasNext()) {
            physicsRigidBodyArr[i10] = it.next().getRigidBody();
            i10++;
        }
        Iterator<AttachmentLink> it2 = this.attachmentLinks.values().iterator();
        while (it2.hasNext()) {
            physicsRigidBodyArr[i10] = it2.next().getRigidBody();
            i10++;
        }
        return physicsRigidBodyArr;
    }

    @Override
    public float mass(String str) {
        C13702E.t(str, "bone name");
        if (getSpatial() == null) {
            return super.mass(str);
        }
        if ("".equals(str)) {
            return this.torsoLink.getRigidBody().getMass();
        }
        if (this.boneLinks.containsKey(str)) {
            return this.boneLinks.get(str).getRigidBody().getMass();
        }
        throw new IllegalArgumentException("No bone/torso named " + C13724t.s(str));
    }

    public Transform meshTransform(Transform transform) {
        return C13723s.W(this.transformer, transform);
    }

    @Override
    public void physicsTick(PhysicsSpace physicsSpace, float f10) {
        C13702E.p(f10, "time step");
        this.torsoLink.postTick();
        Iterator<BoneLink> it = this.boneLinkList.iterator();
        while (it.hasNext()) {
            it.next().postTick();
        }
        Iterator<AttachmentLink> it2 = this.attachmentLinks.values().iterator();
        while (it2.hasNext()) {
            it2.next().postTick();
        }
        this.isReady = true;
    }

    public Transform physicsTransform(Bone bone, Vector3f vector3f, Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        transform.setTranslation(vector3f);
        transform.setRotation(rotateIdentity);
        transform.setScale(1.0f);
        f.i(transform, C13722r.g(bone, null), transform);
        f.i(transform, meshTransform(null), transform);
        return transform;
    }

    @Override
    public void prePhysicsTick(PhysicsSpace physicsSpace, float f10) {
        C13702E.p(f10, "time step");
        this.torsoLink.preTick(f10);
        Iterator<BoneLink> it = this.boneLinkList.iterator();
        while (it.hasNext()) {
            it.next().preTick(f10);
        }
        Iterator<AttachmentLink> it2 = this.attachmentLinks.values().iterator();
        while (it2.hasNext()) {
            it2.next().preTick(f10);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        ArrayList<BoneLink> readSavableArrayList = capsule.readSavableArrayList(tagBoneLinkList, null);
        this.boneLinkList = readSavableArrayList;
        if (readSavableArrayList != null) {
            for (BoneLink boneLink : readSavableArrayList) {
                this.boneLinks.put(boneLink.boneName(), boneLink);
            }
        }
        for (Savable savable : capsule.readSavableArray(tagAttachmentLinks, new AttachmentLink[0])) {
            AttachmentLink attachmentLink = (AttachmentLink) savable;
            this.attachmentLinks.put(attachmentLink.boneName(), attachmentLink);
        }
        this.armature = (Armature) capsule.readSavable("armature", null);
        this.preComposer = (PreComposer) capsule.readSavable(tagPreComposer, null);
        this.skeleton = (Skeleton) capsule.readSavable("skeleton", null);
        this.transformer = (Spatial) capsule.readSavable(tagTransformer, null);
        this.bindTransforms = RagUtils.readTransformArray(capsule, tagBindTransforms);
        this.torsoLink = (TorsoLink) capsule.readSavable(tagTorsoLink, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void rebuild() {
        verifyAddedToSpatial("rebuild the ragdoll");
        HashMap hashMap = new HashMap(this.attachmentLinks);
        HashMap hashMap2 = new HashMap(this.boneLinks);
        TorsoLink torsoLink = this.torsoLink;
        Spatial spatial = getSpatial();
        removeSpatialData(spatial);
        createSpatialData(spatial);
        for (Map.Entry<String, AttachmentLink> entry : this.attachmentLinks.entrySet()) {
            entry.getValue().postRebuild((AttachmentLink) hashMap.get(entry.getKey()));
        }
        for (Map.Entry<String, BoneLink> entry2 : this.boneLinks.entrySet()) {
            entry2.getValue().postRebuild((BoneLink) hashMap2.get(entry2.getKey()));
        }
        TorsoLink torsoLink2 = this.torsoLink;
        if (torsoLink2 != null) {
            torsoLink2.postRebuild(torsoLink);
        }
    }

    @Override
    public void removePhysics() {
        PhysicsSpace physicsSpace = getPhysicsSpace();
        TorsoLink torsoLink = this.torsoLink;
        if (torsoLink != null) {
            physicsSpace.removeCollisionObject(torsoLink.getRigidBody());
        }
        for (BoneLink boneLink : this.boneLinks.values()) {
            physicsSpace.removeCollisionObject(boneLink.getRigidBody());
            physicsSpace.removeJoint(boneLink.getJoint());
        }
        for (AttachmentLink attachmentLink : this.attachmentLinks.values()) {
            if (!attachmentLink.isReleased()) {
                physicsSpace.removeCollisionObject(attachmentLink.getRigidBody());
                physicsSpace.removeJoint(attachmentLink.getJoint());
            }
        }
        this.isReady = false;
    }

    @Override
    public void removeSpatialData(Spatial spatial) {
        Node node;
        if (this.added) {
            removePhysics();
        }
        for (AttachmentLink attachmentLink : this.attachmentLinks.values()) {
            Joint armatureJoint = attachmentLink.getArmatureJoint();
            if (armatureJoint == null) {
                Bone bone = attachmentLink.getBone();
                node = C13722r.o(bone);
                C13722r.d(bone);
            } else {
                Node n10 = C13722r.n(armatureJoint);
                C13722r.c(armatureJoint);
                node = n10;
            }
            node.removeFromParent();
        }
        this.attachmentLinks.clear();
        if (this.preComposer != null) {
            getSpatial().removeControl(this.preComposer);
            this.preComposer = null;
        }
        this.armature = null;
        Skeleton skeleton = this.skeleton;
        if (skeleton != null) {
            C13722r.A(skeleton, false);
            this.skeleton = null;
        }
        this.boneLinks.clear();
        this.boneLinkList = null;
        this.torsoLink = null;
        this.transformer = null;
    }

    @Override
    public void setAttachmentConfig(String str, LinkConfig linkConfig) {
        C13702E.t(linkConfig, "configuration");
        super.setAttachmentConfig(str, linkConfig);
        if (this.attachmentLinks.get(str) != null) {
            Spatial spatial = getSpatial();
            if (this.skeleton != null) {
                createAttachmentLink(str, (SkeletonControl) spatial.getControl(SkeletonControl.class), managerMap(this.skeleton));
            } else {
                createAttachmentLink(str, (SkinningControl) spatial.getControl(SkinningControl.class), managerMap(this.armature));
            }
        }
    }

    @Override
    public void setAttachmentMass(String str, float f10) {
        C13702E.E(f10, "mass");
        super.setAttachmentMass(str, f10);
        AttachmentLink attachmentLink = this.attachmentLinks.get(str);
        if (attachmentLink != null) {
            attachmentLink.getRigidBody().setMass(f10);
        }
    }

    @Override
    public void setDamping(float f10) {
        C13702E.p(f10, "damping ratio");
        super.setDamping(f10);
        if (getSpatial() != null) {
            for (PhysicsRigidBody physicsRigidBody : listRigidBodies()) {
                physicsRigidBody.setDamping(f10, f10);
            }
        }
    }

    @Override
    public void setGravity(Vector3f vector3f) {
        C13702E.d(vector3f, "gravity");
        super.setGravity(vector3f);
        if (getSpatial() != null) {
            for (PhysicsRigidBody physicsRigidBody : listRigidBodies()) {
                if (physicsRigidBody.isDynamic() && physicsRigidBody.isInWorld()) {
                    physicsRigidBody.setGravity(vector3f);
                }
            }
        }
    }

    @Override
    public void setJointLimits(String str, RangeOfMotion rangeOfMotion) {
        if (!hasBoneLink(str)) {
            throw new IllegalArgumentException("No linked bone named " + C13724t.s(str));
        }
        C13702E.t(rangeOfMotion, "range of motion");
        super.setJointLimits(str, rangeOfMotion);
        if (getSpatial() != null) {
            rangeOfMotion.setup(findBoneLink(str).getJoint(), false, false, false);
        }
    }

    @Override
    public void setMainBoneName(String str) {
        if (getSpatial() != null) {
            throw new IllegalStateException("Cannot change the main bone once the Control is added to a Spatial.");
        }
        super.setMainBoneName(str);
    }

    public void setMass(PhysicsLink physicsLink, float f10) {
        C13702E.t(physicsLink, "link");
        C13702E.E(f10, "mass");
        if (physicsLink instanceof BoneLink) {
            setMass(physicsLink.boneName(), f10);
        } else if (physicsLink instanceof TorsoLink) {
            setMass("", f10);
        } else {
            setAttachmentMass(physicsLink.boneName(), f10);
        }
    }

    @Override
    public void setPhysicsLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "vec");
        this.torsoLink.getRigidBody().setPhysicsLocation(vector3f);
    }

    @Override
    public void setPhysicsRotation(Quaternion quaternion) {
        C13702E.y(quaternion, "quat");
        this.torsoLink.getRigidBody().setPhysicsRotation(quaternion);
    }

    @Override
    public float totalMass() {
        if (getSpatial() == null) {
            return super.totalMass();
        }
        float mass = this.torsoLink.getRigidBody().getMass();
        Iterator<BoneLink> it = this.boneLinkList.iterator();
        while (it.hasNext()) {
            mass += it.next().getRigidBody().getMass();
        }
        Iterator<AttachmentLink> it2 = this.attachmentLinks.values().iterator();
        while (it2.hasNext()) {
            mass += it2.next().getRigidBody().getMass();
        }
        return mass;
    }

    @Override
    public void update(float f10) {
        verifyAddedToSpatial("update the control");
        if (isEnabled()) {
            PreComposer preComposer = this.preComposer;
            if (preComposer != null) {
                preComposer.saveArmature();
            }
            TorsoLink torsoLink = this.torsoLink;
            if (torsoLink != null) {
                torsoLink.update(f10);
            }
            Iterator<BoneLink> it = this.boneLinkList.iterator();
            while (it.hasNext()) {
                it.next().update(f10);
            }
            Iterator<AttachmentLink> it2 = this.attachmentLinks.values().iterator();
            while (it2.hasNext()) {
                it2.next().update(f10);
            }
        }
    }

    public void verifyAddedToSpatial(String str) {
        if (getSpatial() != null) {
            return;
        }
        throw new IllegalStateException("Cannot " + str + " unless the Control is added to a Spatial.");
    }

    public void verifyReadyForDynamicMode(String str) {
        verifyAddedToSpatial(str);
        if (!this.added) {
            throw new IllegalStateException("Cannot " + str + " unless the control is added to a PhysicsSpace.");
        }
        if (this.isReady) {
            return;
        }
        throw new IllegalStateException("Cannot " + str + " until the physics has been stepped.");
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        if (this.boneLinkList != null) {
            Savable[] savableArr = new Savable[countLinkedBones()];
            this.boneLinkList.toArray(savableArr);
            capsule.write(savableArr, tagBoneLinkList, (Savable[]) null);
        }
        AttachmentLink[] attachmentLinkArr = new AttachmentLink[countAttachments()];
        this.attachmentLinks.values().toArray(attachmentLinkArr);
        capsule.write(attachmentLinkArr, tagAttachmentLinks, new AttachmentLink[0]);
        capsule.write(this.armature, "armature", (Savable) null);
        capsule.write(this.preComposer, tagPreComposer, (Savable) null);
        capsule.write(this.skeleton, "skeleton", (Savable) null);
        capsule.write(this.transformer, tagTransformer, (Savable) null);
        capsule.write(this.bindTransforms, tagBindTransforms, (Savable[]) null);
        capsule.write(this.torsoLink, tagTorsoLink, (Savable) null);
    }

    public Transform physicsTransform(Joint joint, Vector3f vector3f, Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        transform.setTranslation(vector3f);
        transform.setRotation(rotateIdentity);
        transform.setScale(1.0f);
        f.i(transform, joint.getModelTransform(), transform);
        f.i(transform, meshTransform(null), transform);
        return transform;
    }

    @Override
    public void setMass(String str, float f10) {
        PhysicsRigidBody rigidBody;
        C13702E.E(f10, "mass");
        super.setMass(str, f10);
        if (getSpatial() != null) {
            if ("".equals(str)) {
                rigidBody = this.torsoLink.getRigidBody();
            } else {
                rigidBody = findBoneLink(str).getRigidBody();
            }
            rigidBody.setMass(f10);
        }
    }

    private void createAttachmentLink(String str, SkinningControl skinningControl, String[] strArr) {
        BoneLink boneLink;
        Spatial spatial = (Spatial) C13710f.c(getAttachmentModel(str));
        o x10 = C13720p.x(spatial, null);
        skinningControl.getAttachmentsNode(str).attachChild(spatial);
        Joint joint = this.armature.getJoint(str);
        String str2 = strArr[this.armature.getJointIndex(joint)];
        if (str2.equals("")) {
            boneLink = this.torsoLink;
        } else {
            boneLink = this.boneLinks.get(str2);
        }
        PhysicsLink physicsLink = boneLink;
        LinkConfig attachmentConfig = attachmentConfig(str);
        Vector3f center = attachmentConfig.centerHeuristic().center(x10, null);
        this.attachmentLinks.put(str, new AttachmentLink(this, joint, physicsLink, spatial, attachmentConfig.createShape(transformIdentity, center, x10), attachmentConfig, center));
    }
}
