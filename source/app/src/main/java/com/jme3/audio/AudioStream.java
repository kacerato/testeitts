package com.jme3.audio;

import com.jme3.audio.AudioData;
import com.jme3.util.NativeObject;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;

public class AudioStream extends AudioData implements Closeable {
    private static final Logger logger = Logger.getLogger(AudioStream.class.getName());
    protected float duration;
    protected boolean eof;
    protected int[] ids;

    protected InputStream f81561in;
    protected boolean open;
    protected int unqueuedBuffersBytes;

    public AudioStream() {
        this.duration = -1.0f;
        this.open = false;
        this.eof = false;
        this.unqueuedBuffersBytes = 0;
    }

    @Override
    public void close() {
        InputStream inputStream = this.f81561in;
        if (inputStream == null || !this.open) {
            throw new RuntimeException("AudioStream is already closed!");
        }
        try {
            inputStream.close();
        } catch (IOException unused) {
        }
        this.open = false;
    }

    @Override
    public NativeObject createDestructableClone() {
        return new AudioStream(this.ids);
    }

    @Override
    public void deleteObject(Object obj) {
        ((AudioRenderer) obj).deleteAudioData(this);
    }

    @Override
    public AudioData.DataType getDataType() {
        return AudioData.DataType.Stream;
    }

    @Override
    public float getDuration() {
        return this.duration;
    }

    @Override
    public int getId() {
        throw new RuntimeException("Don't use getId() on streams");
    }

    public int[] getIds() {
        return this.ids;
    }

    @Override
    public long getUniqueId() {
        return (this.ids[0] & 4294967295L) | 30064771072L;
    }

    public int getUnqueuedBufferBytes() {
        return this.unqueuedBuffersBytes;
    }

    public void initIds(int i10) {
        this.ids = new int[i10];
    }

    public boolean isEOF() {
        return this.eof;
    }

    public boolean isSeekable() {
        return this.f81561in instanceof SeekableStream;
    }

    public int readSamples(byte[] bArr, int i10, int i11) {
        if (this.open && !this.eof) {
            try {
                int read = this.f81561in.read(bArr, i10, i11);
                if (read < 0) {
                    this.eof = true;
                }
                return read;
            } catch (IOException e10) {
                e10.printStackTrace();
                this.eof = true;
            }
        }
        return -1;
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        this.ids = null;
        setUpdateNeeded();
    }

    @Override
    public void setId(int i10) {
        throw new RuntimeException("Don't use setId() on streams");
    }

    public void setIds(int[] iArr) {
        this.ids = iArr;
    }

    public void setTime(float f10) {
        Closeable closeable = this.f81561in;
        if (!(closeable instanceof SeekableStream)) {
            throw new IllegalStateException("Cannot use setTime on a stream that is not seekable. You must load the file with the streamCache option set to true");
        }
        ((SeekableStream) closeable).setTime(f10);
        this.eof = false;
        this.unqueuedBuffersBytes = 0;
    }

    public void setUnqueuedBufferBytes(int i10) {
        this.unqueuedBuffersBytes = i10;
    }

    public void updateData(InputStream inputStream, float f10) {
        if (this.f81661id != -1 || this.f81561in != null) {
            throw new IllegalStateException("Data already set!");
        }
        this.f81561in = inputStream;
        this.duration = f10;
        this.open = true;
    }

    public int getId(int i10) {
        return this.ids[i10];
    }

    public void setId(int i10, int i11) {
        this.ids[i10] = i11;
    }

    public AudioStream(int[] iArr) {
        super(-1);
        this.duration = -1.0f;
        this.open = false;
        this.eof = false;
        this.unqueuedBuffersBytes = 0;
        this.ids = iArr;
    }

    public int readSamples(byte[] bArr) {
        return readSamples(bArr, 0, bArr.length);
    }
}
