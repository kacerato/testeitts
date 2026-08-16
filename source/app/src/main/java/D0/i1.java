package D0;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class i1 extends Fragment implements InterfaceC2448i {

    public static final WeakHashMap f4666c = new WeakHashMap();

    public final h1 f4667b = new h1();

    /* JADX WARN: Multi-variable type inference failed */
    public static i1 e(FragmentActivity fragmentActivity) {
        i1 i1Var;
        WeakHashMap weakHashMap = f4666c;
        WeakReference weakReference = (WeakReference) weakHashMap.get(fragmentActivity);
        if (weakReference != null && (i1Var = (i1) weakReference.get()) != null) {
            return i1Var;
        }
        try {
            i1 i1Var2 = (i1) fragmentActivity.getSupportFragmentManager().findFragmentByTag("SLifecycleFragmentImpl");
            if (i1Var2 == null || i1Var2.isRemoving()) {
                i1Var2 = new i1();
                fragmentActivity.getSupportFragmentManager().beginTransaction().add(i1Var2, "SLifecycleFragmentImpl").commitAllowingStateLoss();
            }
            weakHashMap.put(fragmentActivity, new WeakReference(i1Var2));
            return i1Var2;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e10);
        }
    }

    @Override
    @Nullable
    public final <T extends C2446h> T a(String str, Class<T> cls) {
        return (T) this.f4667b.c(str, cls);
    }

    @Override
    @Nullable
    public final Activity b() {
        return getActivity();
    }

    @Override
    public final void c(String str, @NonNull C2446h c2446h) {
        this.f4667b.d(str, c2446h);
    }

    @Override
    public final boolean d() {
        return this.f4667b.n();
    }

    @Override
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        this.f4667b.e(str, fileDescriptor, printWriter, strArr);
    }

    @Override
    public final boolean isCreated() {
        return this.f4667b.m();
    }

    @Override
    public final void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.f4667b.f(i10, i11, intent);
    }

    @Override
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f4667b.g(bundle);
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        this.f4667b.h();
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.f4667b.i();
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f4667b.j(bundle);
    }

    @Override
    public final void onStart() {
        super.onStart();
        this.f4667b.k();
    }

    @Override
    public final void onStop() {
        super.onStop();
        this.f4667b.l();
    }
}
