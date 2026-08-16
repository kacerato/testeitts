package android.app;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentTransaction.class
 */
public abstract class FragmentTransaction {
    public static final int TRANSIT_ENTER_MASK = 4096;
    public static final int TRANSIT_EXIT_MASK = 8192;
    public static final int TRANSIT_FRAGMENT_CLOSE = 8194;
    public static final int TRANSIT_FRAGMENT_FADE = 4099;
    public static final int TRANSIT_FRAGMENT_OPEN = 4097;
    public static final int TRANSIT_NONE = 0;
    public static final int TRANSIT_UNSET = -1;

    public abstract FragmentTransaction add(Fragment fragment, String str);

    public abstract FragmentTransaction add(int i10, Fragment fragment);

    public abstract FragmentTransaction add(int i10, Fragment fragment, String str);

    public abstract FragmentTransaction replace(int i10, Fragment fragment);

    public abstract FragmentTransaction replace(int i10, Fragment fragment, String str);

    public abstract FragmentTransaction remove(Fragment fragment);

    public abstract FragmentTransaction hide(Fragment fragment);

    public abstract FragmentTransaction show(Fragment fragment);

    public abstract FragmentTransaction detach(Fragment fragment);

    public abstract FragmentTransaction attach(Fragment fragment);

    public abstract FragmentTransaction setPrimaryNavigationFragment(Fragment fragment);

    public abstract boolean isEmpty();

    public abstract FragmentTransaction setCustomAnimations(int i10, int i11);

    public abstract FragmentTransaction setCustomAnimations(int i10, int i11, int i12, int i13);

    public abstract FragmentTransaction setTransition(int i10);

    public abstract FragmentTransaction addSharedElement(View view, String str);

    public abstract FragmentTransaction setTransitionStyle(int i10);

    public abstract FragmentTransaction addToBackStack(String str);

    public abstract boolean isAddToBackStackAllowed();

    public abstract FragmentTransaction disallowAddToBackStack();

    public abstract FragmentTransaction setBreadCrumbTitle(int i10);

    public abstract FragmentTransaction setBreadCrumbTitle(CharSequence charSequence);

    public abstract FragmentTransaction setBreadCrumbShortTitle(int i10);

    public abstract FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence);

    public abstract FragmentTransaction setReorderingAllowed(boolean z10);

    public abstract FragmentTransaction runOnCommit(Runnable runnable);

    public abstract int commit();

    public abstract int commitAllowingStateLoss();

    public abstract void commitNow();

    public abstract void commitNowAllowingStateLoss();

    public FragmentTransaction() {
        throw new RuntimeException("Stub!");
    }
}
