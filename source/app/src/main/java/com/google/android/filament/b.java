package com.google.android.filament;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.util.Log;
import android.view.Surface;

public final class b extends o {

    public static final String f60332b = "Filament";

    static {
        EGL14.eglGetDisplay(0);
    }

    @Override
    public long b(Object obj) {
        return a.a(obj);
    }

    @Override
    public void g(String str) {
        Log.d("Filament", str);
    }

    @Override
    public boolean h(Object obj) {
        return obj instanceof EGLContext;
    }

    @Override
    public boolean i(Object obj) {
        return obj instanceof SurfaceTexture;
    }

    @Override
    public boolean j(Object obj) {
        return obj instanceof Surface;
    }

    @Override
    public void k(String str) {
        Log.w("Filament", str);
    }
}
