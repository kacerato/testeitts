package com.jme3.audio;

import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.audio.AudioData;
import com.jme3.audio.AudioSource;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.util.PlaceholderAssets;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AudioNode extends Node implements AudioSource {
    public static final int SAVABLE_VERSION = 1;
    protected AudioKey audioKey;
    protected volatile transient int channel;
    protected transient AudioData data;
    protected Vector3f direction;
    private boolean directional;
    protected Filter dryFilter;
    protected float innerAngle;
    protected float lastTpf;
    protected boolean loop;
    protected float maxDistance;
    protected float outerAngle;
    protected float pitch;
    protected boolean positional;
    protected Vector3f previousWorldTranslation;
    protected float refDistance;
    protected boolean reverbEnabled;
    protected Filter reverbFilter;
    protected volatile transient AudioSource.Status status;
    protected float timeOffset;
    protected Vector3f velocity;
    protected boolean velocityFromTranslation;
    protected float volume;

    @Deprecated
    public enum Status {
        Playing,
        Paused,
        Stopped
    }

    public AudioNode() {
        this.loop = false;
        this.volume = 1.0f;
        this.pitch = 1.0f;
        this.timeOffset = 0.0f;
        this.data = null;
        this.status = AudioSource.Status.Stopped;
        this.channel = -1;
        this.previousWorldTranslation = Vector3f.NAN.m1292clone();
        this.velocity = new Vector3f();
        this.reverbEnabled = false;
        this.maxDistance = 200.0f;
        this.refDistance = 10.0f;
        this.directional = false;
        this.direction = new Vector3f(0.0f, 0.0f, 1.0f);
        this.innerAngle = 360.0f;
        this.outerAngle = 360.0f;
        this.positional = true;
        this.velocityFromTranslation = false;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.direction = (Vector3f) cloner.clone(this.direction);
        this.velocity = this.velocityFromTranslation ? new Vector3f() : (Vector3f) cloner.clone(this.velocity);
        this.previousWorldTranslation = Vector3f.NAN.m1292clone();
        this.dryFilter = (Filter) cloner.clone(this.dryFilter);
        this.reverbFilter = (Filter) cloner.clone(this.reverbFilter);
    }

    @Override
    public AudioData getAudioData() {
        return this.data;
    }

    public AudioKey getAudioKey() {
        return this.audioKey;
    }

    @Override
    public int getChannel() {
        return this.channel;
    }

    @Override
    public Vector3f getDirection() {
        return this.direction;
    }

    @Override
    public Filter getDryFilter() {
        return this.dryFilter;
    }

    @Override
    public float getInnerAngle() {
        return this.innerAngle;
    }

    @Override
    public float getMaxDistance() {
        return this.maxDistance;
    }

    @Override
    public float getOuterAngle() {
        return this.outerAngle;
    }

    @Override
    public float getPitch() {
        return this.pitch;
    }

    @Override
    public float getPlaybackTime() {
        if (this.channel >= 0) {
            return getRenderer().getSourcePlaybackTime(this);
        }
        return 0.0f;
    }

    @Override
    public Vector3f getPosition() {
        return getWorldTranslation();
    }

    @Override
    public float getRefDistance() {
        return this.refDistance;
    }

    public AudioRenderer getRenderer() {
        AudioRenderer audioRenderer = AudioContext.getAudioRenderer();
        if (audioRenderer != null) {
            return audioRenderer;
        }
        throw new IllegalStateException("No audio renderer available, make sure call is being performed on render thread.");
    }

    @Override
    public Filter getReverbFilter() {
        return this.reverbFilter;
    }

    @Override
    public AudioSource.Status getStatus() {
        return this.status;
    }

    @Override
    public float getTimeOffset() {
        return this.timeOffset;
    }

    public AudioData.DataType getType() {
        AudioData audioData = this.data;
        if (audioData == null) {
            return null;
        }
        return audioData.getDataType();
    }

    @Override
    public Vector3f getVelocity() {
        return this.velocity;
    }

    @Override
    public float getVolume() {
        return this.volume;
    }

    @Override
    public boolean isDirectional() {
        return this.directional;
    }

    @Override
    public boolean isLooping() {
        return this.loop;
    }

    @Override
    public boolean isPositional() {
        return this.positional;
    }

    @Override
    public boolean isReverbEnabled() {
        return this.reverbEnabled;
    }

    public boolean isVelocityFromTranslation() {
        return this.velocityFromTranslation;
    }

    public void pause() {
        getRenderer().pauseSource(this);
    }

    public void play() {
        if (this.positional && this.data.getChannels() > 1) {
            throw new IllegalStateException("Only mono audio is supported for positional audio nodes");
        }
        getRenderer().playSource(this);
    }

    public void playInstance() {
        if (this.positional && this.data.getChannels() > 1) {
            throw new IllegalStateException("Only mono audio is supported for positional audio nodes");
        }
        getRenderer().playSourceInstance(this);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        if (capsule.getSavableVersion(AudioNode.class) == 0) {
            this.audioKey = (AudioKey) capsule.readSavable("key", null);
        } else {
            this.audioKey = (AudioKey) capsule.readSavable("audio_key", null);
        }
        this.loop = capsule.readBoolean("looping", false);
        this.volume = capsule.readFloat("volume", 1.0f);
        this.pitch = capsule.readFloat("pitch", 1.0f);
        this.timeOffset = capsule.readFloat("time_offset", 0.0f);
        this.dryFilter = (Filter) capsule.readSavable("dry_filter", null);
        this.velocity = (Vector3f) capsule.readSavable("velocity", null);
        this.reverbEnabled = capsule.readBoolean("reverb_enabled", false);
        this.reverbFilter = (Filter) capsule.readSavable("reverb_filter", null);
        this.maxDistance = capsule.readFloat("max_distance", 20.0f);
        this.refDistance = capsule.readFloat("ref_distance", 10.0f);
        this.directional = capsule.readBoolean("directional", false);
        this.direction = (Vector3f) capsule.readSavable("direction", null);
        this.innerAngle = capsule.readFloat("inner_angle", 360.0f);
        this.outerAngle = capsule.readFloat("outer_angle", 360.0f);
        this.positional = capsule.readBoolean("positional", false);
        this.velocityFromTranslation = capsule.readBoolean("velocity_from_translation", false);
        if (this.audioKey != null) {
            try {
                this.data = (AudioData) jmeImporter.getAssetManager().loadAsset(this.audioKey);
            } catch (AssetNotFoundException unused) {
                Logger.getLogger(AudioNode.class.getName()).log(Level.FINE, "Cannot locate {0} for audio node {1}", new Object[]{this.audioKey, this.key});
                this.data = PlaceholderAssets.getPlaceholderAudio();
            }
        }
    }

    public void setAudioData(AudioData audioData, AudioKey audioKey) {
        if (this.data != null) {
            throw new IllegalStateException("Cannot change data once it's set");
        }
        this.data = audioData;
        this.audioKey = audioKey;
    }

    @Override
    public final void setChannel(int i10) {
        if (this.status != AudioSource.Status.Stopped) {
            throw new IllegalStateException("Can only set source id when stopped");
        }
        this.channel = i10;
    }

    public void setDirection(Vector3f vector3f) {
        this.direction = vector3f;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.Direction);
        }
    }

    public void setDirectional(boolean z10) {
        this.directional = z10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.IsDirectional);
        }
    }

    public void setDryFilter(Filter filter) {
        this.dryFilter = filter;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.DryFilter);
        }
    }

    public void setInnerAngle(float f10) {
        this.innerAngle = f10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.InnerAngle);
        }
    }

    public void setLooping(boolean z10) {
        this.loop = z10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.Looping);
        }
    }

    public void setMaxDistance(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Max distance cannot be negative");
        }
        this.maxDistance = f10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.MaxDistance);
        }
    }

    public void setOuterAngle(float f10) {
        this.outerAngle = f10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.OuterAngle);
        }
    }

    public void setPitch(float f10) {
        if (f10 < 0.5f || f10 > 2.0f) {
            throw new IllegalArgumentException("Pitch must be between 0.5 and 2.0");
        }
        this.pitch = f10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.Pitch);
        }
    }

    public void setPositional(boolean z10) {
        this.positional = z10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.IsPositional);
        }
    }

    public void setRefDistance(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Reference distance cannot be negative");
        }
        this.refDistance = f10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.RefDistance);
        }
    }

    public void setReverbEnabled(boolean z10) {
        this.reverbEnabled = z10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.ReverbEnabled);
        }
    }

    public void setReverbFilter(Filter filter) {
        this.reverbFilter = filter;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.ReverbFilter);
        }
    }

    @Override
    public final void setStatus(AudioSource.Status status) {
        this.status = status;
    }

    public void setTimeOffset(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Time offset cannot be negative");
        }
        this.timeOffset = f10;
        AudioData audioData = this.data;
        if (audioData instanceof AudioStream) {
            ((AudioStream) audioData).setTime(f10);
        } else if (this.status == AudioSource.Status.Playing) {
            stop();
            play();
        }
    }

    public void setVelocity(Vector3f vector3f) {
        this.velocity.set(vector3f);
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.Velocity);
        }
    }

    public void setVelocityFromTranslation(boolean z10) {
        this.velocityFromTranslation = z10;
    }

    public void setVolume(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Volume cannot be negative");
        }
        this.volume = f10;
        if (this.channel >= 0) {
            getRenderer().updateSourceParam(this, AudioParam.Volume);
        }
    }

    public void stop() {
        getRenderer().stopSource(this);
    }

    @Override
    public String toString() {
        String str = getClass().getSimpleName() + "[status=" + ((Object) this.status);
        if (this.volume != 1.0f) {
            str = str + ", vol=" + this.volume;
        }
        if (this.pitch != 1.0f) {
            str = str + ", pitch=" + this.pitch;
        }
        return str + "]";
    }

    @Override
    public void updateGeometricState() {
        super.updateGeometricState();
        if (this.channel < 0) {
            return;
        }
        Vector3f translation = this.worldTransform.getTranslation();
        if (this.previousWorldTranslation.equals(translation)) {
            return;
        }
        getRenderer().updateSourceParam(this, AudioParam.Position);
        if (this.velocityFromTranslation && !Float.isNaN(this.previousWorldTranslation.f81611x)) {
            this.velocity.set(translation).subtractLocal(this.previousWorldTranslation).multLocal(1.0f / this.lastTpf);
            getRenderer().updateSourceParam(this, AudioParam.Velocity);
        }
        this.previousWorldTranslation.set(translation);
    }

    @Override
    public void updateLogicalState(float f10) {
        super.updateLogicalState(f10);
        this.lastTpf = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.audioKey, "audio_key", (Savable) null);
        capsule.write(this.loop, "looping", false);
        capsule.write(this.volume, "volume", 1.0f);
        capsule.write(this.pitch, "pitch", 1.0f);
        capsule.write(this.timeOffset, "time_offset", 0.0f);
        capsule.write(this.dryFilter, "dry_filter", (Savable) null);
        capsule.write(this.velocity, "velocity", (Savable) null);
        capsule.write(this.reverbEnabled, "reverb_enabled", false);
        capsule.write(this.reverbFilter, "reverb_filter", (Savable) null);
        capsule.write(this.maxDistance, "max_distance", 20.0f);
        capsule.write(this.refDistance, "ref_distance", 10.0f);
        capsule.write(this.directional, "directional", false);
        capsule.write(this.direction, "direction", (Savable) null);
        capsule.write(this.innerAngle, "inner_angle", 360.0f);
        capsule.write(this.outerAngle, "outer_angle", 360.0f);
        capsule.write(this.positional, "positional", false);
        capsule.write(this.velocityFromTranslation, "velocity_from_translation", false);
    }

    @Override
    public AudioNode mo1263clone() {
        return (AudioNode) super.mo1263clone();
    }

    public AudioNode(AudioData audioData, AudioKey audioKey) {
        this.loop = false;
        this.volume = 1.0f;
        this.pitch = 1.0f;
        this.timeOffset = 0.0f;
        this.data = null;
        this.status = AudioSource.Status.Stopped;
        this.channel = -1;
        this.previousWorldTranslation = Vector3f.NAN.m1292clone();
        this.velocity = new Vector3f();
        this.reverbEnabled = false;
        this.maxDistance = 200.0f;
        this.refDistance = 10.0f;
        this.directional = false;
        this.direction = new Vector3f(0.0f, 0.0f, 1.0f);
        this.innerAngle = 360.0f;
        this.outerAngle = 360.0f;
        this.positional = true;
        this.velocityFromTranslation = false;
        setAudioData(audioData, audioKey);
    }

    public AudioNode(AssetManager assetManager, String str, AudioData.DataType dataType) {
        this(assetManager, str, dataType == AudioData.DataType.Stream, true);
    }

    @Deprecated
    public AudioNode(AssetManager assetManager, String str, boolean z10, boolean z11) {
        this.loop = false;
        this.volume = 1.0f;
        this.pitch = 1.0f;
        this.timeOffset = 0.0f;
        this.data = null;
        this.status = AudioSource.Status.Stopped;
        this.channel = -1;
        this.previousWorldTranslation = Vector3f.NAN.m1292clone();
        this.velocity = new Vector3f();
        this.reverbEnabled = false;
        this.maxDistance = 200.0f;
        this.refDistance = 10.0f;
        this.directional = false;
        this.direction = new Vector3f(0.0f, 0.0f, 1.0f);
        this.innerAngle = 360.0f;
        this.outerAngle = 360.0f;
        this.positional = true;
        this.velocityFromTranslation = false;
        AudioKey audioKey = new AudioKey(str, z10, z11);
        this.audioKey = audioKey;
        this.data = (AudioData) assetManager.loadAsset(audioKey);
    }

    @Deprecated
    public AudioNode(AssetManager assetManager, String str, boolean z10) {
        this(assetManager, str, z10, true);
    }

    @Deprecated
    public AudioNode(AudioRenderer audioRenderer, AssetManager assetManager, String str) {
        this(assetManager, str, AudioData.DataType.Buffer);
    }

    @Deprecated
    public AudioNode(AssetManager assetManager, String str) {
        this(assetManager, str, AudioData.DataType.Buffer);
    }
}
