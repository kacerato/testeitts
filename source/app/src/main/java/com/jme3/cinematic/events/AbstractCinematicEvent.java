package com.jme3.cinematic.events;

import com.jme3.animation.AnimationUtils;
import com.jme3.animation.LoopMode;
import com.jme3.app.Application;
import com.jme3.cinematic.Cinematic;
import com.jme3.cinematic.PlayState;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractCinematicEvent implements CinematicEvent {
    protected float initialDuration;
    protected List<CinematicEventListener> listeners;
    protected LoopMode loopMode;
    protected PlayState playState;
    protected boolean resuming;
    protected float speed;
    protected float time;

    public AbstractCinematicEvent() {
        this.playState = PlayState.Stopped;
        this.loopMode = LoopMode.DontLoop;
        this.initialDuration = 10.0f;
        this.speed = 1.0f;
        this.time = 0.0f;
        this.resuming = false;
    }

    private List<CinematicEventListener> getListeners() {
        if (this.listeners == null) {
            this.listeners = new ArrayList();
        }
        return this.listeners;
    }

    public void addListener(CinematicEventListener cinematicEventListener) {
        getListeners().add(cinematicEventListener);
    }

    @Override
    public void dispose() {
    }

    @Override
    public void forceStop() {
        stop();
    }

    @Override
    public float getDuration() {
        return this.initialDuration / this.speed;
    }

    @Override
    public float getInitialDuration() {
        return this.initialDuration;
    }

    @Override
    public LoopMode getLoopMode() {
        return this.loopMode;
    }

    @Override
    public PlayState getPlayState() {
        return this.playState;
    }

    @Override
    public float getSpeed() {
        return this.speed;
    }

    @Override
    public float getTime() {
        return this.time;
    }

    @Override
    public void initEvent(Application application, Cinematic cinematic) {
    }

    @Override
    public void internalUpdate(float f10) {
        if (this.playState == PlayState.Playing) {
            this.time += this.speed * f10;
            onUpdate(f10);
            float f11 = this.time;
            float f12 = this.initialDuration;
            if (f11 >= f12 && this.loopMode == LoopMode.DontLoop) {
                stop();
                return;
            }
            if (f11 >= f12 && this.loopMode == LoopMode.Loop) {
                setTime(0.0f);
                return;
            }
            float clampWrapTime = AnimationUtils.clampWrapTime(f11, f12, this.loopMode);
            this.time = clampWrapTime;
            if (clampWrapTime < 0.0f) {
                this.speed = -this.speed;
                this.time = -clampWrapTime;
            }
        }
    }

    public abstract void onPause();

    public abstract void onPlay();

    public abstract void onStop();

    public abstract void onUpdate(float f10);

    @Override
    public void pause() {
        onPause();
        this.playState = PlayState.Paused;
        if (this.listeners != null) {
            for (int i10 = 0; i10 < this.listeners.size(); i10++) {
                this.listeners.get(i10).onPause(this);
            }
        }
    }

    @Override
    public void play() {
        onPlay();
        this.playState = PlayState.Playing;
        if (this.listeners != null) {
            for (int i10 = 0; i10 < this.listeners.size(); i10++) {
                this.listeners.get(i10).onPlay(this);
            }
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.playState = (PlayState) capsule.readEnum("playState", PlayState.class, PlayState.Stopped);
        this.speed = capsule.readFloat("speed", 1.0f);
        this.initialDuration = capsule.readFloat("initialDuration", capsule.readFloat("initalDuration", 10.0f));
        this.loopMode = (LoopMode) capsule.readEnum("loopMode", LoopMode.class, LoopMode.DontLoop);
    }

    public void removeListener(CinematicEventListener cinematicEventListener) {
        getListeners().remove(cinematicEventListener);
    }

    @Override
    public void setInitialDuration(float f10) {
        this.initialDuration = f10;
    }

    @Override
    public void setLoopMode(LoopMode loopMode) {
        this.loopMode = loopMode;
    }

    @Override
    public void setSpeed(float f10) {
        this.speed = f10;
    }

    @Override
    public void setTime(float f10) {
        this.time = f10;
    }

    @Override
    public void stop() {
        onStop();
        this.time = 0.0f;
        this.playState = PlayState.Stopped;
        if (this.listeners != null) {
            for (int i10 = 0; i10 < this.listeners.size(); i10++) {
                this.listeners.get(i10).onStop(this);
            }
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.playState, "playState", PlayState.Stopped);
        capsule.write(this.speed, "speed", 1.0f);
        capsule.write(this.initialDuration, "initialDuration", 10.0f);
        capsule.write(this.loopMode, "loopMode", LoopMode.DontLoop);
    }

    public AbstractCinematicEvent(float f10) {
        this.playState = PlayState.Stopped;
        this.loopMode = LoopMode.DontLoop;
        this.speed = 1.0f;
        this.time = 0.0f;
        this.resuming = false;
        this.initialDuration = f10;
    }

    public AbstractCinematicEvent(LoopMode loopMode) {
        this.playState = PlayState.Stopped;
        LoopMode loopMode2 = LoopMode.DontLoop;
        this.initialDuration = 10.0f;
        this.speed = 1.0f;
        this.time = 0.0f;
        this.resuming = false;
        this.loopMode = loopMode;
    }

    public AbstractCinematicEvent(float f10, LoopMode loopMode) {
        this.playState = PlayState.Stopped;
        LoopMode loopMode2 = LoopMode.DontLoop;
        this.speed = 1.0f;
        this.time = 0.0f;
        this.resuming = false;
        this.initialDuration = f10;
        this.loopMode = loopMode;
    }
}
