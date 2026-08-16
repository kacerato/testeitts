package com.jme3.anim;

import com.jme3.anim.tween.Tween;
import com.jme3.anim.tween.Tweens;
import com.jme3.anim.tween.action.Action;
import com.jme3.anim.tween.action.BaseAction;
import com.jme3.anim.tween.action.BlendAction;
import com.jme3.anim.tween.action.BlendSpace;
import com.jme3.anim.tween.action.BlendableAction;
import com.jme3.anim.tween.action.ClipAction;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.control.AbstractControl;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class AnimComposer extends AbstractControl {
    public static final String DEFAULT_LAYER = "Default";
    private Map<String, AnimLayer> layers;
    private Map<String, AnimClip> animClipMap = new HashMap();
    private Map<String, Action> actions = new HashMap();
    private float globalSpeed = 1.0f;

    public AnimComposer() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(4);
        this.layers = linkedHashMap;
        linkedHashMap.put("Default", new AnimLayer("Default", null));
    }

    public Action action(String str) {
        Action action = this.actions.get(str);
        if (action != null) {
            return action;
        }
        Action makeAction = makeAction(str);
        this.actions.put(str, makeAction);
        return makeAction;
    }

    public BlendAction actionBlended(String str, BlendSpace blendSpace, String... strArr) {
        int length = strArr.length;
        BlendableAction[] blendableActionArr = new BlendableAction[length];
        for (int i10 = 0; i10 < length; i10++) {
            blendableActionArr[i10] = (BlendableAction) makeAction(strArr[i10]);
        }
        BlendAction blendAction = new BlendAction(blendSpace, blendableActionArr);
        this.actions.put(str, blendAction);
        return blendAction;
    }

    public BaseAction actionSequence(String str, Tween... tweenArr) {
        BaseAction baseAction = new BaseAction(Tweens.sequence(tweenArr));
        this.actions.put(str, baseAction);
        return baseAction;
    }

    public void addAction(String str, Action action) {
        this.actions.put(str, action);
    }

    public void addAnimClip(AnimClip animClip) {
        this.animClipMap.put(animClip.getName(), animClip);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        HashMap hashMap = new HashMap();
        for (String str : this.animClipMap.o()) {
            hashMap.put(str, (AnimClip) cloner.clone(this.animClipMap.get(str)));
        }
        HashMap hashMap2 = new HashMap();
        for (String str2 : this.actions.o()) {
            hashMap2.put(str2, (Action) cloner.clone(this.actions.get(str2)));
        }
        this.actions = hashMap2;
        this.animClipMap = hashMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str3 : this.layers.o()) {
            linkedHashMap.put(str3, (AnimLayer) cloner.clone(this.layers.get(str3)));
        }
        linkedHashMap.putIfAbsent("Default", new AnimLayer("Default", null));
        this.layers = linkedHashMap;
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public void controlUpdate(float f10) {
        Iterator<AnimLayer> it = this.layers.values().iterator();
        while (it.hasNext()) {
            it.next().update(f10, this.globalSpeed);
        }
    }

    public Action getAction(String str) {
        return this.actions.get(str);
    }

    public AnimClip getAnimClip(String str) {
        return this.animClipMap.get(str);
    }

    public Collection<AnimClip> getAnimClips() {
        return Collections.unmodifiableCollection(this.animClipMap.values());
    }

    public Set<String> getAnimClipsNames() {
        return Collections.unmodifiableSet(this.animClipMap.o());
    }

    public Action getCurrentAction() {
        return getCurrentAction("Default");
    }

    public float getGlobalSpeed() {
        return this.globalSpeed;
    }

    public AnimLayer getLayer(String str) {
        AnimLayer animLayer = this.layers.get(str);
        if (animLayer != null) {
            return animLayer;
        }
        throw new IllegalArgumentException("Unknown layer " + str);
    }

    public Object getLayerManager(String str) {
        return getLayer(str).getManager();
    }

    public Set<String> getLayerNames() {
        return Collections.unmodifiableSet(this.layers.o());
    }

    public double getTime() {
        return getTime("Default");
    }

    public boolean hasAction(String str) {
        return this.actions.containsKey(str);
    }

    public boolean hasAnimClip(String str) {
        return this.animClipMap.containsKey(str);
    }

    @Override
    public Object jmeClone() {
        try {
            return (AnimComposer) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Action makeAction(String str) {
        AnimClip animClip = this.animClipMap.get(str);
        if (animClip != null) {
            return new ClipAction(animClip);
        }
        throw new IllegalArgumentException("Cannot find clip named " + str);
    }

    public void makeLayer(String str, AnimationMask animationMask) {
        this.layers.put(str, new AnimLayer(str, animationMask));
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.animClipMap = capsule.readStringSavableMap("animClipMap", new HashMap());
        this.globalSpeed = capsule.readFloat("globalSpeed", 1.0f);
        Map readStringSavableMap = capsule.readStringSavableMap("layers", new HashMap());
        this.layers = readStringSavableMap;
        readStringSavableMap.putIfAbsent("Default", new AnimLayer("Default", null));
    }

    public Action removeAction(String str) {
        return this.actions.remove(str);
    }

    public void removeAnimClip(AnimClip animClip) {
        if (!this.animClipMap.containsKey(animClip.getName())) {
            throw new IllegalArgumentException("Given animation does not exist in this AnimControl");
        }
        this.animClipMap.remove(animClip.getName());
    }

    public void removeCurrentAction() {
        removeCurrentAction("Default");
    }

    public void removeLayer(String str) {
        this.layers.remove(str);
    }

    public void reset() {
        Iterator<AnimLayer> it = this.layers.values().iterator();
        while (it.hasNext()) {
            it.next().setCurrentAction(null);
        }
    }

    public Action setCurrentAction(String str) {
        return setCurrentAction(str, "Default", true);
    }

    public void setGlobalSpeed(float f10) {
        this.globalSpeed = f10;
    }

    public void setLayerManager(String str, Object obj) {
        getLayer(str).setManager(obj);
    }

    public void setTime(double d10) {
        setTime("Default", d10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.writeStringSavableMap(this.animClipMap, "animClipMap", new HashMap());
        capsule.write(this.globalSpeed, "globalSpeed", 1.0f);
        capsule.writeStringSavableMap(this.layers, "layers", new HashMap());
    }

    public Action getCurrentAction(String str) {
        return getLayer(str).getCurrentAction();
    }

    public double getTime(String str) {
        return getLayer(str).getTime();
    }

    public void removeCurrentAction(String str) {
        getLayer(str).setCurrentAction(null);
    }

    public Action setCurrentAction(String str, String str2) {
        return setCurrentAction(str, str2, true);
    }

    public void setTime(String str, double d10) {
        AnimLayer layer = getLayer(str);
        if (layer.getCurrentAction() != null) {
            layer.setTime(d10);
            return;
        }
        throw new RuntimeException("There is no action running in layer " + str);
    }

    public Action setCurrentAction(String str, String str2, boolean z10) {
        AnimLayer layer = getLayer(str2);
        Action action = action(str);
        layer.setCurrentAction(str, action, z10);
        return action;
    }
}
