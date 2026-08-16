package com.jme3.bullet.animation;

import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.bullet.control.AbstractPhysicsControl;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.h;
import p000if.C13702E;
import p000if.C13724t;

public abstract class DacConfiguration extends AbstractPhysicsControl {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(DacConfiguration.class.getName());
    private static final String tagAlConfigs = "alConfigs";
    private static final String tagAttachBoneNames = "attachBoneNames";
    private static final String tagAttachModels = "attachModels";
    private static final String tagBlConfigs = "blConfigs";
    private static final String tagDamping = "damping";
    private static final String tagEventDispatchImpulseThreshold = "eventDispatchImpulseThreshold";
    private static final String tagGravity = "gravity";
    private static final String tagIgnoredHops = "ignoredHops";
    private static final String tagLinkedBoneJoints = "linkedBoneJoints";
    private static final String tagLinkedBoneNames = "linkedBoneNames";
    private static final String tagMainBoneName = "mainBoneName";
    private static final String tagRelativeTolerance = "relativeTolerance";
    private static final String tagTorsoConfig = "torsoConfig";
    public static final String torsoName = "";
    private float damping = 0.6f;
    private float eventDispatchImpulseThreshold = 0.0f;
    private float relativeTolerance = 0.001f;
    private int ignoredHops = 1;
    private LinkConfig torsoConfig = new LinkConfig();
    private Map<String, LinkConfig> alConfigMap = new HashMap(5);
    private Map<String, LinkConfig> blConfigMap = new HashMap(50);
    private Map<String, RangeOfMotion> jointMap = new HashMap(50);
    private Map<String, Spatial> attachModelMap = new HashMap(5);
    private String mainBoneName = null;
    private Vector3f gravityVector = new Vector3f(0.0f, -9.8f, 0.0f);

    private void verifyNotAddedToSpatial(String str) {
        if (getSpatial() == null) {
            return;
        }
        throw new IllegalStateException("Cannot " + str + " while the Control is added to a Spatial.");
    }

    public void addUnlinkedDescendants(Bone bone, Collection<Bone> collection) {
        Iterator<Bone> it = bone.getChildren().iterator();
        while (it.hasNext()) {
            Bone next = it.next();
            if (!hasBoneLink(next.getName())) {
                collection.add(next);
                addUnlinkedDescendants(next, collection);
            }
        }
    }

    public boolean areWithinTolerance(Vector3f vector3f, Vector3f vector3f2) {
        return h.g(vector3f, vector3f2, this.relativeTolerance);
    }

    public void attach(String str, float f10, Spatial spatial) {
        C13702E.j(str, "bone name");
        C13702E.E(f10, "mass");
        RagUtils.validate(spatial);
        verifyNotAddedToSpatial("add an attachment");
        if (hasAttachmentLink(str)) {
            logger2.log(Level.WARNING, "Bone {0} already had an attachment.", C13724t.s(str));
        }
        this.attachModelMap.put(str, spatial);
        this.alConfigMap.put(str, new LinkConfig(f10));
    }

    public LinkConfig attachmentConfig(String str) {
        if (this.alConfigMap.containsKey(str)) {
            return this.alConfigMap.get(str);
        }
        throw new IllegalArgumentException("No attachment link for " + C13724t.s(str));
    }

    public float attachmentMass(String str) {
        return attachmentConfig(str).mass();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.alConfigMap = (Map) cloner.clone(this.alConfigMap);
        this.blConfigMap = (Map) cloner.clone(this.blConfigMap);
        this.jointMap = (Map) cloner.clone(this.jointMap);
        this.attachModelMap = new HashMap(5);
        for (Map.Entry<String, Spatial> entry : ((DacConfiguration) obj).attachModelMap.entrySet()) {
            this.attachModelMap.put(entry.getKey(), (Spatial) cloner.clone(entry.getValue()));
        }
        this.gravityVector = (Vector3f) cloner.clone(this.gravityVector);
    }

    public LinkConfig config(String str) {
        if ("".equals(str)) {
            return this.torsoConfig;
        }
        if (hasBoneLink(str)) {
            return this.blConfigMap.get(str);
        }
        throw new IllegalArgumentException("No bone/torso named " + C13724t.s(str));
    }

    public int countAttachments() {
        return this.alConfigMap.size();
    }

    public int countLinkedBones() {
        return this.blConfigMap.size();
    }

