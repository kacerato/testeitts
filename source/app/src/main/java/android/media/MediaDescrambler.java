package android.media;

import android.media.MediaCas;
import android.media.MediaCasException;
import android.media.MediaCodec;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDescrambler.class
 */
public final class MediaDescrambler implements AutoCloseable {
    public MediaDescrambler(int CA_system_id) throws MediaCasException.UnsupportedCasException {
        throw new RuntimeException("Stub!");
    }

    public final boolean requiresSecureDecoderComponent(String mime) {
        throw new RuntimeException("Stub!");
    }

    public final void setMediaCasSession(MediaCas.Session session) {
        throw new RuntimeException("Stub!");
    }

    public final int descramble(ByteBuffer srcBuf, ByteBuffer dstBuf, MediaCodec.CryptoInfo cryptoInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }
}
