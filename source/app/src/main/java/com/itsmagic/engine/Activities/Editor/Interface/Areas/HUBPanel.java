package com.itsmagic.engine.Activities.Editor.Interface.Areas;

import Z6.c;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine2.R;
import i4.C13580a;
import i4.InterfaceC13584e;
import j4.EnumC13805a;
import j4.EnumC13806b;
import k4.InterfaceC13935a;
import k4.InterfaceC13936b;
import org.json.JSONException;
import org.json.JSONObject;
import p4.InterfaceC14928c;
import r4.C15147a;

public class HUBPanel extends Panel implements InterfaceC13935a {

    public static final String f70704w = "HUBPanel";

    public static final Class f70705x = HUBPanel.class;

    @Expose
    public PanelArea panelArea;

    public boolean f70706r;

    public boolean f70707s;

    @Expose
    public int serializedSelectedPanelIndex;

    public boolean f70708t;

    @Expose
    private String tittle;

    public String f70709u;

    public final InterfaceC13936b f70710v;

    public class a extends Panel.h {
        @Override
        public Class b() {
            return HUBPanel.f70705x;
        }

        @Override
        public String c() {
            return HUBPanel.f70704w;
        }
    }

    public class b implements InterfaceC13936b {
        public b() {
        }

        @Override
        public EnumC13805a a() {
            return EnumC13805a.None;
        }

        @Override
        public EnumC13806b b() {
            return EnumC13806b.None;
        }

        @Override
        public SplitArea c() {
            return null;
        }

        @Override
        public void d() {
        }

        @Override
        public EnumC13806b e() {
            return EnumC13806b.None;
        }

        @Override
        public EnumC13805a f() {
            return EnumC13805a.None;
        }

        @Override
        public boolean isClosed() {
            return false;
        }

        @Override
        public void toggle() {
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            if (HUBPanel.this.panelArea.R()) {
                return;
            }
            HUBPanel.this.o0();
        }
    }

    public class d implements View.OnClickListener {

        public final InterfaceC14928c f70713b;

        public d(final InterfaceC14928c val$panelToPanelArea) {
            this.f70713b = val$panelToPanelArea;
        }

        @Override
        public void onClick(View v10) {
            InterfaceC14928c interfaceC14928c = this.f70713b;
            if (interfaceC14928c != null) {
                interfaceC14928c.onClick();
            }
        }
    }

    public class e implements View.OnLongClickListener {

        public final InterfaceC14928c f70715b;

        public e(final InterfaceC14928c val$panelToPanelArea) {
            this.f70715b = val$panelToPanelArea;
        }

        @Override
        public boolean onLongClick(View v10) {
            InterfaceC14928c interfaceC14928c = this.f70715b;
            if (interfaceC14928c != null) {
                return interfaceC14928c.g();
            }
            return false;
        }
    }

    public class f implements View.OnClickListener {

        public final InterfaceC14928c f70717b;

        public class a extends c.h {
            public a() {
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                InterfaceC14928c interfaceC14928c = f.this.f70717b;
                if (interfaceC14928c != null) {
                    interfaceC14928c.close();
                }
            }
        }

        public f(final InterfaceC14928c val$panelToPanelArea) {
            this.f70717b = val$panelToPanelArea;
        }

        @Override
        public void onClick(View v10) {
            if (!HUBPanel.this.C0()) {
                InterfaceC14928c interfaceC14928c = this.f70717b;
                if (interfaceC14928c != null) {
                    interfaceC14928c.close();
                    return;
                }
                return;
            }
            Z6.c.w1(v10, C15147a.e.Below, Lang.l(Lang.T.CLOSE) + " " + HUBPanel.this.f70709u + "", Lang.l(Lang.T.ARE_YOU_SURE), new a());
        }
    }

    static {
        Panel.u(new a());
    }

    public HUBPanel() {
        super(f70704w);
        this.f70706r = false;
        this.f70707s = false;
        this.tittle = "HUB";
        this.f70708t = true;
        this.f70710v = new b();
        this.panelArea = new PanelArea();
    }

    public HUBPanel A0(EditorPanel panel) {
        this.panelArea.h(new Panel(panel));
        return this;
    }

    public HUBPanel B0(Panel panel) {
        this.panelArea.h(panel);
        return this;
    }

    @Override
    public Panel C() {
        return new HUBPanel(this.tittle, this.panelArea.clone());
    }

    public boolean C0() {
        return this.f70708t;
    }

    @Override
    public void D(FrameLayout screenArea) {
        this.panelArea.v(screenArea);
    }