    public int countLinks() {
        return countLinkedBones() + countAttachments() + 1;
    }

    public float damping() {
        return this.damping;
    }

    public void detach(String str) {
        if (hasAttachmentLink(str)) {
            verifyNotAddedToSpatial("unlink an attachment");
            this.alConfigMap.remove(str);
            this.attachModelMap.remove(str);
        } else {
            throw new IllegalArgumentException("No attachment bone named " + C13724t.s(str));
        }
    }

    public float eventDispatchImpulseThreshold() {
        return this.eventDispatchImpulseThreshold;
    }

    public String findManager(Bone bone) {
        C13702E.t(bone, "start bone");
        do {
            String name = bone.getName();
            if (hasBoneLink(name)) {
                return name;
            }
            bone = bone.getParent();
        } while (bone != null);
        return "";
    }

    public Spatial getAttachmentModel(String str) {
        if (this.attachModelMap.containsKey(str)) {
            return this.attachModelMap.get(str);
        }
        throw new IllegalArgumentException("No attachment link for " + C13724t.s(str));
    }

    public RangeOfMotion getJointLimits(String str) {
        if (hasBoneLink(str)) {
            return this.jointMap.get(str);
        }
        throw new IllegalArgumentException("No linked bone named " + C13724t.s(str));
    }

