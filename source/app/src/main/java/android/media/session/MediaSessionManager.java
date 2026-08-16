package android.media.session;

import android.content.ComponentName;
import android.os.Handler;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaSessionManager.class
 */
public final class MediaSessionManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaSessionManager$OnActiveSessionsChangedListener.class
 */
    public interface OnActiveSessionsChangedListener {
        void onActiveSessionsChanged(List<MediaController> list);
    }

    MediaSessionManager() {
        throw new RuntimeException("Stub!");
    }

    public List<MediaController> getActiveSessions(ComponentName notificationListener) {
        throw new RuntimeException("Stub!");
    }

    public void addOnActiveSessionsChangedListener(OnActiveSessionsChangedListener sessionListener, ComponentName notificationListener) {
        throw new RuntimeException("Stub!");
    }

    public void addOnActiveSessionsChangedListener(OnActiveSessionsChangedListener sessionListener, ComponentName notificationListener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnActiveSessionsChangedListener(OnActiveSessionsChangedListener listener) {
        throw new RuntimeException("Stub!");
    }
}
