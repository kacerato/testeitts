package android.service.quicksettings;

import android.app.Dialog;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/quicksettings/TileService.class
 */
public class TileService extends Service {
    public static final String ACTION_QS_TILE = "android.service.quicksettings.action.QS_TILE";
    public static final String ACTION_QS_TILE_PREFERENCES = "android.service.quicksettings.action.QS_TILE_PREFERENCES";
    public static final String META_DATA_ACTIVE_TILE = "android.service.quicksettings.ACTIVE_TILE";

    public TileService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    public void onTileAdded() {
        throw new RuntimeException("Stub!");
    }

    public void onTileRemoved() {
        throw new RuntimeException("Stub!");
    }

    public void onStartListening() {
        throw new RuntimeException("Stub!");
    }

    public void onStopListening() {
        throw new RuntimeException("Stub!");
    }

    public void onClick() {
        throw new RuntimeException("Stub!");
    }

    public final void showDialog(Dialog dialog) {
        throw new RuntimeException("Stub!");
    }

    public final void unlockAndRun(Runnable runnable) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isSecure() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isLocked() {
        throw new RuntimeException("Stub!");
    }

    public final void startActivityAndCollapse(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public final Tile getQsTile() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public static final void requestListeningState(Context context, ComponentName component) {
        throw new RuntimeException("Stub!");
    }
}
