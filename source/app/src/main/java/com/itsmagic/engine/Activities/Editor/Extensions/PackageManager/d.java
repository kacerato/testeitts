package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import java.lang.ref.WeakReference;

public class d {

    public WeakReference<n> f70233a;

    public d(n vertex) {
        this.f70233a = null;
        this.f70233a = new WeakReference<>(vertex);
    }

    public n a() {
        return this.f70233a.get();
    }

    public boolean b() {
        return this.f70233a.get() != null;
    }
}
