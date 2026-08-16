package android.media;

import android.media.MediaCasException;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCas.class
 */
public final class MediaCas implements AutoCloseable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCas$EventListener.class
 */
    public interface EventListener {
        void onEvent(MediaCas mediaCas, int i10, int i11, byte[] bArr);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCas$PluginDescriptor.class
 */
    public static class PluginDescriptor {
        PluginDescriptor() {
            throw new RuntimeException("Stub!");
        }

        public int getSystemId() {
            throw new RuntimeException("Stub!");
        }

        public String getName() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaCas$Session.class
 */
    public final class Session implements AutoCloseable {
        Session() {
            throw new RuntimeException("Stub!");
        }

        public void setPrivateData(byte[] data) throws MediaCasException {
            throw new RuntimeException("Stub!");
        }

        public void processEcm(byte[] data, int offset, int length) throws MediaCasException {
            throw new RuntimeException("Stub!");
        }

        public void processEcm(byte[] data) throws MediaCasException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void close() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaCas(int CA_system_id) throws MediaCasException.UnsupportedCasException {
        throw new RuntimeException("Stub!");
    }

    public static boolean isSystemIdSupported(int CA_system_id) {
        throw new RuntimeException("Stub!");
    }

    public static PluginDescriptor[] enumeratePlugins() {
        throw new RuntimeException("Stub!");
    }

    public void setEventListener(EventListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setPrivateData(byte[] data) throws MediaCasException {
        throw new RuntimeException("Stub!");
    }

    public Session openSession() throws MediaCasException {
        throw new RuntimeException("Stub!");
    }

    public void processEmm(byte[] data, int offset, int length) throws MediaCasException {
        throw new RuntimeException("Stub!");
    }

    public void processEmm(byte[] data) throws MediaCasException {
        throw new RuntimeException("Stub!");
    }

    public void sendEvent(int event, int arg, byte[] data) throws MediaCasException {
        throw new RuntimeException("Stub!");
    }

    public void provision(String provisionString) throws MediaCasException {
        throw new RuntimeException("Stub!");
    }

    public void refreshEntitlements(int refreshType, byte[] refreshData) throws MediaCasException {
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
