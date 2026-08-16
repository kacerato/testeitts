package android.media;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCas;
import android.media.MediaCodec;
import android.net.Uri;
import android.os.PersistableBundle;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaExtractor.class
 */
public final class MediaExtractor {
    public static final int SAMPLE_FLAG_ENCRYPTED = 2;
    public static final int SAMPLE_FLAG_PARTIAL_FRAME = 4;
    public static final int SAMPLE_FLAG_SYNC = 1;
    public static final int SEEK_TO_CLOSEST_SYNC = 2;
    public static final int SEEK_TO_NEXT_SYNC = 1;
    public static final int SEEK_TO_PREVIOUS_SYNC = 0;

    public final native void setDataSource(MediaDataSource mediaDataSource) throws IOException;

    public final native void setDataSource(FileDescriptor fileDescriptor, long j10, long j11) throws IOException;

    public final native void release();

    public final native int getTrackCount();

    public native void selectTrack(int i10);

    public native void unselectTrack(int i10);

    public native void seekTo(long j10, int i10);

    public native boolean advance();

    public native int readSampleData(ByteBuffer byteBuffer, int i10);

    public native int getSampleTrackIndex();

    public native long getSampleTime();

    public native int getSampleFlags();

    public native boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo);

    public native long getCachedDuration();

    public native boolean hasCacheReachedEndOfStream();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaExtractor$CasInfo.class
 */
    public static final class CasInfo {
        CasInfo() {
            throw new RuntimeException("Stub!");
        }

        public int getSystemId() {
            throw new RuntimeException("Stub!");
        }

        public MediaCas.Session getSession() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaExtractor$MetricsConstants.class
 */
    public static final class MetricsConstants {
        public static final String FORMAT = "android.media.mediaextractor.fmt";
        public static final String MIME_TYPE = "android.media.mediaextractor.mime";
        public static final String TRACKS = "android.media.mediaextractor.ntrk";

        MetricsConstants() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaExtractor() {
        throw new RuntimeException("Stub!");
    }

    public final void setDataSource(Context context, Uri uri, Map<String, String> headers) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final void setDataSource(String path, Map<String, String> headers) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final void setDataSource(String path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final void setDataSource(AssetFileDescriptor afd) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final void setDataSource(FileDescriptor fd2) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final void setMediaCas(MediaCas mediaCas) {
        throw new RuntimeException("Stub!");
    }

    public CasInfo getCasInfo(int index) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public DrmInitData getDrmInitData() {
        throw new RuntimeException("Stub!");
    }

    public Map<UUID, byte[]> getPsshInfo() {
        throw new RuntimeException("Stub!");
    }

    public MediaFormat getTrackFormat(int index) {
        throw new RuntimeException("Stub!");
    }

    public PersistableBundle getMetrics() {
        throw new RuntimeException("Stub!");
    }
}
