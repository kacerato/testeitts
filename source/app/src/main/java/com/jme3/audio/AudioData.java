package com.jme3.audio;

import com.jme3.util.NativeObject;

public abstract class AudioData extends NativeObject {
    protected int bitsPerSample;
    protected int channels;
    protected int sampleRate;

    public enum DataType {
        Buffer,
        Stream
    }

    public AudioData() {
    }

    public int getBitsPerSample() {
        return this.bitsPerSample;
    }

    public int getChannels() {
        return this.channels;
    }

    public abstract DataType getDataType();

    public abstract float getDuration();

    public int getSampleRate() {
        return this.sampleRate;
    }

    public void setupFormat(int i10, int i11, int i12) {
        if (this.f81661id != -1) {
            throw new IllegalStateException("Already set up");
        }
        this.channels = i10;
        this.bitsPerSample = i11;
        this.sampleRate = i12;
    }

    public AudioData(int i10) {
        super(i10);
    }
}
