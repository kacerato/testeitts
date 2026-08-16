package com.jme3.anim;

import com.jme3.anim.tween.action.Action;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

public class AnimLayer implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    private Action currentAction;
    private String currentActionName;
    private boolean loop = true;
    private Object manager;
    private AnimationMask mask;
    private String name;
    private double time;

    public AnimLayer() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.currentAction = null;
        this.currentActionName = null;
    }

    public Action getCurrentAction() {
        return this.currentAction;
    }

    public String getCurrentActionName() {
        return this.currentActionName;
    }

    public Object getManager() {
        return this.manager;
    }

    public AnimationMask getMask() {
        return this.mask;
    }

    public String getName() {
        return this.name;
    }

    public double getTime() {
        return this.time;
    }

    public boolean isLooping() {
        return this.loop;
    }

    @Override
    public Object jmeClone() {
        try {
            return (AnimLayer) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        this.mask = (AnimationMask) capsule.readSavable("mask", null);
    }

    public void setCurrentAction(Action action) {
        setCurrentAction(null, action);
    }

    public void setLooping(boolean z10) {
        this.loop = z10;
    }

    public void setManager(Object obj) {
        this.manager = obj;
    }

    public void setTime(double d10) {
        double length = this.currentAction.getLength();
        if (d10 >= 0.0d) {
            this.time = d10 % length;
        } else {
            this.time = (d10 % length) + length;
        }
    }

    public void update(float f10, float f11) {
        Action action = this.currentAction;
        if (action == null) {
            return;
        }
        double speed = this.time + (action.getSpeed() * f11 * f10);
        this.time = speed;
        if (speed < 0.0d) {
            double length = action.getLength();
            this.time = ((this.time % length) + length) % length;
        }
        action.setMask(this.mask);
        boolean interpolate = action.interpolate(this.time);
        action.setMask(null);
        if (interpolate) {
            return;
        }
        this.time = 0.0d;
        if (this.loop) {
            return;
        }
        setCurrentAction(null);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", (String) null);
        AnimationMask animationMask = this.mask;
        if (animationMask instanceof Savable) {
            capsule.write((Savable) animationMask, "mask", (Savable) null);
        }
    }

    public void setCurrentAction(String str, Action action) {
        setCurrentAction(str, action, true);
    }

    public AnimLayer(String str, AnimationMask animationMask) {
        this.name = str;
        this.mask = animationMask;
    }

    public void setCurrentAction(String str, Action action, boolean z10) {
        this.time = 0.0d;
        this.currentAction = action;
        this.currentActionName = str;
        this.loop = z10;
    }
}
