package com.jme3.cinematic.events;

import android.provider.MediaStore;
import com.jme3.anim.AnimComposer;
import com.jme3.anim.tween.action.Action;
import com.jme3.animation.LoopMode;
import com.jme3.app.Application;
import com.jme3.cinematic.Cinematic;
import com.jme3.cinematic.PlayState;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AnimEvent extends AbstractCinematicEvent {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(AnimEvent.class.getName());
    private String actionName;
    private Cinematic cinematic;
    private AnimComposer composer;
    private String layerName;

    public AnimEvent(AnimComposer animComposer, String str, String str2) {
        this.composer = animComposer;
        this.actionName = str;
        this.layerName = str2;
        this.initialDuration = (float) animComposer.action(str).getLength();
    }

    @Override
    public void initEvent(Application application, Cinematic cinematic) {
        super.initEvent(application, cinematic);
        this.cinematic = cinematic;
    }

    @Override
    public void onPause() {
        Logger logger2 = logger;
        Level level = Level.INFO;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "layer={0} action={1}", new Object[]{this.layerName, this.actionName});
        }
        if (this.composer.getLayerManager(this.layerName) == this) {
            this.composer.action(this.actionName).setSpeed(0.0d);
        }
    }

    @Override
    public void onPlay() {
        Logger logger2 = logger;
        Level level = Level.INFO;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "layer={0} action={1}", new Object[]{this.layerName, this.actionName});
        }
        Action currentAction = this.composer.getCurrentAction(this.layerName);
        Action action = this.composer.action(this.actionName);
        if (currentAction != action) {
            this.composer.setCurrentAction(this.actionName, this.layerName);
        }
        if (this.playState == PlayState.Stopped) {
            this.composer.setTime(this.layerName, 0.0d);
        }
        action.setSpeed(this.speed);
        this.composer.setLayerManager(this.layerName, this);
    }

    @Override
    public void onStop() {
        Logger logger2 = logger;
        Level level = Level.INFO;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "layer={0} action={1}", new Object[]{this.layerName, this.actionName});
        }
        if (this.composer.getLayerManager(this.layerName) == this) {
            this.composer.removeCurrentAction(this.layerName);
            this.composer.setLayerManager(this.layerName, null);
        }
    }

    @Override
    public void onUpdate(float f10) {
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.actionName = capsule.readString("actionName", "");
        this.cinematic = (Cinematic) capsule.readSavable("cinematic", null);
        this.composer = (AnimComposer) capsule.readSavable(MediaStore.Audio.AudioColumns.COMPOSER, null);
        this.layerName = capsule.readString("layerName", "Default");
    }

    @Override
    public void setSpeed(float f10) {
        logger.log(Level.INFO, "speed = {0}", Float.valueOf(f10));
        super.setSpeed(f10);
        if (this.playState != PlayState.Stopped) {
            this.composer.action(this.actionName).setSpeed(f10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setTime(float f10) {
        Logger logger2 = logger;
        Level level = Level.INFO;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "layer={0} action={1} time={2}", new Object[]{this.layerName, this.actionName, Float.valueOf(f10)});
        }
        super.setTime(f10);
        Action currentAction = this.composer.getCurrentAction(this.layerName);
        Action action = this.composer.action(this.actionName);
        if (currentAction != action) {
            this.composer.setCurrentAction(this.actionName, this.layerName);
        }
        float length = (float) action.getLength();
        LoopMode loopMode = this.loopMode;
        if (loopMode != LoopMode.Loop) {
            if (loopMode == LoopMode.Cycle) {
                float ceil = (float) Math.ceil(f10 / length);
                if (ceil > 0.0f && ceil % 2.0f == 0.0f) {
                    f10 = length - (f10 % length);
                }
            }
            if (f10 >= 0.0f) {
                this.composer.setTime(this.layerName, 0.0d);
                return;
            } else if (f10 <= length) {
                this.composer.setTime(this.layerName, f10);
                return;
            } else {
                this.composer.setTime(this.layerName, f10);
                stop();
                return;
            }
        }
        f10 %= length;
        if (f10 >= 0.0f) {
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.actionName, "actionName", "");
        capsule.write(this.cinematic, "cinematic", (Savable) null);
        capsule.write(this.composer, MediaStore.Audio.AudioColumns.COMPOSER, (Savable) null);
        capsule.write(this.layerName, "layerName", "Default");
    }

    public AnimEvent() {
    }
}
