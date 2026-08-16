package R;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class l implements Handler.Callback {

    @VisibleForTesting
    public static final String f22517k = "com.bumptech.glide.manager";

    public static final String f22518l = "RMRetriever";

    public static final int f22519m = 1;

    public static final int f22520n = 2;

    public static final String f22521o = "key";

    public static final b f22522p = new a();

    public volatile com.bumptech.glide.k f22523c;

    public final Handler f22526f;

    public final b f22527g;

    @VisibleForTesting
    public final Map<FragmentManager, k> f22524d = new HashMap();

    @VisibleForTesting
    public final Map<androidx.fragment.app.FragmentManager, o> f22525e = new HashMap();

    public final ArrayMap<View, Fragment> f22528h = new ArrayMap<>();

    public final ArrayMap<View, android.app.Fragment> f22529i = new ArrayMap<>();

    public final Bundle f22530j = new Bundle();

    public class a implements b {
        @Override
        @NonNull
        public com.bumptech.glide.k a(@NonNull com.bumptech.glide.b bVar, @NonNull h hVar, @NonNull m mVar, @NonNull Context context) {
            return new com.bumptech.glide.k(bVar, hVar, mVar, context);
        }
    }

    public interface b {
        @NonNull
        com.bumptech.glide.k a(@NonNull com.bumptech.glide.b bVar, @NonNull h hVar, @NonNull m mVar, @NonNull Context context);
    }

    public l(@Nullable b bVar) {
        this.f22527g = bVar == null ? f22522p : bVar;
        this.f22526f = new Handler(Looper.getMainLooper(), this);
    }

    @TargetApi(17)
    public static void a(@NonNull Activity activity) {
        if (activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @Nullable
    public static Activity b(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return b(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void e(@Nullable Collection<Fragment> collection, @NonNull Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                e(fragment.getChildFragmentManager().getFragments(), map);
            }
        }
    }

    public static boolean t(Context context) {
        Activity b10 = b(context);
        return b10 == null || !b10.isFinishing();
    }

    @TargetApi(26)
    @Deprecated
    public final void c(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        for (android.app.Fragment fragment : fragmentManager.getFragments()) {
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                c(fragment.getChildFragmentManager(), arrayMap);
            }
        }
    }

    @Deprecated
    public final void d(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        android.app.Fragment fragment;
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            this.f22530j.putInt("key", i10);
            try {
                fragment = fragmentManager.getFragment(this.f22530j, "key");
            } catch (Exception unused) {
                fragment = null;
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                c(fragment.getChildFragmentManager(), arrayMap);
            }
            i10 = i11;
        }
    }

    @Nullable
    @Deprecated
    public final android.app.Fragment f(@NonNull View view, @NonNull Activity activity) {
        this.f22529i.clear();
        c(activity.getFragmentManager(), this.f22529i);
        View findViewById = activity.findViewById(16908290);
        android.app.Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f22529i.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f22529i.clear();
        return fragment;
    }

    @Nullable
    public final Fragment g(@NonNull View view, @NonNull FragmentActivity fragmentActivity) {
        this.f22528h.clear();
        e(fragmentActivity.getSupportFragmentManager().getFragments(), this.f22528h);
        View findViewById = fragmentActivity.findViewById(16908290);
        Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f22528h.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f22528h.clear();
        return fragment;
    }

    @NonNull
    @Deprecated
    public final com.bumptech.glide.k h(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z10) {
        k q10 = q(fragmentManager, fragment, z10);
        com.bumptech.glide.k e10 = q10.e();
        if (e10 != null) {
            return e10;
        }
        com.bumptech.glide.k a10 = this.f22527g.a(com.bumptech.glide.b.d(context), q10.c(), q10.f(), context);
        q10.k(a10);
        return a10;
    }

    @Override
    public boolean handleMessage(Message message) {
        Object obj;
        ComponentCallbacks remove;
        Object obj2;
        ComponentCallbacks componentCallbacks;
        int i10 = message.what;
        boolean z10 = true;
        if (i10 == 1) {
            obj = (FragmentManager) message.obj;
            remove = this.f22524d.remove(obj);
        } else {
            if (i10 != 2) {
                componentCallbacks = null;
                z10 = false;
                obj2 = null;
                if (z10 && componentCallbacks == null && Log.isLoggable(f22518l, 5)) {
                    Log.w(f22518l, "Failed to remove expected request manager fragment, manager: " + obj2);
                }
                return z10;
            }
            obj = (androidx.fragment.app.FragmentManager) message.obj;
            remove = this.f22525e.remove(obj);
        }
        ComponentCallbacks componentCallbacks2 = remove;
        obj2 = obj;
        componentCallbacks = componentCallbacks2;
        if (z10) {
            Log.w(f22518l, "Failed to remove expected request manager fragment, manager: " + obj2);
        }
        return z10;
    }

    @NonNull
    public com.bumptech.glide.k i(@NonNull Activity activity) {
        if (Y.m.s()) {
            return k(activity.getApplicationContext());
        }
        a(activity);
        return h(activity, activity.getFragmentManager(), null, t(activity));
    }

    @NonNull
    @TargetApi(17)
    @Deprecated
    public com.bumptech.glide.k j(@NonNull android.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        }
        if (Y.m.s()) {
            return k(fragment.getActivity().getApplicationContext());
        }
        return h(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    public com.bumptech.glide.k k(@NonNull Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (Y.m.t() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return n((FragmentActivity) context);
            }
            if (context instanceof Activity) {
                return i((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return k(contextWrapper.getBaseContext());
                }
            }
        }
        return o(context);
    }

    @NonNull
    public com.bumptech.glide.k l(@NonNull View view) {
        if (Y.m.s()) {
            return k(view.getContext().getApplicationContext());
        }
        Y.k.d(view);
        Y.k.e(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity b10 = b(view.getContext());
        if (b10 == null) {
            return k(view.getContext().getApplicationContext());
        }
        if (!(b10 instanceof FragmentActivity)) {
            android.app.Fragment f10 = f(view, b10);
            return f10 == null ? i(b10) : j(f10);
        }
        FragmentActivity fragmentActivity = (FragmentActivity) b10;
        Fragment g10 = g(view, fragmentActivity);
        return g10 != null ? m(g10) : n(fragmentActivity);
    }

    @NonNull
    public com.bumptech.glide.k m(@NonNull Fragment fragment) {
        Y.k.e(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (Y.m.s()) {
            return k(fragment.getContext().getApplicationContext());
        }
        return u(fragment.getContext(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    public com.bumptech.glide.k n(@NonNull FragmentActivity fragmentActivity) {
        if (Y.m.s()) {
            return k(fragmentActivity.getApplicationContext());
        }
        a(fragmentActivity);
        return u(fragmentActivity, fragmentActivity.getSupportFragmentManager(), null, t(fragmentActivity));
    }

    @NonNull
    public final com.bumptech.glide.k o(@NonNull Context context) {
        if (this.f22523c == null) {
            synchronized (this) {
                try {
                    if (this.f22523c == null) {
                        this.f22523c = this.f22527g.a(com.bumptech.glide.b.d(context.getApplicationContext()), new R.b(), new g(), context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return this.f22523c;
    }

    @NonNull
    @Deprecated
    public k p(Activity activity) {
        return q(activity.getFragmentManager(), null, t(activity));
    }

    @NonNull
    public final k q(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z10) {
        k kVar = (k) fragmentManager.findFragmentByTag(f22517k);
        if (kVar == null && (kVar = this.f22524d.get(fragmentManager)) == null) {
            kVar = new k();
            kVar.j(fragment);
            if (z10) {
                kVar.c().d();
            }
            this.f22524d.put(fragmentManager, kVar);
            fragmentManager.beginTransaction().add(kVar, f22517k).commitAllowingStateLoss();
            this.f22526f.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return kVar;
    }

    @NonNull
    public o r(Context context, androidx.fragment.app.FragmentManager fragmentManager) {
        return s(fragmentManager, null, t(context));
    }

    @NonNull
    public final o s(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z10) {
        o oVar = (o) fragmentManager.findFragmentByTag(f22517k);
        if (oVar == null && (oVar = this.f22525e.get(fragmentManager)) == null) {
            oVar = new o();
            oVar.o(fragment);
            if (z10) {
                oVar.g().d();
            }
            this.f22525e.put(fragmentManager, oVar);
            fragmentManager.beginTransaction().add(oVar, f22517k).commitAllowingStateLoss();
            this.f22526f.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return oVar;
    }

    @NonNull
    public final com.bumptech.glide.k u(@NonNull Context context, @NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z10) {
        o s10 = s(fragmentManager, fragment, z10);
        com.bumptech.glide.k i10 = s10.i();
        if (i10 != null) {
            return i10;
        }
        com.bumptech.glide.k a10 = this.f22527g.a(com.bumptech.glide.b.d(context), s10.g(), s10.j(), context);
        s10.p(a10);
        return a10;
    }
}
