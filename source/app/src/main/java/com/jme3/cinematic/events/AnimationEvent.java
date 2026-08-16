package com.jme3.cinematic.events;

import com.ardor3d.util.resource.ResourceLocatorTool;
import com.jme3.animation.AnimChannel;
import com.jme3.animation.AnimControl;
import com.jme3.animation.LoopMode;
import com.jme3.app.Application;
import com.jme3.cinematic.Cinematic;
import com.jme3.cinematic.PlayState;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

@Deprecated
public class AnimationEvent extends AbstractCinematicEvent {
    public static final String MODEL_CHANNELS = "modelChannels";
    public static final int SAVABLE_VERSION = 2;
    private static final Logger log = Logger.getLogger(AnimationEvent.class.getName());
    protected String animationName;
    protected float blendTime;
    protected AnimChannel channel;
    protected int channelIndex;
    protected Cinematic cinematic;
    protected Spatial model;
    protected String modelName;

    public AnimationEvent() {
        this.blendTime = 0.0f;
        this.channelIndex = 0;
    }

    @Override
    public void dispose() {
        super.dispose();
        Cinematic cinematic = this.cinematic;
        if (cinematic != null) {
            Object eventData = cinematic.getEventData(MODEL_CHANNELS, this.model);
            if (eventData != null) {
                Collection values = ((HashMap) eventData).values();
                do {
                } while (values.remove(this.channel));
                if (values.isEmpty()) {
                    this.cinematic.removeEventData(MODEL_CHANNELS, this.model);
                }
            }
            this.cinematic = null;
            this.channel = null;
        }
    }

    @Override
    public void forceStop() {
        AnimChannel animChannel = this.channel;
        if (animChannel != null) {
            animChannel.setTime(this.time);
            this.channel.reset(false);
        }
        super.forceStop();
    }

    @Override
    public void initEvent(Application application, Cinematic cinematic) {
        super.initEvent(application, cinematic);
        this.cinematic = cinematic;
        if (this.channel == null) {
            Object eventData = cinematic.getEventData(MODEL_CHANNELS, this.model);
            Object obj = eventData;
            if (eventData == null) {
                HashMap hashMap = new HashMap();
                int numChannels = ((AnimControl) this.model.getControl(AnimControl.class)).getNumChannels();
                for (int i10 = 0; i10 < numChannels; i10++) {
                    hashMap.put(Integer.valueOf(i10), ((AnimControl) this.model.getControl(AnimControl.class)).getChannel(i10));
                }
                cinematic.putEventData(MODEL_CHANNELS, this.model, hashMap);
                obj = hashMap;
            }
            Map map = (Map) obj;
            AnimChannel animChannel = (AnimChannel) map.get(Integer.valueOf(this.channelIndex));
            this.channel = animChannel;
            if (animChannel == null) {
                if (this.model == null) {
                    this.model = cinematic.getScene().getChild(this.modelName);
                }
                if (this.model == null) {
                    throw new UnsupportedOperationException("model should not be null");
                }
                if (cinematic.getScene() != null) {
                    Spatial child = cinematic.getScene().getChild(this.model.getName());
                    if (child != null) {
                        Node parent = child.getParent();
                        parent.detachChild(child);
                        parent.attachChild(this.model);
                    } else {
                        cinematic.getScene().attachChild(this.model);
                    }
                }
                this.channel = ((AnimControl) this.model.getControl(AnimControl.class)).createChannel();
                map.put(Integer.valueOf(this.channelIndex), this.channel);
            }
        }
    }

    @Override
    public void onPause() {
        AnimChannel animChannel = this.channel;
        if (animChannel != null) {
            animChannel.getControl().setEnabled(false);
        }
    }

    @Override
    public void onPlay() {
        this.channel.getControl().setEnabled(true);
        if (this.playState == PlayState.Stopped) {
            this.channel.setAnim(this.animationName, this.blendTime);
            this.channel.setSpeed(this.speed);
            this.channel.setLoopMode(this.loopMode);
            this.channel.setTime(0.0f);
        }
    }

    @Override
    public void onStop() {
    }

    @Override
    public void onUpdate(float f10) {
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.modelName = capsule.readString("modelName", "");
        this.model = (Spatial) capsule.readSavable(ResourceLocatorTool.TYPE_MODEL, null);
        this.animationName = capsule.readString("animationName", "");
        this.blendTime = capsule.readFloat("blendTime", 0.0f);
        this.channelIndex = capsule.readInt("channelIndex", 0);
    }

