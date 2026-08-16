package android.media;

import android.media.MediaCodec;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaMuxer.class
 */
public final class MediaMuxer {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaMuxer$OutputFormat.class
 */
    public static final class OutputFormat {
        public static final int MUXER_OUTPUT_3GPP = 2;
        public static final int MUXER_OUTPUT_MPEG_4 = 0;
        public static final int MUXER_OUTPUT_WEBM = 1;

        OutputFormat() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaMuxer(String path, int format) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public MediaMuxer(FileDescriptor fd2, int format) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setOrientationHint(int degrees) {
        throw new RuntimeException("Stub!");
    }

    public void setLocation(float latitude, float longitude) {
        throw new RuntimeException("Stub!");
    }

    public void start() {
        throw new RuntimeException("Stub!");
    }

    public void stop() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public int addTrack(MediaFormat format) {
        throw new RuntimeException("Stub!");
    }

    public void writeSampleData(int trackIndex, ByteBuffer byteBuf, MediaCodec.BufferInfo bufferInfo) {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }
}
