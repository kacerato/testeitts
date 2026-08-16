package com.jme3.anim.interpolator;

import com.jme3.animation.CompactArray;
import com.jme3.animation.CompactQuaternionArray;
import com.jme3.animation.CompactVector3Array;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import java.util.function.Supplier;

public class FrameInterpolator {

    @Deprecated
    public static final FrameInterpolator DEFAULT = new FrameInterpolator();
    private static final ThreadLocal<FrameInterpolator> THREAD_DEFAULT = ThreadLocal.withInitial(new Supplier() {
        @Override
        public final Object get() {
            FrameInterpolator lambda$static$0;
            lambda$static$0 = FrameInterpolator.lambda$static$0();
            return lambda$static$0;
        }
    });
    private AnimInterpolator<Quaternion> rotationInterpolator;
    private final TrackDataReader<Quaternion> rotationReader;
    private AnimInterpolator<Vector3f> scaleInterpolator;
    private final TrackDataReader<Vector3f> scaleReader;
    private AnimInterpolator<Float> timeInterpolator;
    private final TrackTimeReader timesReader;
    private final Transform transforms;
    private AnimInterpolator<Vector3f> translationInterpolator;
    private final TrackDataReader<Vector3f> translationReader;

    public static class TrackDataReader<T> {
        private CompactArray<T> data;

        public T getEntryClamp(int i10, T t10) {
            return this.data.get((int) FastMath.clamp(i10, 0.0f, this.data.getTotalObjectSize() - 1), t10);
        }

        public T getEntryMod(int i10, T t10) {
            CompactArray<T> compactArray = this.data;
            return compactArray.get(FrameInterpolator.mod(i10, compactArray.getTotalObjectSize()), t10);
        }

        public T getEntryModSkip(int i10, T t10) {
            int totalObjectSize = this.data.getTotalObjectSize();
            if (i10 == -1) {
                i10--;
            } else if (i10 >= totalObjectSize) {
                i10++;
            }
            return this.data.get(FrameInterpolator.mod(i10, totalObjectSize), t10);
        }

        public void setData(CompactArray<T> compactArray) {
            this.data = compactArray;
        }
    }

    public static class TrackTimeReader {
        private float[] data;

        public float getEntry(int i10) {
            float[] fArr = this.data;
            return fArr[FrameInterpolator.mod(i10, fArr.length)];
        }

        public int getLength() {
            return this.data.length;
        }

        public void setData(float[] fArr) {
            this.data = fArr;
        }
    }

    public FrameInterpolator() {
        AnimInterpolator<Vector3f> animInterpolator = AnimInterpolators.LinearVec3f;
        this.translationInterpolator = animInterpolator;
        this.rotationInterpolator = AnimInterpolators.NLerp;
        this.scaleInterpolator = animInterpolator;
        this.translationReader = new TrackDataReader<>();
        this.rotationReader = new TrackDataReader<>();
        this.scaleReader = new TrackDataReader<>();
        this.timesReader = new TrackTimeReader();
        this.transforms = new Transform();
    }

    public static FrameInterpolator getThreadDefault() {
        return THREAD_DEFAULT.get();
    }

    public static FrameInterpolator lambda$static$0() {
        return new FrameInterpolator();
    }

    public static int mod(int i10, int i11) {
        return ((i10 % i11) + i11) % i11;
    }

    public Transform interpolate(float f10, int i10, CompactVector3Array compactVector3Array, CompactQuaternionArray compactQuaternionArray, CompactVector3Array compactVector3Array2, float[] fArr) {
        this.timesReader.setData(fArr);
        AnimInterpolator<Float> animInterpolator = this.timeInterpolator;
        if (animInterpolator != null) {
            f10 = animInterpolator.interpolate(f10, i10, null, this.timesReader, null).floatValue();
        }
        if (compactVector3Array != null) {
            this.translationReader.setData(compactVector3Array);
            this.translationInterpolator.interpolate(f10, i10, this.translationReader, this.timesReader, this.transforms.getTranslation());
        }
        if (compactQuaternionArray != null) {
            this.rotationReader.setData(compactQuaternionArray);
            this.rotationInterpolator.interpolate(f10, i10, this.rotationReader, this.timesReader, this.transforms.getRotation());
        }
        if (compactVector3Array2 != null) {
            this.scaleReader.setData(compactVector3Array2);
            this.scaleInterpolator.interpolate(f10, i10, this.scaleReader, this.timesReader, this.transforms.getScale());
        }
        return this.transforms;
    }

    public void interpolateWeights(float f10, int i10, float[] fArr, int i11, float[] fArr2) {
        int i12 = i10 * i11;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + i13;
            int i15 = i14 + i11;
            if (i15 >= fArr.length) {
                i15 = i14;
            }
            fArr2[i13] = FastMath.interpolateLinear(f10, fArr[i14], fArr[i15]);
        }
    }

    public void setRotationInterpolator(AnimInterpolator<Quaternion> animInterpolator) {
        this.rotationInterpolator = animInterpolator;
    }

    public void setScaleInterpolator(AnimInterpolator<Vector3f> animInterpolator) {
        this.scaleInterpolator = animInterpolator;
    }

    public void setTimeInterpolator(AnimInterpolator<Float> animInterpolator) {
        this.timeInterpolator = animInterpolator;
    }

    public void setTranslationInterpolator(AnimInterpolator<Vector3f> animInterpolator) {
        this.translationInterpolator = animInterpolator;
    }
}
