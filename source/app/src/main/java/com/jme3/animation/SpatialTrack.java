package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

@Deprecated
public class SpatialTrack implements JmeCloneable, Track {
    static final boolean $assertionsDisabled = false;
    private CompactQuaternionArray rotations;
    private CompactVector3Array scales;
    private float[] times;
    private Spatial trackSpatial;
    private CompactVector3Array translations;

    public SpatialTrack() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.translations = (CompactVector3Array) cloner.clone(this.translations);
        this.rotations = (CompactQuaternionArray) cloner.clone(this.rotations);
        this.scales = (CompactVector3Array) cloner.clone(this.scales);
        this.trackSpatial = (Spatial) cloner.clone(this.trackSpatial);
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
        CompactQuaternionArray compactQuaternionArray = this.rotations;
        if (compactQuaternionArray == null) {
            return null;
        }
        return compactQuaternionArray.toObjectArray();
    }

    public Vector3f[] getScales() {
        CompactVector3Array compactVector3Array = this.scales;
        if (compactVector3Array == null) {
            return null;
        }
        return compactVector3Array.toObjectArray();
    }

    public float[] getTimes() {
        return this.times;
    }

    public Spatial getTrackSpatial() {
        return this.trackSpatial;
    }

    public Vector3f[] getTranslations() {
        CompactVector3Array compactVector3Array = this.translations;
        if (compactVector3Array == null) {
            return null;
        }
        return compactVector3Array.toObjectArray();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.translations = (CompactVector3Array) capsule.readSavable("translations", null);
        this.rotations = (CompactQuaternionArray) capsule.readSavable("rotations", null);
        this.times = capsule.readFloatArray("times", null);
        this.scales = (CompactVector3Array) capsule.readSavable("scales", null);
        this.trackSpatial = (Spatial) capsule.readSavable("trackSpatial", null);
    }

    public void setKeyframes(float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr, Vector3f[] vector3fArr2) {
        if (fArr.length == 0) {
            throw new RuntimeException("BoneTrack with no keyframes!");
        }
        this.times = fArr;
        if (vector3fArr != null) {
            CompactVector3Array compactVector3Array = new CompactVector3Array();
            this.translations = compactVector3Array;
            compactVector3Array.add(vector3fArr);
            this.translations.freeze();
        }
        if (quaternionArr != null) {
            CompactQuaternionArray compactQuaternionArray = new CompactQuaternionArray();
            this.rotations = compactQuaternionArray;
            compactQuaternionArray.add(quaternionArr);
            this.rotations.freeze();
        }
        if (vector3fArr2 != null) {
            CompactVector3Array compactVector3Array2 = new CompactVector3Array();
            this.scales = compactVector3Array2;
            compactVector3Array2.add(vector3fArr2);
            this.scales.freeze();
        }
    }

    @Override
    public void setTime(float f10, float f11, AnimControl animControl, AnimChannel animChannel, TempVars tempVars) {
        Spatial spatial = this.trackSpatial;
        if (spatial == null) {
            spatial = animControl.getSpatial();
        }
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
            CompactQuaternionArray compactQuaternionArray = this.rotations;
            if (compactQuaternionArray != null) {
                compactQuaternionArray.get(0, quaternion);
            }
            CompactVector3Array compactVector3Array = this.translations;
            if (compactVector3Array != null) {
                compactVector3Array.get(0, vector3f);
            }
            CompactVector3Array compactVector3Array2 = this.scales;
            if (compactVector3Array2 != null) {
                compactVector3Array2.get(0, vector3f2);
            }
        } else if (f10 >= fArr[length]) {
            CompactQuaternionArray compactQuaternionArray2 = this.rotations;
            if (compactQuaternionArray2 != null) {
                compactQuaternionArray2.get(length, quaternion);
            }
            CompactVector3Array compactVector3Array3 = this.translations;
            if (compactVector3Array3 != null) {
                compactVector3Array3.get(length, vector3f);
            }
            CompactVector3Array compactVector3Array4 = this.scales;
            if (compactVector3Array4 != null) {
                compactVector3Array4.get(length, vector3f2);
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
            CompactQuaternionArray compactQuaternionArray3 = this.rotations;
            if (compactQuaternionArray3 != null) {
                compactQuaternionArray3.get(i12, quaternion);
            }
            CompactVector3Array compactVector3Array5 = this.translations;
            if (compactVector3Array5 != null) {
                compactVector3Array5.get(i12, vector3f);
            }
            CompactVector3Array compactVector3Array6 = this.scales;
            if (compactVector3Array6 != null) {
                compactVector3Array6.get(i12, vector3f2);
            }
            CompactQuaternionArray compactQuaternionArray4 = this.rotations;
            if (compactQuaternionArray4 != null) {
                compactQuaternionArray4.get(i10, quaternion2);
            }
            CompactVector3Array compactVector3Array7 = this.translations;
            if (compactVector3Array7 != null) {
                compactVector3Array7.get(i10, vector3f3);
            }
            CompactVector3Array compactVector3Array8 = this.scales;
            if (compactVector3Array8 != null) {
                compactVector3Array8.get(i10, vector3f4);
            }
            quaternion.nlerp(quaternion2, f13);
            vector3f.interpolateLocal(vector3f3, f13);
            vector3f2.interpolateLocal(vector3f4, f13);
        }
        if (this.translations != null) {
            spatial.setLocalTranslation(vector3f);
        }
        if (this.rotations != null) {
            spatial.setLocalRotation(quaternion);
        }
        if (this.scales != null) {
            spatial.setLocalScale(vector3f2);
        }
    }

    public void setTrackSpatial(Spatial spatial) {
        this.trackSpatial = spatial;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.translations, "translations", (Savable) null);
        capsule.write(this.rotations, "rotations", (Savable) null);
        capsule.write(this.times, "times", (float[]) null);
        capsule.write(this.scales, "scales", (Savable) null);
        capsule.write(this.trackSpatial, "trackSpatial", (Savable) null);
    }

    public SpatialTrack(float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr, Vector3f[] vector3fArr2) {
        setKeyframes(fArr, vector3fArr, quaternionArr, vector3fArr2);
    }

    @Override
    public SpatialTrack jmeClone() {
        try {
            return (SpatialTrack) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException("Can't clone track", e10);
        }
    }

    @Override
    public SpatialTrack m1261clone() {
        Cloner cloner = new Cloner();
        Spatial spatial = this.trackSpatial;
        cloner.setClonedValue(spatial, spatial);
        return (SpatialTrack) cloner.clone(this);
    }
}
