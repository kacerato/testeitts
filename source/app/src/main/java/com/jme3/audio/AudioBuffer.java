package com.jme3.audio;

import com.jme3.audio.AudioData;
import com.jme3.util.BufferUtils;
import com.jme3.util.NativeObject;
import java.nio.ByteBuffer;

public class AudioBuffer extends AudioData {
    protected ByteBuffer audioData;

    public AudioBuffer() {
    }

    @Override
    public NativeObject createDestructableClone() {
        return new AudioBuffer(this.f81661id);
    }

    @Override
    public void deleteNativeBuffers() {
        ByteBuffer byteBuffer = this.audioData;
        if (byteBuffer != null) {
            BufferUtils.destroyDirectBuffer(byteBuffer);
        }
    }

    @Override
    public void deleteObject(Object obj) {
        ((AudioRenderer) obj).deleteAudioData(this);
    }

    public ByteBuffer getData() {
        return this.audioData;
    }

    @Override
    public AudioData.DataType getDataType() {
        return AudioData.DataType.Buffer;
    }

    @Override
    public float getDuration() {
        int i10 = (this.bitsPerSample / 8) * this.channels * this.sampleRate;
        if (this.audioData != null) {
            return r1.limit() / i10;
        }
        return Float.NaN;
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 25769803776L;
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        setUpdateNeeded();
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + "[id=" + this.f81661id + ", ch=" + this.channels + ", bits=" + this.bitsPerSample + ", rate=" + this.sampleRate + ", duration=" + getDuration() + "]";
    }

    public void updateData(ByteBuffer byteBuffer) {
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("Currently only direct buffers are allowed");
        }
        this.audioData = byteBuffer;
        this.updateNeeded = true;
    }

    public AudioBuffer(int i10) {
        super(i10);
    }
}
