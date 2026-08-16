package android.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentController.class
 */
public class FragmentController {
    FragmentController() {
        throw new RuntimeException("Stub!");
    }

    public static final FragmentController createController(FragmentHostCallback<?> callbacks) {
        throw new RuntimeException("Stub!");
    }

    public FragmentManager getFragmentManager() {
        throw new RuntimeException("Stub!");
    }

    public LoaderManager getLoaderManager() {
        throw new RuntimeException("Stub!");
    }

    public Fragment findFragmentByWho(String who) {
        throw new RuntimeException("Stub!");
    }

    public void attachHost(Fragment parent) {
        throw new RuntimeException("Stub!");
    }

    public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    public void noteStateNotSaved() {
        throw new RuntimeException("Stub!");
    }

    public Parcelable saveAllState() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void restoreAllState(Parcelable state, List<Fragment> nonConfigList) {
        throw new RuntimeException("Stub!");
    }

    public void restoreAllState(Parcelable state, FragmentManagerNonConfig nonConfig) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public List<Fragment> retainNonConfig() {
        throw new RuntimeException("Stub!");
    }

    public FragmentManagerNonConfig retainNestedNonConfig() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchCreate() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchActivityCreated() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchStart() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchResume() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchPause() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchStop() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchDestroyView() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchDestroy() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void dispatchMultiWindowModeChanged(boolean isInMultiWindowMode) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchMultiWindowModeChanged(boolean isInMultiWindowMode, Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void dispatchPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchPictureInPictureModeChanged(boolean isInPictureInPictureMode, Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchLowMemory() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchTrimMemory(int level) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchOptionsItemSelected(MenuItem item) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchContextItemSelected(MenuItem item) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        throw new RuntimeException("Stub!");
    }

    public boolean execPendingActions() {
        throw new RuntimeException("Stub!");
    }

    public void doLoaderStart() {
        throw new RuntimeException("Stub!");
    }

    public void doLoaderStop(boolean retain) {
        throw new RuntimeException("Stub!");
    }

    public void doLoaderDestroy() {
        throw new RuntimeException("Stub!");
    }

    public void reportLoaderStart() {
        throw new RuntimeException("Stub!");
    }

    public ArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        throw new RuntimeException("Stub!");
    }

    public void restoreLoaderNonConfig(ArrayMap<String, LoaderManager> loaderManagers) {
        throw new RuntimeException("Stub!");
    }

    public void dumpLoaders(String prefix, FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
