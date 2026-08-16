package N7;

import JAVARuntime.Runnable;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import androidx.annotation.DimenRes;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.fragment.app.FragmentManager;
import bd.C3867a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.PanelsController;
import com.itsmagic.engine.Engines.Engine.Renders.OGLSurfaceView;
import d7.C12881a;
import java.io.IOException;
import ob.b;
import v3.l;
import v3.m;
import v3.o;
import y0.C16131b;

public abstract class c {

    @Deprecated
    public static m f15774a;

    public static N7.d f15775b;

    public class a implements b.a {

        public final Runnable f15776a;

        public a(final Runnable val$runnable) {
            this.f15776a = val$runnable;
        }

        @Override
        public boolean run() {
            c.j0(this.f15776a);
            return false;
        }
    }

    public class b implements Runnable {

        public final Runnable f15777b;

        public b(final Runnable val$runnable) {
            this.f15777b = val$runnable;
        }

        @Override
        public void run() {
            c.j0(this.f15777b);
        }
    }

    public class RunnableC0439c implements Runnable {

        public final Runnable f15778b;

        public RunnableC0439c(final Runnable val$runnable) {
            this.f15778b = val$runnable;
        }

        @Override
        public void run() {
            c.j0(this.f15778b);
        }
    }

    public class d implements Runnable {

        public final String f15779b;

        public d(final String val$str) {
            this.f15779b = val$str;
        }

        @Override
        public void run() {
            Toast.makeText(c.t(), this.f15779b, 0).show();
        }
    }

    public class e implements Runnable {

        public final String f15780b;

        public final boolean f15781c;

        public e(final String val$str, final boolean val$isLong) {
            this.f15780b = val$str;
            this.f15781c = val$isLong;
        }

        @Override
        public void run() {
            Toast.makeText(c.t(), this.f15780b, this.f15781c ? 1 : 0).show();
        }
    }

    public class f implements Runnable {

        public final Runnable f15782b;

        public f(final Runnable val$runnable) {
            this.f15782b = val$runnable;
        }

        @Override
        public void run() {
            c.j0(this.f15782b);
        }
    }

    public enum g {
        Projects,
        Editor,
        Marketplace,
        Community,
        Tutorials,
        CloudBuild,
        EarnCoins,
        OutOfApp
    }

    public static Class A() {
        return f15775b.G();
    }

    public static LayoutInflater B() {
        return f15775b.w();
    }

    public static String C() {
        return f15775b.getPackageName();
    }

    public static PanelsController D() {
        return f15775b.n();
    }

    public static View E() {
        return f15775b.m();
    }

    public static OGLSurfaceView F() {
        return f15775b.g();
    }

    public static View G() {
        return f15775b.p();
    }

    public static C12881a H() {
        return f15775b.u();
    }

    public static o I() {
        return f15775b.l();
    }

    public static Rect J() {
        return f15774a.i();
    }

    public static EditorActivity.p K() {
        return f15775b.s();
    }

    public static void L() {
        N7.d dVar = f15775b;
        if (dVar != null) {
            dVar.x();
        }
    }

    public static boolean M() {
        return f15775b != null;
    }

    public static boolean N() {
        return f15775b.d();
    }

