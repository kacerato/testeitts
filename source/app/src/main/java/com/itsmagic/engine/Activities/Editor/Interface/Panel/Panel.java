package com.itsmagic.engine.Activities.Editor.Interface.Panel;

import Z6.c;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.HUBPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.PanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.ScriptingHUB;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import i4.C13580a;
import i4.InterfaceC13584e;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p4.C14927b;
import p4.InterfaceC14928c;
import r4.C15147a;
import t4.C15379b;

public class Panel {

    public static final List<i> f70936q = new SteppedArrayList();

    public View f70937a;

    public LinearLayout f70938b;

    public View f70939c;

    public View f70940d;

    public TextView f70941e;

    @Expose
    private EditorPanel editorPanel;

    public ImageView f70942f;

    public ImageView f70943g;

    public InterfaceC14928c f70944h;

    public InterfaceC13584e f70945i;

    public String f70946j;

    public int f70947k = -1;

    public boolean f70948l = false;

    public boolean f70949m = false;

    public final AtomicBoolean f70950n = new AtomicBoolean();

    public g f70951o = g.None;

    public float f70952p = 1.0f;

    @Expose
    public String serializedComponentType;

    public class a implements View.OnClickListener {

        public final InterfaceC14928c f70953b;

        public a(final InterfaceC14928c val$panelToPanelArea) {
            this.f70953b = val$panelToPanelArea;
        }

        @Override
        public void onClick(View v10) {
            InterfaceC14928c interfaceC14928c = this.f70953b;
            if (interfaceC14928c != null) {
                interfaceC14928c.onClick();
            }
        }
    }

    public class b implements View.OnLongClickListener {

        public final InterfaceC14928c f70955b;

        public b(final InterfaceC14928c val$panelToPanelArea) {
            this.f70955b = val$panelToPanelArea;
        }

        @Override
        public boolean onLongClick(View v10) {
            InterfaceC14928c interfaceC14928c = this.f70955b;
            if (interfaceC14928c != null) {
                return interfaceC14928c.g();
            }
            return false;
        }
    }

    public class c implements View.OnClickListener {

        public final InterfaceC14928c f70957b;

        public class a extends c.h {
            public a() {
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                InterfaceC14928c interfaceC14928c = c.this.f70957b;
                if (interfaceC14928c != null) {
                    interfaceC14928c.close();
                }
            }
        }

        public c(final InterfaceC14928c val$panelToPanelArea) {
            this.f70957b = val$panelToPanelArea;
        }

        @Override
        public void onClick(View v10) {
            N7.c.Y();
            if (Panel.this.editorPanel == null || !Panel.this.editorPanel.q0()) {
                InterfaceC14928c interfaceC14928c = this.f70957b;
                if (interfaceC14928c != null) {
                    interfaceC14928c.close();
                    return;
                }
                return;
            }
            Z6.c.w1(v10, C15147a.e.Below, Lang.l(Lang.T.CLOSE) + " " + Panel.this.f70946j + "", Lang.l(Lang.T.ARE_YOU_SURE), new a());
        }
    }

    public class d implements View.OnClickListener {

        public final InterfaceC14928c f70960b;

        public d(final InterfaceC14928c val$panelToPanelArea) {
            this.f70960b = val$panelToPanelArea;
        }

        @Override
        public void onClick(View v10) {
            InterfaceC14928c interfaceC14928c = this.f70960b;
            if (interfaceC14928c != null) {
                interfaceC14928c.onClick();
            }
        }
    }

    public class e implements View.OnLongClickListener {

        public final InterfaceC14928c f70962b;

        public e(final InterfaceC14928c val$panelToPanelArea) {
            this.f70962b = val$panelToPanelArea;
        }

        @Override
        public boolean onLongClick(View v10) {
            InterfaceC14928c interfaceC14928c = this.f70962b;
            if (interfaceC14928c != null) {
                return interfaceC14928c.g();
            }
            return false;
        }
    }

    public class f implements Runnable {

        public final FrameLayout f70964b;

        public f(final FrameLayout val$parent) {
            this.f70964b = val$parent;
        }

        @Override
        public void run() {
            if (this.f70964b.indexOfChild(Panel.this.f70937a) != -1) {
                this.f70964b.removeView(Panel.this.f70937a);
            }
        }
    }

    public enum g {
        TopBar,
        HorizontalBar,
        None
    }

