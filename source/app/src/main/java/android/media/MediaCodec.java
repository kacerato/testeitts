package android.media;

import android.os.Bundle;
import android.os.Handler;
import android.os.PersistableBundle;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec.class
 */
public final class MediaCodec {
    public static final int BUFFER_FLAG_CODEC_CONFIG = 2;
    public static final int BUFFER_FLAG_END_OF_STREAM = 4;
    public static final int BUFFER_FLAG_KEY_FRAME = 1;
    public static final int BUFFER_FLAG_PARTIAL_FRAME = 8;

    @Deprecated
    public static final int BUFFER_FLAG_SYNC_FRAME = 1;
    public static final int CONFIGURE_FLAG_ENCODE = 1;
    public static final int CRYPTO_MODE_AES_CBC = 2;
    public static final int CRYPTO_MODE_AES_CTR = 1;
    public static final int CRYPTO_MODE_UNENCRYPTED = 0;

    @Deprecated
    public static final int INFO_OUTPUT_BUFFERS_CHANGED = -3;
    public static final int INFO_OUTPUT_FORMAT_CHANGED = -2;
    public static final int INFO_TRY_AGAIN_LATER = -1;
    public static final String PARAMETER_KEY_REQUEST_SYNC_FRAME = "request-sync";
    public static final String PARAMETER_KEY_SUSPEND = "drop-input-frames";
    public static final String PARAMETER_KEY_VIDEO_BITRATE = "video-bitrate";
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec$OnFrameRenderedListener.class
 */
    public interface OnFrameRenderedListener {
        void onFrameRendered(MediaCodec mediaCodec, long j10, long j11);
    }

    public final native Surface createInputSurface();

    public final native void signalEndOfInputStream();

    public final native void setVideoScalingMode(int i10);

    public final native String getName();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec$BufferInfo.class
 */
    public static final class BufferInfo {
        public int flags;
        public int offset;
        public long presentationTimeUs;
        public int size;

        public BufferInfo() {
            throw new RuntimeException("Stub!");
        }

        public void set(int newOffset, int newSize, long newTimeUs, int newFlags) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec$CodecException.class
 */
    public static final class CodecException extends IllegalStateException {
        public static final int ERROR_INSUFFICIENT_RESOURCE = 1100;
        public static final int ERROR_RECLAIMED = 1101;

        CodecException() {
            throw new RuntimeException("Stub!");
        }

        public boolean isTransient() {
            throw new RuntimeException("Stub!");
        }

        public boolean isRecoverable() {
            throw new RuntimeException("Stub!");
        }

        public int getErrorCode() {
            throw new RuntimeException("Stub!");
        }

        public String getDiagnosticInfo() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec$CryptoException.class
 */
    public static final class CryptoException extends RuntimeException {
        public static final int ERROR_INSUFFICIENT_OUTPUT_PROTECTION = 4;
        public static final int ERROR_KEY_EXPIRED = 2;
        public static final int ERROR_NO_KEY = 1;
        public static final int ERROR_RESOURCE_BUSY = 3;
        public static final int ERROR_SESSION_NOT_OPENED = 5;
        public static final int ERROR_UNSUPPORTED_OPERATION = 6;

        public CryptoException(int errorCode, String detailMessage) {
            throw new RuntimeException("Stub!");
        }

        public int getErrorCode() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec$CryptoInfo.class
 */
    public static final class CryptoInfo {
        public int mode;
        public int numSubSamples;
        public byte[] iv = null;
        public byte[] key = null;
        public int[] numBytesOfClearData = null;
        public int[] numBytesOfEncryptedData = null;

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec$CryptoInfo$Pattern.class
 */
        public static final class Pattern {
            public Pattern(int blocksToEncrypt, int blocksToSkip) {
                throw new RuntimeException("Stub!");
            }

            public void set(int blocksToEncrypt, int blocksToSkip) {
                throw new RuntimeException("Stub!");
            }

            public int getSkipBlocks() {
                throw new RuntimeException("Stub!");
            }

            public int getEncryptBlocks() {
                throw new RuntimeException("Stub!");
            }
        }

        public CryptoInfo() {
            throw new RuntimeException("Stub!");
        }

        public void set(int newNumSubSamples, int[] newNumBytesOfClearData, int[] newNumBytesOfEncryptedData, byte[] newKey, byte[] newIV, int newMode) {
            throw new RuntimeException("Stub!");
        }

