package android.app;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentManager.class
 */
public abstract class FragmentManager {
    public static final int POP_BACK_STACK_INCLUSIVE = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentManager$BackStackEntry.class
 */
    public interface BackStackEntry {
        int getId();

        String getName();

        int getBreadCrumbTitleRes();

        int getBreadCrumbShortTitleRes();

        CharSequence getBreadCrumbTitle();

        CharSequence getBreadCrumbShortTitle();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentManager$OnBackStackChangedListener.class
 */
    public interface OnBackStackChangedListener {
        void onBackStackChanged();
    }

    public abstract FragmentTransaction beginTransaction();

    public abstract boolean executePendingTransactions();

    public abstract Fragment findFragmentById(int i10);

    public abstract Fragment findFragmentByTag(String str);

    public abstract void popBackStack();

    public abstract boolean popBackStackImmediate();

    public abstract void popBackStack(String str, int i10);

    public abstract boolean popBackStackImmediate(String str, int i10);

    public abstract void popBackStack(int i10, int i11);

    public abstract boolean popBackStackImmediate(int i10, int i11);

    public abstract int getBackStackEntryCount();

    public abstract BackStackEntry getBackStackEntryAt(int i10);

    public abstract void addOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener);

    public abstract void removeOnBackStackChangedListener(OnBackStackChangedListener onBackStackChangedListener);

    public abstract void putFragment(Bundle bundle, String str, Fragment fragment);

    public abstract Fragment getFragment(Bundle bundle, String str);

    public abstract List<Fragment> getFragments();

    public abstract Fragment.SavedState saveFragmentInstanceState(Fragment fragment);

    public abstract boolean isDestroyed();

    public abstract void registerFragmentLifecycleCallbacks(FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z10);

    public abstract void unregisterFragmentLifecycleCallbacks(FragmentLifecycleCallbacks fragmentLifecycleCallbacks);

    public abstract Fragment getPrimaryNavigationFragment();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract boolean isStateSaved();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentManager$FragmentLifecycleCallbacks.class
 */
    public static abstract class FragmentLifecycleCallbacks {
        public FragmentLifecycleCallbacks() {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentPreAttached(FragmentManager fm2, Fragment f10, Context context) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentAttached(FragmentManager fm2, Fragment f10, Context context) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentPreCreated(FragmentManager fm2, Fragment f10, Bundle savedInstanceState) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentCreated(FragmentManager fm2, Fragment f10, Bundle savedInstanceState) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentActivityCreated(FragmentManager fm2, Fragment f10, Bundle savedInstanceState) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentViewCreated(FragmentManager fm2, Fragment f10, View v10, Bundle savedInstanceState) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentStarted(FragmentManager fm2, Fragment f10) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentResumed(FragmentManager fm2, Fragment f10) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentPaused(FragmentManager fm2, Fragment f10) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentStopped(FragmentManager fm2, Fragment f10) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentSaveInstanceState(FragmentManager fm2, Fragment f10, Bundle outState) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentViewDestroyed(FragmentManager fm2, Fragment f10) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentDestroyed(FragmentManager fm2, Fragment f10) {
            throw new RuntimeException("Stub!");
        }

        public void onFragmentDetached(FragmentManager fm2, Fragment f10) {
            throw new RuntimeException("Stub!");
        }
    }

    public FragmentManager() {
        throw new RuntimeException("Stub!");
    }

    public static void enableDebugLogging(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void invalidateOptionsMenu() {
        throw new RuntimeException("Stub!");
    }
}
