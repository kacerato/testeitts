package y1;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

public class c<V extends View> extends CoordinatorLayout.Behavior<V> {

    public d f129911a;

    public int f129912b;

    public int f129913c;

    public c() {
        this.f129912b = 0;
        this.f129913c = 0;
    }

    public int a() {
        d dVar = this.f129911a;
        if (dVar != null) {
            return dVar.d();
        }
        return 0;
    }

    public int b() {
        d dVar = this.f129911a;
        if (dVar != null) {
            return dVar.e();
        }
        return 0;
    }

    public boolean c() {
        d dVar = this.f129911a;
        return dVar != null && dVar.f();
    }

    public boolean d() {
        d dVar = this.f129911a;
        return dVar != null && dVar.g();
    }

    public void e(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        coordinatorLayout.onLayoutChild(v10, i10);
    }

    public void f(boolean z10) {
        d dVar = this.f129911a;
        if (dVar != null) {
            dVar.i(z10);
        }
    }

    public boolean g(int i10) {
        d dVar = this.f129911a;
        if (dVar != null) {
            return dVar.j(i10);
        }
        this.f129913c = i10;
        return false;
    }

    public boolean h(int i10) {
        d dVar = this.f129911a;
        if (dVar != null) {
            return dVar.k(i10);
        }
        this.f129912b = i10;
        return false;
    }

    public void i(boolean z10) {
        d dVar = this.f129911a;
        if (dVar != null) {
            dVar.l(z10);
        }
    }

    @Override
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        e(coordinatorLayout, v10, i10);
        if (this.f129911a == null) {
            this.f129911a = new d(v10);
        }
        this.f129911a.h();
        this.f129911a.a();
        int i11 = this.f129912b;
        if (i11 != 0) {
            this.f129911a.k(i11);
            this.f129912b = 0;
        }
        int i12 = this.f129913c;
        if (i12 == 0) {
            return true;
        }
        this.f129911a.j(i12);
        this.f129913c = 0;
        return true;
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f129912b = 0;
        this.f129913c = 0;
    }
}
