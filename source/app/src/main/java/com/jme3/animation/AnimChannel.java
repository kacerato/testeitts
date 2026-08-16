package com.jme3.animation;

import com.jme3.math.FastMath;
import com.jme3.util.TempVars;
import java.util.BitSet;
import java.util.Iterator;

@Deprecated
public final class AnimChannel {
    private static final float DEFAULT_BLEND_TIME = 0.15f;
    private BitSet affectedBones;
    private Animation animation;
    private Animation blendFrom;
    private float blendTime;
    private AnimControl control;
    private LoopMode loopMode;
    private LoopMode loopModeBlendFrom;
    private float speed;
    private float speedBlendFrom;
    private float time;
    private float timeBlendFrom;
    private boolean notified = false;
    private float blendAmount = 1.0f;
    private float blendRate = 0.0f;

    public AnimChannel() {
    }

    public void addAllBones() {
        this.affectedBones = null;
    }

    public void addBone(String str) {
        addBone(this.control.getSkeleton().getBone(str));
    }

    public void addFromRootBone(String str) {
        addFromRootBone(this.control.getSkeleton().getBone(str));
    }

    public void addToRootBone(String str) {
        addToRootBone(this.control.getSkeleton().getBone(str));
    }

    public BitSet getAffectedBones() {
        return this.affectedBones;
    }

    public float getAnimMaxTime() {
        Animation animation = this.animation;
        if (animation != null) {
            return animation.getLength();
        }
        return 0.0f;
    }

    public String getAnimationName() {
        Animation animation = this.animation;
        if (animation != null) {
            return animation.getName();
        }
        return null;
    }

    public AnimControl getControl() {
        return this.control;
    }

    public LoopMode getLoopMode() {
        return this.loopMode;
    }

    public float getSpeed() {
        return this.speed;
    }

    public float getTime() {
        return this.time;
    }

    public void reset(boolean z10) {
        if (z10) {
            setTime(0.0f);
            if (this.control.getSkeleton() != null) {
                this.control.getSkeleton().resetAndUpdate();
            } else {
                TempVars tempVars = TempVars.get();
                update(0.0f, tempVars);
                tempVars.release();
            }
        }
        this.animation = null;
        this.notified = false;
    }

    public void setAnim(String str, float f10) {
        if (str == null) {
            throw new IllegalArgumentException("name cannot be null");
        }
        if (f10 >= 0.0f) {
            Animation animation = this.control.animationMap.get(str);
            if (animation != null) {
                this.control.notifyAnimChange(this, str);
                if (this.animation != null && f10 > 0.0f) {
                    this.blendTime = f10;
                    float min = Math.min(f10, animation.getLength() / this.speed);
                    this.blendFrom = this.animation;
                    this.timeBlendFrom = this.time;
                    this.speedBlendFrom = this.speed;
                    this.loopModeBlendFrom = this.loopMode;
                    this.blendAmount = 0.0f;
                    this.blendRate = 1.0f / min;
                } else {
                    this.blendFrom = null;
                }
                this.animation = animation;
                this.time = 0.0f;
                this.speed = 1.0f;
                this.loopMode = LoopMode.Loop;
                this.notified = false;
                return;
            }
            throw new IllegalArgumentException("Cannot find animation named: '" + str + "'");
        }
        throw new IllegalArgumentException("blendTime cannot be less than zero");
    }

    public void setLoopMode(LoopMode loopMode) {
        this.loopMode = loopMode;
    }

    public void setSpeed(float f10) {
        this.speed = f10;
        float f11 = this.blendTime;
        if (f11 > 0.0f) {
            this.speedBlendFrom = f10;
            float min = Math.min(f11, this.animation.getLength() / f10);
            this.blendTime = min;
            this.blendRate = 1.0f / min;
        }
    }

    public void setTime(float f10) {
        this.time = FastMath.clamp(f10, 0.0f, getAnimMaxTime());
    }

    public void update(float f10, TempVars tempVars) {
        if (this.animation == null) {
            return;
        }
        Animation animation = this.blendFrom;
        if (animation != null) {
            float f11 = this.blendAmount;
            if (f11 != 1.0f) {
                animation.setTime(this.timeBlendFrom, 1.0f - f11, this.control, this, tempVars);
                float f12 = this.timeBlendFrom + (this.speedBlendFrom * f10);
                this.timeBlendFrom = f12;
                float clampWrapTime = AnimationUtils.clampWrapTime(f12, this.blendFrom.getLength(), this.loopModeBlendFrom);
                this.timeBlendFrom = clampWrapTime;
                if (clampWrapTime < 0.0f) {
                    this.timeBlendFrom = -clampWrapTime;
                    this.speedBlendFrom = -this.speedBlendFrom;
                }
                float f13 = this.blendAmount + (this.blendRate * f10);
                this.blendAmount = f13;
                if (f13 > 1.0f) {
                    this.blendAmount = 1.0f;
                    this.blendFrom = null;
                }
            }
        }
        this.animation.setTime(this.time, this.blendAmount, this.control, this, tempVars);
        this.time += f10 * this.speed;
        if (this.animation.getLength() > 0.0f && !this.notified && (this.time >= this.animation.getLength() || this.time < 0.0f)) {
            if (this.loopMode == LoopMode.DontLoop) {
                this.notified = true;
            }
            this.control.notifyAnimCycleDone(this, this.animation.getName());
        }
        float clampWrapTime2 = AnimationUtils.clampWrapTime(this.time, this.animation.getLength(), this.loopMode);
        this.time = clampWrapTime2;
        if (clampWrapTime2 < 0.0f) {
            this.time = -clampWrapTime2;
            this.speed = -this.speed;
        }
    }

    public void addBone(Bone bone) {
        int boneIndex = this.control.getSkeleton().getBoneIndex(bone);
        if (this.affectedBones == null) {
            this.affectedBones = new BitSet(this.control.getSkeleton().getBoneCount());
        }
        this.affectedBones.set(boneIndex);
    }

    public void addFromRootBone(Bone bone) {
        addBone(bone);
        if (bone.getChildren() == null) {
            return;
        }
        Iterator<Bone> it = bone.getChildren().iterator();
        while (it.hasNext()) {
            Bone next = it.next();
            addBone(next);
            addFromRootBone(next);
        }
    }

    public void addToRootBone(Bone bone) {
        addBone(bone);
        while (bone.getParent() != null) {
            bone = bone.getParent();
            addBone(bone);
        }
    }

    public AnimChannel(AnimControl animControl) {
        this.control = animControl;
    }

    public void setAnim(String str) {
        setAnim(str, 0.15f);
    }
}
