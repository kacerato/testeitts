package N7;

import N7.c;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
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
import v3.l;
import v3.o;
import y0.C16131b;

public interface d {

    public enum a {
        Projects,
        Editor,
        Marketplace,
        Community,
        CloudBuilds,
        EarnCoins
    }

    AssetManager A();

    void B(String key, View view);

    void C();

    void D();

    void E(EditorSettings.Settings.b orientation);

    void F();

    Class G();

    Activity a();

    void b();

    void c();

    boolean d();

    void e(Runnable runnable);

    void f();

    OGLSurfaceView g();

    Context getContext();

    String getPackageName();

    c.g h();

    FirebaseAnalytics i();

    void j();

    AsyncLayoutInflater k();

    o l();

    View m();

    PanelsController n();

    View o(String key);

    View p();

    void q();

    void r();

    EditorActivity.p s();

    FragmentManager t();

    C12881a u();

    C16131b v();

    LayoutInflater w();

    void x();

    void y(int code, Intent intent, l listener);

    void z(c.g currentPage);
}
