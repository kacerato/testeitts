package com.jme3.anim.tween.action;

import com.jme3.anim.AnimClip;
import com.jme3.anim.AnimTrack;
import com.jme3.anim.MorphTrack;
import com.jme3.anim.TransformTrack;
import com.jme3.anim.tween.Tween;
import com.jme3.anim.util.HasLocalTransform;
import com.jme3.math.Transform;
import com.jme3.scene.Geometry;
import com.jme3.util.clone.Cloner;
import java.util.ArrayList;
import java.util.Collection;

public class ClipAction extends BlendableAction {
    private AnimClip clip;
    private Transform transform;

    public ClipAction(AnimClip animClip) {
        super(new Tween[0]);
        this.transform = new Transform();
        this.clip = animClip;
        setLength(animClip.getLength());
    }

    private void interpolateMorphTrack(double d10, MorphTrack morphTrack) {
        Geometry target = morphTrack.getTarget();
        float[] morphState = target.getMorphState();
        morphTrack.getDataAtTime(d10, morphState);
        target.setMorphState(morphState);
    }

    private void interpolateTransformTrack(double d10, TransformTrack transformTrack) {
        HasLocalTransform target = transformTrack.getTarget();
        this.transform.set(target.getLocalTransform());
        transformTrack.getDataAtTime(d10, this.transform);
        BlendableAction blendableAction = this.collectTransformDelegate;
        if (blendableAction != null) {
            blendableAction.collectTransform(target, this.transform, getWeight(), this);
        } else {
            collectTransform(target, this.transform, getTransitionWeight(), this);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.clip = (AnimClip) cloner.clone(this.clip);
        this.transform = (Transform) cloner.clone(this.transform);
    }

    @Override
    public void collectTransform(HasLocalTransform hasLocalTransform, Transform transform, float f10, BlendableAction blendableAction) {
        if (f10 == 1.0f) {
            hasLocalTransform.setLocalTransform(transform);
            return;
        }
        Transform localTransform = hasLocalTransform.getLocalTransform();
        localTransform.interpolateTransforms(localTransform, transform, f10);
        hasLocalTransform.setLocalTransform(localTransform);
    }

    @Override
    public void doInterpolate(double d10) {
        for (AnimTrack animTrack : this.clip.getTracks()) {
            if (animTrack instanceof TransformTrack) {
                TransformTrack transformTrack = (TransformTrack) animTrack;
                if (getMask() == null || getMask().contains(transformTrack.getTarget())) {
                    interpolateTransformTrack(d10, transformTrack);
                }
            } else if (animTrack instanceof MorphTrack) {
                interpolateMorphTrack(d10, (MorphTrack) animTrack);
            }
        }
    }

    public AnimClip getAnimClip() {
        return this.clip;
    }

    @Override
    public Collection<HasLocalTransform> getTargets() {
        ArrayList arrayList = new ArrayList(this.clip.getTracks().length);
        for (AnimTrack animTrack : this.clip.getTracks()) {
            if (animTrack instanceof TransformTrack) {
                arrayList.add(((TransformTrack) animTrack).getTarget());
            }
        }
        return arrayList;
    }

    public String toString() {
        return this.clip.toString();
    }

    @Override
    public ClipAction jmeClone() {
        try {
            return (ClipAction) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
