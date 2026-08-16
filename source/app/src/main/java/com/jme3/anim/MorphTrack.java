package com.jme3.anim;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.jme3.anim.interpolator.FrameInterpolator;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.scene.Geometry;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class MorphTrack implements AnimTrack<float[]> {
    private FrameInterpolator interpolator = null;
    private double length;
    private int nbMorphTargets;
    private Geometry target;
    private float[] times;
    private float[] weights;

    public MorphTrack() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.target = (Geometry) cloner.clone(this.target);
    }

    public FrameInterpolator getFrameInterpolator() {
        return this.interpolator;
    }

    @Override
    public double getLength() {
        return this.length;
    }

    public int getNbMorphTargets() {
        return this.nbMorphTargets;
    }

    public Geometry getTarget() {
        return this.target;
    }

    public float[] getTimes() {
        return this.times;
    }

    public float[] getWeights() {
        return this.weights;
    }

    @Override
    public Object jmeClone() {
        try {
            return (MorphTrack) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.weights = capsule.readFloatArray("weights", null);
        this.times = capsule.readFloatArray("times", null);
        this.target = (Geometry) capsule.readSavable(TypedValues.AttributesType.S_TARGET, null);
        this.nbMorphTargets = capsule.readInt("nbMorphTargets", 0);
        setTimes(this.times);
    }

    public void setFrameInterpolator(FrameInterpolator frameInterpolator) {
        this.interpolator = frameInterpolator;
    }

    public void setKeyframes(float[] fArr, float[] fArr2) {
        if (fArr != null) {
            setTimes(fArr);
        }
        if (fArr2 != null) {
            setKeyframesWeight(fArr2);
        }
    }

    public void setKeyframesWeight(float[] fArr) {
        float[] fArr2 = this.times;
        if (fArr2 == null) {
            throw new IllegalStateException("MorphTrack doesn't have any time for key frames, please call setTimes first");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("MorphTrack with no weight keyframes!");
        }
        if (fArr2.length * this.nbMorphTargets != fArr.length) {
            throw new IllegalArgumentException("weights.length must equal nbMorphTargets * times.length");
        }
        this.weights = fArr;
    }

    public void setNbMorphTargets(float[] fArr, int i10) {
        if (this.times.length * i10 != fArr.length) {
            throw new IllegalArgumentException("weights.length must equal nbMorphTargets * times.length");
        }
        this.nbMorphTargets = i10;
        setKeyframesWeight(fArr);
    }

    public void setTarget(Geometry geometry) {
        this.target = geometry;
    }

    public void setTimes(float[] fArr) {
        if (fArr.length == 0) {
            throw new IllegalArgumentException("TransformTrack with no keyframes!");
        }
        this.times = fArr;
        this.length = fArr[fArr.length - 1] - fArr[0];
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.weights, "weights", (float[]) null);
        capsule.write(this.times, "times", (float[]) null);
        capsule.write(this.target, TypedValues.AttributesType.S_TARGET, (Savable) null);
        capsule.write(this.nbMorphTargets, "nbMorphTargets", 0);
    }

    @Override
    public void getDataAtTime(double d10, float[] fArr) {
        float f10;
        int i10;
        float f11 = (float) d10;
        float[] fArr2 = this.times;
        int length = fArr2.length;
        int i11 = length - 1;
        int i12 = 0;
        if (f11 >= 0.0f && i11 != 0) {
            float f12 = fArr2[i11];
            if (f11 >= f12) {
                float f13 = fArr2[length - 2];
                f10 = (((f11 - f12) + f13) - f13) / (f12 - f13);
                i10 = i11;
            } else {
                int i13 = 1;
                int i14 = 0;
                while (i12 < i11 && this.times[i12] < f11) {
                    i13 = i12 + 1;
                    i14 = i12;
                    i12 = i13;
                }
                float[] fArr3 = this.times;
                float f14 = fArr3[i14];
                f10 = (f11 - f14) / (fArr3[i13] - f14);
                i10 = i14;
            }
            FrameInterpolator frameInterpolator = this.interpolator;
            if (frameInterpolator == null) {
                frameInterpolator = FrameInterpolator.getThreadDefault();
            }
            frameInterpolator.interpolateWeights(f10, i10, this.weights, this.nbMorphTargets, fArr);
            return;
        }
        float[] fArr4 = this.weights;
        if (fArr4 != null) {
            System.arraycopy(fArr4, 0, fArr, 0, this.nbMorphTargets);
        }
    }

    public MorphTrack(Geometry geometry, float[] fArr, float[] fArr2, int i10) {
        this.target = geometry;
        this.nbMorphTargets = i10;
        setKeyframes(fArr, fArr2);
    }
}
