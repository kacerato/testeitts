package R;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;

@Deprecated
public class k extends Fragment {

    public static final String f22509h = "RMFragment";

    public final R.a f22510b;

    public final m f22511c;

    public final Set<k> f22512d;

    @Nullable
    public com.bumptech.glide.k f22513e;

    @Nullable
    public k f22514f;

    @Nullable
    public Fragment f22515g;

    public class a implements m {
        public a() {
        }

        @Override
        @NonNull
        public Set<com.bumptech.glide.k> a() {
            Set<k> b10 = k.this.b();
            HashSet hashSet = new HashSet(b10.size());
            for (k kVar : b10) {
                if (kVar.e() != null) {
                    hashSet.add(kVar.e());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + ((Object) k.this) + VectorFormat.DEFAULT_SUFFIX;
        }
    }

    public k() {
        this(new R.a());
    }

    public final void a(k kVar) {
        this.f22512d.add(kVar);
    }

    @NonNull
    @TargetApi(17)
    public Set<k> b() {
        if (equals(this.f22514f)) {
            return Collections.unmodifiableSet(this.f22512d);
        }
        if (this.f22514f == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (k kVar : this.f22514f.b()) {
            if (g(kVar.getParentFragment())) {
                hashSet.add(kVar);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @NonNull
    public R.a c() {
        return this.f22510b;
    }

    @Nullable
    @TargetApi(17)
    public final Fragment d() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f22515g;
    }

    @Nullable
    public com.bumptech.glide.k e() {
        return this.f22513e;
    }

    @NonNull
    public m f() {
        return this.f22511c;
    }

    @TargetApi(17)
    public final boolean g(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    public final void h(@NonNull Activity activity) {
        l();
        k p10 = com.bumptech.glide.b.d(activity).n().p(activity);
        this.f22514f = p10;
        if (equals(p10)) {
            return;
        }
        this.f22514f.a(this);
    }

    public final void i(k kVar) {
        this.f22512d.remove(kVar);
    }

    public void j(@Nullable Fragment fragment) {
        this.f22515g = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        h(fragment.getActivity());
    }

    public void k(@Nullable com.bumptech.glide.k kVar) {
        this.f22513e = kVar;
    }

    public final void l() {
        k kVar = this.f22514f;
        if (kVar != null) {
            kVar.i(this);
            this.f22514f = null;
        }
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            h(activity);
        } catch (IllegalStateException e10) {
            if (Log.isLoggable(f22509h, 5)) {
                Log.w(f22509h, "Unable to register fragment with root", e10);
            }
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.f22510b.c();
        l();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        l();
    }

    @Override
    public void onStart() {
        super.onStart();
        this.f22510b.d();
    }

    @Override
    public void onStop() {
        super.onStop();
        this.f22510b.e();
    }

    @Override
    public String toString() {
        return super.toString() + "{parent=" + ((Object) d()) + VectorFormat.DEFAULT_SUFFIX;
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public k(@NonNull R.a aVar) {
        this.f22511c = new a();
        this.f22512d = new HashSet();
        this.f22510b = aVar;
    }
}
