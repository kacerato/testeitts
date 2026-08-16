package com.jme3.anim.interpolator;

import com.jme3.anim.interpolator.FrameInterpolator;
import com.jme3.math.EaseFunction;
import com.jme3.math.Easing;
import com.jme3.math.FastMath;
import com.jme3.math.MathUtils;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;

public class AnimInterpolators {
    public static final AnimInterpolator<Quaternion> NLerp = new AnimInterpolator<Quaternion>() {
        private Quaternion next = new Quaternion();

        @Override
        public Quaternion interpolate(float f10, int i10, FrameInterpolator.TrackDataReader<Quaternion> trackDataReader, FrameInterpolator.TrackTimeReader trackTimeReader, Quaternion quaternion) {
            trackDataReader.getEntryClamp(i10, quaternion);
            trackDataReader.getEntryClamp(i10 + 1, this.next);
            quaternion.nlerp(this.next, f10);
            return quaternion;
        }
    };
    public static final AnimInterpolator<Quaternion> SLerp = new AnimInterpolator<Quaternion>() {
        private Quaternion next = new Quaternion();

        @Override
        public Quaternion interpolate(float f10, int i10, FrameInterpolator.TrackDataReader<Quaternion> trackDataReader, FrameInterpolator.TrackTimeReader trackTimeReader, Quaternion quaternion) {
            trackDataReader.getEntryClamp(i10, quaternion);
            trackDataReader.getEntryClamp(i10 + 1, this.next);
            MathUtils.slerp(quaternion, this.next, f10, quaternion);
            return quaternion;
        }
    };
    public static final AnimInterpolator<Quaternion> SQuad = new AnimInterpolator<Quaternion>() {

        private Quaternion f81544a = new Quaternion();

        private Quaternion f81545b = new Quaternion();

        private Quaternion f81546q0 = new Quaternion();

        private Quaternion f81547q1 = new Quaternion();

        private Quaternion f81548q2 = new Quaternion();

        private Quaternion f81549q3 = new Quaternion();

        @Override
        public Quaternion interpolate(float f10, int i10, FrameInterpolator.TrackDataReader<Quaternion> trackDataReader, FrameInterpolator.TrackTimeReader trackTimeReader, Quaternion quaternion) {
            trackDataReader.getEntryModSkip(i10 - 1, this.f81546q0);
            trackDataReader.getEntryModSkip(i10, this.f81547q1);
            trackDataReader.getEntryModSkip(i10 + 1, this.f81548q2);
            trackDataReader.getEntryModSkip(i10 + 2, this.f81549q3);
            MathUtils.squad(this.f81546q0, this.f81547q1, this.f81548q2, this.f81549q3, this.f81544a, this.f81545b, f10, quaternion);
            return quaternion;
        }
    };
    public static final AnimInterpolator<Vector3f> LinearVec3f = new AnimInterpolator<Vector3f>() {
        private Vector3f next = new Vector3f();

        @Override
        public Vector3f interpolate(float f10, int i10, FrameInterpolator.TrackDataReader<Vector3f> trackDataReader, FrameInterpolator.TrackTimeReader trackTimeReader, Vector3f vector3f) {
            trackDataReader.getEntryClamp(i10, vector3f);
            trackDataReader.getEntryClamp(i10 + 1, this.next);
            vector3f.interpolateLocal(this.next, f10);
            return vector3f;
        }
    };
    public static final CatmullRomInterpolator CatmullRom = new CatmullRomInterpolator();
    public static final TimeInterpolator easeInQuad = new TimeInterpolator(Easing.inQuad);
    public static final TimeInterpolator easeInCubic = new TimeInterpolator(Easing.inCubic);
    public static final TimeInterpolator easeInQuart = new TimeInterpolator(Easing.inQuart);
    public static final TimeInterpolator easeInQuint = new TimeInterpolator(Easing.inQuint);
    public static final TimeInterpolator easeInBounce = new TimeInterpolator(Easing.inBounce);
    public static final TimeInterpolator easeInElastic = new TimeInterpolator(Easing.inElastic);
    public static final TimeInterpolator easeOutQuad = new TimeInterpolator(Easing.outQuad);
    public static final TimeInterpolator easeOutCubic = new TimeInterpolator(Easing.outCubic);
    public static final TimeInterpolator easeOutQuart = new TimeInterpolator(Easing.outQuart);
    public static final TimeInterpolator easeOutQuint = new TimeInterpolator(Easing.outQuint);
    public static final TimeInterpolator easeOutBounce = new TimeInterpolator(Easing.outBounce);
    public static final TimeInterpolator easeOutElastic = new TimeInterpolator(Easing.outElastic);
    public static final TimeInterpolator easeInOutQuad = new TimeInterpolator(Easing.inOutQuad);
    public static final TimeInterpolator easeInOutCubic = new TimeInterpolator(Easing.inOutCubic);
    public static final TimeInterpolator easeInOutQuart = new TimeInterpolator(Easing.inOutQuart);
    public static final TimeInterpolator easeInOutQuint = new TimeInterpolator(Easing.inOutQuint);
    public static final TimeInterpolator easeInOutBounce = new TimeInterpolator(Easing.inOutBounce);
    public static final TimeInterpolator easeInOutElastic = new TimeInterpolator(Easing.inOutElastic);
    public static final TimeInterpolator smoothStep = new TimeInterpolator(Easing.smoothStep);
    public static final TimeInterpolator smootherStep = new TimeInterpolator(Easing.smootherStep);
    public static final TimeInterpolator constant = new TimeInterpolator(Easing.constant);

    public static class CatmullRomInterpolator extends AnimInterpolator<Vector3f> {

        private final Vector3f f81550p0;

        private final Vector3f f81551p1;

        private final Vector3f f81552p2;

        private final Vector3f f81553p3;
        private float tension;

        public CatmullRomInterpolator(float f10) {
            this.f81550p0 = new Vector3f();
            this.f81551p1 = new Vector3f();
            this.f81552p2 = new Vector3f();
            this.f81553p3 = new Vector3f();
            this.tension = f10;
        }

        @Override
        public Vector3f interpolate(float f10, int i10, FrameInterpolator.TrackDataReader<Vector3f> trackDataReader, FrameInterpolator.TrackTimeReader trackTimeReader, Vector3f vector3f) {
            trackDataReader.getEntryModSkip(i10 - 1, this.f81550p0);
            trackDataReader.getEntryModSkip(i10, this.f81551p1);
            trackDataReader.getEntryModSkip(i10 + 1, this.f81552p2);
            trackDataReader.getEntryModSkip(i10 + 2, this.f81553p3);
            FastMath.interpolateCatmullRom(f10, this.tension, this.f81550p0, this.f81551p1, this.f81552p2, this.f81553p3, vector3f);
            return vector3f;
        }

        public CatmullRomInterpolator() {
            this.f81550p0 = new Vector3f();
            this.f81551p1 = new Vector3f();
            this.f81552p2 = new Vector3f();
            this.f81553p3 = new Vector3f();
            this.tension = 0.7f;
        }
    }

    public static class TimeInterpolator extends AnimInterpolator<Float> {
        private final EaseFunction ease;

        public TimeInterpolator(EaseFunction easeFunction) {
            this.ease = easeFunction;
        }

        @Override
        public Float interpolate(float f10, int i10, FrameInterpolator.TrackDataReader<Float> trackDataReader, FrameInterpolator.TrackTimeReader trackTimeReader, Float f11) {
            return Float.valueOf(this.ease.apply(f10));
        }
    }

    private AnimInterpolators() {
    }
}
