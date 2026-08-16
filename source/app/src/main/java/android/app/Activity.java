package android.app;

import android.app.ActivityManager;
import android.app.assist.AssistContent;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.media.session.MediaController;
import android.net.Uri;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.transition.Scene;
import android.transition.TransitionManager;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Toolbar;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Activity.class
 */
public class Activity extends ContextThemeWrapper implements LayoutInflater.Factory2, Window.Callback, KeyEvent.Callback, View.OnCreateContextMenuListener, ComponentCallbacks2 {
    public static final int DEFAULT_KEYS_DIALER = 1;
    public static final int DEFAULT_KEYS_DISABLE = 0;
    public static final int DEFAULT_KEYS_SEARCH_GLOBAL = 4;
    public static final int DEFAULT_KEYS_SEARCH_LOCAL = 3;
    public static final int DEFAULT_KEYS_SHORTCUT = 2;
    protected static final int[] FOCUSED_STATE_SET = null;
    public static final int RESULT_CANCELED = 0;
    public static final int RESULT_FIRST_USER = 1;
    public static final int RESULT_OK = -1;

    public Activity() {
        throw new RuntimeException("Stub!");
    }

    public Intent getIntent() {
        throw new RuntimeException("Stub!");
    }

    public void setIntent(Intent newIntent) {
        throw new RuntimeException("Stub!");
    }

    public final Application getApplication() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isChild() {
        throw new RuntimeException("Stub!");
    }

    public final Activity getParent() {
        throw new RuntimeException("Stub!");
    }

    public WindowManager getWindowManager() {
        throw new RuntimeException("Stub!");
    }

    public Window getWindow() {
        throw new RuntimeException("Stub!");
    }

    public LoaderManager getLoaderManager() {
        throw new RuntimeException("Stub!");
    }

    public View getCurrentFocus() {
        throw new RuntimeException("Stub!");
    }

    public void onCreate(Bundle savedInstanceState) {
        throw new RuntimeException("Stub!");
    }

    public void onCreate(Bundle savedInstanceState, PersistableBundle persistentState) {
        throw new RuntimeException("Stub!");
    }

    public void onRestoreInstanceState(Bundle savedInstanceState) {
        throw new RuntimeException("Stub!");
    }

    public void onRestoreInstanceState(Bundle savedInstanceState, PersistableBundle persistentState) {
        throw new RuntimeException("Stub!");
    }

    public void onPostCreate(Bundle savedInstanceState) {
        throw new RuntimeException("Stub!");
    }

    public void onPostCreate(Bundle savedInstanceState, PersistableBundle persistentState) {
        throw new RuntimeException("Stub!");
    }

    public void onStart() {
        throw new RuntimeException("Stub!");
    }

    protected void onRestart() {
        throw new RuntimeException("Stub!");
    }

    public void onStateNotSaved() {
        throw new RuntimeException("Stub!");
    }

    public void onResume() {
        throw new RuntimeException("Stub!");
    }

    public void onPostResume() {
        throw new RuntimeException("Stub!");
    }

    public boolean isVoiceInteraction() {
        throw new RuntimeException("Stub!");
    }

    public boolean isVoiceInteractionRoot() {
        throw new RuntimeException("Stub!");
    }

    public VoiceInteractor getVoiceInteractor() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLocalVoiceInteractionSupported() {
        throw new RuntimeException("Stub!");
    }

    public void startLocalVoiceInteraction(Bundle privateOptions) {
        throw new RuntimeException("Stub!");
    }

    public void onLocalVoiceInteractionStarted() {
        throw new RuntimeException("Stub!");
    }

    public void onLocalVoiceInteractionStopped() {
        throw new RuntimeException("Stub!");
    }

    public void stopLocalVoiceInteraction() {
        throw new RuntimeException("Stub!");
    }