    @Override
    public void setLoopMode(LoopMode loopMode) {
        super.setLoopMode(loopMode);
        AnimChannel animChannel = this.channel;
        if (animChannel != null) {
            animChannel.setLoopMode(loopMode);
        }
    }

    @Override
    public void setSpeed(float f10) {
        super.setSpeed(f10);
        AnimChannel animChannel = this.channel;
        if (animChannel != null) {
            animChannel.setSpeed(f10);
        }
    }

    @Override
    public void setTime(float f10) {
        super.setTime(f10);
        if (!this.animationName.equals(this.channel.getAnimationName())) {
            this.channel.setAnim(this.animationName, this.blendTime);
        }
        float animMaxTime = this.loopMode == LoopMode.Loop ? f10 % this.channel.getAnimMaxTime() : f10;
        if (this.loopMode == LoopMode.Cycle) {
            float ceil = (float) Math.ceil(f10 / this.channel.getAnimMaxTime());
            animMaxTime = (ceil <= 0.0f || ceil % 2.0f != 0.0f) ? animMaxTime % this.channel.getAnimMaxTime() : this.channel.getAnimMaxTime() - (animMaxTime % this.channel.getAnimMaxTime());
        }
        if (animMaxTime < 0.0f) {
            this.channel.setTime(0.0f);
            this.channel.reset(true);
        }
        if (animMaxTime <= this.channel.getAnimMaxTime()) {
            this.channel.setTime(animMaxTime);
            this.channel.getControl().update(0.0f);
        } else {
            this.channel.setTime(animMaxTime);
            this.channel.getControl().update(0.0f);
            stop();
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.model, ResourceLocatorTool.TYPE_MODEL, (Savable) null);
        capsule.write(this.modelName, "modelName", (String) null);
        capsule.write(this.animationName, "animationName", "");
        capsule.write(this.blendTime, "blendTime", 0.0f);
        capsule.write(this.channelIndex, "channelIndex", 0);
    }

    public AnimationEvent(Spatial spatial, String str) {
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.initialDuration = ((AnimControl) spatial.getControl(AnimControl.class)).getAnimationLength(str);
    }

    public AnimationEvent(Spatial spatial, String str, float f10) {
        super(f10);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
    }

    public AnimationEvent(Spatial spatial, String str, LoopMode loopMode) {
        super(loopMode);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.initialDuration = ((AnimControl) spatial.getControl(AnimControl.class)).getAnimationLength(str);
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
    }

    public AnimationEvent(Spatial spatial, String str, float f10, LoopMode loopMode) {
        super(f10, loopMode);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
    }

    public AnimationEvent(Spatial spatial, String str, float f10, float f11) {
        super(f10);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.blendTime = f11;
    }

    public AnimationEvent(Spatial spatial, String str, LoopMode loopMode, float f10) {
        super(loopMode);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.initialDuration = ((AnimControl) spatial.getControl(AnimControl.class)).getAnimationLength(str);
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.blendTime = f10;
    }

    public AnimationEvent(Spatial spatial, String str, float f10, LoopMode loopMode, float f11) {
        super(f10, loopMode);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.blendTime = f11;
    }

    public AnimationEvent(Spatial spatial, String str, LoopMode loopMode, int i10) {
        super(loopMode);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.initialDuration = ((AnimControl) spatial.getControl(AnimControl.class)).getAnimationLength(str);
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.channelIndex = i10;
    }

    public AnimationEvent(Spatial spatial, String str, int i10) {
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.initialDuration = ((AnimControl) spatial.getControl(AnimControl.class)).getAnimationLength(str);
        this.channelIndex = i10;
    }

    public AnimationEvent(Spatial spatial, String str, LoopMode loopMode, int i10, float f10) {
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.loopMode = loopMode;
        this.initialDuration = ((AnimControl) spatial.getControl(AnimControl.class)).getAnimationLength(str);
        this.channelIndex = i10;
        this.blendTime = f10;
    }

    public AnimationEvent(Spatial spatial, String str, float f10, int i10) {
        super(f10);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.channelIndex = i10;
    }

    public AnimationEvent(Spatial spatial, String str, float f10, LoopMode loopMode, int i10) {
        super(f10, loopMode);
        this.blendTime = 0.0f;
        this.channelIndex = 0;
        this.model = spatial;
        this.modelName = spatial.getName();
        this.animationName = str;
        this.channelIndex = i10;
    }
}
