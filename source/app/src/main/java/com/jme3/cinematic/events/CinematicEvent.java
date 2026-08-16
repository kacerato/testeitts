package com.jme3.cinematic.events;

import com.jme3.animation.LoopMode;
import com.jme3.app.Application;
import com.jme3.cinematic.Cinematic;
import com.jme3.cinematic.PlayState;
import com.jme3.export.Savable;

public interface CinematicEvent extends Savable {
    void dispose();

    void forceStop();

    float getDuration();

    float getInitialDuration();

    LoopMode getLoopMode();

    PlayState getPlayState();

    float getSpeed();

    float getTime();

    void initEvent(Application application, Cinematic cinematic);

    void internalUpdate(float f10);

    void pause();

    void play();

    void setInitialDuration(float f10);

    void setLoopMode(LoopMode loopMode);

    void setSpeed(float f10);

    void setTime(float f10);

    void stop();
}
