package com.itsmagic.engine.Activities.Editor.Interface.Objects;

import JAVARuntime.GUIUtils;
import a4.C3580b;
import a4.C3581c;
import a4.InterfaceC3579a;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Panels.AIAgent.AIAgentWelcomePanel;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Editor3DPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Files.FilesPanel;
import com.itsmagic.engine.Activities.Editor.Panels.NoCode.NoCodePanel;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Activities.Editor.Panels.ShaderGraph.ShaderGraphPanel;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import dd.C12908b;
import i4.C13580a;
import i4.InterfaceC13584e;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import n.C14331a;
import o4.InterfaceC14482a;
import org.json.JSONException;
import org.json.JSONObject;
import p4.InterfaceC14928c;
import q4.C15042c;
import rc.C15169a;
import t3.C15377a;
import z5.C16261a;

public class EditorPanel {

    public static final List<k> f70876V = new SteppedArrayList();

    public static final int f70877W = 5;

    public InterfaceC14928c f70878A;

    public Panel f70879B;

    public final Object f70880C;

    public final List<InterfaceC14482a> f70881D;

    public final List<InterfaceC14482a> f70882E;

    public AtomicBoolean f70883F;

    public float f70884G;

    public int f70885H;

    public int f70886I;

    public boolean f70887J;

    public final List<C15042c> f70888K;

    public String f70889L;

    public String f70890M;

    public AtomicInteger f70891N;

    public AtomicInteger f70892O;

    public final List<C3580b> f70893P;

    public boolean f70894Q;

    public boolean f70895R;

    public boolean f70896S;

    public boolean f70897T;

    public JAVARuntime.EditorPanel f70898U;

    public final o4.f f70899a = new o4.f();

    public float f70900b;

    public float f70901c;

    public float f70902d;

    public float f70903e;

    public float f70904f;

    public float f70905g;

    public float f70906h;

    public float f70907i;

    @Expose
    public boolean isSerializable;

    public LayoutInflater f70908j;

    public C13580a f70909k;

    public View f70910l;

    public final ColorINT f70911m;

    public Ac.b f70912n;

    public boolean f70913o;

    public final AtomicBoolean f70914p;

    public final o4.d f70915q;

    public FrameLayout f70916r;

    public FrameLayout f70917s;

    @Expose
    public String serializedComponentType;

    public View f70918t;

    public final Rect f70919u;

    public final Rect f70920v;

    public final Rect f70921w;

    public InterfaceC13584e f70922x;

    public o4.c f70923y;