    public static class h implements i {
        @Override
        public Panel a() {
            try {
                return (Panel) b().newInstance();
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
        public Panel d(String json) {
            try {
                return (Panel) X7.a.m().fromJson(json, (Type) b());
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    public interface i {
        Panel a();

        Class b();

        String c();

        Panel d(String json);
    }

    public enum j {
        Unknown,
        AttachedModule
    }

    static {
        Iterator it = Arrays.asList(HUBPanel.class, ScriptingHUB.class, C15379b.class, C14927b.class).iterator();
        while (it.hasNext()) {
            try {
                Class.forName(((Class) it.next()).getName());
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    public Panel() {
    }

    public static Panel E(String json) {
        String string;
        Panel d10;
        try {
            JSONObject jSONObject = new JSONObject(json);
            try {
                if (jSONObject.has("serializedComponentType") && (string = jSONObject.getString("serializedComponentType")) != null && !string.isEmpty()) {
                    synchronized (f70936q) {
                        int i10 = 0;
                        while (true) {
                            try {
                                List<i> list = f70936q;
                                if (i10 < list.size()) {
                                    i iVar = list.get(i10);
                                    if (iVar.c().equalsIgnoreCase(string) && (d10 = iVar.d(json)) != null) {
                                        if (!d10.e0(json, jSONObject)) {
                                            d10 = null;
                                        }
                                        return d10;
                                    }
                                    i10++;
                                }
                            } finally {
                            }
                        }
                    }
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            return F(json);
        } catch (JSONException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Panel F(String json) {
        EditorPanel l10;
        try {
            Panel panel = (Panel) X7.a.m().fromJson(json, Panel.class);
            if (panel != null) {
                panel.editorPanel = null;
                try {
                    JSONObject jSONObject = new JSONObject(json);
                    if (jSONObject.has("editorPanel") && (l10 = EditorPanel.l(jSONObject.getJSONObject("editorPanel").toString())) != null) {
                        panel.editorPanel = l10;
                    }
                    if (!panel.e0(json, jSONObject)) {
                        panel = null;
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                EditorPanel editorPanel = panel.editorPanel;
                if (editorPanel != null && !editorPanel.r0()) {
                    panel.editorPanel = null;
                }
                if (panel.editorPanel == null) {
                    return null;
                }
            }
            return panel;
        } catch (JsonSyntaxException e11) {
            throw new ComponentDeserializeException(e11);
        }
    }

    public static void u(i componentInterface) {
        if (componentInterface == null) {
            throw new NullPointerException("component interface can't be null");
        }
        Class b10 = componentInterface.b();
        if (b10 == null) {
            throw new RuntimeException("Component class type can't be null");
        }
        if (b10 == Panel.class) {
            throw new RuntimeException("Component class type can't be == Panel.class");
        }
        if (!Panel.class.isAssignableFrom(b10)) {
            throw new RuntimeException("Component class type needs to extends Panel.class");
        }
        String c10 = componentInterface.c();
        if (c10 == null || c10.isEmpty()) {
            throw new NullPointerException("Type serialized name can't be null or empty");
        }
        synchronized (f70936q) {
            int i10 = 0;
            while (true) {
                try {
                    List<i> list = f70936q;
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

    public void A() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.j();
        }
    }

    public boolean B(EditorPanel editorPanel) {
        return this.editorPanel == editorPanel;
    }

    public Panel C() {
        return new Panel(this.editorPanel.k());
    }

    public void D(FrameLayout screenArea) {
        View view = this.f70939c;
        if (view != null) {
            screenArea.removeView(view);
            this.f70939c = null;
        }
        LinearLayout linearLayout = this.f70938b;
        if (linearLayout != null) {
            screenArea.removeView(linearLayout);
            this.f70938b = null;
        }
    }

    public void G(FrameLayout screenArea) {
        View view = this.f70939c;
        if (view != null) {
            screenArea.removeView(view);
            this.f70939c = null;
        }
    }

    public void H(LinearLayout leftBar, LinearLayout rightBar, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        LinearLayout linearLayout = this.f70938b;
        if (linearLayout != null) {
            try {
                if (leftBar.indexOfChild(linearLayout) != -1) {
                    leftBar.removeView(this.f70938b);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                if (rightBar.indexOfChild(this.f70938b) != -1) {
                    rightBar.removeView(this.f70938b);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f70938b = null;
            this.f70941e = null;
            this.f70942f = null;
            this.f70951o = g.None;
        }
    }

    public void I(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        View view = this.f70939c;
        if (view != null) {
            try {
                if (parent.indexOfChild(view) != -1) {
                    parent.removeView(this.f70939c);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f70939c = null;
            this.f70941e = null;
            this.f70942f = null;
            this.f70951o = g.None;
        }
    }

    public void J(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            this.f70945i = panelsControllerListener;
            editorPanel.f70922x = panelsControllerListener;
            editorPanel.z(engineUpdateData);
        }
    }

    public View K() {
        View view = this.f70939c;
        if (view != null) {
            return view;
        }
        LinearLayout linearLayout = this.f70938b;
        if (linearLayout != null) {
            return linearLayout;
        }
        return null;
    }

    public PanelArea L() {
        InterfaceC14928c interfaceC14928c = this.f70944h;
        if (interfaceC14928c != null) {
            return interfaceC14928c.c();
        }
        return null;
    }

    public <T extends EditorPanel> T M() {
        return (T) this.editorPanel;
    }

    public float N() {
        InterfaceC14928c interfaceC14928c = this.f70944h;
        if (interfaceC14928c == null) {
            return 0.0f;
        }
        return interfaceC14928c.b();
    }

    public String O() {
        return this.editorPanel.S();
    }

    public String P() {
        return this.editorPanel.X();
    }

    public View Q() {
        return this.f70937a;
    }

    public o4.d R() {
        return this.editorPanel.f70915q;
    }

    public String S() {
        return this.editorPanel.X();
    }

    public float T() {
        InterfaceC14928c interfaceC14928c = this.f70944h;
        if (interfaceC14928c == null) {
            return 0.0f;
        }
        return interfaceC14928c.getW();
    }

    public float U() {
        InterfaceC14928c interfaceC14928c = this.f70944h;
        if (interfaceC14928c == null) {
            return 0.0f;
        }
        return interfaceC14928c.getX();
    }

    public float V() {
        InterfaceC14928c interfaceC14928c = this.f70944h;
        if (interfaceC14928c == null) {
            return 0.0f;
        }
        return interfaceC14928c.getY();
    }

    public boolean W() {
        return this.f70949m;
    }

    public boolean X() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            return editorPanel.p0();
        }
        return true;
    }

    public void Y() {
        InterfaceC14928c interfaceC14928c = this.f70944h;
        if (interfaceC14928c != null) {
            interfaceC14928c.e();
        }
    }

    public void Z() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.x0();
        }
    }

    public void a0(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            this.f70945i = panelsControllerListener;
            editorPanel.f70922x = panelsControllerListener;
            editorPanel.A0(engineUpdateData);
        }
    }

    public void b0() {
        this.editorPanel.B0();
    }

    public View c0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        EditorPanel editorPanel = this.editorPanel;
        editorPanel.f70908j = layoutInflater;
        editorPanel.f70909k = editor3DScreen;
        View C02 = editorPanel.C0();
        this.f70937a = C02;
        EditorPanel editorPanel2 = this.editorPanel;
        editorPanel2.f70910l = C02;
        editorPanel2.D0(C02);
        return this.f70937a;
    }

    public void d0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        EditorPanel editorPanel = this.editorPanel;
        editorPanel.f70908j = layoutInflater;
        editorPanel.f70909k = editor3DScreen;
        editorPanel.E0();
    }

    public boolean e0(String json, JSONObject jsonObj) {
        return true;
    }

    public void f0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen, FrameLayout parent) {
        N7.c.j0(new f(parent));
        EditorPanel editorPanel = this.editorPanel;
        editorPanel.f70908j = layoutInflater;
        editorPanel.f70909k = editor3DScreen;
        editorPanel.H0();
        this.editorPanel.G0();
        if (this.editorPanel.U() != null) {
            this.editorPanel.U().a();
        }
    }

    public void g0() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.H0();
            this.editorPanel.G0();
            if (this.editorPanel.U() != null) {
                this.editorPanel.U().a();
            }
        }
    }

    public void h0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen, FrameLayout parent) {
        if (parent.indexOfChild(this.f70937a) != -1) {
            parent.removeView(this.f70937a);
        }
        EditorPanel editorPanel = this.editorPanel;
        editorPanel.f70908j = layoutInflater;
        editorPanel.f70909k = editor3DScreen;
    }

    public void i0() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.I0();
        }
    }

    public void j0() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.J0();
        }
    }

    public void k0() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.K0();
        }
    }

    public void l0() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.L0();
        }
    }

