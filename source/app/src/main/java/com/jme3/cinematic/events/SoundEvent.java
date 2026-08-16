package com.jme3.cinematic.events;

import android.app.Instrumentation;
import com.jme3.animation.LoopMode;
import com.jme3.app.Application;
import com.jme3.audio.AudioData;
import com.jme3.audio.AudioNode;
import com.jme3.audio.AudioSource;
import com.jme3.cinematic.Cinematic;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import java.io.IOException;

public class SoundEvent extends AbstractCinematicEvent {
    protected AudioNode audioNode;
    protected String path;
    protected boolean stream;

    public SoundEvent(String str) {
        this.stream = false;
        this.path = str;
    }

    public AudioNode getAudioNode() {
        return this.audioNode;
    }

    @Override
    public void initEvent(Application application, Cinematic cinematic) {
        super.initEvent(application, cinematic);
        AudioNode audioNode = new AudioNode(application.getAssetManager(), this.path, this.stream ? AudioData.DataType.Stream : AudioData.DataType.Buffer);
        this.audioNode = audioNode;
        audioNode.setPositional(false);
        setLoopMode(this.loopMode);
    }

    @Override
    public void onPause() {
        this.audioNode.pause();
    }

    @Override
    public void onPlay() {
        this.audioNode.play();
    }

    @Override
    public void onStop() {
        this.audioNode.stop();
    }

    @Override
    public void onUpdate(float f10) {
        if (this.audioNode.getStatus() == AudioSource.Status.Stopped) {
            stop();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.path = capsule.readString("path", "");
        this.stream = capsule.readBoolean(Instrumentation.REPORT_KEY_STREAMRESULT, false);
    }

    @Override
    public void setLoopMode(LoopMode loopMode) {
        super.setLoopMode(loopMode);
        if (loopMode != LoopMode.DontLoop) {
            this.audioNode.setLooping(true);
        } else {
            this.audioNode.setLooping(false);
        }
    }

    @Override
    public void setTime(float f10) {
        super.setTime(f10);
        if (f10 < 0.0f) {
            stop();
        } else {
            this.audioNode.setTimeOffset(f10);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.path, "path", "");
        capsule.write(this.stream, Instrumentation.REPORT_KEY_STREAMRESULT, false);
    }

    public SoundEvent(String str, boolean z10) {
        this(str);
        this.stream = z10;
    }

    public SoundEvent(String str, boolean z10, float f10) {
        super(f10);
        this.path = str;
        this.stream = z10;
    }

    public SoundEvent(String str, boolean z10, LoopMode loopMode) {
        super(loopMode);
        this.path = str;
        this.stream = z10;
    }

    public SoundEvent(String str, boolean z10, float f10, LoopMode loopMode) {
        super(f10, loopMode);
        this.path = str;
        this.stream = z10;
    }

    public SoundEvent(String str, float f10) {
        super(f10);
        this.stream = false;
        this.path = str;
    }

    public SoundEvent(String str, LoopMode loopMode) {
        super(loopMode);
        this.stream = false;
        this.path = str;
    }

    public SoundEvent(String str, float f10, LoopMode loopMode) {
        super(f10, loopMode);
        this.stream = false;
        this.path = str;
    }

    public SoundEvent() {
        this.stream = false;
    }
}
