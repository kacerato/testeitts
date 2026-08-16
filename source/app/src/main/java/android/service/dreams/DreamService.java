package android.service.dreams;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/dreams/DreamService.class
 */
public class DreamService extends Service implements Window.Callback {
    public static final String DREAM_META_DATA = "android.service.dream";
    public static final String SERVICE_INTERFACE = "android.service.dreams.DreamService";

    public DreamService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyShortcutEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View onCreatePanelView(int featureId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onCreatePanelMenu(int featureId, Menu menu) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onPreparePanel(int featureId, View view, Menu menu) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onMenuOpened(int featureId, Menu menu) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onMenuItemSelected(int featureId, MenuItem item) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onWindowAttributesChanged(WindowManager.LayoutParams attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onContentChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onPanelClosed(int featureId, Menu menu) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onSearchRequested(SearchEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onSearchRequested() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int type) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onActionModeStarted(ActionMode mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onActionModeFinished(ActionMode mode) {
        throw new RuntimeException("Stub!");
    }

    public WindowManager getWindowManager() {
        throw new RuntimeException("Stub!");
    }

    public Window getWindow() {
        throw new RuntimeException("Stub!");
    }

    public void setContentView(int layoutResID) {
        throw new RuntimeException("Stub!");
    }

    public void setContentView(View view) {
        throw new RuntimeException("Stub!");
    }

    public void setContentView(View view, ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public void addContentView(View view, ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public <T extends View> T findViewById(int id2) {
        throw new RuntimeException("Stub!");
    }

    public void setInteractive(boolean interactive) {
        throw new RuntimeException("Stub!");
    }

    public boolean isInteractive() {
        throw new RuntimeException("Stub!");
    }

    public void setFullscreen(boolean fullscreen) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFullscreen() {
        throw new RuntimeException("Stub!");
    }

    public void setScreenBright(boolean screenBright) {
        throw new RuntimeException("Stub!");
    }

    public boolean isScreenBright() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    public void onDreamingStarted() {
        throw new RuntimeException("Stub!");
    }

    public void onDreamingStopped() {
        throw new RuntimeException("Stub!");
    }

    public void onWakeUp() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public final void finish() {
        throw new RuntimeException("Stub!");
    }

    public final void wakeUp() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void dump(FileDescriptor fd2, PrintWriter pw, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
