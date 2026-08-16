package com.jme3.audio;

public class AudioContext {
    private static final ThreadLocal<AudioRenderer> audioRenderer = new ThreadLocal<>();

    private AudioContext() {
    }

    public static AudioRenderer getAudioRenderer() {
        return audioRenderer.get();
    }

    public static void setAudioRenderer(AudioRenderer audioRenderer2) {
        audioRenderer.set(audioRenderer2);
    }
}