    public static String[] O(String path) {
        try {
            return r().list(path);
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void P(String str) {
        w0(str, true);
    }

    public static float Q() {
        return f15774a.a();
    }

    public static int R() {
        return f15774a.m();
    }

    public static float S() {
        return f15774a.e();
    }

    public static int T() {
        return f15774a.p();
    }

    public static float U() {
        return f15774a.c();
    }

    public static int V() {
        return f15774a.j();
    }

    public static float W() {
        return f15774a.o();
    }

    public static int X() {
        return f15774a.l();
    }

    public static void Y() {
        D().z();
    }

    public static void Z() {
        f15775b.c();
    }

    public static void a(Object object) {
        D().u(object);
    }

    public static void a0() {
        f15775b.q();
    }

    public static void b(g currentPage) {
        f15775b.z(currentPage);
    }

    public static void b0() {
        f15775b.f();
    }

    public static void c(EditorSettings.Settings.b orientation) {
        f15775b.E(orientation);
    }

    public static void c0(Runnable runnable) {
        K8.a.B(new b(runnable));
    }

    public static void d(Runnable runnable) {
        f15775b.D();
        if (runnable != null) {
            K8.a.I(new f(runnable));
        }
    }

    public static void d0(int nframes, Runnable runnable) {
        K8.a.h(nframes, new RunnableC0439c(runnable));
    }

    public static void e() {
        InputMethodManager inputMethodManager = (InputMethodManager) o().getSystemService(Context.INPUT_METHOD_SERVICE);
        if (inputMethodManager == null || o().getCurrentFocus() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(o().getCurrentFocus().getWindowToken(), 0);
    }

    public static void e0() {
        N7.d dVar = f15775b;
        if (dVar != null) {
            dVar.C();
        }
    }

    public static float f(int dp) {
        return f15774a.g(dp);
    }

    public static void f0(Object object) {
        D().s0(object);
    }

    public static float g(int dp) {
        return f15774a.d(dp);
    }

    public static void g0() {
        N7.d dVar = f15775b;
        if (dVar != null) {
            dVar.F();
        }
    }

    public static float h(float percentage) {
        return f15774a.f(percentage);
    }

    public static void h0() {
        if (!N()) {
            throw new RuntimeException("Should call from UI thread");
        }
    }

    public static float i(int PX) {
        return f15774a.n(PX);
    }

    public static void i0() {
        f15775b.r();
    }

    public static float j(int PX) {
        return f15774a.b(PX);
    }

    public static void j0(Runnable runnable) {
        f15775b.e(runnable);
    }

    public static float k(float percentage) {
        return f15774a.k(percentage);
    }

    public static void k0(n4.f panelIntent) {
        D().B0(panelIntent);
    }

    public static void l(float seconds, Runnable runnable) {
        K8.a.J(new ob.b(new a(runnable), seconds));
    }

    public static void l0(N7.d pageToMainListener) {
        f15775b = pageToMainListener;
    }

    public static View m(String key) {
        return f15775b.o(key);
    }

    public static void m0(m staticCalls) {
        f15774a = staticCalls;
    }

    public static void n() {
        f15775b.b();
    }

    public static void n0(String str) {
        f15774a.h(str);
    }

    public static Activity o() {
        return f15775b.a();
    }

    public static void o0() {
        N7.d dVar = f15775b;
        if (dVar != null) {
            dVar.j();
        }
    }

    public static String p() {
        return W7.b.f27306f.b(t());
    }

    public static void p0(Intent intent) {
        f15775b.a().startActivity(intent);
    }

    public static int q() {
        return W7.b.f27306f.c(t());
    }

    public static void q0(Class cls) {
        f15775b.a().startActivity(new Intent(t(), (Class<?>) cls));
    }

    public static AssetManager r() {
        return f15775b.A();
    }

    public static void r0(int code, Intent intent, l listener) {
        f15775b.y(code, intent, listener);
    }

    public static AsyncLayoutInflater s() {
        return f15775b.k();
    }

    public static void s0(Intent intent, l listener) {
        f15775b.y(Nc.b.l(Nc.d.j(1, 99999)), intent, listener);
    }

    public static Context t() {
        return f15775b.getContext();
    }

    public static void t0(String key, View view) {
        f15775b.B(key, view);
    }

    public static g u() {
        return f15775b.h();
    }

    public static void u0(C3867a str) {
        v0(str.toString());
    }

    public static int v(@DimenRes int dimen) {
        Context t10 = t();
        return (int) (t10.getResources().getDimension(dimen) / t10.getResources().getDisplayMetrics().density);
    }

    public static void v0(String str) {
        if (N()) {
            Toast.makeText(t(), str, 0).show();
        } else {
            j0(new d(str));
        }
    }

    public static int w(@DimenRes int dimen) {
        return (int) t().getResources().getDimension(dimen);
    }

    public static void w0(String str, boolean z10) {
        if (N()) {
            Toast.makeText(t(), str, z10 ? 1 : 0).show();
        } else {
            j0(new e(str, z10));
        }
    }

    public static FirebaseAnalytics x() {
        return f15775b.i();
    }

    public static void x0(Object object) {
        D().F0(object);
    }

    public static FragmentManager y() {
        return f15775b.t();
    }

    public static C16131b z() {
        return f15775b.v();
    }
}