    public Panel D0(int i10) {
        if (i10 < this.panelArea.panelList.size()) {
            return this.panelArea.panelList.get(i10);
        }
        try {
            return this.panelArea.f70756w.get(i10 - this.panelArea.panelList.size());
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int E0() {
        return this.panelArea.panelList.size() + this.panelArea.f70756w.size();
    }

    public void F0(String tittle) {
        this.tittle = tittle;
        TextView textView = this.f70941e;
        if (textView != null) {
            textView.setText(tittle);
        }
    }

    @Override
    public void G(FrameLayout screenArea) {
        this.panelArea.v(screenArea);
        this.panelArea.A(screenArea);
    }

    @Override
    public void J(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        this.panelArea.D(engineUpdateData, panelsControllerListener);
    }

    @Override
    public String S() {
        return this.tittle;
    }

    @Override
    public void Y() {
        super.Y();
        this.panelArea.u();
    }

    @Override
    public void Z() {
        this.panelArea.h0();
    }

    @Override
    public void a(k4.c listener) {
        this.panelArea.r0(listener);
    }

    @Override
    public void a0(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        this.panelArea.k0(engineUpdateData, panelsControllerListener);
    }

    @Override
    public boolean b(PanelArea panelArea) {
        throw new RuntimeException("Override!");
    }

    @Override
    public void b0() {
        this.f70706r = false;
    }

    @Override
    public void c() {
        this.panelArea.S();
    }

    @Override
    public View c0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        return this.panelArea.K();
    }

    @Override
    public Panel d(Panel editorPanel) {
        return this.panelArea.F(editorPanel);
    }

    @Override
    public void d0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen) {
    }

    @Override
    public boolean e(EditorPanel editorPanel) {
        if (!this.panelArea.s(editorPanel)) {
            return false;
        }
        this.panelArea.D0(editorPanel);
        return true;
    }

    @Override
    public boolean e0(String json, JSONObject jsonObj) {
        this.panelArea = null;
        try {
            if (jsonObj.has("panelArea")) {
                this.panelArea = PanelArea.w(jsonObj.getJSONObject("panelArea").toString());
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
            this.panelArea = null;
        }
        return this.panelArea != null;
    }

    @Override
    public boolean f(EditorPanel editorPanel) {
        return this.panelArea.g0(editorPanel);
    }

    @Override
    public void f0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen, FrameLayout parent) {
        if (parent.indexOfChild(this.panelArea.K()) != -1) {
            parent.removeView(this.panelArea.K());
        }
        this.panelArea.u();
    }

    @Override
    public Panel g(EditorPanel editorPanel) {
        return this.panelArea.E(editorPanel);
    }

    @Override
    public void g0() {
        super.g0();
        this.panelArea.u();
    }

    @Override
    public void h(EnumC13805a closeDirection) {
        this.panelArea.y0(closeDirection);
    }

    @Override
    public boolean i(Panel editorPanel) {
        return this.panelArea.t(editorPanel);
    }

