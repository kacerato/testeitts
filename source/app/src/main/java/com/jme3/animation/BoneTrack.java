package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.BitSet;

@Deprecated
public final class BoneTrack implements JmeCloneable, Track {
    static final boolean $assertionsDisabled = false;
    private CompactQuaternionArray rotations;
    private CompactVector3Array scales;
    private int targetBoneIndex;
    private float[] times;
    private CompactVector3Array translations;

    public BoneTrack() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.translations = (CompactVector3Array) cloner.clone(this.translations);
        this.rotations = (CompactQuaternionArray) cloner.clone(this.rotations);
        this.scales = (CompactVector3Array) cloner.clone(this.scales);
        this.times = (float[]) cloner.clone(this.times);
    }

    @Override
    public float[] getKeyFrameTimes() {
        return this.times;
    }

    @Override
    public float getLength() {
        float[] fArr = this.times;
        if (fArr == null) {
            return 0.0f;
        }
        return fArr[fArr.length - 1] - fArr[0];
    }

    public Quaternion[] getRotations() {
        return this.rotations.toObjectArray();
    }

    public Vector3f[] getScales() {
        CompactVector3Array compactVector3Array = this.scales;
        if (compactVector3Array == null) {
            return null;
        }
        return compactVector3Array.toObjectArray();
    }

    public int getTargetBoneIndex() {
        return this.targetBoneIndex;
    }

    public float[] getTimes() {
        return this.times;
    }

    public Vector3f[] getTranslations() {
        return this.translations.toObjectArray();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        Savable[] readSavableArray;
        Savable[] readSavableArray2;
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.targetBoneIndex = capsule.readInt("boneIndex", 0);
        this.translations = (CompactVector3Array) capsule.readSavable("translations", null);
        this.rotations = (CompactQuaternionArray) capsule.readSavable("rotations", null);
        this.times = capsule.readFloatArray("times", null);
        this.scales = (CompactVector3Array) capsule.readSavable("scales", null);
        if (jmeImporter.getFormatVersion() == 0) {
            if (this.translations == null && (readSavableArray2 = capsule.readSavableArray("translations", null)) != null) {
                this.translations = new CompactVector3Array();
                Vector3f[] vector3fArr = new Vector3f[readSavableArray2.length];
                System.arraycopy(readSavableArray2, 0, vector3fArr, 0, readSavableArray2.length);
                this.translations.add(vector3fArr);
                this.translations.freeze();
            }
            if (this.rotations != null || (readSavableArray = capsule.readSavableArray("rotations", null)) == null) {
                return;
            }
            this.rotations = new CompactQuaternionArray();
            Quaternion[] quaternionArr = new Quaternion[readSavableArray.length];
            System.arraycopy(readSavableArray, 0, quaternionArr, 0, readSavableArray.length);
            this.rotations.add(quaternionArr);
            this.rotations.freeze();
        }
    }

    public void setKeyframes(float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr) {
        if (fArr.length != 0) {
            this.times = fArr;
            CompactVector3Array compactVector3Array = new CompactVector3Array();
            this.translations = compactVector3Array;
            compactVector3Array.add(vector3fArr);
            this.translations.freeze();
            CompactQuaternionArray compactQuaternionArray = new CompactQuaternionArray();
            this.rotations = compactQuaternionArray;
            compactQuaternionArray.add(quaternionArr);
            this.rotations.freeze();
            return;
        }
        throw new RuntimeException("BoneTrack with no keyframes!");
    }

    @Override
    public void setTime(float f10, float f11, AnimControl animControl, AnimChannel animChannel, TempVars tempVars) {
        BitSet affectedBones = animChannel.getAffectedBones();
        if (affectedBones == null || affectedBones.get(this.targetBoneIndex)) {
            Bone bone = animControl.getSkeleton().getBone(this.targetBoneIndex);
            Vector3f vector3f = tempVars.vect1;
            Vector3f vector3f2 = tempVars.vect2;
            Quaternion quaternion = tempVars.quat1;
            Vector3f vector3f3 = tempVars.vect3;
            Vector3f vector3f4 = tempVars.vect4;
            Quaternion quaternion2 = tempVars.quat2;
            float[] fArr = this.times;
            int i10 = 1;
            int length = fArr.length - 1;
            int i11 = 0;
            if (f10 < 0.0f || length == 0) {
                this.rotations.get(0, quaternion);
                this.translations.get(0, vector3f);
                CompactVector3Array compactVector3Array = this.scales;
                if (compactVector3Array != null) {
                    compactVector3Array.get(0, vector3f2);
                }
            } else if (f10 >= fArr[length]) {
                this.rotations.get(length, quaternion);
                this.translations.get(length, vector3f);
                CompactVector3Array compactVector3Array2 = this.scales;
                if (compactVector3Array2 != null) {
                    compactVector3Array2.get(length, vector3f2);
                }
            } else {
                int i12 = 0;
                while (i11 < length && this.times[i11] < f10) {
                    i10 = i11 + 1;
                    i12 = i11;
                    i11 = i10;
                }
                float[] fArr2 = this.times;
                float f12 = fArr2[i12];
                float f13 = (f10 - f12) / (fArr2[i10] - f12);
                this.rotations.get(i12, quaternion);
                this.translations.get(i12, vector3f);
                CompactVector3Array compactVector3Array3 = this.scales;
                if (compactVector3Array3 != null) {
                    compactVector3Array3.get(i12, vector3f2);
                }
                this.rotations.get(i10, quaternion2);
                this.translations.get(i10, vector3f3);
                CompactVector3Array compactVector3Array4 = this.scales;
                if (compactVector3Array4 != null) {
                    compactVector3Array4.get(i10, vector3f4);
                }
                quaternion.nlerp(quaternion2, f13);
                vector3f.interpolateLocal(vector3f3, f13);
                vector3f2.interpolateLocal(vector3f4, f13);
            }
            if (this.scales == null) {
                vector3f2 = null;
            }
            bone.blendAnimTransforms(vector3f, quaternion, vector3f2, f11);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.targetBoneIndex, "boneIndex", 0);
        capsule.write(this.translations, "translations", (Savable) null);
        capsule.write(this.rotations, "rotations", (Savable) null);
        capsule.write(this.times, "times", (float[]) null);
        capsule.write(this.scales, "scales", (Savable) null);
    }

    public BoneTrack(int i10, float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr) {
        this.targetBoneIndex = i10;
        setKeyframes(fArr, vector3fArr, quaternionArr);
    }

    @Override
    public BoneTrack jmeClone() {
        try {
            return (BoneTrack) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException("Can't clone track", e10);
        }
    }

    @Override
    public BoneTrack m1255clone() {
        return (BoneTrack) Cloner.deepClone(this);
    }

    public BoneTrack(int i10, float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr, Vector3f[] vector3fArr2) {
        this.targetBoneIndex = i10;
        setKeyframes(fArr, vector3fArr, quaternionArr, vector3fArr2);
    }

    public BoneTrack(int i10) {
        this.targetBoneIndex = i10;
    }

    public void setKeyframes(float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr, Vector3f[] vector3fArr2) {
        setKeyframes(fArr, vector3fArr, quaternionArr);
        if (vector3fArr2 != null) {
            CompactVector3Array compactVector3Array = new CompactVector3Array();
            this.scales = compactVector3Array;
            compactVector3Array.add(vector3fArr2);
            this.scales.freeze();
        }
    }

    public void setTime(float f10, float f11, AnimControl animControl, AnimChannel animChannel) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
