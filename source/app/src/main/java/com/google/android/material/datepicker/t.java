package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

public abstract class t<S> extends Fragment {

    public final LinkedHashSet<s<S>> f64386b = new LinkedHashSet<>();

    public boolean e(s<S> sVar) {
        return this.f64386b.add(sVar);
    }

    public void f() {
        this.f64386b.clear();
    }

    public abstract f<S> g();

    public boolean h(s<S> sVar) {
        return this.f64386b.remove(sVar);
    }
}
