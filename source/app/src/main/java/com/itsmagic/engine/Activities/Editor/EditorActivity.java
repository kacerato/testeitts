package com.itsmagic.engine.Activities.Editor;

import Ic.B;
import Ic.C2630i;
import Ic.D;
import JAVARuntime.Runnable;
import K8.c;
import N7.c;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.core.content.ContextCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentManager;
import b3.s;
import bd.C3867a;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.PanelsController;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Activities.Editor.Utils.LegalInformation;
import com.itsmagic.engine.Engines.Engine.Renders.OGLSurfaceView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import d7.C12881a;
import f7.C13191a;
import i4.C13583d;
import java.security.MessageDigest;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kd.C13965a;
import kd.InterfaceC13966b;
import m0.C14178m;
import mb.C14206a;
import o2.AbstractC14478a;
import o2.C14480c;
import o2.InterfaceC14479b;
import ob.b;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import qb.C15052a;
import rc.C15169a;
import u2.InterfaceC15567b;
import u2.InterfaceC15568c;
import v1.AbstractC15790k;
import v1.InterfaceC15784e;
import v3.InterfaceC15801a;
import y0.C16131b;

public class EditorActivity extends AppCompatActivity {

    public static final int f69786M = 9001;

    public static final int f69787N = 9002;

    public static List<InterfaceC15801a> f69788O = new LinkedList();

    public static long f69789P = System.nanoTime();

    public static final List<v3.i> f69790Q = new LinkedList();

    public FirebaseAnalytics f69791A;

    public LinearLayout f69792B;

    public rc.c f69795E;

    public int f69796F;

    public float f69797G;

    public C16131b f69803b;

    public FragmentManager f69804c;

    public C13191a f69805d;

    public FacebookTerms f69806e;

    public Context f69807f;

    public Activity f69808g;

    public View f69810i;

    public OGLSurfaceView f69811j;

    public C14178m f69812k;

    public View f69814m;

    public v3.o f69816o;

    public AsyncLayoutInflater f69817p;

    public LayoutInflater f69818q;

    public TextView f69819r;

    public FrameLayout f69820s;

    public String f69825x;

    public InterfaceC15568c f69826y;

    public InterfaceC15567b f69827z;

    public p f69809h = p.Unlock;

    public c.g f69813l = c.g.Editor;

    public v3.b f69815n = null;

    public C12881a f69821t = null;

    public final PanelsController f69822u = new PanelsController();

    public final AtomicBoolean f69823v = new AtomicBoolean();

    public boolean f69824w = false;

    public final AtomicInteger f69793C = new AtomicInteger();

    public final AtomicInteger f69794D = new AtomicInteger();

    public final Runnable f69798H = new g();

    public final List<v3.h> f69799I = new SteppedArrayList();

    public boolean f69800J = false;

    public boolean f69801K = false;

    public boolean f69802L = false;

    public class a implements Runnable {

        public class C1039a implements Runnable {

            public final String f69829b;

            public class C1040a implements b.a {
                public C1040a() {
                }

                @Override
                public boolean run() {
                    C15169a.K(C1039a.this.f69829b, false, false, false);
                    return false;
                }
            }

            public C1039a(final String val$name) {
                this.f69829b = val$name;
            }

            @Override
            public void run() {
                C15169a.K(this.f69829b, true, false, false);
                K8.a.J(new ob.b((b.a) new C1040a(), 1));
            }
        }

        public a() {
        }

        @Override
        public void run() {
            K8.a.I(new C1039a("android_back"));
        }
    }

    public class b implements InterfaceC13966b {
        public b() {
        }

        @Override
        public void run() {
            EditorActivity.this.f69801K = false;
        }
    }

    public class c implements SweetAlertDialog.OnSweetClickListener {

        public final SweetAlertDialog f69833a;

        public c(final SweetAlertDialog val$dialog) {
            this.f69833a = val$dialog;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            this.f69833a.dismissWithAnimation();
        }
    }

    public class d implements SweetAlertDialog.OnSweetClickListener {

        public final SweetAlertDialog f69835a;

        public d(final SweetAlertDialog val$dialog) {
            this.f69835a = val$dialog;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            this.f69835a.dismissWithAnimation();
            EditorActivity.this.S();
        }
    }

    public class e implements SweetAlertDialog.OnSweetClickListener {

        public final SweetAlertDialog f69837a;

