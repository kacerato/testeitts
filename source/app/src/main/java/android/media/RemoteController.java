package android.media;

import android.content.Context;
import android.os.Looper;
import android.view.KeyEvent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/RemoteController.class
 */
@Deprecated
public final class RemoteController {
    public static final int POSITION_SYNCHRONIZATION_CHECK = 1;
    public static final int POSITION_SYNCHRONIZATION_NONE = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/RemoteController$OnClientUpdateListener.class
 */
    public interface OnClientUpdateListener {
        void onClientChange(boolean z10);

        void onClientPlaybackStateUpdate(int i10);

        void onClientPlaybackStateUpdate(int i10, long j10, long j11, float f10);

        void onClientTransportControlUpdate(int i10);

        void onClientMetadataUpdate(MetadataEditor metadataEditor);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/RemoteController$MetadataEditor.class
 */
    public class MetadataEditor extends MediaMetadataEditor {
        MetadataEditor() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized void apply() {
            throw new RuntimeException("Stub!");
        }
    }

    public RemoteController(Context context, OnClientUpdateListener updateListener) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public RemoteController(Context context, OnClientUpdateListener updateListener, Looper looper) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public long getEstimatedMediaPosition() {
        throw new RuntimeException("Stub!");
    }

    public boolean sendMediaKeyEvent(KeyEvent keyEvent) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public boolean seekTo(long timeMs) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public boolean setArtworkConfiguration(int width, int height) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public boolean clearArtworkConfiguration() {
        throw new RuntimeException("Stub!");
    }

    public boolean setSynchronizationMode(int sync) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public MetadataEditor editMetadata() {
        throw new RuntimeException("Stub!");
    }
}