        public void setPattern(Pattern newPattern) {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec$Callback.class
 */
    public static abstract class Callback {
        public abstract void onInputBufferAvailable(MediaCodec mediaCodec, int i10);

        public abstract void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, BufferInfo bufferInfo);

        public abstract void onError(MediaCodec mediaCodec, CodecException codecException);

        public abstract void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat);

        public Callback() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCodec$MetricsConstants.class
 */
    public static final class MetricsConstants {
        public static final String CODEC = "android.media.mediacodec.codec";
        public static final String ENCODER = "android.media.mediacodec.encoder";
        public static final String HEIGHT = "android.media.mediacodec.height";
        public static final String MIME_TYPE = "android.media.mediacodec.mime";
        public static final String MODE = "android.media.mediacodec.mode";
        public static final String MODE_AUDIO = "audio";
        public static final String MODE_VIDEO = "video";
        public static final String ROTATION = "android.media.mediacodec.rotation";
        public static final String SECURE = "android.media.mediacodec.secure";
        public static final String WIDTH = "android.media.mediacodec.width";

        MetricsConstants() {
            throw new RuntimeException("Stub!");
        }
    }

    MediaCodec() {
        throw new RuntimeException("Stub!");
    }

    public static MediaCodec createDecoderByType(String type) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static MediaCodec createEncoderByType(String type) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static MediaCodec createByCodecName(String name) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public final void reset() {
        throw new RuntimeException("Stub!");
    }

    public final void release() {
        throw new RuntimeException("Stub!");
    }

    public void configure(MediaFormat format, Surface surface, MediaCrypto crypto, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void configure(MediaFormat format, Surface surface, int flags, MediaDescrambler descrambler) {
        throw new RuntimeException("Stub!");
    }

    public void setOutputSurface(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public static Surface createPersistentInputSurface() {
        throw new RuntimeException("Stub!");
    }

    public void setInputSurface(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public final void start() {
        throw new RuntimeException("Stub!");
    }

    public final void stop() {
        throw new RuntimeException("Stub!");
    }

    public final void flush() {
        throw new RuntimeException("Stub!");
    }

    public final void queueInputBuffer(int index, int offset, int size, long presentationTimeUs, int flags) throws CryptoException {
        throw new RuntimeException("Stub!");
    }

    public final void queueSecureInputBuffer(int index, int offset, CryptoInfo info, long presentationTimeUs, int flags) throws CryptoException {
        throw new RuntimeException("Stub!");
    }

    public final int dequeueInputBuffer(long timeoutUs) {
        throw new RuntimeException("Stub!");
    }

    public final int dequeueOutputBuffer(BufferInfo info, long timeoutUs) {
        throw new RuntimeException("Stub!");
    }

    public final void releaseOutputBuffer(int index, boolean render) {
        throw new RuntimeException("Stub!");
    }

    public final void releaseOutputBuffer(int index, long renderTimestampNs) {
        throw new RuntimeException("Stub!");
    }

    public final MediaFormat getOutputFormat() {
        throw new RuntimeException("Stub!");
    }

    public final MediaFormat getInputFormat() {
        throw new RuntimeException("Stub!");
    }

    public final MediaFormat getOutputFormat(int index) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public ByteBuffer[] getInputBuffers() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public ByteBuffer[] getOutputBuffers() {
        throw new RuntimeException("Stub!");
    }

    public ByteBuffer getInputBuffer(int index) {
        throw new RuntimeException("Stub!");
    }

    public Image getInputImage(int index) {
        throw new RuntimeException("Stub!");
    }

    public ByteBuffer getOutputBuffer(int index) {
        throw new RuntimeException("Stub!");
    }

    public Image getOutputImage(int index) {
        throw new RuntimeException("Stub!");
    }

    public PersistableBundle getMetrics() {
        throw new RuntimeException("Stub!");
    }

    public final void setParameters(Bundle params) {
        throw new RuntimeException("Stub!");
    }

    public void setCallback(Callback cb2, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setCallback(Callback cb2) {
        throw new RuntimeException("Stub!");
    }

    public void setOnFrameRenderedListener(OnFrameRenderedListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public MediaCodecInfo getCodecInfo() {
        throw new RuntimeException("Stub!");
    }
}
