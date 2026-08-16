package android.service.media;

import android.app.Service;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.IBinder;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/media/MediaBrowserService.class
 */
public abstract class MediaBrowserService extends Service {
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";

    public abstract BrowserRoot onGetRoot(String str, int i10, Bundle bundle);

    public abstract void onLoadChildren(String str, Result<List<MediaBrowser.MediaItem>> result);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/media/MediaBrowserService$Result.class
 */
    public class Result<T> {
        Result() {
            throw new RuntimeException("Stub!");
        }

        public void sendResult(T result) {
            throw new RuntimeException("Stub!");
        }

        public void detach() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/media/MediaBrowserService$BrowserRoot.class
 */
    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";

        public BrowserRoot(String rootId, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public String getRootId() {
            throw new RuntimeException("Stub!");
        }

        public Bundle getExtras() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaBrowserService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dump(FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }

    public void onLoadChildren(String parentId, Result<List<MediaBrowser.MediaItem>> result, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    public void onLoadItem(String itemId, Result<MediaBrowser.MediaItem> result) {
        throw new RuntimeException("Stub!");
    }

    public void setSessionToken(MediaSession.Token token) {
        throw new RuntimeException("Stub!");
    }

    public MediaSession.Token getSessionToken() {
        throw new RuntimeException("Stub!");
    }

    public final Bundle getBrowserRootHints() {
        throw new RuntimeException("Stub!");
    }

    public void notifyChildrenChanged(String parentId) {
        throw new RuntimeException("Stub!");
    }

    public void notifyChildrenChanged(String parentId, Bundle options) {
        throw new RuntimeException("Stub!");
    }
}
