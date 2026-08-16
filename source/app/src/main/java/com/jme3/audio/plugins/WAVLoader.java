package com.jme3.audio.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import com.jme3.audio.AudioBuffer;
import com.jme3.audio.AudioData;
import com.jme3.audio.AudioKey;
import com.jme3.audio.AudioStream;
import com.jme3.audio.SeekableStream;
import com.jme3.export.binary.ByteUtils;
import com.jme3.util.BufferUtils;
import com.jme3.util.LittleEndien;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class WAVLoader implements AssetLoader {
    private static final int i_RIFF = 1179011410;
    private static final int i_WAVE = 1163280727;
    private static final int i_data = 1635017060;
    private static final int i_fmt = 544501094;
    private static final Logger logger = Logger.getLogger(WAVLoader.class.getName());
    private int bytesPerSec;
    private float duration;

    private ResettableInputStream f81565in;

    public static class ResettableInputStream extends LittleEndien implements SeekableStream {
        private final AssetInfo info;
        private int resetOffset;

        public ResettableInputStream(AssetInfo assetInfo, InputStream inputStream) {
            super(inputStream);
            this.resetOffset = 0;
            this.info = assetInfo;
        }

        public void setResetOffset(int i10) {
            this.resetOffset = i10;
        }

        @Override
        public void setTime(float f10) {
            if (f10 != 0.0f) {
                throw new UnsupportedOperationException("Seeking WAV files not supported");
            }
            InputStream openStream = this.info.openStream();
            try {
                ByteUtils.skipFully(openStream, this.resetOffset);
                this.f81656in = new BufferedInputStream(openStream);
            } catch (IOException e10) {
                try {
                    openStream.close();
                } catch (IOException unused) {
                }
                throw new RuntimeException(e10);
            }
        }
    }

    private AudioData load(AssetInfo assetInfo, InputStream inputStream, boolean z10) throws IOException {
        AudioData audioBuffer;
        AudioStream audioStream;
        AudioBuffer audioBuffer2;
        ResettableInputStream resettableInputStream = new ResettableInputStream(assetInfo, inputStream);
        this.f81565in = resettableInputStream;
        if (resettableInputStream.readInt() == i_RIFF) {
            this.f81565in.readInt();
            if (this.f81565in.readInt() != i_WAVE) {
                throw new IOException("WAVE File does not contain audio");
            }
            int i10 = 12;
            if (z10) {
                audioBuffer = new AudioStream();
                audioBuffer2 = null;
                audioStream = audioBuffer;
            } else {
                audioBuffer = new AudioBuffer();
                audioStream = null;
                audioBuffer2 = audioBuffer;
            }
            while (true) {
                int readInt = this.f81565in.readInt();
                int readInt2 = this.f81565in.readInt();
                int i11 = i10 + 8;
                if (readInt == i_fmt) {
                    readFormatChunk(readInt2, audioBuffer);
                    i10 = i11 + readInt2;
                } else if (readInt != i_data) {
                    int skipBytes = this.f81565in.skipBytes(readInt2);
                    if (skipBytes <= 0) {
                        logger.log(Level.WARNING, "Reached end of stream prematurely while skipping unknown chunk of size {0}. Asset: {1}", new Object[]{Integer.valueOf(readInt2), assetInfo.getKey().getName()});
                        return null;
                    }
                    i10 = i11 + skipBytes;
                } else {
                    this.duration = readInt2 / this.bytesPerSec;
                    if (z10) {
                        readDataChunkForStream(i11, readInt2, audioStream);
                    } else {
                        readDataChunkForBuffer(readInt2, audioBuffer2);
                    }
                    return audioBuffer;
                }
            }
        } else {
            throw new IOException("File is not a WAVE file");
        }
    }

    private void readDataChunkForBuffer(int i10, AudioBuffer audioBuffer) throws IOException {
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = this.f81565in.read(bArr);
            if (read <= 0) {
                createByteBuffer.flip();
                audioBuffer.updateData(createByteBuffer);
                this.f81565in.close();
                return;
            }
            createByteBuffer.put(bArr, 0, Math.min(read, createByteBuffer.remaining()));
        }
    }

    private void readDataChunkForStream(int i10, int i11, AudioStream audioStream) {
        this.f81565in.setResetOffset(i10);
        audioStream.updateData(this.f81565in, this.duration);
    }

    private void readFormatChunk(int i10, AudioData audioData) throws IOException {
        if (this.f81565in.readShort() != 1) {
            throw new IOException("WAV Loader only supports PCM wave files");
        }
        short readShort = this.f81565in.readShort();
        int readInt = this.f81565in.readInt();
        this.bytesPerSec = this.f81565in.readInt();
        short readShort2 = this.f81565in.readShort();
        short readShort3 = this.f81565in.readShort();
        int i11 = ((readShort3 * readShort) * readInt) / 8;
        if (i11 != this.bytesPerSec) {
            logger.log(Level.WARNING, "Expected {0} bytes per second, got {1}", new Object[]{Integer.valueOf(i11), Integer.valueOf(this.bytesPerSec)});
        }
        if (readShort3 != 8 && readShort3 != 16) {
            throw new IOException("Only 8 and 16 bits per sample are supported!");
        }
        if ((readShort3 / 8) * readShort != readShort2) {
            throw new IOException("Invalid bytes per sample value");
        }
        if (readShort2 * readInt != this.bytesPerSec) {
            throw new IOException("Invalid bytes per second value");
        }
        audioData.setupFormat(readShort, readShort3, readInt);
        int i12 = i10 - 16;
        if (i12 > 0) {
            ByteUtils.skipFully(this.f81565in, i12);
        }
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        InputStream inputStream;
        try {
            inputStream = assetInfo.openStream();
            try {
                AudioData load = load(assetInfo, inputStream, ((AudioKey) assetInfo.getKey()).isStream());
                if (load instanceof AudioStream) {
                    inputStream = null;
                }
                this.f81565in = null;
                this.bytesPerSec = 0;
                this.duration = 0.0f;
                if (inputStream != null) {
                    inputStream.close();
                }
                return load;
            } catch (Throwable th2) {
                th = th2;
                this.f81565in = null;
                this.bytesPerSec = 0;
                this.duration = 0.0f;
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }
}
