package N7;

import N7.c;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.fragment.app.FragmentManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.PanelsController;
import com.itsmagic.engine.Engines.Engine.Renders.OGLSurfaceView;
import d7.C12881a;
import t3.C15377a;
import v3.l;
import v3.o;
import y0.C16131b;

public class a implements d {
    @Override
    public AssetManager A() {
        return getContext().getAssets();
    }

    @Override
    public void B(String key, View view) {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public void C() {
    }

    @Override
    public void D() {
        c.E().requestFocus();
    }

    @Override
    public void E(EditorSettings.Settings.b orientation) {
    }

    @Override
    public void F() {
    }

    @Override
    public Class G() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public Activity a() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public void b() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public void c() {
    }

    @Override
    public boolean d() {
        try {
            return Looper.getMainLooper().getThread() == Thread.currentThread();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override
    public void e(Runnable runnable) {
        if (d()) {
            runnable.run();
        } else {
            a().runOnUiThread(runnable);
        }
    }

    @Override
    public void f() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public OGLSurfaceView g() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public Context getContext() {
        return a();
    }

    @Override
    public String getPackageName() {
        return C15377a.f109714b;
    }

    @Override
    public c.g h() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public FirebaseAnalytics i() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public void j() {
    }

    @Override
    public AsyncLayoutInflater k() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public o l() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public View m() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public PanelsController n() {
        return null;
    }

    @Override
    public View o(String key) {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public View p() {
        return null;
    }

    @Override
    public void q() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public void r() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public EditorActivity.p s() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public FragmentManager t() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public C12881a u() {
        return null;
    }

    @Override
    public C16131b v() {
        return null;
    }

    @Override
    public LayoutInflater w() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public void x() {
    }

    @Override
    public void y(int code, Intent intent, l listener) {
    }

    @Override
    public void z(c.g currentPage) {
        throw new RuntimeException("Not supported before editor opens!");
    }
}
