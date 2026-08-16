package com.jme3.audio;

import com.jme3.math.Vector3f;

public interface AudioSource {

    public enum Status {
        Playing,
        Paused,
        Stopped
    }

    AudioData getAudioData();

    int getChannel();

    Vector3f getDirection();

    Filter getDryFilter();

    float getInnerAngle();

    float getMaxDistance();

    float getOuterAngle();

    float getPitch();

    float getPlaybackTime();

    Vector3f getPosition();

    float getRefDistance();

    Filter getReverbFilter();

    Status getStatus();

    float getTimeOffset();

    Vector3f getVelocity();

    float getVolume();

    boolean isDirectional();

    boolean isLooping();

    boolean isPositional();

    boolean isReverbEnabled();

    void setChannel(int i10);

    void setStatus(Status status);
}
