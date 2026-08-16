package com.jme3.anim.tween.action;

import com.jme3.anim.AnimationMask;
import com.jme3.anim.tween.Tween;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;

public abstract class Action implements JmeCloneable, Tween {
    protected Action[] actions;
    private double length;
    private AnimationMask mask;
    private double speed = 1.0d;
    private boolean forward = true;

    public Action(Tween... tweenArr) {
        this.actions = new Action[tweenArr.length];
        for (int i10 = 0; i10 < tweenArr.length; i10++) {
            Tween tween = tweenArr[i10];
            if (tween instanceof Action) {
                this.actions[i10] = (Action) tween;
            } else {
                this.actions[i10] = new BaseAction(tween);
            }
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.actions = (Action[]) cloner.clone(this.actions);
        this.mask = (AnimationMask) cloner.clone(this.mask);
    }

    @Override
    public double getLength() {
        return this.length;
    }

    public AnimationMask getMask() {
        return this.mask;
    }

    public double getSpeed() {
        return this.speed;
    }

    public boolean isForward() {
        return this.forward;
    }

    public void setForward(boolean z10) {
        if (this.forward == z10) {
            return;
        }
        this.forward = z10;
        for (Action action : this.actions) {
            action.setForward(z10);
        }
    }

    public void setLength(double d10) {
        this.length = d10;
    }

    public void setMask(AnimationMask animationMask) {
        this.mask = animationMask;
    }

    public void setSpeed(double d10) {
        this.speed = d10;
        if (d10 < 0.0d) {
            setForward(false);
        } else {
            setForward(true);
        }
    }

    @Override
    public Action jmeClone() {
        try {
            return (Action) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
