package android.media;

import android.os.Handler;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm.class
 */
public final class MediaDrm {

    @Deprecated
    public static final int EVENT_KEY_EXPIRED = 3;
    public static final int EVENT_KEY_REQUIRED = 2;

    @Deprecated
    public static final int EVENT_PROVISION_REQUIRED = 1;
    public static final int EVENT_SESSION_RECLAIMED = 5;
    public static final int EVENT_VENDOR_DEFINED = 4;
    public static final int KEY_TYPE_OFFLINE = 2;
    public static final int KEY_TYPE_RELEASE = 3;
    public static final int KEY_TYPE_STREAMING = 1;
    public static final String PROPERTY_ALGORITHMS = "algorithms";
    public static final String PROPERTY_DESCRIPTION = "description";
    public static final String PROPERTY_DEVICE_UNIQUE_ID = "deviceUniqueId";
    public static final String PROPERTY_VENDOR = "vendor";
    public static final String PROPERTY_VERSION = "version";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm$OnEventListener.class
 */
    public interface OnEventListener {
        void onEvent(MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm$OnExpirationUpdateListener.class
 */
    public interface OnExpirationUpdateListener {
        void onExpirationUpdate(MediaDrm mediaDrm, byte[] bArr, long j10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm$OnKeyStatusChangeListener.class
 */
    public interface OnKeyStatusChangeListener {
        void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List<KeyStatus> list, boolean z10);
    }

    public native byte[] openSession() throws NotProvisionedException, ResourceBusyException;

    public native void closeSession(byte[] bArr);

    public native KeyRequest getKeyRequest(byte[] bArr, byte[] bArr2, String str, int i10, HashMap<String, String> hashMap) throws NotProvisionedException;

    public native byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    public native void restoreKeys(byte[] bArr, byte[] bArr2);

    public native void removeKeys(byte[] bArr);

    public native HashMap<String, String> queryKeyStatus(byte[] bArr);

    public native List<byte[]> getSecureStops();

    public native byte[] getSecureStop(byte[] bArr);

    public native void releaseSecureStops(byte[] bArr);

    public native void releaseAllSecureStops();

    public native String getPropertyString(String str);

    public native byte[] getPropertyByteArray(String str);

    public native void setPropertyString(String str, String str2);

    public native void setPropertyByteArray(String str, byte[] bArr);

    public final native void release();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm$MediaDrmStateException.class
 */
    public static final class MediaDrmStateException extends IllegalStateException {
        MediaDrmStateException() {
            throw new RuntimeException("Stub!");
        }

        public String getDiagnosticInfo() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm$KeyStatus.class
 */
    public static final class KeyStatus {
        public static final int STATUS_EXPIRED = 1;
        public static final int STATUS_INTERNAL_ERROR = 4;
        public static final int STATUS_OUTPUT_NOT_ALLOWED = 2;
        public static final int STATUS_PENDING = 3;
        public static final int STATUS_USABLE = 0;

        KeyStatus() {
            throw new RuntimeException("Stub!");
        }

        public int getStatusCode() {
            throw new RuntimeException("Stub!");
        }

        public byte[] getKeyId() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm$KeyRequest.class
 */
    public static final class KeyRequest {
        public static final int REQUEST_TYPE_INITIAL = 0;
        public static final int REQUEST_TYPE_RELEASE = 2;
        public static final int REQUEST_TYPE_RENEWAL = 1;

        KeyRequest() {
            throw new RuntimeException("Stub!");
        }

        public byte[] getData() {
            throw new RuntimeException("Stub!");
        }

        public String getDefaultUrl() {
            throw new RuntimeException("Stub!");
        }

        public int getRequestType() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm$ProvisionRequest.class
 */
    public static final class ProvisionRequest {
        ProvisionRequest() {
            throw new RuntimeException("Stub!");
        }

        public byte[] getData() {
            throw new RuntimeException("Stub!");
        }

        public String getDefaultUrl() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDrm$CryptoSession.class
 */
    public final class CryptoSession {
        CryptoSession() {
            throw new RuntimeException("Stub!");
        }

        public byte[] encrypt(byte[] keyid, byte[] input, byte[] iv) {
            throw new RuntimeException("Stub!");
        }

        public byte[] decrypt(byte[] keyid, byte[] input, byte[] iv) {
            throw new RuntimeException("Stub!");
        }

        public byte[] sign(byte[] keyid, byte[] message) {
            throw new RuntimeException("Stub!");
        }

        public boolean verify(byte[] keyid, byte[] message, byte[] signature) {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaDrm(UUID uuid) throws UnsupportedSchemeException {
        throw new RuntimeException("Stub!");
    }

    public static final boolean isCryptoSchemeSupported(UUID uuid) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean isCryptoSchemeSupported(UUID uuid, String mimeType) {
        throw new RuntimeException("Stub!");
    }

    public void setOnExpirationUpdateListener(OnExpirationUpdateListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setOnKeyStatusChangeListener(OnKeyStatusChangeListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setOnEventListener(OnEventListener listener) {
        throw new RuntimeException("Stub!");
    }

    public ProvisionRequest getProvisionRequest() {
        throw new RuntimeException("Stub!");
    }

    public void provideProvisionResponse(byte[] response) throws DeniedByServerException {
        throw new RuntimeException("Stub!");
    }

    public CryptoSession getCryptoSession(byte[] sessionId, String cipherAlgorithm, String macAlgorithm) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }
}
