package com.jme3.anim;

import com.jme3.anim.util.HasLocalTransform;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

public class AnimFactory {
    static final boolean $assertionsDisabled = false;
    private final float duration;
    private final float fps;
    private final String name;
    private final Map<Float, Quaternion> rotations;
    private final Map<Float, Vector3f> scales;
    private final Map<Float, Vector3f> translations;

    public AnimFactory(float f10, String str, float f11) {
        TreeMap treeMap = new TreeMap();
        this.rotations = treeMap;
        TreeMap treeMap2 = new TreeMap();
        this.scales = treeMap2;
        TreeMap treeMap3 = new TreeMap();
        this.translations = treeMap3;
        Float valueOf = Float.valueOf(0.0f);
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("duration must be positive");
        }
        if (f11 <= 0.0f) {
            throw new IllegalArgumentException("FPS must be positive");
        }
        this.name = str;
        this.duration = f10;
        this.fps = f11;
        Transform transform = new Transform();
        treeMap3.put(valueOf, transform.getTranslation());
        treeMap.put(valueOf, transform.getRotation());
        treeMap2.put(valueOf, transform.getScale());
    }

    private Quaternion interpolateRotation(float f10) {
        float f11 = this.duration;
        Iterator<Float> it = this.rotations.o().iterator();
        float f12 = 0.0f;
        while (it.hasNext()) {
            float floatValue = it.next().floatValue();
            if (floatValue <= f10 && floatValue > f12) {
                f12 = floatValue;
            }
            if (floatValue >= f10 && floatValue < f11) {
                f11 = floatValue;
            }
        }
        Quaternion quaternion = this.rotations.get(Float.valueOf(f12));
        Quaternion quaternion2 = new Quaternion();
        if (f12 == f11 || !this.rotations.containsKey(Float.valueOf(f11))) {
            quaternion2.set(quaternion);
        } else {
            quaternion2.slerp(quaternion, this.rotations.get(Float.valueOf(f11)), (f10 - f12) / (f11 - f12));
        }
        return quaternion2;
    }

    private Vector3f interpolateScale(float f10) {
        float f11 = this.duration;
        Iterator<Float> it = this.scales.o().iterator();
        float f12 = 0.0f;
        while (it.hasNext()) {
            float floatValue = it.next().floatValue();
            if (floatValue <= f10 && floatValue > f12) {
                f12 = floatValue;
            }
            if (floatValue >= f10 && floatValue < f11) {
                f11 = floatValue;
            }
        }
        Vector3f vector3f = this.scales.get(Float.valueOf(f12));
        Vector3f vector3f2 = new Vector3f();
        if (f12 == f11 || !this.scales.containsKey(Float.valueOf(f11))) {
            vector3f2.set(vector3f);
        } else {
            vector3f2.interpolateLocal(vector3f, this.scales.get(Float.valueOf(f11)), (f10 - f12) / (f11 - f12));
        }
        return vector3f2;
    }

    private Vector3f interpolateTranslation(float f10) {
        float f11 = this.duration;
        Iterator<Float> it = this.translations.o().iterator();
        float f12 = 0.0f;
        while (it.hasNext()) {
            float floatValue = it.next().floatValue();
            if (floatValue <= f10 && floatValue > f12) {
                f12 = floatValue;
            }
            if (floatValue >= f10 && floatValue < f11) {
                f11 = floatValue;
            }
        }
        Vector3f vector3f = this.translations.get(Float.valueOf(f12));
        Vector3f vector3f2 = new Vector3f();
        if (f12 == f11 || !this.translations.containsKey(Float.valueOf(f11))) {
            vector3f2.set(vector3f);
        } else {
            vector3f2.interpolateLocal(vector3f, this.translations.get(Float.valueOf(f11)), (f10 - f12) / (f11 - f12));
        }
        return vector3f2;
    }

    public void addKeyFrameRotation(int i10, Quaternion quaternion) {
        addTimeRotation(i10 / this.fps, quaternion);
    }

    public void addKeyFrameScale(int i10, Vector3f vector3f) {
        addTimeScale(i10 / this.fps, vector3f);
    }

    public void addKeyFrameTransform(int i10, Transform transform) {
        addTimeTransform(i10 / this.fps, transform);
    }

    public void addKeyFrameTranslation(int i10, Vector3f vector3f) {
        addTimeTranslation(i10 / this.fps, vector3f);
    }

    public void addTimeRotation(float f10, Quaternion quaternion) {
        if (f10 >= 0.0f && f10 <= this.duration) {
            float norm = quaternion.norm();
            if (norm != 0.0f) {
                this.rotations.put(Float.valueOf(f10), quaternion.mult(1.0f / FastMath.sqrt(norm)));
                return;
            }
            throw new IllegalArgumentException("rotation cannot have norm=0");
        }
        throw new IllegalArgumentException("animation time out of range");
    }

    public void addTimeScale(float f10, Vector3f vector3f) {
        if (f10 < 0.0f || f10 > this.duration) {
            throw new IllegalArgumentException("animation time out of range");
        }
        this.scales.put(Float.valueOf(f10), vector3f.m1292clone());
    }

    public void addTimeTransform(float f10, Transform transform) {
        if (f10 < 0.0f || f10 > this.duration) {
            throw new IllegalArgumentException("animation time out of range");
        }
        this.translations.put(Float.valueOf(f10), transform.getTranslation(null));
        this.rotations.put(Float.valueOf(f10), transform.getRotation(null));
        this.scales.put(Float.valueOf(f10), transform.getScale(null));
    }

    public void addTimeTranslation(float f10, Vector3f vector3f) {
        if (f10 < 0.0f || f10 > this.duration) {
            throw new IllegalArgumentException("animation time out of range");
        }
        this.translations.put(Float.valueOf(f10), vector3f.m1292clone());
    }

    public AnimClip buildAnimation(HasLocalTransform hasLocalTransform) {
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        while (true) {
            float f10 = i10 / this.fps;
            if (f10 > this.duration) {
                break;
            }
            treeSet.add(Float.valueOf(f10));
            i10++;
        }
        treeSet.addAll(this.rotations.o());
        treeSet.addAll(this.scales.o());
        treeSet.addAll(this.translations.o());
        int size = treeSet.size();
        float[] fArr = new float[size];
        Vector3f[] vector3fArr = new Vector3f[size];
        Quaternion[] quaternionArr = new Quaternion[size];
        Vector3f[] vector3fArr2 = new Vector3f[size];
        Iterator<E> it = treeSet.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            float floatValue = ((Float) it.next()).floatValue();
            fArr[i11] = floatValue;
            vector3fArr[i11] = interpolateTranslation(floatValue);
            quaternionArr[i11] = interpolateRotation(floatValue);
            vector3fArr2[i11] = interpolateScale(floatValue);
            i11++;
        }
        AnimTrack[] animTrackArr = {new TransformTrack(hasLocalTransform, fArr, vector3fArr, quaternionArr, vector3fArr2)};
        AnimClip animClip = new AnimClip(this.name);
        animClip.setTracks(animTrackArr);
        return animClip;
    }

    public void addTimeRotation(float f10, float f11, float f12, float f13) {
        if (f10 >= 0.0f && f10 <= this.duration) {
            this.rotations.put(Float.valueOf(f10), new Quaternion().fromAngles(f11, f12, f13));
            return;
        }
        throw new IllegalArgumentException("animation time out of range");
    }
}