        public class a implements b8.g {
            public a() {
            }

            @Override
            public void a(Activity act) {
                EditorActivity.this.S();
            }

            @Override
            public void b(Activity act) {
            }
        }

        public e(final SweetAlertDialog val$dialog) {
            this.f69837a = val$dialog;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            this.f69837a.dismissWithAnimation();
            W7.b.f27308h.f(EditorActivity.this.f69808g, new a());
        }
    }

    public static class f {

        public static final int[] f69840a;

        static {
            int[] iArr = new int[EditorSettings.Settings.b.values().length];
            f69840a = iArr;
            try {
                iArr[EditorSettings.Settings.b.Landscape.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69840a[EditorSettings.Settings.b.Portrait.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69840a[EditorSettings.Settings.b.Unlock.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            if (u6.l.E1()) {
                long nanoTime = System.nanoTime();
                long j10 = nanoTime - EditorActivity.f69789P;
                long unused = EditorActivity.f69789P = nanoTime;
                EditorActivity.this.f69797G = ((float) j10) / 1.0E9f;
                u6.l.D1(EditorActivity.this.f69797G);
            } else {
                long unused2 = EditorActivity.f69789P = System.nanoTime();
            }
            u6.l.A1();
            u6.e L12 = u6.l.E1() ? u6.l.L1("Update UI") : null;
            EditorActivity editorActivity = EditorActivity.this;
            editorActivity.k0(editorActivity.f69796F);
            EditorActivity.this.f69823v.set(false);
            u6.l.J1(L12);
        }
    }

    public class h implements OnBackInvokedCallback {
        public h() {
        }

        public void onBackInvoked() {
        }
    }

    public class i extends N7.a {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                EditorActivity.this.f69808g.startActivity(new Intent(EditorActivity.this.f69808g, (Class<?>) LegalInformation.class));
            }
        }

        public i() {
        }

        @Override
        public void B(String key, View view) {
            try {
                EditorActivity.this.f69815n.b(key, view);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void C() {
            EditorActivity.this.c0();
        }

        @Override
        public void E(EditorSettings.Settings.b orientation) {
            super.E(orientation);
            EditorActivity.this.R(orientation);
        }

        @Override
        public void F() {
            EditorActivity.this.e0();
        }

        @Override
        public Class G() {
            return EditorActivity.this.V();
        }

        @Override
        public Activity a() {
            return EditorActivity.this.f69808g;
        }

        @Override
        public void b() {
            EditorActivity.this.i();
        }

        @Override
        public void c() {
            EditorActivity.this.onBackPressed();
        }

        @Override
        public void f() {
            C2630i.n("https://itsmagic.com.br/privacy-policy.html");
        }

        @Override
        public OGLSurfaceView g() {
            return EditorActivity.this.f69811j;
        }

        @Override
        public c.g h() {
            return EditorActivity.this.f69813l;
        }

        @Override
        public FirebaseAnalytics i() {
            return EditorActivity.this.f69791A;
        }

        @Override
        public void j() {
            EditorActivity.this.h0();
        }

        @Override
        public AsyncLayoutInflater k() {
            return EditorActivity.this.f69817p;
        }

        @Override
        public v3.o l() {
            return EditorActivity.this.f69816o;
        }

        @Override
        public View m() {
            if (EditorActivity.this.f69814m == null) {
                try {
                    EditorActivity editorActivity = EditorActivity.this;
                    editorActivity.f69814m = ((ViewGroup) editorActivity.findViewById(16908290)).getChildAt(0);
                } catch (Error | Exception e10) {
                    e10.printStackTrace();
                }
            }
            return EditorActivity.this.f69814m;
        }

        @Override
        public PanelsController n() {
            return EditorActivity.this.f69822u;
        }

        @Override
        public View o(String key) {
            try {
                return EditorActivity.this.f69815n.a(key);
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }

        @Override
        public View p() {
            return EditorActivity.this.f69792B;
        }

        @Override
        public void q() {
            EditorActivity.this.f69808g.runOnUiThread(new a());
        }

        @Override
        public void r() {
            EditorActivity.this.b0();
        }

        @Override
        public p s() {
            return EditorActivity.this.f69809h;
        }

        @Override
        public FragmentManager t() {
            return EditorActivity.this.f69804c;
        }

        @Override
        public C12881a u() {
            return EditorActivity.this.f69821t;
        }

        @Override
        public C16131b v() {
            return EditorActivity.this.f69803b;
        }

        @Override
        public LayoutInflater w() {
            return EditorActivity.this.f69818q;
        }

        @Override
        public void x() {
            EditorActivity.this.W();
        }

        @Override
        public void y(int code, Intent intent, v3.l listener) {
            listener.getClass();
            intent.getClass();
            synchronized (EditorActivity.this.f69799I) {
                EditorActivity.this.f69799I.add(new v3.h(code, listener));
            }
            EditorActivity.this.f69808g.startActivityForResult(intent, code);
        }

        @Override
        public void z(c.g currentPage) {
            EditorActivity.this.f69813l = currentPage;
            synchronized (EditorActivity.f69790Q) {
                for (int i10 = 0; i10 < EditorActivity.f69790Q.size(); i10++) {
                    try {
                        ((v3.i) EditorActivity.f69790Q.get(i10)).a(currentPage);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public class j implements OnApplyWindowInsetsListener {
        public j() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View v10, WindowInsetsCompat insets) {
            int i10;
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            Insets platformInsets = insets.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.ime()).toPlatformInsets();
            i10 = platformInsets.left;
            i11 = platformInsets.top;
            i12 = platformInsets.right;
            i13 = platformInsets.bottom;
            ViewCompat.setPaddingRelative(v10, i10, i11, i12, i13);
            i14 = platformInsets.left;
            K8.c.f11000a = i14;
            i15 = platformInsets.top;
            K8.c.f11001b = i15;
            return WindowInsetsCompat.CONSUMED;
        }
    }

    public class k implements Runnable {

        public final Configuration f69846b;

        public k(final Configuration val$newConfig) {
            this.f69846b = val$newConfig;
        }

        @Override
        public void run() {
            c.a aVar = K8.c.f11004e;
            EditorActivity.this.X(this.f69846b.orientation);
            View decorView = EditorActivity.this.getWindow().getDecorView();
            if (this.f69846b.orientation == 1) {
                decorView.setSystemUiVisibility(0);
                K8.c.f11004e = c.a.Portrait;
            } else {
                decorView.setSystemUiVisibility(4102);
                K8.c.f11004e = c.a.Landscape;
            }
            N7.c.D().h0(aVar);
        }
    }

    public class l implements ViewTreeObserver.OnGlobalLayoutListener {
        public l() {
        }

        @Override
        public void onGlobalLayout() {
            EditorActivity.this.f69820s.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (EditorActivity.this.f69824w) {
                return;
            }
            PanelsController panelsController = EditorActivity.this.f69822u;
            EditorActivity editorActivity = EditorActivity.this;
            panelsController.U(editorActivity.f69820s, editorActivity.f69808g, editorActivity.f69807f);
            EditorActivity.this.f69824w = true;
        }
    }

    public class m implements ViewTreeObserver.OnGlobalLayoutListener {

        public boolean f69849b = false;

        public m() {
        }

        @Override
        public void onGlobalLayout() {
            try {
                EditorActivity.this.f69810i.getWindowVisibleDisplayFrame(new Rect());
                if (r1 - r0.bottom > EditorActivity.this.f69810i.getRootView().getHeight() * 0.15d) {
                    this.f69849b = true;
                    if (!C15169a.f108790E.get()) {
                        C15169a.f108790E.set(true);
                    }
                } else if (this.f69849b) {
                    this.f69849b = false;
                    if (C15169a.f108790E.get()) {
                        C15169a.f108790E.set(false);
                        com.itsmagic.engine.Engines.Engine.World.a.i(new D());
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public class n implements v3.m {

        public final Rect f69851a = new Rect();

        public final Rect f69852b = new Rect();

        public final Rect f69853c = new Rect();

        public final Rect f69854d = new Rect();

        public class a implements Runnable {

            public final String f69856b;

            public a(final String val$str) {
                this.f69856b = val$str;
            }

            @Override
            public void run() {
                if (EditorActivity.this.f69819r != null) {
                    String str = this.f69856b;
                    if (str != null && !str.isEmpty()) {
                        EditorActivity.this.f69819r.setText(this.f69856b);
                    } else {
                        EditorActivity.this.f69819r.setText(W7.b.f27306f.b(EditorActivity.this.f69807f));
                    }
                }
            }
        }

        public n() {
        }

        @Override
        public float a() {
            return 0.0f;
        }

        @Override
        public float b(int dp) {
            return dp / EditorActivity.this.f69822u.N().f91407a;
        }

        @Override
        public float c() {
            return 0.0f;
        }

        @Override
        public float d(int dp) {
            return Nc.b.l0(dp, EditorActivity.this.f69807f) / EditorActivity.this.f69822u.N().f91407a;
        }

        @Override
        public float e() {
            return 0.0f;
        }

        @Override
        public float f(float p10) {
            return Nc.b.g1(p10 * EditorActivity.this.f69822u.N().f91408b, EditorActivity.this.f69807f);
        }

        @Override
        public float g(int dp) {
            return Nc.b.l0(dp, EditorActivity.this.f69807f) / EditorActivity.this.f69822u.N().f91408b;
        }

        @Override
        public void h(String str) {
            EditorActivity.this.f69808g.runOnUiThread(new a(str));
        }

        @Override
        public Rect i() {
            if (EditorActivity.this.f69820s.getGlobalVisibleRect(this.f69854d)) {
                Rect rect = this.f69853c;
                Rect rect2 = this.f69854d;
                rect.left = rect2.left;
                rect.top = rect2.top;
                rect.right = rect2.right;
                rect.bottom = rect2.bottom;
            } else {
                Rect rect3 = this.f69854d;
                Rect rect4 = this.f69853c;
                rect3.left = rect4.left;
                rect3.top = rect4.top;
                rect3.right = rect4.right;
                rect3.bottom = rect4.bottom;
            }
            return this.f69854d;
        }

        @Override
        public int j() {
            return 0;
        }

        @Override
        public float k(float p10) {
            return Nc.b.g1(p10 * EditorActivity.this.f69822u.N().f91407a, EditorActivity.this.f69807f);
        }

        @Override
        public int l() {
            if (EditorActivity.this.f69820s.getGlobalVisibleRect(this.f69852b)) {
                Rect rect = this.f69851a;
                Rect rect2 = this.f69852b;
                rect.left = rect2.left;
                rect.top = rect2.top;
                rect.right = rect2.right;
                rect.bottom = rect2.bottom;
            } else {
                Rect rect3 = this.f69852b;
                Rect rect4 = this.f69851a;
                rect3.left = rect4.left;
                rect3.top = rect4.top;
                rect3.right = rect4.right;
                rect3.bottom = rect4.bottom;
            }
            return this.f69852b.top;
        }

        @Override
        public int m() {
            return 0;
        }

        @Override
        public float n(int dp) {
            return dp / EditorActivity.this.f69822u.N().f91408b;
        }

        @Override
        public float o() {
            return l() / K8.c.a();
        }

        @Override
        public int p() {
            return 0;
        }
    }

    public class o implements W7.d {
        public o() {
        }

        @Override
        public void a(int frameID) {
            EditorActivity.this.f69823v.set(true);
            EditorActivity.this.f69796F = frameID;
            EditorActivity editorActivity = EditorActivity.this;
            editorActivity.f69808g.runOnUiThread(editorActivity.f69798H);
        }

        @Override
        public boolean b() {
            return false;
        }

        @Override
        public boolean c() {
            return !EditorActivity.this.f69823v.get();
        }

        @Override
        public void d(Context oglContext) {
            EditorActivity.this.j0(oglContext);
        }
    }

    public enum p {
        Unlock,
        Portrait,
        LandScape
    }

    public static void Q(v3.i listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        List<v3.i> list = f69790Q;
        synchronized (list) {
            list.add(listener);
        }
    }

    public static void d0(v3.i listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        List<v3.i> list = f69790Q;
        synchronized (list) {
            list.remove(listener);
        }
    }

    public void R(EditorSettings.Settings.b orientation) {
        int i10 = f.f69840a[orientation.ordinal()];
        if (i10 == 1) {
            setRequestedOrientation(6);
        } else if (i10 == 2) {
            setRequestedOrientation(7);
        } else {
            if (i10 != 3) {
                return;
            }
            setRequestedOrientation(10);
        }
    }

    public final void S() {
        N7.c.D().A();
    }

    public void T() {
        this.f69807f = null;
        C13191a c13191a = this.f69805d;
        if (c13191a != null) {
            c13191a.d();
        }
        this.f69805d = null;
    }

    public final void U() {
        SigningInfo signingInfo;
        Signature[] apkContentsSigners;
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                signingInfo = getPackageManager().getPackageInfo(getPackageName(), 134217728).signingInfo;
                apkContentsSigners = signingInfo.getApkContentsSigners();
                if (apkContentsSigners == null || apkContentsSigners.length <= 0) {
                    return;
                }
                MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                messageDigest.update(apkContentsSigners[0].toByteArray());
                byte[] digest = messageDigest.digest();
                StringBuilder sb2 = new StringBuilder();
                for (byte b10 : digest) {
                    sb2.append(String.format("%02X", Byte.valueOf(b10)));
                    sb2.append(s.f32937c);
                }
                if (sb2.length() > 0) {
                    sb2.setLength(sb2.length() - 1);
                }
                Log.e("SHA1", sb2.toString());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public Class V() {
        return EditorActivity.class;
    }

    public void W() {
        View view = this.f69814m;
        view.setPointerIcon(PointerIcon.getSystemIcon(view.getContext(), 0));
    }

    public final void X(int orientation) {
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.editor_topbar_content);
        this.f69792B = linearLayout;
        linearLayout.setVisibility(8);
        this.f69792B.removeAllViews();
        View inflate = orientation == 1 ? this.f69818q.inflate(R.layout.interface_center_topbar_portrait, (ViewGroup) null) : this.f69818q.inflate(R.layout.interface_center_topbar, (ViewGroup) null);
        this.f69792B.addView(inflate);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -2;
        inflate.setLayoutParams(layoutParams);
        TextView textView = (TextView) findViewById(R.id.versionv);
        this.f69819r = textView;
        if (textView != null) {
            textView.setText(W7.b.f27306f.b(this.f69807f));
        }
        C12881a c12881a = new C12881a(this.f69808g);
        this.f69821t = c12881a;
        c12881a.x((LinearLayout) findViewById(R.id.topbarleftcontents), (LinearLayout) findViewById(R.id.topbarmiddlecontents), (LinearLayout) findViewById(R.id.topbarrightcontents), this.f69808g);
        N7.c.m0(new n());
        W7.b.f27316p = new o();
    }

    public final void Y() {
        this.f69810i.getViewTreeObserver().addOnGlobalLayoutListener(new m());
    }

    public final void Z(AbstractC15790k abstractC15790k) {
        this.f69800J = true;
    }

    public final void a0(InterfaceC14479b interfaceC14479b, AbstractC15790k abstractC15790k) {
        if (abstractC15790k.v()) {
            interfaceC14479b.b(this.f69808g, (AbstractC14478a) abstractC15790k.r()).f(new InterfaceC15784e() {
                @Override
                public final void a(AbstractC15790k abstractC15790k2) {
                    EditorActivity.this.Z(abstractC15790k2);
                }
            });
        }
    }

    @Override
    public void attachBaseContext(Context newBase) {
        super.attachBaseContext(w3.k.a(newBase, newBase.getSharedPreferences("ui_config", 0).getFloat("scale_factor", 1.0f)));
    }

    public void b0() {
        T();
        W7.b.f27312l = true;
        startActivity(new Intent(this, (Class<?>) V()));
        overridePendingTransition(0, 0);
        finish();
    }

    public final void c0() {
        View view = this.f69814m;
        if (view == null) {
            return;
        }
        try {
            view.releasePointerCapture();
        } catch (Error | Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        try {
            if (C15169a.x(event)) {
                return true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return super.dispatchKeyEvent(event);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        C15169a.z(event);
        return super.dispatchTouchEvent(event);
    }

    public final void e0() {
        View view = this.f69814m;
        if (view == null) {
            return;
        }
        try {
            view.setFocusable(true);
            this.f69814m.setFocusableInTouchMode(true);
            this.f69814m.requestFocus();
            this.f69814m.requestPointerCapture();
        } catch (Error | Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void f0() {
        C15169a.g gVar = C15169a.f108812u;
        if (gVar == null || !gVar.r()) {
            return;
        }
        e0();
    }

    public final void g0(c.g tab) {
        this.f69813l = tab;
        synchronized (f69790Q) {
            int i10 = 0;
            while (true) {
                try {
                    List<v3.i> list = f69790Q;
                    if (i10 < list.size()) {
                        list.get(i10).a(tab);
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void h0() {
        View view = this.f69814m;
        view.setPointerIcon(PointerIcon.getSystemIcon(view.getContext(), 1000));
    }

    public void i() {
        T();
        W7.b.f27312l = true;
        com.itsmagic.engine.Core.Components.ProjectController.a.p0();
        finish();
        this.f69801K = false;
        this.f69802L = false;
    }

    public void i0() {
        if (this.f69800J) {
            return;
        }
        final InterfaceC14479b a10 = C14480c.a(this.f69808g);
        a10.a().f(new InterfaceC15784e() {
            @Override
            public final void a(AbstractC15790k abstractC15790k) {
                EditorActivity.this.a0(a10, abstractC15790k);
            }
        });
    }

    public final void init() {
        X(getResources().getConfiguration().orientation);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.screenArea);
        this.f69820s = frameLayout;
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new l());
    }

    public final void j0(Context oglContext) {
        if (this.f69824w) {
            if (this.f69794D.get() > 0) {
                this.f69794D.decrementAndGet();
            } else {
                this.f69822u.C(oglContext);
            }
        }
    }

    public final void k0(int frameID) {
        u6.e L12 = u6.l.E1() ? u6.l.L1("Update topbar") : null;
        this.f69821t.L();
        u6.l.J1(L12);
        if (this.f69824w) {
            if (this.f69793C.get() > 0) {
                this.f69793C.decrementAndGet();
            } else {
                this.f69822u.J0(this.f69820s, this.f69808g, this.f69807f, frameID);
            }
        }
    }

    public final void l0() {
        if (getResources().getConfiguration().orientation == 1) {
            K8.c.f11004e = c.a.Portrait;
        } else {
            K8.c.f11004e = c.a.Landscape;
        }
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent intent) {
        super.onActivityResult(requestCode, resultCode, intent);
        N7.c.c(EditorSettings.a().orientation);
        if (requestCode == 111) {
            C15052a.b(requestCode, resultCode, intent);
            return;
        }
        if (w3.f.c(requestCode, resultCode, intent) || w3.e.e(requestCode, resultCode, intent)) {
            return;
        }
        synchronized (this.f69799I) {
            try {
                for (v3.h hVar : this.f69799I) {
                    if (hVar.f121182a == requestCode) {
                        hVar.f121183b.a(resultCode, intent);
                        this.f69799I.remove(hVar);
                        return;
                    }
                }
                w3.l.a(requestCode, resultCode, intent, this.f69808g);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onBackPressed() {
        if (!f69788O.isEmpty()) {
            for (InterfaceC15801a interfaceC15801a : f69788O) {
                if (interfaceC15801a != null && interfaceC15801a.c()) {
                    return;
                }
            }
        }
        if (N7.c.D().B0(new C13583d())) {
            return;
        }
        com.itsmagic.engine.Engines.Engine.World.a.i(new B());
        if (this.f69813l == c.g.Editor) {
            K8.a.I(new a());
            if (c8.b.k()) {
                if (this.f69802L) {
                    return;
                }
                Toast.makeText(this.f69807f, new C3867a("\"android_back\" key set to down, use in your script, show a menu or stop game", "a key \"android_back\" foi definida como \"down\", use nos seus scripts para exibir um menu ou parar o jogo").toString(), 0).show();
                this.f69802L = true;
                return;
            }
            this.f69802L = false;
            if (!this.f69801K) {
                Toast.makeText(this.f69807f, new C3867a("Press back again to return to projects", "Volte novamente para ir para a tela inicial").toString(), 0).show();
                this.f69801K = true;
                new C13965a().a(1000, new b());
            } else {
                if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
                    SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.f69807f, 3);
                    sweetAlertDialog.setTitleText(this.f69807f.getResources().getString(R.string.activity_editor_exiteditor)).setContentText(this.f69807f.getResources().getString(R.string.activity_editor_exiteditor_MESSAGE)).setConfirmText(this.f69807f.getResources().getString(R.string.activity_editor_exiteditor_save)).setConfirmClickListener(new e(sweetAlertDialog)).setNeutralText(this.f69807f.getResources().getString(R.string.activity_editor_exiteditor_withoutsave)).setNeutralClickListener(new d(sweetAlertDialog)).setCancelText(this.f69807f.getResources().getString(R.string.activity_editor_cancel)).setCancelClickListener(new c(sweetAlertDialog)).show();
                } else {
                    S();
                }
                this.f69801K = false;
            }
        }
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        com.itsmagic.engine.Activities.Editor.Utils.p.b(newConfig, new k(newConfig));
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(savedInstanceState);
        try {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeButtonEnabled(false);
                supportActionBar.setDisplayHomeAsUpEnabled(false);
                supportActionBar.setDisplayShowHomeEnabled(false);
            }
        } catch (Error | Exception e10) {
            e10.printStackTrace();
        }
        try {
            getWindow().getDecorView().setSystemUiVisibility(2050);
        } catch (Error | Exception e11) {
            e11.printStackTrace();
        }
        getWindow().setNavigationBarColor(ContextCompat.getColor(this, R.color.black));
        this.f69808g = this;
        this.f69807f = this;
        this.f69818q = getLayoutInflater();
        this.f69817p = new AsyncLayoutInflater(this.f69808g);
        this.f69804c = getSupportFragmentManager();
        if (Build.VERSION.SDK_INT >= 33) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, new h());
        }
        this.f69791A = FirebaseAnalytics.getInstance(this);
        N7.c.l0(new i());
        C14206a.a(this);
        setContentView(R.layout.activity_editor);
        setEdgeToEdgeInsets(((ViewGroup) findViewById(16908290)).getChildAt(0));
        try {
            getWindow().setSoftInputMode(3);
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        try {
            getWindow().addFlags(128);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
        takeKeyEvents(true);
        W7.b.j(this);
        l0();
        try {
            this.f69814m = ((ViewGroup) findViewById(16908290)).getChildAt(0);
        } catch (Error | Exception e14) {
            e14.printStackTrace();
        }
        this.f69816o = new v3.o(this);
        this.f69815n = new v3.b();
        OGLSurfaceView oGLSurfaceView = (OGLSurfaceView) findViewById(R.id.myGLSurfaceView);
        this.f69811j = oGLSurfaceView;
        oGLSurfaceView.I(this);
        rc.c cVar = new rc.c(this);
        this.f69795E = cVar;
        this.f69811j.setOnHoverListener(cVar);
        this.f69811j.setOnGenericMotionListener(this.f69795E);
        this.f69811j.setOnTouchListener(this.f69795E);
        View view = this.f69814m;
        if (view != null) {
            view.setOnCapturedPointerListener(this.f69795E);
        }
        this.f69825x = this.f69808g.getPackageName();
        this.f69805d = new C13191a((LinearLayout) findViewById(R.id.snackbar), this);
        View findViewById = findViewById(R.id.contentView);
        this.f69810i = findViewById;
        if (findViewById != null) {
            findViewById.setBackgroundColor(Theme.i(Theme.T.BACKGROUND));
        }
        Y();
        init();
        R(EditorSettings.a().orientation);
        U();
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        int source = event.getSource();
        if (!com.itsmagic.engine.Core.Components.ProjectController.a.d0() || (source & 16777232) != 16777232 || event.getAction() != 2) {
            return super.onGenericMotionEvent(event);
        }
        try {
            C15169a.f108810s.g(event);
            return true;
        } catch (Error e10) {
            e = e10;
            e.printStackTrace();
            return true;
        } catch (NullPointerException unused) {
            return true;
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
            return true;
        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        try {
            if (C15169a.w(event)) {
                return true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        try {
            if (C15169a.y(event)) {
                return true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return super.onKeyUp(keyCode, event);
    }

    @Override
    public void onPause() {
        this.f69793C.set(2);
        this.f69794D.set(2);
        C12735c.a("USER_EXITED_APP");
        g0(c.g.OutOfApp);
        super.onPause();
    }

    @Override
    public void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        Intent intent = new Intent(this, (Class<?>) V());
        intent.setFlags(CompilerOptions.RedundantSuperinterface);
        finish();
        W7.b.d(this);
        startActivity(intent);
    }

    @Override
    public void onResume() {
        super.onResume();
        C12735c.a("USER_RESUMED_APP");
        g0(c.g.Editor);
        K8.d.f();
        N7.c.e();
        f0();
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void onSaveInstanceState(Bundle savedInstanceState) {
        W7.b.f27317q = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        savedInstanceState.clear();
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            f0();
        }
    }

    public void setEdgeToEdgeInsets(View view) {
        if (Build.VERSION.SDK_INT >= 35) {
            ViewCompat.setOnApplyWindowInsetsListener(view, new j());
        }
    }
}
