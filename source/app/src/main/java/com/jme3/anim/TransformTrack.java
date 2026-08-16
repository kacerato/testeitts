package com.jme3.anim;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.jme3.anim.interpolator.FrameInterpolator;
import com.jme3.anim.util.HasLocalTransform;
import com.jme3.animation.CompactQuaternionArray;
import com.jme3.animation.CompactVector3Array;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class TransformTrack implements AnimTrack<Transform> {
    static final boolean $assertionsDisabled = false;
    private FrameInterpolator interpolator = null;
    private double length;
    private CompactQuaternionArray rotations;
    private CompactVector3Array scales;
    private HasLocalTransform target;
    private float[] times;
    private CompactVector3Array translations;

    public TransformTrack() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.target = (HasLocalTransform) cloner.clone(this.target);
    }

    public FrameInterpolator getFrameInterpolator() {
        return this.interpolator;
    }

    @Override
    public double getLength() {
        return this.length;
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

    public HasLocalTransform getTarget() {
        return this.target;
    }

    public float[] getTimes() {
        return this.times;
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
        this.target = (HasLocalTransform) capsule.readSavable(TypedValues.AttributesType.S_TARGET, null);
        setTimes(this.times);
    }

    public void setFrameInterpolator(FrameInterpolator frameInterpolator) {
        this.interpolator = frameInterpolator;
    }

    public void setKeyframes(float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr, Vector3f[] vector3fArr2) {
        if (fArr != null) {
            setTimes(fArr);
        }
        if (vector3fArr != null) {
            setKeyframesTranslation(vector3fArr);
        }
        if (quaternionArr != null) {
            setKeyframesRotation(quaternionArr);
        }
        if (vector3fArr2 != null) {
            setKeyframesScale(vector3fArr2);
        }
    }

    public void setKeyframesRotation(Quaternion[] quaternionArr) {
        if (this.times == null) {
            throw new IllegalStateException("TransformTrack lacks keyframe times.  Please invoke setTimes() first.");
        }
        if (quaternionArr == null || quaternionArr.length == 0) {
            throw new IllegalArgumentException("No rotations were provided.");
        }
        CompactQuaternionArray compactQuaternionArray = new CompactQuaternionArray();
        this.rotations = compactQuaternionArray;
        compactQuaternionArray.add(quaternionArr);
        this.rotations.freeze();
    }

    public void setKeyframesScale(Vector3f[] vector3fArr) {
        if (this.times == null) {
            throw new IllegalStateException("TransformTrack lacks keyframe times.  Please invoke setTimes() first.");
        }
        if (vector3fArr == null || vector3fArr.length == 0) {
            throw new IllegalArgumentException("No scale vectors were provided.");
        }
        CompactVector3Array compactVector3Array = new CompactVector3Array();
        this.scales = compactVector3Array;
        compactVector3Array.add(vector3fArr);
        this.scales.freeze();
    }

    public void setKeyframesTranslation(Vector3f[] vector3fArr) {
        if (this.times == null) {
            throw new IllegalStateException("TransformTrack lacks keyframe times.  Please invoke setTimes() first.");
        }
        if (vector3fArr == null || vector3fArr.length == 0) {
            throw new IllegalArgumentException("No translations were provided.");
        }
        CompactVector3Array compactVector3Array = new CompactVector3Array();
        this.translations = compactVector3Array;
        compactVector3Array.add(vector3fArr);
        this.translations.freeze();
    }

    public void setTarget(HasLocalTransform hasLocalTransform) {
        this.target = hasLocalTransform;
    }

    public void setTimes(float[] fArr) {
        if (fArr == null || fArr.length == 0) {
            throw new IllegalArgumentException("No keyframe times were provided.");
        }
        this.times = fArr;
        this.length = fArr[fArr.length - 1] - fArr[0];
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.translations, "translations", (Savable) null);
        capsule.write(this.rotations, "rotations", (Savable) null);
        capsule.write(this.times, "times", (float[]) null);
        capsule.write(this.scales, "scales", (Savable) null);
        capsule.write(this.target, TypedValues.AttributesType.S_TARGET, (Savable) null);
    }

    @Override
    public void getDataAtTime(double d10, Transform transform) {
        float f10;
        int i10;
        float f11 = (float) d10;
        float[] fArr = this.times;
        int length = fArr.length;
        int i11 = length - 1;
        int i12 = 0;
        if (f11 >= 0.0f && i11 != 0) {
            float f12 = fArr[i11];
            if (f11 >= f12) {
                float f13 = f12 - fArr[length - 2];
                f10 = f13 > 0.0f ? (f11 - f12) / f13 : 0.0f;
                i10 = i11;
            } else {
                int i13 = 1;
                int i14 = 0;
                while (i12 < i11 && this.times[i12] < f11) {
                    i13 = i12 + 1;
                    i14 = i12;
                    i12 = i13;
                }
                float[] fArr2 = this.times;
                float f14 = fArr2[i14];
                f10 = (f11 - f14) / (fArr2[i13] - f14);
                i10 = i14;
            }
            float f15 = f10;
            FrameInterpolator frameInterpolator = this.interpolator;
            if (frameInterpolator == null) {
                frameInterpolator = FrameInterpolator.getThreadDefault();
            }
            Transform interpolate = frameInterpolator.interpolate(f15, i10, this.translations, this.rotations, this.scales, this.times);
            if (this.translations != null) {
                transform.setTranslation(interpolate.getTranslation());
            }
            if (this.rotations != null) {
                transform.setRotation(interpolate.getRotation());
            }
            if (this.scales != null) {
                transform.setScale(interpolate.getScale());
                return;
            }
            return;
        }
        CompactVector3Array compactVector3Array = this.translations;
        if (compactVector3Array != null) {
            compactVector3Array.get(0, transform.getTranslation());
        }
        CompactQuaternionArray compactQuaternionArray = this.rotations;
        if (compactQuaternionArray != null) {
            compactQuaternionArray.get(0, transform.getRotation());
        }
        CompactVector3Array compactVector3Array2 = this.scales;
        if (compactVector3Array2 != null) {
            compactVector3Array2.get(0, transform.getScale());
        }
    }

    @Override
    public TransformTrack jmeClone() {
        try {
            return (TransformTrack) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public TransformTrack(HasLocalTransform hasLocalTransform, float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr, Vector3f[] vector3fArr2) {
        this.target = hasLocalTransform;
        setKeyframes(fArr, vector3fArr, quaternionArr, vector3fArr2);
    }
}
