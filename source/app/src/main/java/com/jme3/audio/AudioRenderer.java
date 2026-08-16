package com.jme3.audio;

public interface AudioRenderer {
    void cleanup();

    void deleteAudioData(AudioData audioData);

    void deleteFilter(Filter filter);

    float getSourcePlaybackTime(AudioSource audioSource);

    void initialize();

    void pauseAll();

    void pauseSource(AudioSource audioSource);

    void playSource(AudioSource audioSource);

    void playSourceInstance(AudioSource audioSource);

    void resumeAll();

    void setEnvironment(Environment environment);

    void setListener(Listener listener);

    void stopSource(AudioSource audioSource);

    void update(float f10);

    void updateListenerParam(Listener listener, ListenerParam listenerParam);

    void updateSourceParam(AudioSource audioSource, AudioParam audioParam);
}
