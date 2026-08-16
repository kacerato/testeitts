package com.jme3.animation;

import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;

@Deprecated
public class AnimationFactory {
    private static final float EULER_STEP = 2.3561945f;
    protected float duration;
    protected int fps;
    protected Rotation[] keyFramesRotation;
    protected Vector3f[] keyFramesScale;
    protected Vector3f[] keyFramesTranslation;
    protected String name;
    protected Quaternion[] rotations;
    protected Vector3f[] scales;
    protected float[] times;
    protected int totalFrames;
    protected float tpf;
    protected Vector3f[] translations;

    public enum Type {
        Translation,
        Rotation,
        Scale
    }

    public AnimationFactory(float f10, String str) {
        this(f10, str, 30);
    }

    private int getNextKeyFrame(int i10, Object[] objArr) {
        do {
            i10++;
            if (i10 >= this.totalFrames) {
                return -1;
            }
        } while (objArr[i10] == null);
        return i10;
    }

    private int getPreviousKeyFrame(int i10, Object[] objArr) {
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (objArr[i11] != null) {
                return i11;
            }
        }
        return -1;
    }

    private Rotation getRotationForFrame(int i10) {
        if (i10 >= 0 && i10 <= this.totalFrames) {
            Rotation rotation = this.keyFramesRotation[i10];
            if (rotation != null) {
                return rotation;
            }
            Rotation rotation2 = new Rotation();
            this.keyFramesRotation[i10] = rotation2;
            return rotation2;
        }
        throw new ArrayIndexOutOfBoundsException("keyFrameIndex must be between 0 and " + this.totalFrames + " (received " + i10 + ")");
    }

    private Vector3f getScaleForFrame(int i10) {
        if (i10 >= 0 && i10 <= this.totalFrames) {
            Vector3f vector3f = this.keyFramesScale[i10];
            if (vector3f != null) {
                return vector3f;
            }
            Vector3f vector3f2 = new Vector3f();
            this.keyFramesScale[i10] = vector3f2;
            return vector3f2;
        }
        throw new ArrayIndexOutOfBoundsException("keyFrameIndex must be between 0 and " + this.totalFrames + " (received " + i10 + ")");
    }

    private Vector3f getTranslationForFrame(int i10) {
        if (i10 >= 0 && i10 <= this.totalFrames) {
            Vector3f vector3f = this.keyFramesTranslation[i10];
            if (vector3f != null) {
                return vector3f;
            }
            Vector3f vector3f2 = new Vector3f();
            this.keyFramesTranslation[i10] = vector3f2;
            return vector3f2;
        }
        throw new ArrayIndexOutOfBoundsException("keyFrameIndex must be between 0 and " + this.totalFrames + " (received " + i10 + ")");
    }

    private void interpolate(Object[] objArr, Type type) {
        int i10;
        int i11 = 0;
        while (i11 < this.totalFrames) {
            int nextKeyFrame = getNextKeyFrame(i11, objArr);
            if (nextKeyFrame != -1) {
                int i12 = nextKeyFrame - i11;
                for (int i13 = i11; i13 <= nextKeyFrame; i13++) {
                    float f10 = (i13 - i11) / i12;
                    int ordinal = type.ordinal();
                    if (ordinal == 0) {
                        this.translations[i13] = FastMath.interpolateLinear(f10, (Vector3f) objArr[i11], (Vector3f) objArr[nextKeyFrame]);
                    } else if (ordinal == 1) {
                        this.rotations[i13] = new Quaternion().slerp(((Rotation) objArr[i11]).rotation, ((Rotation) objArr[nextKeyFrame]).rotation, f10);
                    } else if (ordinal == 2) {
                        this.scales[i13] = FastMath.interpolateLinear(f10, (Vector3f) objArr[i11], (Vector3f) objArr[nextKeyFrame]);
                    }
                }
                i11 = nextKeyFrame;
            } else {
                int i14 = i11;
                while (true) {
                    i10 = this.totalFrames;
                    if (i14 >= i10) {
                        break;
                    }
                    int ordinal2 = type.ordinal();
                    if (ordinal2 == 0) {
                        this.translations[i14] = ((Vector3f) objArr[i11]).m1292clone();
                    } else if (ordinal2 == 1) {
                        this.rotations[i14] = ((Rotation) objArr[i11]).rotation.m1285clone();
                    } else if (ordinal2 == 2) {
                        this.scales[i14] = ((Vector3f) objArr[i11]).m1292clone();
                    }
                    i14++;
                }
                i11 = i10;
            }
        }
    }

    private void interpolateTime() {
        for (int i10 = 0; i10 < this.totalFrames; i10++) {
            this.times[i10] = i10 * this.tpf;
        }
    }

    public void addKeyFrameRotation(int i10, Quaternion quaternion) {
        getRotationForFrame(i10).set(quaternion);
    }

    public void addKeyFrameRotationAngles(int i10, float f10, float f11, float f12) {
        getRotationForFrame(i10).set(f10, f11, f12);
        int previousKeyFrame = getPreviousKeyFrame(i10, this.keyFramesRotation);
        if (previousKeyFrame == -1) {
            return;
        }
        Rotation rotation = this.keyFramesRotation[previousKeyFrame];
        float max = Math.max(Math.max(Math.abs(f10 - rotation.eulerAngles.f81611x), Math.abs(f11 - rotation.eulerAngles.f81612y)), Math.abs(f12 - rotation.eulerAngles.f81613z));
        if (max < 3.1415927f) {
            return;
        }
        Vector3f vector3f = rotation.eulerAngles;
        float f13 = i10 - previousKeyFrame;
        float f14 = (f10 - vector3f.f81611x) / f13;
        float f15 = (f11 - vector3f.f81612y) / f13;
        float f16 = (f12 - vector3f.f81613z) / f13;
        int i11 = (int) ((f13 / max) * EULER_STEP);
        while (true) {
            previousKeyFrame += i11;
            if (previousKeyFrame >= i10) {
                return;
            }
            Rotation rotationForFrame = getRotationForFrame(previousKeyFrame);
            rotationForFrame.masterKeyFrame = i10;
            Vector3f vector3f2 = rotation.eulerAngles;
            float f17 = previousKeyFrame;
            rotationForFrame.set(vector3f2.f81611x + (f17 * f14), vector3f2.f81612y + (f17 * f15), vector3f2.f81613z + (f17 * f16));
        }
    }

    public void addKeyFrameScale(int i10, Vector3f vector3f) {
        getScaleForFrame(i10).set(vector3f);
    }

    public void addKeyFrameTransform(int i10, Transform transform) {
        addKeyFrameTranslation(i10, transform.getTranslation());
        addKeyFrameScale(i10, transform.getScale());
        addKeyFrameRotation(i10, transform.getRotation());
    }

    public void addKeyFrameTranslation(int i10, Vector3f vector3f) {
        getTranslationForFrame(i10).set(vector3f);
    }

    public void addTimeRotation(float f10, Quaternion quaternion) {
        addKeyFrameRotation((int) (f10 / this.tpf), quaternion);
    }

    public void addTimeRotationAngles(float f10, float f11, float f12, float f13) {
        addKeyFrameRotationAngles((int) (f10 / this.tpf), f11, f12, f13);
    }

    public void addTimeScale(float f10, Vector3f vector3f) {
        addKeyFrameScale((int) (f10 / this.tpf), vector3f);
    }

    public void addTimeTransform(float f10, Transform transform) {
        addKeyFrameTransform((int) (f10 / this.tpf), transform);
    }

    public void addTimeTranslation(float f10, Vector3f vector3f) {
        addKeyFrameTranslation((int) (f10 / this.tpf), vector3f);
    }

    public Animation buildAnimation() {
        interpolateTime();
        interpolate(this.keyFramesTranslation, Type.Translation);
        interpolate(this.keyFramesRotation, Type.Rotation);
        interpolate(this.keyFramesScale, Type.Scale);
        SpatialTrack spatialTrack = new SpatialTrack(this.times, this.translations, this.rotations, this.scales);
        Animation animation = new Animation(this.name, this.duration);
        animation.setTracks(new SpatialTrack[]{spatialTrack});
        return animation;
    }

    public AnimationFactory(float f10, String str, int i10) {
        this.name = str;
        this.duration = f10;
        this.fps = i10;
        float f11 = i10;
        int i11 = ((int) (f10 * f11)) + 1;
        this.totalFrames = i11;
        this.tpf = 1.0f / f11;
        this.times = new float[i11];
        this.translations = new Vector3f[i11];
        this.rotations = new Quaternion[i11];
        this.scales = new Vector3f[i11];
        Vector3f[] vector3fArr = new Vector3f[i11];
        this.keyFramesTranslation = vector3fArr;
        vector3fArr[0] = new Vector3f();
        Vector3f[] vector3fArr2 = new Vector3f[this.totalFrames];
        this.keyFramesScale = vector3fArr2;
        vector3fArr2[0] = new Vector3f(1.0f, 1.0f, 1.0f);
        Rotation[] rotationArr = new Rotation[this.totalFrames];
        this.keyFramesRotation = rotationArr;
        rotationArr[0] = new Rotation();
    }

    @Deprecated
    public class Rotation {
        Quaternion rotation = new Quaternion();
        Vector3f eulerAngles = new Vector3f();
        int masterKeyFrame = -1;

        public Rotation() {
            this.rotation.loadIdentity();
        }

        public void set(Quaternion quaternion) {
            this.rotation.set(quaternion);
            float[] fArr = new float[3];
            this.rotation.toAngles(fArr);
            this.eulerAngles.set(fArr[0], fArr[1], fArr[2]);
        }

        public void set(float f10, float f11, float f12) {
            this.rotation.fromAngles(new float[]{f10, f11, f12});
            this.eulerAngles.set(f10, f11, f12);
        }
    }
}