    public Vector3f gravity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.gravityVector);
        return vector3f;
    }

    public boolean hasAttachmentLink(String str) {
        if (str == null) {
            return false;
        }
        return this.alConfigMap.containsKey(str);
    }

    public boolean hasBoneLink(String str) {
        if (str == null) {
            return false;
        }
        return this.blConfigMap.containsKey(str);
    }

    public int ignoredHops() {
        return this.ignoredHops;
    }

    public void link(String str, float f10, RangeOfMotion rangeOfMotion) {
        C13702E.j(str, "bone name");
        C13702E.E(f10, "mass");
        C13702E.t(rangeOfMotion, "range of motion");
        verifyNotAddedToSpatial("link a bone");
        if (hasBoneLink(str)) {
            logger2.log(Level.WARNING, "Bone {0} is already linked.", C13724t.s(str));
        }
        this.jointMap.put(str, rangeOfMotion);
        this.blConfigMap.put(str, new LinkConfig(f10));
    }

    public String[] listAttachmentBoneNames() {
        String[] strArr = new String[countAttachments()];
        this.alConfigMap.o().toArray(strArr);
        return strArr;
    }

    public String[] listLinkedBoneNames() {
        String[] strArr = new String[countLinkedBones()];
        this.blConfigMap.o().toArray(strArr);
        return strArr;
    }

    public String mainBoneName() {
        return this.mainBoneName;
    }

    public String[] managerMap(Armature armature) {
        int jointCount = armature.getJointCount();
        String[] strArr = new String[jointCount];
        for (int i10 = 0; i10 < jointCount; i10++) {
            strArr[i10] = findManager(armature.getJoint(i10));
        }
        return strArr;
    }

    public float mass(String str) {
        return config(str).mass();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.ignoredHops = capsule.readInt(tagIgnoredHops, 1);
        this.damping = capsule.readFloat(tagDamping, 0.6f);
        this.eventDispatchImpulseThreshold = capsule.readFloat(tagEventDispatchImpulseThreshold, 0.0f);
        this.jointMap.clear();
        this.blConfigMap.clear();
        String[] readStringArray = capsule.readStringArray(tagLinkedBoneNames, null);
        Savable[] readSavableArray = capsule.readSavableArray(tagLinkedBoneJoints, null);
        Savable[] readSavableArray2 = capsule.readSavableArray(tagBlConfigs, null);
        for (int i10 = 0; i10 < readStringArray.length; i10++) {
            String str = readStringArray[i10];
            this.jointMap.put(str, (RangeOfMotion) readSavableArray[i10]);
            this.blConfigMap.put(str, (LinkConfig) readSavableArray2[i10]);
        }
        this.mainBoneName = capsule.readString(tagMainBoneName, null);
        this.attachModelMap.clear();
        this.alConfigMap.clear();
        String[] readStringArray2 = capsule.readStringArray(tagAttachBoneNames, null);
        Savable[] readSavableArray3 = capsule.readSavableArray(tagAttachModels, null);
        Savable[] readSavableArray4 = capsule.readSavableArray(tagAlConfigs, null);
        for (int i11 = 0; i11 < readStringArray2.length; i11++) {
            String str2 = readStringArray2[i11];
            this.attachModelMap.put(str2, (Spatial) readSavableArray3[i11]);
            this.alConfigMap.put(str2, (LinkConfig) readSavableArray4[i11]);
        }
        this.torsoConfig = (LinkConfig) capsule.readSavable(tagTorsoConfig, null);
        this.gravityVector = (Vector3f) capsule.readSavable(tagGravity, null);
        this.relativeTolerance = capsule.readFloat(tagRelativeTolerance, 0.001f);
    }

    public float relativeTolerance() {
        return this.relativeTolerance;
    }

    @Override
    public void setApplyPhysicsLocal(boolean z10) {
        if (z10) {
            throw new UnsupportedOperationException("DynamicAnimControl does not support local physics.");
        }
    }

    public void setAttachmentConfig(String str, LinkConfig linkConfig) {
        C13702E.t(linkConfig, "configuration");
        if (this.alConfigMap.containsKey(str)) {
            this.alConfigMap.put(str, linkConfig);
            return;
        }
        throw new IllegalArgumentException("No attachment link for " + C13724t.s(str));
    }

    public void setAttachmentMass(String str, float f10) {
        C13702E.E(f10, "mass");
        if (this.alConfigMap.containsKey(str)) {
            this.alConfigMap.put(str, new LinkConfig(f10, this.alConfigMap.get(str)));
        } else {
            throw new IllegalArgumentException("No attachment link for " + C13724t.s(str));
        }
    }

    public void setConfig(String str, LinkConfig linkConfig) {
        C13702E.t(linkConfig, "configuration");
        if ("".equals(str)) {
            if (linkConfig.centerHeuristic() == CenterHeuristic.Joint) {
                throw new IllegalArgumentException("Cannot center torso on Joint.");
            }
            this.torsoConfig = linkConfig;
        } else {
            if (hasBoneLink(str)) {
                this.blConfigMap.put(str, linkConfig);
                return;
            }
            throw new IllegalArgumentException("No bone/torso named " + C13724t.s(str));
        }
    }

    public void setDamping(float f10) {
        C13702E.p(f10, "damping ratio");
        this.damping = f10;
    }

    public void setEventDispatchImpulseThreshold(float f10) {
        C13702E.p(f10, "threshold");
        this.eventDispatchImpulseThreshold = f10;
    }

    public void setGravity(Vector3f vector3f) {
        C13702E.d(vector3f, tagGravity);
        this.gravityVector.set(vector3f);
    }

    public void setIgnoredHops(int i10) {
        C13702E.q(i10, "number of hops");
        verifyNotAddedToSpatial("alter ignored hops");
        this.ignoredHops = i10;
    }

    public void setJointLimits(String str, RangeOfMotion rangeOfMotion) {
        C13702E.t(rangeOfMotion, "range of motion");
        if (hasBoneLink(str)) {
            this.jointMap.put(str, rangeOfMotion);
            return;
        }
        throw new IllegalArgumentException("No linked bone named " + C13724t.s(str));
    }

    public void setMainBoneName(String str) {
        this.mainBoneName = str;
    }

    public void setMass(String str, float f10) {
        C13702E.E(f10, "mass");
        if ("".equals(str)) {
            this.torsoConfig = new LinkConfig(f10, this.torsoConfig);
            return;
        }
        if (hasBoneLink(str)) {
            this.blConfigMap.put(str, new LinkConfig(f10, this.blConfigMap.get(str)));
        } else {
            throw new IllegalArgumentException("No bone/torso named " + C13724t.s(str));
        }
    }

    public void setRelativeTolerance(float f10) {
        C13702E.p(f10, "new tolerance");
        this.relativeTolerance = f10;
    }

    public float totalMass() {
        float mass = this.torsoConfig.mass();
        Iterator<LinkConfig> it = this.blConfigMap.values().iterator();
        while (it.hasNext()) {
            mass += it.next().mass();
        }
        Iterator<LinkConfig> it2 = this.alConfigMap.values().iterator();
        while (it2.hasNext()) {
            mass += it2.next().mass();
        }
        return mass;
    }

    public void unlinkBone(String str) {
        if (hasBoneLink(str)) {
            verifyNotAddedToSpatial("unlink a bone");
            this.jointMap.remove(str);
            this.blConfigMap.remove(str);
        } else {
            throw new IllegalArgumentException("No linked bone named " + C13724t.s(str));
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.ignoredHops, tagIgnoredHops, 1);
        capsule.write(this.damping, tagDamping, 0.6f);
        capsule.write(this.eventDispatchImpulseThreshold, tagEventDispatchImpulseThreshold, 0.0f);
        int countLinkedBones = countLinkedBones();
        String[] strArr = new String[countLinkedBones];
        RangeOfMotion[] rangeOfMotionArr = new RangeOfMotion[countLinkedBones];
        LinkConfig[] linkConfigArr = new LinkConfig[countLinkedBones];
        int i10 = 0;
        int i11 = 0;
        for (Map.Entry<String, LinkConfig> entry : this.blConfigMap.entrySet()) {
            strArr[i11] = entry.getKey();
            rangeOfMotionArr[i11] = this.jointMap.get(entry.getKey());
            linkConfigArr[i11] = entry.getValue();
            i11++;
        }
        capsule.write(strArr, tagLinkedBoneNames, (String[]) null);
        capsule.write(rangeOfMotionArr, tagLinkedBoneJoints, (Savable[]) null);
        capsule.write(linkConfigArr, tagBlConfigs, (Savable[]) null);
        capsule.write(this.mainBoneName, tagMainBoneName, (String) null);
        int countAttachments = countAttachments();
        String[] strArr2 = new String[countAttachments];
        Spatial[] spatialArr = new Spatial[countAttachments];
        LinkConfig[] linkConfigArr2 = new LinkConfig[countAttachments];
        for (Map.Entry<String, LinkConfig> entry2 : this.alConfigMap.entrySet()) {
            strArr2[i10] = entry2.getKey();
            spatialArr[i10] = this.attachModelMap.get(entry2.getKey());
            linkConfigArr2[i10] = entry2.getValue();
            i10++;
        }
        capsule.write(strArr2, tagAttachBoneNames, (String[]) null);
        capsule.write(spatialArr, tagAttachModels, (Savable[]) null);
        capsule.write(linkConfigArr2, tagAlConfigs, (Savable[]) null);
        capsule.write(this.torsoConfig, tagTorsoConfig, (Savable) null);
        capsule.write(this.gravityVector, tagGravity, (Savable) null);
        capsule.write(this.relativeTolerance, tagRelativeTolerance, 0.001f);
    }

    public String[] managerMap(Skeleton skeleton) {
        int boneCount = skeleton.getBoneCount();
        String[] strArr = new String[boneCount];
        for (int i10 = 0; i10 < boneCount; i10++) {
            strArr[i10] = findManager(skeleton.getBone(i10));
        }
        return strArr;
    }

    public void addUnlinkedDescendants(Joint joint, Collection<Joint> collection) {
        for (Joint joint2 : joint.getChildren()) {
            if (!hasBoneLink(joint2.getName())) {
                collection.add(joint2);
                addUnlinkedDescendants(joint2, collection);
            }
        }
    }

    public String findManager(Joint joint) {
        C13702E.t(joint, "start joint");
        do {
            String name = joint.getName();
            if (hasBoneLink(name)) {
                return name;
            }
            joint = joint.getParent();
        } while (joint != null);
        return "";
    }

    public void attach(String str, LinkConfig linkConfig, Spatial spatial) {
        C13702E.j(str, "bone name");
        C13702E.t(linkConfig, "configuration");
        if (linkConfig.centerHeuristic() != CenterHeuristic.Joint) {
            RagUtils.validate(spatial);
            verifyNotAddedToSpatial("add an attachment");
            if (hasAttachmentLink(str)) {
                logger2.log(Level.WARNING, "Bone {0} already had an attachment.", C13724t.s(str));
            }
            this.attachModelMap.put(str, spatial);
            this.alConfigMap.put(str, linkConfig);
            return;
        }
        throw new IllegalArgumentException("Cannot center attachment on Joint.");
    }

    public void link(String str, LinkConfig linkConfig, RangeOfMotion rangeOfMotion) {
        C13702E.j(str, "bone name");
        C13702E.t(linkConfig, "configuration");
        C13702E.t(rangeOfMotion, "range of motion");
        verifyNotAddedToSpatial("link a bone");
        if (hasBoneLink(str)) {
            logger2.log(Level.WARNING, "Bone {0} is already linked.", C13724t.s(str));
        }
        this.jointMap.put(str, rangeOfMotion);
        this.blConfigMap.put(str, linkConfig);
    }
}