    public void onNewIntent(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onSaveInstanceState(Bundle outState) {
        throw new RuntimeException("Stub!");
    }

    public void onSaveInstanceState(Bundle outState, PersistableBundle outPersistentState) {
        throw new RuntimeException("Stub!");
    }

    public void onPause() {
        throw new RuntimeException("Stub!");
    }

    protected void onUserLeaveHint() {
        throw new RuntimeException("Stub!");
    }

    public boolean onCreateThumbnail(Bitmap outBitmap, Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence onCreateDescription() {
        throw new RuntimeException("Stub!");
    }

    public void onProvideAssistData(Bundle data) {
        throw new RuntimeException("Stub!");
    }

    public void onProvideAssistContent(AssistContent outContent) {
        throw new RuntimeException("Stub!");
    }

    public final void requestShowKeyboardShortcuts() {
        throw new RuntimeException("Stub!");
    }

    public final void dismissKeyboardShortcutsHelper() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> data, Menu menu, int deviceId) {
        throw new RuntimeException("Stub!");
    }

    public boolean showAssist(Bundle args) {
        throw new RuntimeException("Stub!");
    }

    public void onStop() {
        throw new RuntimeException("Stub!");
    }

    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    public void reportFullyDrawn() {
        throw new RuntimeException("Stub!");
    }

    public void onMultiWindowModeChanged(boolean isInMultiWindowMode, Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onMultiWindowModeChanged(boolean isInMultiWindowMode) {
        throw new RuntimeException("Stub!");
    }

    public boolean isInMultiWindowMode() {
        throw new RuntimeException("Stub!");
    }

    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode, Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        throw new RuntimeException("Stub!");
    }

    public boolean isInPictureInPictureMode() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void enterPictureInPictureMode() {
        throw new RuntimeException("Stub!");
    }

    public boolean enterPictureInPictureMode(PictureInPictureParams params) {
        throw new RuntimeException("Stub!");
    }

    public void setPictureInPictureParams(PictureInPictureParams params) {
        throw new RuntimeException("Stub!");
    }

    public int getMaxNumPictureInPictureActions() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    public int getChangingConfigurations() {
        throw new RuntimeException("Stub!");
    }

    public Object getLastNonConfigurationInstance() {
        throw new RuntimeException("Stub!");
    }

    public Object onRetainNonConfigurationInstance() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLowMemory() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTrimMemory(int level) {
        throw new RuntimeException("Stub!");
    }

    public FragmentManager getFragmentManager() {
        throw new RuntimeException("Stub!");
    }

    public void onAttachFragment(Fragment fragment) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final Cursor managedQuery(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void startManagingCursor(Cursor c10) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void stopManagingCursor(Cursor c10) {
        throw new RuntimeException("Stub!");
    }

    public <T extends View> T findViewById(int id2) {
        throw new RuntimeException("Stub!");
    }

    public ActionBar getActionBar() {
        throw new RuntimeException("Stub!");
    }

    public void setActionBar(Toolbar toolbar) {
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

    public TransitionManager getContentTransitionManager() {
        throw new RuntimeException("Stub!");
    }

    public void setContentTransitionManager(TransitionManager tm2) {
        throw new RuntimeException("Stub!");
    }

    public Scene getContentScene() {
        throw new RuntimeException("Stub!");
    }

    public void setFinishOnTouchOutside(boolean finish) {
        throw new RuntimeException("Stub!");
    }

    public final void setDefaultKeyMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyLongPress(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyMultiple(int keyCode, int repeatCount, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void onBackPressed() {
        throw new RuntimeException("Stub!");
    }

    public boolean onKeyShortcut(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void onUserInteraction() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onWindowAttributesChanged(WindowManager.LayoutParams params) {
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

    public boolean hasWindowFocus() {
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
    public boolean dispatchTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTrackballEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchGenericMotionEvent(MotionEvent ev) {
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
    public void onPanelClosed(int featureId, Menu menu) {
        throw new RuntimeException("Stub!");
    }

    public void invalidateOptionsMenu() {
        throw new RuntimeException("Stub!");
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        throw new RuntimeException("Stub!");
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        throw new RuntimeException("Stub!");
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        throw new RuntimeException("Stub!");
    }

    public boolean onNavigateUp() {
        throw new RuntimeException("Stub!");
    }

    public boolean onNavigateUpFromChild(Activity child) {
        throw new RuntimeException("Stub!");
    }

    public void onCreateNavigateUpTaskStack(TaskStackBuilder builder) {
        throw new RuntimeException("Stub!");
    }

    public void onPrepareNavigateUpTaskStack(TaskStackBuilder builder) {
        throw new RuntimeException("Stub!");
    }

    public void onOptionsMenuClosed(Menu menu) {
        throw new RuntimeException("Stub!");
    }

    public void openOptionsMenu() {
        throw new RuntimeException("Stub!");
    }

    public void closeOptionsMenu() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreateContextMenu(ContextMenu menu, View v10, ContextMenu.ContextMenuInfo menuInfo) {
        throw new RuntimeException("Stub!");
    }

    public void registerForContextMenu(View view) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterForContextMenu(View view) {
        throw new RuntimeException("Stub!");
    }

    public void openContextMenu(View view) {
        throw new RuntimeException("Stub!");
    }

    public void closeContextMenu() {
        throw new RuntimeException("Stub!");
    }

    public boolean onContextItemSelected(MenuItem item) {
        throw new RuntimeException("Stub!");
    }

    public void onContextMenuClosed(Menu menu) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected Dialog onCreateDialog(int id2) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected Dialog onCreateDialog(int id2, Bundle args) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected void onPrepareDialog(int id2, Dialog dialog) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected void onPrepareDialog(int id2, Dialog dialog, Bundle args) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void showDialog(int id2) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final boolean showDialog(int id2, Bundle args) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void dismissDialog(int id2) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void removeDialog(int id2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onSearchRequested(SearchEvent searchEvent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onSearchRequested() {
        throw new RuntimeException("Stub!");
    }

    public final SearchEvent getSearchEvent() {
        throw new RuntimeException("Stub!");
    }

    public void startSearch(String initialQuery, boolean selectInitialQuery, Bundle appSearchData, boolean globalSearch) {
        throw new RuntimeException("Stub!");
    }

    public void triggerSearch(String query, Bundle appSearchData) {
        throw new RuntimeException("Stub!");
    }

    public void takeKeyEvents(boolean get) {
        throw new RuntimeException("Stub!");
    }

    public final boolean requestWindowFeature(int featureId) {
        throw new RuntimeException("Stub!");
    }

    public final void setFeatureDrawableResource(int featureId, int resId) {
        throw new RuntimeException("Stub!");
    }

    public final void setFeatureDrawableUri(int featureId, Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public final void setFeatureDrawable(int featureId, Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    public final void setFeatureDrawableAlpha(int featureId, int alpha) {
        throw new RuntimeException("Stub!");
    }

    public LayoutInflater getLayoutInflater() {
        throw new RuntimeException("Stub!");
    }

    public MenuInflater getMenuInflater() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTheme(int resid) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onApplyThemeResource(Resources.Theme theme, int resid, boolean first) {
        throw new RuntimeException("Stub!");
    }

    public final void requestPermissions(String[] permissions, int requestCode) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        throw new RuntimeException("Stub!");
    }

    public boolean shouldShowRequestPermissionRationale(String permission) {
        throw new RuntimeException("Stub!");
    }

    public void startActivityForResult(Intent intent, int requestCode) {
        throw new RuntimeException("Stub!");
    }

    public void startActivityForResult(Intent intent, int requestCode, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    public boolean isActivityTransitionRunning() {
        throw new RuntimeException("Stub!");
    }

    public void startIntentSenderForResult(IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    public void startIntentSenderForResult(IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startActivity(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startActivity(Intent intent, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startActivities(Intent[] intents) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startActivities(Intent[] intents, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startIntentSender(IntentSender intent, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startIntentSender(IntentSender intent, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    public boolean startActivityIfNeeded(Intent intent, int requestCode) {
        throw new RuntimeException("Stub!");
    }

    public boolean startActivityIfNeeded(Intent intent, int requestCode, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    public boolean startNextMatchingActivity(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public boolean startNextMatchingActivity(Intent intent, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    public void startActivityFromChild(Activity child, Intent intent, int requestCode) {
        throw new RuntimeException("Stub!");
    }

    public void startActivityFromChild(Activity child, Intent intent, int requestCode, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int requestCode) {
        throw new RuntimeException("Stub!");
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int requestCode, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    public void startIntentSenderFromChild(Activity child, IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    public void startIntentSenderFromChild(Activity child, IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) throws IntentSender.SendIntentException {
        throw new RuntimeException("Stub!");
    }

    public void overridePendingTransition(int enterAnim, int exitAnim) {
        throw new RuntimeException("Stub!");
    }

    public final void setResult(int resultCode) {
        throw new RuntimeException("Stub!");
    }

    public final void setResult(int resultCode, Intent data) {
        throw new RuntimeException("Stub!");
    }

    public Uri getReferrer() {
        throw new RuntimeException("Stub!");
    }

    public Uri onProvideReferrer() {
        throw new RuntimeException("Stub!");
    }

    public String getCallingPackage() {
        throw new RuntimeException("Stub!");
    }

    public ComponentName getCallingActivity() {
        throw new RuntimeException("Stub!");
    }

    public void setVisible(boolean visible) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFinishing() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDestroyed() {
        throw new RuntimeException("Stub!");
    }

    public boolean isChangingConfigurations() {
        throw new RuntimeException("Stub!");
    }

    public void recreate() {
        throw new RuntimeException("Stub!");
    }

    public void finish() {
        throw new RuntimeException("Stub!");
    }

    public void finishAffinity() {
        throw new RuntimeException("Stub!");
    }

    public void finishFromChild(Activity child) {
        throw new RuntimeException("Stub!");
    }

    public void finishAfterTransition() {
        throw new RuntimeException("Stub!");
    }

    public void finishActivity(int requestCode) {
        throw new RuntimeException("Stub!");
    }

    public void finishActivityFromChild(Activity child, int requestCode) {
        throw new RuntimeException("Stub!");
    }

    public void finishAndRemoveTask() {
        throw new RuntimeException("Stub!");
    }

    public boolean releaseInstance() {
        throw new RuntimeException("Stub!");
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        throw new RuntimeException("Stub!");
    }

    public void onActivityReenter(int resultCode, Intent data) {
        throw new RuntimeException("Stub!");
    }

    public PendingIntent createPendingResult(int requestCode, Intent data, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void setRequestedOrientation(int requestedOrientation) {
        throw new RuntimeException("Stub!");
    }

    public int getRequestedOrientation() {
        throw new RuntimeException("Stub!");
    }

    public int getTaskId() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTaskRoot() {
        throw new RuntimeException("Stub!");
    }

    public boolean moveTaskToBack(boolean nonRoot) {
        throw new RuntimeException("Stub!");
    }

    public String getLocalClassName() {
        throw new RuntimeException("Stub!");
    }

    public ComponentName getComponentName() {
        throw new RuntimeException("Stub!");
    }

    public SharedPreferences getPreferences(int mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getSystemService(String name) {
        throw new RuntimeException("Stub!");
    }

    public void setTitle(CharSequence title) {
        throw new RuntimeException("Stub!");
    }

    public void setTitle(int titleId) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setTitleColor(int textColor) {
        throw new RuntimeException("Stub!");
    }

    public final CharSequence getTitle() {
        throw new RuntimeException("Stub!");
    }

    public final int getTitleColor() {
        throw new RuntimeException("Stub!");
    }

    public void onTitleChanged(CharSequence title, int color) {
        throw new RuntimeException("Stub!");
    }

    protected void onChildTitleChanged(Activity childActivity, CharSequence title) {
        throw new RuntimeException("Stub!");
    }

    public void setTaskDescription(ActivityManager.TaskDescription taskDescription) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void setProgressBarVisibility(boolean visible) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void setProgressBarIndeterminateVisibility(boolean visible) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void setProgressBarIndeterminate(boolean indeterminate) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void setProgress(int progress) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final void setSecondaryProgress(int secondaryProgress) {
        throw new RuntimeException("Stub!");
    }

    public final void setVolumeControlStream(int streamType) {
        throw new RuntimeException("Stub!");
    }

    public final int getVolumeControlStream() {
        throw new RuntimeException("Stub!");
    }

    public final void setMediaController(MediaController controller) {
        throw new RuntimeException("Stub!");
    }

    public final MediaController getMediaController() {
        throw new RuntimeException("Stub!");
    }

    public final void runOnUiThread(Runnable action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View onCreateView(String name, Context context, AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    public void dump(String prefix, FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }

    public boolean isImmersive() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean requestVisibleBehind(boolean visible) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onVisibleBehindCanceled() {
        throw new RuntimeException("Stub!");
    }

    public void onEnterAnimationComplete() {
        throw new RuntimeException("Stub!");
    }

    public void setImmersive(boolean i10) {
        throw new RuntimeException("Stub!");
    }

    public void setVrModeEnabled(boolean enabled, ComponentName requestedComponent) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public ActionMode startActionMode(ActionMode.Callback callback, int type) {
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

    public boolean shouldUpRecreateTask(Intent targetIntent) {
        throw new RuntimeException("Stub!");
    }

    public boolean navigateUpTo(Intent upIntent) {
        throw new RuntimeException("Stub!");
    }

    public boolean navigateUpToFromChild(Activity child, Intent upIntent) {
        throw new RuntimeException("Stub!");
    }

    public Intent getParentActivityIntent() {
        throw new RuntimeException("Stub!");
    }

    public void setEnterSharedElementCallback(SharedElementCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void setExitSharedElementCallback(SharedElementCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void postponeEnterTransition() {
        throw new RuntimeException("Stub!");
    }

    public void startPostponedEnterTransition() {
        throw new RuntimeException("Stub!");
    }

    public DragAndDropPermissions requestDragAndDropPermissions(DragEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void startLockTask() {
        throw new RuntimeException("Stub!");
    }

    public void stopLockTask() {
        throw new RuntimeException("Stub!");
    }

    public void showLockTaskEscapeMessage() {
        throw new RuntimeException("Stub!");
    }
}
