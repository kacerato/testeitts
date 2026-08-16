package R;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;

public class o extends Fragment {

    public static final String f22535h = "SupportRMFragment";

    public final R.a f22536b;

    public final m f22537c;

    public final Set<o> f22538d;

    @Nullable
    public o f22539e;

    @Nullable
    public com.bumptech.glide.k f22540f;

    @Nullable
    public Fragment f22541g;

    public class a implements m {
        public a() {
        }

        @Override
        @NonNull
        public Set<com.bumptech.glide.k> a() {
            Set<o> f10 = o.this.f();
            HashSet hashSet = new HashSet(f10.size());
            for (o oVar : f10) {
                if (oVar.i() != null) {
                    hashSet.add(oVar.i());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + ((Object) o.this) + VectorFormat.DEFAULT_SUFFIX;
        }
    }

    public o() {
        this(new R.a());
    }

    @Nullable
    public static FragmentManager k(@NonNull Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    public final void e(o oVar) {
        this.f22538d.add(oVar);
    }

    @NonNull
    public Set<o> f() {
        o oVar = this.f22539e;
        if (oVar == null) {
            return Collections.emptySet();
        }
        if (equals(oVar)) {
            return Collections.unmodifiableSet(this.f22538d);
        }
        HashSet hashSet = new HashSet();
        for (o oVar2 : this.f22539e.f()) {
            if (l(oVar2.h())) {
                hashSet.add(oVar2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @NonNull
    public R.a g() {
        return this.f22536b;
    }

    @Nullable
    public final Fragment h() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f22541g;
    }

    @Nullable
    public com.bumptech.glide.k i() {
        return this.f22540f;
    }

    @NonNull
    public m j() {
        return this.f22537c;
    }

    public final boolean l(@NonNull Fragment fragment) {
        Fragment h10 = h();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(h10)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    public final void m(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        q();
        o r10 = com.bumptech.glide.b.d(context).n().r(context, fragmentManager);
        this.f22539e = r10;
        if (equals(r10)) {
            return;
        }
        this.f22539e.e(this);
    }

    public final void n(o oVar) {
        this.f22538d.remove(oVar);
    }

    public void o(@Nullable Fragment fragment) {
        FragmentManager k10;
        this.f22541g = fragment;
        if (fragment == null || fragment.getContext() == null || (k10 = k(fragment)) == null) {
            return;
        }
        m(fragment.getContext(), k10);
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager k10 = k(this);
        if (k10 == null) {
            if (Log.isLoggable(f22535h, 5)) {
                Log.w(f22535h, "Unable to register fragment with root, ancestor detached");
            }
        } else {
            try {
                m(getContext(), k10);
            } catch (IllegalStateException e10) {
                if (Log.isLoggable(f22535h, 5)) {
                    Log.w(f22535h, "Unable to register fragment with root", e10);
                }
            }
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.f22536b.c();
        q();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.f22541g = null;
        q();
    }

    @Override
    public void onStart() {
        super.onStart();
        this.f22536b.d();
    }

    @Override
    public void onStop() {
        super.onStop();
        this.f22536b.e();
    }

    public void p(@Nullable com.bumptech.glide.k kVar) {
        this.f22540f = kVar;
    }

    public final void q() {
        o oVar = this.f22539e;
        if (oVar != null) {
            oVar.n(this);
            this.f22539e = null;
        }
    }

    @Override
    public String toString() {
        return super.toString() + "{parent=" + ((Object) h()) + VectorFormat.DEFAULT_SUFFIX;
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public o(@NonNull R.a aVar) {
        this.f22537c = new a();
        this.f22538d = new HashSet();
        this.f22536b = aVar;
    }
}