    @Override
    public void i0() {
        super.i0();
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.m0();
        }
    }

    @Override
    public boolean j() {
        return this.panelArea.R();
    }

    @Override
    public void j0() {
        this.panelArea.n0();
        this.serializedSelectedPanelIndex = this.panelArea.serializedSelectedPanelIndex;
    }

    @Override
    public void k(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        this.f70945i = panelsControllerListener;
    }

    @Override
    public void k0() {
        super.k0();
        this.panelArea.o0();
    }

    @Override
    public boolean l(EditorPanel panel) {
        if (!this.panelArea.s(panel)) {
            return false;
        }
        this.panelArea.D0(panel);
        return true;
    }

    @Override
    public void l0() {
        super.l0();
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.p0();
        }
    }

    @Override
    public void m() {
        this.panelArea.A0();
    }

    @Override
    public boolean n(EditorPanel editorPanel) {
        return this.panelArea.s0(editorPanel);
    }

    @Override
    public void n0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen) {
    }

    @Override
    public PanelArea o(EditorPanel editorPanel) {
        if (this.panelArea == null) {
            return null;
        }
        for (int i10 = 0; i10 < this.panelArea.panelList.size(); i10++) {
            if (this.panelArea.panelList.get(i10).B(editorPanel)) {
                return this.panelArea;
            }
        }
        for (int i11 = 0; i11 < this.panelArea.f70756w.size(); i11++) {
            if (this.panelArea.f70756w.get(i11).B(editorPanel)) {
                return this.panelArea;
            }
        }
        PanelArea G10 = this.panelArea.G(editorPanel);
        if (G10 != null) {
            return G10;
        }
        return null;
    }

    @Override
    public void p(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        this.f70945i = panelsControllerListener;
    }

    @Override
    public void p0(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        super.p0(parent, activity, context, layoutInflater, editor3DScreen);
        this.f70706r = true;
        this.panelArea.K0();
    }

    @Override
    public boolean q(Panel panel) {
        if (!this.panelArea.t(panel)) {
            return false;
        }
        this.panelArea.E0(panel);
        return true;
    }

    @Override
    public boolean q0(n4.f panelIntent) {
        return this.panelArea.w0(panelIntent);
    }

    @Override
    public void s0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen, FrameLayout parent) {
        Vc.e.l(parent, activity);
    }

    @Override
    public void show() {
        this.panelArea.K0();
    }

    @Override
    public void v(o4.e panelsBundle) {
        super.v(panelsBundle);
        this.panelArea.k(panelsBundle);
    }

    @Override
    public void v0() {
        this.f70706r = true;
    }

    @Override
    public boolean w() {
        return true;
    }

    @Override
    public void w0(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        super.w0(parent, activity, context, layoutInflater, editor3DScreen);
        this.f70706r = false;
        this.panelArea.S();
        InterfaceC13584e interfaceC13584e = this.f70945i;
        if (interfaceC13584e == null || !interfaceC13584e.t(this.panelArea)) {
            return;
        }
        this.f70945i.a();
    }

    @Override
    public void x0(LinearLayout parent, FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, float x10, float y10, float w10, float h10, float ax, float ay, float aw, float ah2, FrameLayout panelContentLayout, View fullPanelArea, InterfaceC13584e panelsControllerListener) {
        TextView textView;
        float dimension = context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f70945i = panelsControllerListener;
        PanelArea panelArea = this.panelArea;
        panelArea.f70757x = x10;
        panelArea.f70758y = (dimension / screenArea.getHeight()) + y10;
        PanelArea panelArea2 = this.panelArea;
        panelArea2.width = w10;
        panelArea2.height = h10 - (dimension / screenArea.getHeight());
        this.panelArea.U0(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener, this.f70710v, this.f70706r);
        if (!this.f70707s) {
            if (this.f70706r) {
                if (this.panelArea.K0()) {
                    this.f70707s = true;
                }
            } else if (this.panelArea.S()) {
                this.f70707s = true;
            }
        }
        if (!this.panelArea.R()) {
            N7.c.c0(new c());
        }
        String S10 = S();
        if (S10 == null) {
            this.f70941e.setText("Unamed panel");
        } else {
            if (S10.equals(this.f70709u) || (textView = this.f70941e) == null) {
                return;
            }
            textView.setText(S());
            this.f70709u = S();
        }
    }

    @Override
    public View y(LinearLayout parent, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC14928c panelToPanelArea) {
        this.f70944h = panelToPanelArea;
        View inflate = layoutInflater.inflate(R.layout.editor_panel_tittle, (ViewGroup) null);
        this.f70939c = inflate;
        parent.addView(inflate);
        ViewGroup.LayoutParams layoutParams = this.f70939c.getLayoutParams();
        layoutParams.height = -2;
        this.f70939c.setLayoutParams(layoutParams);
        if (panelToPanelArea != null) {
            this.f70939c.setOnClickListener(new d(panelToPanelArea));
            this.f70939c.setOnLongClickListener(new e(panelToPanelArea));
        }
        TextView textView = (TextView) this.f70939c.findViewById(R.id.tittle);
        this.f70941e = textView;
        if (textView != null) {
            textView.setText(S());
        }
        this.f70942f = (ImageView) this.f70939c.findViewById(R.id.icon);
        ImageView imageView = (ImageView) this.f70939c.findViewById(R.id.close);
        this.f70943g = imageView;
        if (panelToPanelArea != null) {
            imageView.setOnClickListener(new f(panelToPanelArea));
        }
        w0(parent, activity, context, layoutInflater, editor3DScreen);
        this.f70951o = Panel.g.TopBar;
        return this.f70939c;
    }

    @Override
    public void y0(LinearLayout parent, FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, float x10, float y10, float w10, float h10, float ax, float ay, float aw, float ah2, FrameLayout panelContentLayout, View fullPanelArea) {
        this.f70945i = this.f70945i;
    }

    @Override
    public void z(o4.e panelsBundle) {
        super.z(panelsBundle);
        this.panelArea.n(panelsBundle);
    }

    public HUBPanel(String serializedComponentType) {
        super(serializedComponentType);
        this.f70706r = false;
        this.f70707s = false;
        this.tittle = "HUB";
        this.f70708t = true;
        this.f70710v = new b();
        this.panelArea = new PanelArea();
    }

    public HUBPanel(String serializedComponentType, String tittle) {
        super(serializedComponentType);
        this.f70706r = false;
        this.f70707s = false;
        this.tittle = "HUB";
        this.f70708t = true;
        this.f70710v = new b();
        this.tittle = tittle;
        this.panelArea = new PanelArea();
    }

    public HUBPanel(String serializedComponentType, PanelArea panelArea) {
        super(serializedComponentType);
        this.f70706r = false;
        this.f70707s = false;
        this.tittle = "HUB";
        this.f70708t = true;
        this.f70710v = new b();
        if (panelArea != null) {
            this.panelArea = panelArea;
            return;
        }
        throw new NullPointerException("PanelArea can't be null");
    }

    public HUBPanel(String serializedComponentType, String tittle, PanelArea panelArea) {
        super(serializedComponentType);
        this.f70706r = false;
        this.f70707s = false;
        this.tittle = "HUB";
        this.f70708t = true;
        this.f70710v = new b();
        if (panelArea != null) {
            this.panelArea = panelArea;
            this.tittle = tittle;
            return;
        }
        throw new NullPointerException("PanelArea can't be null");
    }
}
