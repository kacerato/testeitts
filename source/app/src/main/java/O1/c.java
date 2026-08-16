package O1;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

public final class c {

    @NonNull
    public final View f16451a;

    public boolean f16452b = false;

    @IdRes
    public int f16453c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public c(b bVar) {
        this.f16451a = (View) bVar;
    }

    public final void a() {
        ViewParent parent = this.f16451a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f16451a);
        }
    }

    @IdRes
    public int b() {
        return this.f16453c;
    }

    public boolean c() {
        return this.f16452b;
    }

    public void d(@NonNull Bundle bundle) {
        this.f16452b = bundle.getBoolean("expanded", false);
        this.f16453c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f16452b) {
            a();
        }
    }

    @NonNull
    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f16452b);
        bundle.putInt("expandedComponentIdHint", this.f16453c);
        return bundle;
    }

    public boolean f(boolean z10) {
        if (this.f16452b == z10) {
            return false;
        }
        this.f16452b = z10;
        a();
        return true;
    }

    public void g(@IdRes int i10) {
        this.f16453c = i10;
    }
}