    public void m0() {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.M0();
        }
    }

    public void n0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        EditorPanel editorPanel = this.editorPanel;
        editorPanel.f70908j = layoutInflater;
        editorPanel.f70909k = editor3DScreen;
        editorPanel.N0();
    }

    public void o0() {
        InterfaceC14928c interfaceC14928c = this.f70944h;
        if (interfaceC14928c != null) {
            interfaceC14928c.close();
        }
    }

    public void p0(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        View view = this.f70939c;
        if (view != null) {
            view.setBackground(ContextCompat.getDrawable(context, R.drawable.round_6_top));
            this.f70939c.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.CARD)));
        }
        TextView textView = this.f70941e;
        if (textView != null) {
            textView.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        }
        ImageView imageView = this.f70943g;
        if (imageView != null) {
            imageView.setVisibility(this.f70949m ? 0 : 8);
        }
        this.f70948l = true;
    }

    public boolean q0(n4.f panelIntent) {
        EditorPanel editorPanel = this.editorPanel;
        return editorPanel != null && editorPanel.O0(panelIntent);
    }

    public void r0(boolean allowCloseX) {
        this.f70949m = allowCloseX;
        ImageView imageView = this.f70943g;
        if (imageView != null) {
            imageView.setVisibility(allowCloseX ? 0 : 8);
        }
    }

    public void s0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen, FrameLayout parent) {
        if (this.editorPanel.k0()) {
            Vc.e.r(parent, activity, this.editorPanel.F().intColor);
        } else {
            Vc.e.l(parent, activity);
        }
    }

    public void t0(boolean b10) {
        this.editorPanel.a1(b10);
    }

    public void u0(boolean multiInstancing) {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.c1(multiInstancing);
        }
    }

    public void v(o4.e panelsBundle) {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.e(panelsBundle);
        }
    }

    public void v0() {
        this.editorPanel.l1();
    }

    public boolean w() {
        return this.editorPanel.f();
    }

    public void w0(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        View view = this.f70939c;
        if (view != null) {
            view.setBackground(null);
        }
        TextView textView = this.f70941e;
        if (textView != null) {
            textView.setTextColor(Theme.i(Theme.T.MID_TEXT_COLOR));
        }
        ImageView imageView = this.f70943g;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        this.f70948l = false;
    }

    public LinearLayout x(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC14928c panelToPanelArea, boolean rightLeft) {
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(rightLeft ? R.layout.editor_panel_tittle_horizontal_left : R.layout.editor_panel_tittle_horizontal_right, (ViewGroup) null);
        this.f70938b = linearLayout;
        parent.addView(linearLayout);
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(this.f70938b, context);
        if (panelToPanelArea != null) {
            this.f70938b.setOnClickListener(new d(panelToPanelArea));
            this.f70938b.setOnLongClickListener(new e(panelToPanelArea));
        }
        ImageView imageView = (ImageView) this.f70938b.findViewById(R.id.icon);
        this.f70942f = imageView;
        if (imageView != null) {
            imageView.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
        }
        this.f70951o = g.HorizontalBar;
        return this.f70938b;
    }

    public void x0(LinearLayout parent, FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, float x10, float y10, float w10, float h10, float ax, float ay, float aw, float ah2, FrameLayout panelContentLayout, View fullPanelArea, InterfaceC13584e panelsControllerListener) {
        TextView textView;
        EditorPanel editorPanel = this.editorPanel;
        editorPanel.f70900b = x10;
        editorPanel.f70901c = y10;
        editorPanel.f70902d = w10;
        editorPanel.f70903e = h10;
        editorPanel.f70904f = ax;
        editorPanel.f70905g = ay;
        editorPanel.f70906h = aw;
        editorPanel.f70907i = ah2;
        editorPanel.f70908j = layoutInflater;
        editorPanel.f70909k = editor3DScreen;
        editorPanel.i1(this.f70950n.get());
        EditorPanel editorPanel2 = this.editorPanel;
        editorPanel2.f70916r = screenArea;
        editorPanel2.f70917s = panelContentLayout;
        editorPanel2.f70918t = fullPanelArea;
        editorPanel2.f70878A = this.f70944h;
        editorPanel2.f70879B = this;
        this.f70945i = panelsControllerListener;
        editorPanel2.f70922x = panelsControllerListener;
        if (editorPanel2.f70910l != null) {
            editorPanel2.i0();
            this.editorPanel.m1();
        }
        String X10 = this.editorPanel.X();
        if (X10 == null) {
            this.f70941e.setText("Unnamed panel");
        } else if (!X10.equals(this.f70946j) && (textView = this.f70941e) != null) {
            textView.setText(Tc.b.Y(X10, 25));
            this.f70946j = X10;
        }
        if (this.f70940d != null) {
            int T10 = this.editorPanel.T();
            if (T10 != -1) {
                if (T10 != this.f70947k) {
                    this.f70940d.setBackground(ContextCompat.getDrawable(context, R.drawable.fullwhite));
                    Vc.e.u(this.f70940d, context, T10);
                    this.f70947k = T10;
                    return;
                }
                return;
            }
            if (T10 != this.f70947k) {
                this.f70940d.setBackground(ContextCompat.getDrawable(context, R.drawable.empty_image));
                Vc.e.u(this.f70940d, context, 0);
                this.f70947k = T10;
            }
        }
    }

    public View y(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC14928c panelToPanelArea) {
        this.f70944h = panelToPanelArea;
        View inflate = layoutInflater.inflate(R.layout.editor_panel_tittle, (ViewGroup) null);
        this.f70939c = inflate;
        parent.addView(inflate);
        this.f70940d = this.f70939c.findViewById(R.id.colorBackground);
        if (panelToPanelArea != null) {
            this.f70939c.setOnClickListener(new a(panelToPanelArea));
            this.f70939c.setOnLongClickListener(new b(panelToPanelArea));
        }
        TextView textView = (TextView) this.f70939c.findViewById(R.id.tittle);
        this.f70941e = textView;
        if (textView != null) {
            textView.setText(Tc.b.Y(this.editorPanel.X(), 25));
            this.f70946j = this.editorPanel.X();
        }
        this.f70942f = (ImageView) this.f70939c.findViewById(R.id.icon);
        ImageView imageView = (ImageView) this.f70939c.findViewById(R.id.close);
        this.f70943g = imageView;
        if (panelToPanelArea != null) {
            imageView.setOnClickListener(new c(panelToPanelArea));
        }
        this.f70943g.setVisibility(this.f70949m ? 0 : 8);
        w0(parent, activity, context, layoutInflater, editor3DScreen);
        this.f70951o = g.TopBar;
        return this.f70939c;
    }

    public void y0(LinearLayout parent, FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, float x10, float y10, float w10, float h10, float ax, float ay, float aw, float ah2, FrameLayout panelContentLayout, View fullPanelArea) {
        EditorPanel editorPanel = this.editorPanel;
        editorPanel.f70900b = x10;
        editorPanel.f70901c = y10;
        editorPanel.f70902d = w10;
        editorPanel.f70903e = h10;
        editorPanel.f70904f = ax;
        editorPanel.f70905g = ay;
        editorPanel.f70906h = aw;
        editorPanel.f70907i = ah2;
        editorPanel.f70908j = layoutInflater;
        editorPanel.f70909k = editor3DScreen;
        editorPanel.f70916r = screenArea;
        editorPanel.f70917s = panelContentLayout;
        editorPanel.f70918t = fullPanelArea;
        if (editorPanel.f70910l != null) {
            editorPanel.i1(this.f70950n.get());
            this.editorPanel.n1();
        }
        float e10 = this.f70952p - K8.d.e();
        this.f70952p = e10;
        if (e10 <= 0.0f) {
            this.editorPanel.o1();
            this.f70952p = 1.0f;
        }
    }

    public void z(o4.e panelsBundle) {
        EditorPanel editorPanel = this.editorPanel;
        if (editorPanel != null) {
            editorPanel.h(panelsBundle);
        }
    }

    public Panel(EditorPanel editorPanel) {
        this.editorPanel = editorPanel;
        if (editorPanel != null) {
            editorPanel.f70879B = this;
        }
    }

    public Panel(String serializedComponentType) {
        this.serializedComponentType = serializedComponentType;
    }
}