    public m f70924z;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            C12735c.a("PANEL_STARTED[" + EditorPanel.this.o() + "]");
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            C12735c.a("PANEL_STARTED[" + EditorPanel.this.o() + "]");
        }
    }

    public class c implements InterfaceC3579a {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                InterfaceC14928c interfaceC14928c = EditorPanel.this.f70878A;
                if (interfaceC14928c != null) {
                    interfaceC14928c.d();
                }
            }
        }

        public c() {
        }

        @Override
        public void run() {
            N7.c.j0(new a());
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            EditorPanel editorPanel = EditorPanel.this;
            InterfaceC13584e interfaceC13584e = editorPanel.f70922x;
            if (interfaceC13584e != null) {
                interfaceC13584e.p(editorPanel);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            N7.c.D().u0(EditorPanel.this);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            N7.c.D().Y(EditorPanel.this);
        }
    }

    public class g implements InterfaceC14482a {
        public g() {
        }

        @Override
        public void a() {
            EditorPanel.this.R0();
        }
    }

    public class h implements InterfaceC14482a {
        public h() {
        }

        @Override
        public void a() {
            EditorPanel.this.R0();
        }
    }

    public class i implements InterfaceC3579a {

        public final C3580b f70934a;

        public i(final C3580b val$shortcut) {
            this.f70934a = val$shortcut;
        }

        @Override
        public void run() {
            if (EditorPanel.this.o0()) {
                this.f70934a.e().run();
            }
        }
    }

    public static class j implements k {
        @Override
        public EditorPanel a() {
            try {
                return (EditorPanel) b().newInstance();
            } catch (IllegalAccessException | InstantiationException e10) {
                e10.printStackTrace();
                throw new RuntimeException("Failed to create a new instance from the class type " + b().getName());
            }
        }

        @Override
        public Class b() {
            throw new RuntimeException("Override this method!");
        }

        @Override
        public String c() {
            throw new RuntimeException("Override this method at " + b().getName());
        }

        @Override
        public EditorPanel d(String json) {
            try {
                return (EditorPanel) X7.a.m().fromJson(json, (Type) b());
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    public interface k {
        EditorPanel a();

        Class b();

        String c();

        EditorPanel d(String json);
    }

    public enum l {
        Unknown,
        AttachedModule
    }

    public interface m {
        boolean a(tc.h touch);
    }

    static {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new ObjectsPanel(null));
        steppedArrayList.add(new FilesPanel(null));
        steppedArrayList.add(new J4.d(null));
        steppedArrayList.add(new Editor3DPanel(null));
        steppedArrayList.add(new C16261a(null));
        steppedArrayList.add(new A5.a(null));
        steppedArrayList.add(new com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a(null));
        steppedArrayList.add(new y6.e(null));
        steppedArrayList.add(new AIAgentWelcomePanel());
        steppedArrayList.add(new Z5.f((K8.a) null));
        steppedArrayList.add(new ShaderGraphPanel());
        steppedArrayList.add(new NoCodePanel());
        List<EditorPanel> e10 = C14331a.e();
        if (e10 != null) {
            steppedArrayList.addAll(e10);
        }
        steppedArrayList.clear();
    }

    public EditorPanel(K8.a engine) {
        Ac.b bVar = Theme.T.PANEL;
        this.f70911m = new ColorINT(Theme.i(bVar));
        this.f70912n = bVar;
        this.f70913o = true;
        this.f70914p = new AtomicBoolean();
        this.f70915q = new o4.d();
        this.f70919u = new Rect();
        this.f70920v = new Rect();
        this.f70921w = new Rect();
        this.f70880C = new Object();
        this.f70881D = new SteppedArrayList();
        this.f70882E = new SteppedArrayList();
        this.f70883F = new AtomicBoolean();
        this.f70884G = 0.0f;
        this.f70885H = 0;
        this.f70886I = 0;
        this.f70887J = true;
        this.f70888K = new LinkedList();
        this.f70889L = null;
        this.f70890M = "Panel";
        this.f70891N = new AtomicInteger(-1);
        this.f70892O = new AtomicInteger(-1);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f70893P = steppedArrayList;
        this.f70896S = true;
        this.isSerializable = false;
        synchronized (steppedArrayList) {
            steppedArrayList.add(new C3580b(C3580b.a(EditorSettings.a().shortcut_maximizePanel)).j(new c()).g(this));
        }
        this.f70890M = "";
    }

    public static void a(k componentInterface) {
        if (componentInterface == null) {
            throw new NullPointerException("component interface can't be null");
        }
        Class b10 = componentInterface.b();
        if (b10 == null) {
            throw new RuntimeException("Component class type can't be null");
        }
        if (b10 == EditorPanel.class) {
            throw new RuntimeException("Component class type can't be == EditorPanel.class");
        }
        if (!EditorPanel.class.isAssignableFrom(b10)) {
            throw new RuntimeException("Component class type needs to extends EditorPanel.class");
        }
        String c10 = componentInterface.c();
        if (c10 == null || c10.isEmpty()) {
            throw new NullPointerException("Type serialized name can't be null or empty");
        }
        synchronized (f70876V) {
            int i10 = 0;
            while (true) {
                try {
                    List<k> list = f70876V;
                    if (i10 >= list.size()) {
                        list.add(componentInterface);
                    } else {
                        if (list.get(i10).c().equalsIgnoreCase(c10)) {
                            throw new RuntimeException("Serialized name already used by other type!!");
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static EditorPanel l(String json) {
        EditorPanel d10;
        try {
            JSONObject jSONObject = new JSONObject(json);
            if (!jSONObject.getBoolean("isSerializable")) {
                return null;
            }
            String string = jSONObject.getString("serializedComponentType");
            synchronized (f70876V) {
                int i10 = 0;
                while (true) {
                    try {
                        List<k> list = f70876V;
                        if (i10 >= list.size()) {
                            throw new ComponentDeserializeException("Invalid component type " + string);
                        }
                        k kVar = list.get(i10);
                        if (kVar.c().equalsIgnoreCase(string) && (d10 = kVar.d(json)) != null) {
                            d10.F0(json, jSONObject);
                            return d10;
                        }
                        i10++;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Activity A() {
        return N7.c.o();
    }

    public void A0(o4.b engineUpdateData) {
    }

    public float B() {
        return this.f70907i;
    }

    public void B0() {
    }

    public float C() {
        return this.f70906h;
    }

    public View C0() {
        return null;
    }

    public float D() {
        return this.f70904f;
    }

    public void D0(View v10) {
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(v10, M());
        synchronized (this.f70893P) {
            for (int i10 = 0; i10 < this.f70893P.size(); i10++) {
                try {
                    C3581c.b(this.f70893P.get(i10));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public float E() {
        return this.f70905g;
    }

    public void E0() {
    }

    public ColorINT F() {
        return this.f70911m;
    }

    public void F0(String json, JSONObject jsonObj) {
    }

    public Ac.b G() {
        return this.f70912n;
    }

    public void G0() {
    }

    public int H() {
        return this.f70919u.height();
    }

    public void H0() {
        C12735c.a("PANEL_DETACHED[" + o() + "]");
        synchronized (this.f70881D) {
            try {
                if (!this.f70881D.isEmpty()) {
                    this.f70882E.addAll(this.f70881D);
                    Iterator<InterfaceC14482a> it = this.f70882E.iterator();
                    while (it.hasNext()) {
                        it.next().a();
                    }
                    this.f70882E.clear();
                }
            } finally {
            }
        }
        synchronized (this.f70893P) {
            for (int i10 = 0; i10 < this.f70893P.size(); i10++) {
                try {
                    C3581c.e(this.f70893P.get(i10));
                } finally {
                }
            }
        }
    }

    public Rect I() {
        return this.f70919u;
    }

    public void I0() {
    }

    public int J() {
        return this.f70919u.width();
    }

    public void J0() {
    }

    public int K() {
        return this.f70919u.left;
    }

    public void K0() {
    }

    public int L() {
        return this.f70919u.top;
    }

    public void L0() {
    }

    public Context M() {
        return N7.c.t();
    }

    public void M0() {
        g();
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(this.f70910l, M());
    }

    public List<C12908b> N() {
        return null;
    }

    public void N0() {
    }

    public o4.f O() {
        return this.f70899a;
    }

    public boolean O0(n4.f panelIntent) {
        return false;
    }

    public o4.f P(o4.f out) {
        out.h(O());
        return out;
    }

    public void P0(InterfaceC14482a trigger) {
        synchronized (this.f70881D) {
            this.f70881D.remove(trigger);
        }
    }

    public float Q() {
        return this.f70903e;
    }

    public void Q0(C3580b shortcut) {
        synchronized (this.f70893P) {
            for (int i10 = 0; i10 < this.f70893P.size(); i10++) {
                try {
                    C3580b c3580b = this.f70893P.get(i10);
                    if (c3580b.f31837d == shortcut) {
                        this.f70893P.remove(c3580b);
                        C3581c.b(c3580b);
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public int R() {
        return (int) (this.f70903e * K8.c.a());
    }

    public void R0() {
        N7.c.j0(new e());
    }

    public String S() {
        return this.f70889L;
    }

    public void S0() {
        this.f70897T = true;
    }

    public int T() {
        return this.f70892O.get() != -1 ? this.f70892O.get() : this.f70891N.get();
    }

    public void T0() {
        N7.c.j0(new f());
    }

    public o4.c U() {
        return this.f70923y;
    }

    public void U0(Runnable runnable) {
        N7.c.j0(runnable);
    }

    public o4.d V() {
        return this.f70915q;
    }

    public void V0(n4.f intent) {
        N7.c.D().B0(intent);
    }

    public List<C15042c> W() {
        return this.f70888K;
    }

    public void W0(boolean allowCloseX) {
        Panel panel = this.f70879B;
        if (panel != null) {
            panel.r0(allowCloseX);
        } else {
            this.f70894Q = true;
            this.f70895R = allowCloseX;
        }
    }

    public String X() {
        return this.f70890M;
    }

    public EditorPanel X0(int color) {
        this.f70912n = null;
        this.f70911m.intColor = color;
        return this;
    }

    public int Y() {
        return this.f70891N.get();
    }

    public EditorPanel Y0(Ac.b backgroundColorTag) {
        this.f70912n = backgroundColorTag;
        g();
        return this;
    }

    public Vector2 Z(tc.h touch) {
        if (touch == null) {
            throw new NullPointerException("touch can't be null");
        }
        Vector2 g10 = touch.g();
        Vector2 vector2 = new Vector2();
        synchronized (this.f70919u) {
            float f10 = g10.f79838x;
            Rect rect = this.f70919u;
            vector2.f79838x = f10 - rect.left;
            vector2.f79839y = g10.f79839y - rect.top;
        }
        return vector2;
    }

    public EditorPanel Z0(ColorINT color) {
        if (color == null) {
            throw new NullPointerException("color can't be null");
        }
        this.f70912n = null;
        this.f70911m.K(color);
        return this;
    }

    public Vector2 a0(tc.h touch, Vector2 out) {
        if (touch == null) {
            throw new NullPointerException("touch can't be null");
        }
        if (out == null) {
            throw new NullPointerException("out can't be null");
        }
        Vector2 g10 = touch.g();
        synchronized (this.f70919u) {
            float f10 = g10.f79838x;
            Rect rect = this.f70919u;
            out.f79838x = f10 - rect.left;
            out.f79839y = g10.f79839y - rect.top;
        }
        return out;
    }

    public void a1(boolean drawBackground) {
        this.f70913o = drawBackground;
    }

    public void b(InterfaceC14482a trigger) {
        synchronized (this.f70881D) {
            this.f70881D.add(trigger);
        }
    }

    public float b0() {
        return this.f70902d;
    }

    public void b1(String icon) {
        this.f70889L = icon;
    }

    public void c(C15042c rightOption) {
        this.f70888K.add(rightOption);
    }

    public int c0() {
        return (int) (this.f70902d * K8.c.b());
    }

    public void c1(boolean multiInstancing) {
        this.f70887J = multiInstancing;
    }

    public void d(C3580b shortcut) {
        synchronized (this.f70893P) {
            C3580b clone = shortcut.clone();
            clone.f31837d = shortcut;
            clone.j(new i(shortcut));
            this.f70893P.add(clone);
            C3581c.b(clone);
        }
    }

    public float d0() {
        return this.f70900b;
    }

    public EditorPanel d1(o4.c onDetachListener) {
        this.f70923y = onDetachListener;
        return this;
    }

    public void e(o4.e panelsBundle) {
    }

    public int e0() {
        return (int) (this.f70900b * K8.c.b());
    }

    public void e1(boolean requestCloseConfirmation) {
        this.f70896S = requestCloseConfirmation;
    }

    public boolean f() {
        return true;
    }

    public float f0() {
        return this.f70901c;
    }

    public void f1(String tittle) {
        this.f70890M = tittle;
    }

    public final void g() {
        Ac.b bVar = this.f70912n;
        if (bVar != null) {
            this.f70911m.intColor = Theme.i(bVar);
        }
    }

    public int g0() {
        return (int) (this.f70901c * K8.c.a());
    }

    public void g1(int tittleColor) {
        this.f70891N.set(tittleColor);
    }

    public void h(o4.e panelsBundle) {
    }

    public final void h0() {
        this.f70897T = false;
        N7.c.j0(new d());
    }

    public void h1(m viewModeListener) {
        synchronized (this.f70880C) {
            this.f70924z = viewModeListener;
        }
    }

    public void i() {
        this.f70883F.set(true);
    }

    public void i0() {
        Panel panel;
        if (this.f70897T) {
            this.f70897T = false;
            h0();
        }
        if (this.f70894Q && (panel = this.f70879B) != null) {
            panel.r0(this.f70895R);
            this.f70894Q = false;
        }
        if (!this.f70883F.get()) {
            this.f70892O.set(-1);
            return;
        }
        float e10 = this.f70884G + K8.d.e();
        this.f70884G = e10;
        if (e10 >= 0.25f) {
            if (this.f70892O.get() == -1) {
                this.f70892O.set(Theme.i(Theme.T.ACCENT));
            } else {
                this.f70892O.set(-1);
            }
            this.f70884G = 0.0f;
            int i10 = this.f70886I + 1;
            this.f70886I = i10;
            if (i10 >= 10) {
                this.f70892O.set(-1);
                this.f70886I = 0;
                this.f70883F.set(false);
            }
        }
    }

    public void i1(boolean visible) {
        synchronized (this.f70914p) {
            this.f70914p.set(visible);
        }
    }

    public void j() {
        synchronized (this.f70919u) {
            try {
                FrameLayout frameLayout = this.f70917s;
                if (frameLayout != null) {
                    frameLayout.requestLayout();
                    if (this.f70917s.getGlobalVisibleRect(this.f70921w)) {
                        Rect rect = this.f70919u;
                        Rect rect2 = this.f70921w;
                        rect.left = rect2.left;
                        rect.top = rect2.top;
                        rect.right = rect2.right;
                        rect.bottom = rect2.bottom;
                    }
                    this.f70899a.l(this.f70919u.top / K8.c.a());
                    this.f70899a.i(this.f70919u.height() / K8.c.a());
                    this.f70899a.k(this.f70919u.left / K8.c.b());
                    this.f70899a.j(this.f70919u.width() / K8.c.b());
                }
            } finally {
            }
        }
        synchronized (this.f70920v) {
            try {
                View view = this.f70918t;
                if (view != null && view.getGlobalVisibleRect(this.f70921w)) {
                    Rect rect3 = this.f70920v;
                    Rect rect4 = this.f70921w;
                    rect3.left = rect4.left;
                    rect3.top = rect4.top;
                    rect3.right = rect4.right;
                    rect3.bottom = rect4.bottom;
                }
            } finally {
            }
        }
    }

    public boolean j0() {
        Panel panel = this.f70879B;
        if (panel != null) {
            return panel.W();
        }
        if (this.f70894Q) {
            return this.f70895R;
        }
        return true;
    }

    public JAVARuntime.EditorPanel j1() {
        JAVARuntime.EditorPanel editorPanel = this.f70898U;
        if (editorPanel != null) {
            return editorPanel;
        }
        JAVARuntime.EditorPanel editorPanel2 = new JAVARuntime.EditorPanel(this);
        this.f70898U = editorPanel2;
        return editorPanel2;
    }

    public EditorPanel k() {
        try {
            return (EditorPanel) getClass().newInstance();
        } catch (Exception e10) {
            e10.printStackTrace();
            throw new RuntimeException("Override this method panel tittle: " + X());
        }
    }

    public boolean k0() {
        return this.f70913o;
    }

    public void k1() {
        InterfaceC14928c interfaceC14928c = this.f70878A;
        if (interfaceC14928c != null) {
            interfaceC14928c.d();
        }
    }

    public boolean l0() {
        return N7.c.D().H(this) instanceof FloatingPanelArea;
    }

    public void l1() {
    }

    public void m(FloatingPanelArea editorPanel) {
        editorPanel.d1(new h());
    }

    public boolean m0(int x10, int y10) {
        boolean z10;
        synchronized (this.f70919u) {
            try {
                Rect rect = this.f70919u;
                z10 = x10 >= rect.left && x10 <= rect.right && y10 >= rect.top && y10 <= rect.bottom;
            } finally {
            }
        }
        return z10;
    }

    public void m1() {
    }

    public void n(EditorPanel editorPanel) {
        editorPanel.b(new g());
    }

    public boolean n0(Vector2 position) {
        boolean z10;
        synchronized (this.f70919u) {
            try {
                float f10 = position.f79838x;
                Rect rect = this.f70919u;
                if (f10 >= rect.left && f10 <= rect.right) {
                    float f11 = position.f79839y;
                    z10 = f11 >= ((float) rect.top) && f11 <= ((float) rect.bottom);
                }
            } finally {
            }
        }
        return z10;
    }

    public void n1() {
    }

    public String o() {
        String str = null;
        try {
            Field declaredField = getClass().getDeclaredField("SERIALIZED_NAME");
            if (Modifier.isStatic(declaredField.getModifiers())) {
                str = (String) declaredField.get(null);
            }
        } catch (NoSuchFieldException unused) {
            System.out.println("NoSuchFieldException:SERIALIZED_NAME in " + getClass().getSimpleName());
        } catch (Exception e10) {
            if (!C15377a.f109719g.booleanValue()) {
                e10.printStackTrace();
            }
        }
        if (str == null) {
            str = this.f70890M;
        }
        return (str == null || str.isEmpty()) ? "Unknown panel" : str;
    }

    public boolean o0() {
        if (!w0()) {
            return false;
        }
        C15169a.g gVar = C15169a.f108812u;
        if (!gVar.q()) {
            return false;
        }
        if (!this.f70922x.h() || this.f70922x.t(this.f70878A.c())) {
            return m0(gVar.i(), gVar.j());
        }
        return false;
    }

    public void o1() {
    }

    public tc.h p(int x10, int y10, int width, int height) {
        return q(x10, y10, width, height, GUIUtils.TouchFilter.All);
    }

    public boolean p0() {
        return this.f70887J;
    }

    public tc.h q(int x10, int y10, int width, int height, GUIUtils.TouchFilter touchFilter) {
        return s(x10, y10, width, height, touchFilter, false);
    }

    public boolean q0() {
        return this.f70896S;
    }

    public tc.h r(int x10, int y10, int width, int height, GUIUtils.TouchFilter touchFilter, int offset) {
        return t(x10, y10, width, height, touchFilter, false, offset);
    }

    public boolean r0() {
        return this.isSerializable;
    }

    public tc.h s(int x10, int y10, int width, int height, GUIUtils.TouchFilter touchFilter, boolean disableTouchInFrontOfFloatingPanels) {
        return t(x10, y10, width, height, touchFilter, disableTouchInFrontOfFloatingPanels, 0);
    }

    public boolean s0(tc.h touch) {
        boolean z10;
        Vector2 g10 = touch.g();
        synchronized (this.f70919u) {
            try {
                float f10 = g10.f79838x;
                Rect rect = this.f70919u;
                if (f10 >= rect.left && f10 <= rect.right) {
                    float f11 = g10.f79839y;
                    z10 = f11 >= ((float) rect.top) && f11 <= ((float) rect.bottom);
                }
            } finally {
            }
        }
        return z10;
    }

    public tc.h t(int x10, int y10, int width, int height, GUIUtils.TouchFilter touchFilter, boolean disableTouchInFrontOfFloatingPanels, int offset) {
        boolean a10;
        synchronized (this.f70914p) {
            try {
                if (!this.f70914p.get()) {
                    return null;
                }
                List<tc.h> list = C15169a.f108802k;
                int i10 = 0;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    tc.h hVar = list.get(i11);
                    if (hVar != null && GUIUtils.applyFilter(hVar, touchFilter)) {
                        Vector2 g10 = hVar.g();
                        float f10 = g10.f79838x;
                        if (f10 >= x10 && f10 <= x10 + width) {
                            float f11 = g10.f79839y;
                            if (f11 >= y10 && f11 <= y10 + height) {
                                synchronized (this.f70880C) {
                                    try {
                                        m mVar = this.f70924z;
                                        a10 = mVar != null ? mVar.a(hVar) : false;
                                    } finally {
                                    }
                                }
                                if (a10) {
                                    continue;
                                } else {
                                    if (disableTouchInFrontOfFloatingPanels) {
                                        if (this.f70922x.c(hVar)) {
                                            continue;
                                        } else if (i10 >= offset) {
                                            return hVar;
                                        }
                                    } else if (i10 >= offset) {
                                        return hVar;
                                    }
                                    i10++;
                                }
                            }
                        }
                    }
                }
                return null;
            } finally {
            }
        }
    }

    public boolean t0(tc.h... touch) {
        if (touch.length <= 0) {
            return false;
        }
        for (tc.h hVar : touch) {
            Vector2 g10 = hVar.g();
            synchronized (this.f70919u) {
                try {
                    float f10 = g10.f79838x;
                    Rect rect = this.f70919u;
                    if (f10 >= rect.left && f10 <= rect.right) {
                        float f11 = g10.f79839y;
                        if (f11 >= rect.top && f11 <= rect.bottom) {
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return true;
    }

    public tc.h u(int x10, int y10, int width, int height, boolean disableTouchInFrontOfFloatingPanels) {
        return s(x10, y10, width, height, GUIUtils.TouchFilter.All, disableTouchInFrontOfFloatingPanels);
    }

    public boolean u0(tc.h touch) {
        boolean z10;
        Vector2 g10 = touch.g();
        synchronized (this.f70920v) {
            try {
                float f10 = g10.f79838x;
                Rect rect = this.f70920v;
                if (f10 >= rect.left && f10 <= rect.right) {
                    float f11 = g10.f79839y;
                    z10 = f11 >= ((float) rect.top) && f11 <= ((float) rect.bottom);
                }
            } finally {
            }
        }
        return z10;
    }

    public tc.h v(GUIUtils.TouchFilter touchFilter) {
        tc.h q10;
        synchronized (this.f70919u) {
            Rect rect = this.f70919u;
            q10 = q(rect.left, rect.top, rect.width(), this.f70919u.height(), touchFilter);
        }
        return q10;
    }

    public boolean v0(tc.h... touch) {
        if (touch.length <= 0) {
            return false;
        }
        for (tc.h hVar : touch) {
            Vector2 g10 = hVar.g();
            synchronized (this.f70920v) {
                try {
                    float f10 = g10.f79838x;
                    Rect rect = this.f70920v;
                    if (f10 >= rect.left && f10 <= rect.right) {
                        float f11 = g10.f79839y;
                        if (f11 >= rect.top && f11 <= rect.bottom) {
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return true;
    }

    public tc.h w(GUIUtils.TouchFilter touchFilter, int offset) {
        tc.h r10;
        synchronized (this.f70919u) {
            Rect rect = this.f70919u;
            r10 = r(rect.left, rect.top, rect.width(), this.f70919u.height(), touchFilter, offset);
        }
        return r10;
    }

    public boolean w0() {
        boolean z10;
        synchronized (this.f70914p) {
            z10 = this.f70914p.get();
        }
        return z10;
    }

    public tc.h x(GUIUtils.TouchFilter touchFilter, int offset, boolean disableTouchInFrontOfFloatingPanels) {
        tc.h t10;
        synchronized (this.f70919u) {
            Rect rect = this.f70919u;
            t10 = t(rect.left, rect.top, rect.width(), this.f70919u.height(), touchFilter, disableTouchInFrontOfFloatingPanels, offset);
        }
        return t10;
    }

    public void x0() {
    }

    public tc.h y(GUIUtils.TouchFilter touchFilter, boolean disableTouchInFrontOfFloatingPanels) {
        tc.h s10;
        synchronized (this.f70919u) {
            Rect rect = this.f70919u;
            s10 = s(rect.left, rect.top, rect.width(), this.f70919u.height(), touchFilter, disableTouchInFrontOfFloatingPanels);
        }
        return s10;
    }

    public void y0() {
        InterfaceC14928c interfaceC14928c = this.f70878A;
        if (interfaceC14928c != null) {
            interfaceC14928c.f();
        }
    }

    public void z(o4.b engineUpdateData) {
    }

    public void z0() {
        InterfaceC14928c interfaceC14928c = this.f70878A;
        if (interfaceC14928c != null) {
            interfaceC14928c.a();
        }
    }

    public EditorPanel() {
        Ac.b bVar = Theme.T.PANEL;
        this.f70911m = new ColorINT(Theme.i(bVar));
        this.f70912n = bVar;
        this.f70913o = true;
        this.f70914p = new AtomicBoolean();
        this.f70915q = new o4.d();
        this.f70919u = new Rect();
        this.f70920v = new Rect();
        this.f70921w = new Rect();
        this.f70880C = new Object();
        this.f70881D = new SteppedArrayList();
        this.f70882E = new SteppedArrayList();
        this.f70883F = new AtomicBoolean();
        this.f70884G = 0.0f;
        this.f70885H = 0;
        this.f70886I = 0;
        this.f70887J = true;
        this.f70888K = new LinkedList();
        this.f70889L = null;
        this.f70890M = "Panel";
        this.f70891N = new AtomicInteger(-1);
        this.f70892O = new AtomicInteger(-1);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f70893P = steppedArrayList;
        this.f70896S = true;
        this.isSerializable = false;
        synchronized (steppedArrayList) {
            steppedArrayList.add(new C3580b(C3580b.a(EditorSettings.a().shortcut_maximizePanel)).j(new c()).g(this));
        }
        this.f70890M = "Panel";
    }

    public EditorPanel(String icon, String tittle) {
        Ac.b bVar = Theme.T.PANEL;
        this.f70911m = new ColorINT(Theme.i(bVar));
        this.f70912n = bVar;
        this.f70913o = true;
        this.f70914p = new AtomicBoolean();
        this.f70915q = new o4.d();
        this.f70919u = new Rect();
        this.f70920v = new Rect();
        this.f70921w = new Rect();
        this.f70880C = new Object();
        this.f70881D = new SteppedArrayList();
        this.f70882E = new SteppedArrayList();
        this.f70883F = new AtomicBoolean();
        this.f70884G = 0.0f;
        this.f70885H = 0;
        this.f70886I = 0;
        this.f70887J = true;
        this.f70888K = new LinkedList();
        this.f70889L = null;
        this.f70890M = "Panel";
        this.f70891N = new AtomicInteger(-1);
        this.f70892O = new AtomicInteger(-1);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f70893P = steppedArrayList;
        this.f70896S = true;
        this.isSerializable = false;
        synchronized (steppedArrayList) {
            steppedArrayList.add(new C3580b(C3580b.a(EditorSettings.a().shortcut_maximizePanel)).j(new c()).g(this));
        }
        N7.c.h0();
        tittle = tittle == null ? "Unnamed panel" : tittle;
        this.f70889L = icon;
        this.f70890M = tittle;
        N7.c.c0(new a());
    }

    public EditorPanel(String icon, String tittle, String serializedComponentType) {
        Ac.b bVar = Theme.T.PANEL;
        this.f70911m = new ColorINT(Theme.i(bVar));
        this.f70912n = bVar;
        this.f70913o = true;
        this.f70914p = new AtomicBoolean();
        this.f70915q = new o4.d();
        this.f70919u = new Rect();
        this.f70920v = new Rect();
        this.f70921w = new Rect();
        this.f70880C = new Object();
        this.f70881D = new SteppedArrayList();
        this.f70882E = new SteppedArrayList();
        this.f70883F = new AtomicBoolean();
        this.f70884G = 0.0f;
        this.f70885H = 0;
        this.f70886I = 0;
        this.f70887J = true;
        this.f70888K = new LinkedList();
        this.f70889L = null;
        this.f70890M = "Panel";
        this.f70891N = new AtomicInteger(-1);
        this.f70892O = new AtomicInteger(-1);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f70893P = steppedArrayList;
        this.f70896S = true;
        this.isSerializable = false;
        synchronized (steppedArrayList) {
            steppedArrayList.add(new C3580b(C3580b.a(EditorSettings.a().shortcut_maximizePanel)).j(new c()).g(this));
        }
        N7.c.h0();
        this.f70889L = icon;
        this.f70890M = tittle;
        if (serializedComponentType != null && !serializedComponentType.isEmpty()) {
            this.serializedComponentType = serializedComponentType;
            this.isSerializable = true;
        }
        N7.c.c0(new b());
    }
}
