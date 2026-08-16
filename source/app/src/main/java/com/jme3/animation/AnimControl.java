package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.AbstractControl;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import jme3utilities.debug.h;

@Deprecated
public final class AnimControl extends AbstractControl implements Cloneable, JmeCloneable {
    HashMap<String, Animation> animationMap = new HashMap<>();
    private transient ArrayList<AnimChannel> channels = new ArrayList<>();
    private transient ArrayList<AnimEventListener> listeners = new ArrayList<>();
    Skeleton skeleton;

    @Deprecated
    private SkeletonControl skeletonControl;

    public AnimControl(Skeleton skeleton) {
        this.skeleton = skeleton;
        reset();
    }

    public void addAnim(Animation animation) {
        this.animationMap.put(animation.getName(), animation);
    }

    public void addListener(AnimEventListener animEventListener) {
        if (this.listeners.contains(animEventListener)) {
            throw new IllegalArgumentException("The given listener is already registered at this AnimControl");
        }
        this.listeners.add(animEventListener);
    }

    public void clearChannels() {
        Iterator<AnimChannel> it = this.channels.iterator();
        while (it.hasNext()) {
            AnimChannel next = it.next();
            Iterator<AnimEventListener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                it2.next().onAnimCycleDone(this, next, next.getAnimationName());
            }
        }
        this.channels.clear();
    }

    public void clearListeners() {
        this.listeners.clear();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.skeleton = (Skeleton) cloner.clone(this.skeleton);
        HashMap<String, Animation> hashMap = new HashMap<>();
        for (Map.Entry<String, Animation> entry : this.animationMap.entrySet()) {
            hashMap.put(entry.getKey(), (Animation) cloner.clone(entry.getValue()));
        }
        this.animationMap = hashMap;
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public void controlUpdate(float f10) {
        Skeleton skeleton = this.skeleton;
        if (skeleton != null) {
            skeleton.reset();
        }
        TempVars tempVars = TempVars.get();
        for (int i10 = 0; i10 < this.channels.size(); i10++) {
            this.channels.get(i10).update(f10, tempVars);
        }
        tempVars.release();
        Skeleton skeleton2 = this.skeleton;
        if (skeleton2 != null) {
            skeleton2.updateWorldVectors();
        }
    }

    public AnimChannel createChannel() {
        AnimChannel animChannel = new AnimChannel(this);
        this.channels.add(animChannel);
        return animChannel;
    }

    public Animation getAnim(String str) {
        return this.animationMap.get(str);
    }

    public float getAnimationLength(String str) {
        Animation animation = this.animationMap.get(str);
        if (animation != null) {
            return animation.getLength();
        }
        throw new IllegalArgumentException("The animation " + str + " does not exist in this AnimControl");
    }

    public Collection<String> getAnimationNames() {
        return this.animationMap.o();
    }

    public AnimChannel getChannel(int i10) {
        return this.channels.get(i10);
    }

    public int getNumChannels() {
        return this.channels.size();
    }

    public Skeleton getSkeleton() {
        return this.skeleton;
    }

    @Override
    public Object jmeClone() {
        AnimControl animControl = (AnimControl) super.jmeClone();
        animControl.channels = new ArrayList<>();
        animControl.listeners = new ArrayList<>();
        return animControl;
    }

    public void notifyAnimChange(AnimChannel animChannel, String str) {
        for (int i10 = 0; i10 < this.listeners.size(); i10++) {
            this.listeners.get(i10).onAnimChange(this, animChannel, str);
        }
    }

    public void notifyAnimCycleDone(AnimChannel animChannel, String str) {
        for (int i10 = 0; i10 < this.listeners.size(); i10++) {
            this.listeners.get(i10).onAnimCycleDone(this, animChannel, str);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.skeleton = (Skeleton) capsule.readSavable(h.f94091E, null);
        HashMap<String, Animation> hashMap = (HashMap) capsule.readStringSavableMap("animations", null);
        if (hashMap != null) {
            this.animationMap = hashMap;
        }
        if (jmeImporter.getFormatVersion() != 0 || capsule.readSavableArray("targets", null) == null) {
            return;
        }
        SkeletonControl skeletonControl = new SkeletonControl(this.skeleton);
        this.skeletonControl = skeletonControl;
        this.spatial.addControl(skeletonControl);
    }

    public void removeAnim(Animation animation) {
        if (!this.animationMap.containsKey(animation.getName())) {
            throw new IllegalArgumentException("Given animation does not exist in this AnimControl");
        }
        this.animationMap.remove(animation.getName());
    }

    public void removeListener(AnimEventListener animEventListener) {
        if (!this.listeners.remove(animEventListener)) {
            throw new IllegalArgumentException("The given listener is not registered at this AnimControl");
        }
    }

    public final void reset() {
        Skeleton skeleton = this.skeleton;
        if (skeleton != null) {
            skeleton.resetAndUpdate();
        }
    }

    public void setAnimations(HashMap<String, Animation> hashMap) {
        this.animationMap = hashMap;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        SkeletonControl skeletonControl;
        SkeletonControl skeletonControl2;
        if (spatial == null && (skeletonControl2 = this.skeletonControl) != null) {
            this.spatial.removeControl(skeletonControl2);
        }
        super.setSpatial(spatial);
        if (spatial == null || (skeletonControl = this.skeletonControl) == null) {
            return;
        }
        spatial.addControl(skeletonControl);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.skeleton, h.f94091E, (Savable) null);
        capsule.writeStringSavableMap(this.animationMap, "animations", null);
    }

    public AnimControl() {
    }
}
