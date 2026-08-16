package android.media;

import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCrypto.class
 */
public final class MediaCrypto {
    public final native boolean requiresSecureDecoderComponent(String str);

    public final native void setMediaDrmSession(byte[] bArr) throws MediaCryptoException;

    public final native void release();

    public MediaCrypto(UUID uuid, byte[] initData) throws MediaCryptoException {
        throw new RuntimeException("Stub!");
    }

    public static final boolean isCryptoSchemeSupported(UUID uuid) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }
}
