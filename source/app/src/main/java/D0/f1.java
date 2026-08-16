package D0;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class f1 extends Fragment implements InterfaceC2448i {

    public static final WeakHashMap f4648c = new WeakHashMap();

    public final h1 f4649b = new h1();

    /* JADX WARN: Multi-variable type inference failed */
    public static f1 e(Activity activity) {
        f1 f1Var;
        WeakHashMap weakHashMap = f4648c;
        WeakReference weakReference = (WeakReference) weakHashMap.get(activity);
        if (weakReference != null && (f1Var = (f1) weakReference.get()) != null) {
            return f1Var;
        }
        try {
            f1 f1Var2 = (f1) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (f1Var2 == null || f1Var2.isRemoving()) {
                f1Var2 = new f1();
                activity.getFragmentManager().beginTransaction().add(f1Var2, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            weakHashMap.put(activity, new WeakReference(f1Var2));
            return f1Var2;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e10);
        }
    }

    @Override
    @Nullable
    public final <T extends C2446h> T a(String str, Class<T> cls) {
        return (T) this.f4649b.c(str, cls);
    }

    @Override
    @Nullable
    public final Activity b() {
        return getActivity();
    }

    @Override
    public final void c(String str, @NonNull C2446h c2446h) {
        this.f4649b.d(str, c2446h);
    }

    @Override
    public final boolean d() {
        return this.f4649b.n();
    }

    @Override
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        this.f4649b.e(str, fileDescriptor, printWriter, strArr);
    }

    @Override
    public final boolean isCreated() {
        return this.f4649b.m();
    }

    @Override
    public final void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.f4649b.f(i10, i11, intent);
    }

    @Override
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f4649b.g(bundle);
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        this.f4649b.h();
    }

    @Override
    public final void onResume() {
        super.onResume();
        this.f4649b.i();
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f4649b.j(bundle);
    }

    @Override
    public final void onStart() {
        super.onStart();
        this.f4649b.k();
    }

    @Override
    public final void onStop() {
        super.onStop();
        this.f4649b.l();
    }
}
