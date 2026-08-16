package com.itsmagic.engine.Activities.Editor.Interface.Areas;

import Ic.A;
import Z6.c;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Utils.z;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import i4.C13580a;
import i4.InterfaceC13582c;
import i4.InterfaceC13584e;
import j4.EnumC13805a;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import k4.InterfaceC13935a;
import k4.InterfaceC13936b;
import o4.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p4.C14927b;
import p4.InterfaceC14928c;
import q4.C15042c;
import q4.InterfaceC15041b;
import r4.C15147a;

public class PanelArea {

    public FrameLayout f70721B;

    public Activity f70722C;

    public Context f70723D;

    public LayoutInflater f70724E;

    public C13580a f70725F;

    public InterfaceC13936b f70726G;

    public InterfaceC13584e f70727H;

    public C15042c f70733N;

    public float f70734a;

    public float f70735b;

    public float f70736c;

    public float f70737d;

    public float f70738e;

    public float f70739f;

    public float f70740g;

    public float f70741h;

    @Expose
    public float height;

    public int f70742i;

    public int f70743j;

    public View f70745l;

    public LinearLayout f70747n;

    public LinearLayout f70748o;

    public LinearLayout f70749p;

    public ImageView f70750q;

    public LinearLayout f70751r;

    public LinearLayout f70752s;

    @Expose
    public int serializedSelectedPanelIndex;

    @Expose
    public float width;

    @Expose
    public float f70757x;

    @Expose
    public float f70758y;

    public View f70744k = null;

    public FrameLayout f70746m = null;

    public float f70753t = 0.0f;

    public float f70754u = 0.0f;

    @Expose
    public List<Panel> panelList = new SteppedArrayList();

    public Panel f70755v = null;

    public List<Panel> f70756w = new SteppedArrayList();

    public Panel f70759z = null;

    public final List<C15042c> f70720A = new LinkedList();

    public final Rect f70728I = new Rect();

    public final Rect f70729J = new Rect();

    public final Rect f70730K = new Rect();

    public final Rect f70731L = new Rect();

    public boolean f70732M = false;

    public class a implements View.OnLongClickListener {

        public final C15042c f70760b;

        public final Context f70761c;

        public a(final C15042c val$rightOption, final Context val$context) {
            this.f70760b = val$rightOption;
            this.f70761c = val$context;
        }

        @Override
        public boolean onLongClick(View v10) {
            C15042c c15042c = this.f70760b;
            return c15042c.f105913d.c(v10, this.f70761c, c15042c);
        }
    }

    public class b implements View.OnTouchListener {

        public final C15042c f70763b;

        public final Context f70764c;

        public b(final C15042c val$rightOption, final Context val$context) {
            this.f70763b = val$rightOption;
            this.f70764c = val$context;
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            C15042c c15042c = this.f70763b;
            return c15042c.f105913d.b(v10, event, this.f70764c, c15042c);
        }
    }

    public class c implements InterfaceC15041b {

        public final ImageView f70766a;

        public final C15042c f70767b;

        public final Context f70768c;

        public c(final ImageView val$icon, final C15042c val$rightOption, final Context val$context) {
            this.f70766a = val$icon;
            this.f70767b = val$rightOption;
            this.f70768c = val$context;
        }

        @Override
        public void a() {
            Vc.e.Y(this.f70766a, this.f70767b.b(), this.f70768c);
            com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(this.f70767b.f105915f, this.f70768c);
        }
    }

    public class d implements InterfaceC14928c {

        public final Panel f70770a;

        public final InterfaceC13584e f70771b;

        public d(final Panel val$panel, final InterfaceC13584e val$panelsControllerListener) {
            this.f70770a = val$panel;
            this.f70771b = val$panelsControllerListener;
        }

        @Override
        public void a() {
            PanelArea.this.j0();
        }

        @Override
        public float b() {
            return PanelArea.this.height;
        }

        @Override
        public PanelArea c() {
            return PanelArea.this;
        }

        @Override
        public void close() {
        }

        @Override
        public void d() {
            PanelArea.this.P0();
        }

        @Override
        public void e() {
        }

        @Override
        public void f() {
            PanelArea.this.i0();
        }

        @Override
        public boolean g() {
            this.f70771b.k(this.f70770a);
            return false;
        }

        @Override
        public float getW() {
            return PanelArea.this.width;
        }

        @Override
        public float getX() {
            return PanelArea.this.f70757x;
        }

        @Override
        public float getY() {
            return PanelArea.this.f70758y;
        }

        @Override
        public void onClick() {
            PanelArea.this.v0(this.f70770a);
        }
    }

    public class e implements InterfaceC14928c {

        public final Panel f70773a;

        public final InterfaceC13584e f70774b;

        public e(final Panel val$panel, final InterfaceC13584e val$panelsControllerListener) {
            this.f70773a = val$panel;
            this.f70774b = val$panelsControllerListener;
        }

        @Override
        public void a() {
            PanelArea.this.j0();
        }

        @Override
        public float b() {
            return PanelArea.this.height;
        }

        @Override
        public PanelArea c() {
            return PanelArea.this;
        }

        @Override
        public void close() {
        }

        @Override
        public void d() {
            PanelArea.this.P0();
        }

        @Override
        public void e() {
        }

        @Override
        public void f() {
            PanelArea.this.i0();
        }

        @Override
        public boolean g() {
            this.f70774b.k(this.f70773a);
            return false;
        }

        @Override
        public float getW() {
            return PanelArea.this.width;
        }

        @Override
        public float getX() {
            return PanelArea.this.f70757x;
        }

        @Override
        public float getY() {
            return PanelArea.this.f70758y;
        }

        @Override
        public void onClick() {
            PanelArea.this.v0(this.f70773a);
        }
    }

    public class f implements InterfaceC14928c {

        public final Panel f70776a;

        public f(final Panel val$panel) {
            this.f70776a = val$panel;
        }

        @Override
        public void a() {
            PanelArea.this.j0();
        }

        @Override
        public float b() {
            return PanelArea.this.height;
        }

        @Override
        public PanelArea c() {
            return PanelArea.this;
        }

        @Override
        public void close() {
        }

        @Override
        public void d() {
            PanelArea.this.P0();
        }

        @Override
        public void e() {
        }

        @Override
        public void f() {
            PanelArea.this.i0();
        }

        @Override
        public boolean g() {
            PanelArea.this.f70727H.k(this.f70776a);
            return false;
        }

        @Override
        public float getW() {
            return PanelArea.this.width;
        }

        @Override
        public float getX() {
            return PanelArea.this.f70757x;
        }

        @Override
        public float getY() {
            return PanelArea.this.f70758y;
        }

        @Override
        public void onClick() {
            PanelArea.this.v0(this.f70776a);
        }
    }

    public class g implements InterfaceC14928c {

        public final Panel f70778a;

        public g(final Panel val$panel) {
            this.f70778a = val$panel;
        }

        @Override
        public void a() {
            PanelArea.this.j0();
        }

        @Override
        public float b() {
            return PanelArea.this.height;
        }

        @Override
        public PanelArea c() {
            return PanelArea.this;
        }

        @Override
        public void close() {
        }

        @Override
        public void d() {
            PanelArea.this.P0();
        }

        @Override
        public void e() {
        }

        @Override
        public void f() {
            PanelArea.this.i0();
        }

        @Override
        public boolean g() {
            PanelArea.this.f70727H.k(this.f70778a);
            return false;
        }

        @Override
        public float getW() {
            return PanelArea.this.width;
        }

        @Override
        public float getX() {
            return PanelArea.this.f70757x;
        }

        @Override
        public float getY() {
            return PanelArea.this.f70758y;
        }

        @Override
        public void onClick() {
            PanelArea.this.v0(this.f70778a);
        }
    }

    public class h implements q4.d {
        public h() {
        }

        @Override
        public void a(View v10, Context context, C15042c rightOption) {
            N7.c.Y();
            PanelArea.this.P0();
        }

        @Override
        public boolean b(View v10, MotionEvent motionEvent, Context context, C15042c rightOption) {
            return false;
        }

        @Override
        public boolean c(View v10, Context context, C15042c rightOption) {
            N7.c.Y();
            return false;
        }
    }

    public class i implements View.OnClickListener {

        public class a implements InterfaceC13582c {
            public a() {
            }

            @Override
            public void a(Panel panel) {
                if (panel.X() || N7.c.D().G(panel.M().getClass()) == null) {
                    PanelArea.this.h(panel);
                } else {
                    N7.c.v0("Only one panel of this type is allowed at a time.");
                }
            }
        }

        public class b extends LinkedList<C12908b> {

            public class a implements dd.d {
                public a() {
                }

                @Override
                public void onSelected(View view) {
                    if (PanelArea.this.f70727H != null) {
                        PanelArea.this.O0();
                    }
                }
            }

            public class C1085b implements dd.d {
                public C1085b() {
                }

                @Override
                public void onSelected(View view) {
                    if (PanelArea.this.f70727H != null) {
                        PanelArea.this.r();
                    }
                }
            }

            public b() {
                add(new C12908b(Lang.l(Lang.T.TURN_TO_FLOATING), new a()));
                add(new C12908b(Lang.l(Lang.T.COPY_TO_FLOATING), new C1085b()));
            }
        }

        public class c implements dd.d {

            public class a extends c.h {
                public a() {
                }

                @Override
                public void a(c.g dialog) {
                    super.a(dialog);
                    if (PanelArea.this.f70755v != null) {
                        PanelArea.this.f70755v.o0();
                    }
                }
            }

            public c() {
            }

            @Override
            public void onSelected(View v10) {
                if (PanelArea.this.f70755v != null) {
                    if (PanelArea.this.f70755v.M() == null || !PanelArea.this.f70755v.M().q0()) {
                        PanelArea.this.f70755v.o0();
                        return;
                    }
                    Z6.c.z1(Lang.l(Lang.T.CLOSE) + " " + PanelArea.this.f70755v.M().X() + "", Lang.l(Lang.T.ARE_YOU_SURE), new a());
                }
            }
        }

        public i() {
        }

        @Override
        public void onClick(View v10) {
            List<C12908b> N10;
            N7.c.Y();
            LinkedList linkedList = new LinkedList();
            linkedList.add(new C12908b(Lang.l(Lang.T.ADD_PANEL), PanelArea.this.f70727H.d(new a())));
            linkedList.add(new C12908b(Lang.l(Lang.T.OPTIONS), new b()));
            linkedList.add(new C12908b(Lang.l(Lang.T.CLOSE_PANEL), new c()));
            if (PanelArea.this.f70755v != null && PanelArea.this.f70755v.M() != null && (N10 = PanelArea.this.f70755v.M().N()) != null && !N10.isEmpty()) {
                linkedList.add(new C12908b());
                linkedList.addAll(N10);
            }
            Y6.a.F1(v10, C15147a.e.Below, linkedList);
        }
    }

    public class j implements View.OnTouchListener {
        public j() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class k implements InterfaceC14928c {

        public final Panel f70789a;

        public final InterfaceC13584e f70790b;

        public k(final Panel val$panel, final InterfaceC13584e val$panelsControllerListener) {
            this.f70789a = val$panel;
            this.f70790b = val$panelsControllerListener;
        }

        @Override
        public void a() {
            PanelArea.this.j0();
        }

        @Override
        public float b() {
            return PanelArea.this.height;
        }

        @Override
        public PanelArea c() {
            return PanelArea.this;
        }

        @Override
        public void close() {
            PanelArea.this.B(this.f70789a);
        }

        @Override
        public void d() {
            PanelArea.this.P0();
        }

        @Override
        public void e() {
            PanelArea.this.f0(this.f70789a);
        }

        @Override
        public void f() {
            PanelArea.this.i0();
        }

        @Override
        public boolean g() {
            N7.c.Y();
            this.f70790b.k(this.f70789a);
            return false;
        }

        @Override
        public float getW() {
            return PanelArea.this.width;
        }

        @Override
        public float getX() {
            return PanelArea.this.f70757x;
        }

        @Override
        public float getY() {
            return PanelArea.this.f70758y;
        }

        @Override
        public void onClick() {
            N7.c.Y();
            PanelArea.this.v0(this.f70789a);
        }
    }

    public class l implements View.OnClickListener {

        public final C15042c f70792b;

        public final Context f70793c;

        public l(final C15042c val$rightOption, final Context val$context) {
            this.f70792b = val$rightOption;
            this.f70793c = val$context;
        }

        @Override
        public void onClick(View v10) {
            C15042c c15042c = this.f70792b;
            c15042c.f105913d.a(v10, this.f70793c, c15042c);
        }
    }

    public PanelArea() {
    }

    public static String L(Panel panel) {
        if (panel == null) {
            return "null panel";
        }
        if (panel.M() == null) {
            return panel.S();
        }
        String X10 = panel.M().X();
        if (X10 != null && !X10.isEmpty()) {
            return X10;
        }
        String simpleName = panel.M().getClass().getSimpleName();
        return !simpleName.isEmpty() ? simpleName : panel.M().getClass().getName();
    }

    public static <T extends PanelArea> T w(String str) {
        return (T) x(str, PanelArea.class);
    }

    public static <T extends PanelArea> T x(String json, Class cls) {
        try {
            Object fromJson = X7.a.m().fromJson(json, (Class<Object>) cls);
            if (fromJson != null) {
                PanelArea panelArea = (PanelArea) fromJson;
                try {
                    JSONObject jSONObject = new JSONObject(json);
                    if (jSONObject.has("panelList")) {
                        JSONArray jSONArray = jSONObject.getJSONArray("panelList");
                        SteppedArrayList steppedArrayList = new SteppedArrayList();
                        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                            try {
                                Panel E10 = Panel.E(jSONArray.getJSONObject(i10).toString());
                                if (E10 != null) {
                                    steppedArrayList.add(E10);
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        panelArea.panelList.clear();
                        panelArea.f70756w.clear();
                        panelArea.f70756w.addAll(steppedArrayList);
                    } else {
                        panelArea.panelList.clear();
                        panelArea.f70756w.clear();
                    }
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
                if (panelArea.panelList == null) {
                    panelArea.panelList = new SteppedArrayList();
                }
            }
            return (T) fromJson;
        } catch (JsonSyntaxException e12) {
            throw new ComponentDeserializeException(e12);
        }
    }

    public void A(FrameLayout screenArea) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            panel.g0();
            panel.G(screenArea);
        }
        this.panelList.clear();
        View view = this.f70744k;
        if (view != null) {
            try {
                screenArea.removeView(view);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f70744k = null;
        }
    }

    public void A0() {
        for (Panel panel : this.panelList) {
            Panel.g gVar = panel.f70951o;
            if (gVar == Panel.g.None || gVar == Panel.g.HorizontalBar) {
                panel.H(this.f70748o, this.f70749p, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
                m(this.f70722C, this.f70723D, this.f70724E, this.f70725F, this.f70727H, panel);
                Panel panel2 = this.f70755v;
                if (panel2 != null && panel2 == panel) {
                    panel.p0(this.f70747n, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
                    panel.A();
                }
            }
        }
    }

    public void B(Panel panel) {
        panel.I(this.f70747n, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
        panel.H(this.f70748o, this.f70749p, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
        this.panelList.remove(panel);
        panel.f0(this.f70722C, this.f70724E, this.f70725F, this.f70746m);
        if (this.f70755v == panel) {
            this.f70755v = null;
        }
    }

    public PanelArea B0(float nx, float ny, float nw, float nh2) {
        this.f70738e = nx;
        this.f70757x = nx;
        this.f70734a = nx;
        this.f70739f = ny;
        this.f70758y = ny;
        this.f70735b = ny;
        this.f70736c = nw;
        this.f70740g = nw;
        this.width = nw;
        this.f70737d = nh2;
        this.f70741h = nh2;
        this.height = nh2;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void C(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        this.f70721B = screenArea;
        this.f70722C = activity;
        this.f70723D = context;
        this.f70724E = layoutInflater;
        this.f70725F = editor3DScreen;
        if (this.f70759z != null) {
            Panel v10 = panelsControllerListener.v();
            if (v10 != null && z.c(this.f70759z.K(), panelsControllerListener.w())) {
                v10.o0();
                h(v10);
            }
            B(this.f70759z);
            this.f70759z = null;
        }
        List<Panel> list = this.panelList;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel == this.f70755v && (panel instanceof InterfaceC13935a) && panel.f70950n.get()) {
                ((InterfaceC13935a) panel).k(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
            }
        }
    }

    public PanelArea C0(Panel panel) {
        return B0(panel.U(), panel.V(), panel.T(), panel.N());
    }

    public void D(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        try {
            List<Panel> list = this.panelList;
            if (list == null || list.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < this.panelList.size(); i10++) {
                Panel panel = this.panelList.get(i10);
                if (panel != null) {
                    panel.J(engineUpdateData, panelsControllerListener);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void D0(EditorPanel editorPanel) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel.M() == editorPanel) {
                if (this.f70755v != panel) {
                    v0(panel);
                    return;
                }
                return;
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            Panel panel2 = this.f70756w.get(i11);
            if (panel2.M() == editorPanel) {
                if (this.f70755v != panel2) {
                    v0(panel2);
                    return;
                }
                return;
            }
        }
        for (int i12 = 0; i12 < this.panelList.size(); i12++) {
            Panel panel3 = this.panelList.get(i12);
            if ((panel3 instanceof InterfaceC13935a) && ((InterfaceC13935a) panel3).l(editorPanel)) {
                if (this.f70755v != panel3) {
                    v0(panel3);
                    return;
                }
                return;
            }
        }
        throw new RuntimeException("Panel is not a child of this area!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Panel E(EditorPanel editorPanel) {
        Panel g10;
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel.B(editorPanel)) {
                return panel;
            }
            if ((panel instanceof InterfaceC13935a) && (g10 = ((InterfaceC13935a) panel).g(editorPanel)) != null) {
                return g10;
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            Panel panel2 = this.f70756w.get(i11);
            if (panel2.B(editorPanel)) {
                return panel2;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void E0(Panel panel) {
        if (q(panel)) {
            if (this.f70755v != panel) {
                v0(panel);
                return;
            }
            return;
        }
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel2 = this.panelList.get(i10);
            if ((panel2 instanceof InterfaceC13935a) && ((InterfaceC13935a) panel2).q(panel)) {
                if (this.f70755v != panel2) {
                    v0(panel2);
                    return;
                }
                return;
            }
        }
        throw new RuntimeException("Panel is not a child of this area!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Panel F(Panel editorPanel) {
        Panel d10;
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel == editorPanel) {
                return panel;
            }
            if ((panel instanceof InterfaceC13935a) && (d10 = ((InterfaceC13935a) panel).d(editorPanel)) != null) {
                return d10;
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            Panel panel2 = this.f70756w.get(i11);
            if (panel2 == editorPanel) {
                return panel2;
            }
        }
        return null;
    }

    public final void F0() {
        View Q10;
        Panel panel = this.f70755v;
        if (panel != null && (Q10 = panel.Q()) != null && this.f70734a == this.f70738e && this.f70735b == this.f70739f && this.f70736c == this.f70740g && this.f70737d == this.f70741h) {
            o4.d R10 = this.f70755v.R();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) Q10.getLayoutParams();
            if (layoutParams != null) {
                int i10 = layoutParams.width;
                float f10 = R10.f98479a;
                if (f10 == -4.6848467E8f) {
                    layoutParams.width = (int) ((this.width * this.f70725F.f91407a) - I());
                } else if (f10 == -4.8648486E8f) {
                    layoutParams.width = -2;
                } else if (R10.f98481c == d.a.Global) {
                    layoutParams.width = (int) (this.f70725F.f91407a * f10);
                } else {
                    layoutParams.width = (int) (this.width * f10);
                }
                int i11 = layoutParams.height;
                float f11 = R10.f98480b;
                if (f11 == -4.6848467E8f) {
                    if (X()) {
                        layoutParams.height = (int) (((int) (this.height * this.f70725F.f91408b)) - N());
                    } else {
                        layoutParams.height = (int) ((((int) (this.height * this.f70725F.f91408b)) - this.f70723D.getResources().getDimension(R.dimen.editor3d_v2_panel_tittle_total)) - N());
                    }
                } else if (f11 == -4.8648486E8f) {
                    layoutParams.height = -2;
                } else if (R10.f98481c == d.a.Global) {
                    layoutParams.height = (int) (this.f70725F.f91408b * f11);
                } else {
                    layoutParams.height = (int) (this.height * f11);
                }
                if (layoutParams.width != i10 || layoutParams.height != i11) {
                    Q10.setLayoutParams(layoutParams);
                }
            }
            this.f70755v.A();
        }
    }

    public PanelArea G(EditorPanel editorPanel) {
        PanelArea o10;
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Object obj = (Panel) this.panelList.get(i10);
            if ((obj instanceof InterfaceC13935a) && (o10 = ((InterfaceC13935a) obj).o(editorPanel)) != null) {
                return o10;
            }
        }
        return null;
    }

    public void G0(float verticalMarginsInPanelSize) {
        this.f70754u = verticalMarginsInPanelSize;
    }

    public float H() {
        return this.height;
    }

    public void H0(float width) {
        this.width = width;
    }

    public float I() {
        return this.f70753t;
    }

    public void I0(float x10) {
        this.f70757x = x10;
    }

    public InterfaceC13936b J() {
        return this.f70726G;
    }

    public void J0(float y10) {
        this.f70758y = y10;
    }

    public FrameLayout K() {
        return this.f70746m;
    }

    public boolean K0() {
        View M10 = M();
        if (M10 == null) {
            return false;
        }
        M10.setVisibility(0);
        Panel panel = this.f70755v;
        if (panel == null) {
            return true;
        }
        panel.s0(this.f70722C, this.f70724E, this.f70725F, this.f70746m);
        return true;
    }

    public PanelArea L0() {
        this.f70732M = false;
        View view = this.f70745l;
        if (view != null) {
            view.setVisibility(0);
        }
        return this;
    }

    public View M() {
        return this.f70744k;
    }

    public void M0() {
        float f10 = this.f70757x;
        this.f70738e = f10;
        float f11 = this.f70758y;
        this.f70739f = f11;
        float f12 = this.width;
        this.f70740g = f12;
        float f13 = this.height;
        this.f70741h = f13;
        this.f70734a = f10;
        this.f70735b = f11;
        this.f70736c = f12;
        this.f70737d = f13;
    }

    public float N() {
        return this.f70754u;
    }

    public void N0(boolean posX, boolean posY, boolean scaX, boolean scaY) {
        if (posX) {
            float f10 = this.f70757x;
            this.f70738e = f10;
            this.f70734a = f10;
        }
        if (posY) {
            float f11 = this.f70758y;
            this.f70739f = f11;
            this.f70735b = f11;
        }
        if (scaX) {
            float f12 = this.width;
            this.f70740g = f12;
            this.f70736c = f12;
        }
        if (scaY) {
            float f13 = this.height;
            this.f70741h = f13;
            this.f70737d = f13;
        }
    }

    public float O() {
        return this.width;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FloatingPanelArea O0() {
        FloatingPanelArea floatingPanelArea = new FloatingPanelArea(this.f70757x, this.f70758y, this.width, this.height);
        SteppedArrayList steppedArrayList = new SteppedArrayList(this.panelList);
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            Panel panel = (Panel) steppedArrayList.get(i10);
            if (panel.w()) {
                panel.o0();
                floatingPanelArea.h(panel);
            } else {
                panel.g0();
                Toast.makeText(this.f70722C, "Panel \"" + panel.S() + "\" is not allowed to be floating", 0).show();
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            Panel panel2 = this.f70756w.get(i11);
            if (panel2.w()) {
                floatingPanelArea.h(panel2);
            } else {
                Toast.makeText(this.f70722C, "Panel \"" + panel2.S() + "\" is not allowed to be floating", 0).show();
            }
        }
        this.panelList.clear();
        this.f70756w.clear();
        floatingPanelArea.M0();
        this.f70727H.s(floatingPanelArea);
        this.f70727H.b(this);
        return floatingPanelArea;
    }

    public float P() {
        return this.f70757x;
    }

    public final void P0() {
        if (!this.f70727H.h()) {
            this.f70727H.n(this);
            C15042c c15042c = this.f70733N;
            if (c15042c != null) {
                c15042c.f(R.drawable.minimize_v3);
                return;
            }
            return;
        }
        if (this.f70727H.t(this)) {
            this.f70727H.a();
            C15042c c15042c2 = this.f70733N;
            if (c15042c2 != null) {
                c15042c2.f(R.drawable.maximize_v3);
                return;
            }
            return;
        }
        this.f70727H.n(this);
        C15042c c15042c3 = this.f70733N;
        if (c15042c3 != null) {
            c15042c3.f(R.drawable.minimize_v3);
        }
    }

    public float Q() {
        return this.f70758y;
    }

    public void Q0() {
        if (X()) {
            L0();
        } else {
            T();
        }
    }

    public boolean R() {
        return (this.panelList.isEmpty() && this.f70756w.isEmpty()) ? false : true;
    }

    public void R0() {
    }

    public boolean S() {
        View M10 = M();
        if (M10 == null) {
            return false;
        }
        M10.setVisibility(8);
        return true;
    }

    public void S0() {
        List<Panel> list;
        InterfaceC13584e interfaceC13584e = this.f70727H;
        if (interfaceC13584e == null || interfaceC13584e.t(this) || (list = this.panelList) == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            this.panelList.get(i10).v0();
        }
    }

    public PanelArea T() {
        this.f70732M = true;
        View view = this.f70745l;
        if (view != null) {
            view.setVisibility(8);
        }
        return this;
    }

    public final void T0(C13580a editor3DScreen) {
        this.f70757x = A.b(this.f70757x);
        this.f70758y = A.b(this.f70758y);
        this.width = A.b(this.width);
        float b10 = A.b(this.height);
        this.height = b10;
        float f10 = this.f70757x;
        this.f70738e = f10;
        this.f70739f = this.f70758y;
        this.f70740g = this.width;
        this.f70741h = b10;
        this.f70742i = editor3DScreen.f91407a;
        this.f70743j = editor3DScreen.f91408b;
        try {
            float f11 = this.f70734a;
            this.f70734a = Nc.b.N0(f11, f10, (Nc.b.k(f10 - f11) + 0.01f) * 35.0f * K8.d.d());
            float f12 = this.f70735b;
            float f13 = this.f70739f;
            this.f70735b = Nc.b.N0(f12, f13, (Nc.b.k(f13 - f12) + 0.01f) * 35.0f * K8.d.d());
            float f14 = this.f70736c;
            float f15 = this.f70740g;
            this.f70736c = Nc.b.N0(f14, f15, (Nc.b.k(f15 - f14) + 0.01f) * 35.0f * K8.d.d());
            float f16 = this.f70737d;
            float f17 = this.f70741h;
            float N02 = Nc.b.N0(f16, f17, (Nc.b.k(f17 - f16) + 0.01f) * 35.0f * K8.d.d());
            this.f70737d = N02;
            float f18 = this.f70736c;
            int i10 = editor3DScreen.f91407a;
            int i11 = (int) (f18 * i10);
            int i12 = editor3DScreen.f91408b;
            int i13 = (int) (N02 * i12);
            int i14 = (int) (this.f70734a * i10);
            int i15 = (int) (this.f70735b * i12);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f70744k.getLayoutParams();
            if (layoutParams.width == i11 && layoutParams.height == i13 && layoutParams.leftMargin == i14 && layoutParams.topMargin == i15) {
                return;
            }
            layoutParams.width = i11;
            layoutParams.height = i13;
            layoutParams.leftMargin = i14;
            layoutParams.topMargin = i15;
            this.f70744k.setLayoutParams(layoutParams);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public View U(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        return V(screenArea, activity, context, layoutInflater, editor3DScreen, -1, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:146:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void U0(FrameLayout frameLayout, Activity activity, Context context, LayoutInflater layoutInflater, C13580a c13580a, InterfaceC13584e interfaceC13584e, InterfaceC13936b interfaceC13936b, boolean z10) {
        boolean z11;
        List<Panel> list;
        ?? r22;
        Panel panel;
        Panel panel2;
        Activity activity2 = activity;
        LayoutInflater layoutInflater2 = layoutInflater;
        C13580a c13580a2 = c13580a;
        InterfaceC13584e interfaceC13584e2 = interfaceC13584e;
        this.f70721B = frameLayout;
        this.f70722C = activity2;
        this.f70723D = context;
        this.f70724E = layoutInflater2;
        this.f70725F = c13580a2;
        this.f70726G = interfaceC13936b;
        this.f70727H = interfaceC13584e2;
        if (this.f70746m != null) {
            synchronized (this.f70729J) {
                try {
                    if (this.f70746m.getGlobalVisibleRect(this.f70731L)) {
                        Rect rect = this.f70729J;
                        Rect rect2 = this.f70731L;
                        rect.left = rect2.left;
                        rect.top = rect2.top;
                        rect.right = rect2.right;
                        rect.bottom = rect2.bottom;
                    }
                } finally {
                }
            }
        }
        if (this.f70745l != null) {
            synchronized (this.f70730K) {
                try {
                    if (this.f70745l.getGlobalVisibleRect(this.f70731L)) {
                        Rect rect3 = this.f70730K;
                        Rect rect4 = this.f70731L;
                        rect3.left = rect4.left;
                        rect3.top = rect4.top;
                        rect3.right = rect4.right;
                        rect3.bottom = rect4.bottom;
                    }
                } finally {
                }
            }
        }
        if (this.f70744k != null) {
            synchronized (this.f70728I) {
                try {
                    if (this.f70744k.getGlobalVisibleRect(this.f70731L)) {
                        Rect rect5 = this.f70728I;
                        Rect rect6 = this.f70731L;
                        rect5.left = rect6.left;
                        rect5.top = rect6.top;
                        rect5.right = rect6.right;
                        rect5.bottom = rect6.bottom;
                    }
                } finally {
                }
            }
        }
        if (this.f70744k == null) {
            U(frameLayout, activity, context, layoutInflater, c13580a);
        }
        T0(c13580a2);
        int i10 = 0;
        if (!this.f70756w.isEmpty()) {
            while (!this.f70756w.isEmpty()) {
                Panel panel3 = this.f70756w.get(i10);
                this.f70756w.remove(i10);
                panel3.c0(activity2, layoutInflater2, c13580a2);
                try {
                    if (interfaceC13936b.isClosed()) {
                        if (interfaceC13936b.f() == EnumC13805a.CloseDown) {
                            try {
                                panel2 = panel3;
                            } catch (Exception e10) {
                                e = e10;
                                panel2 = panel3;
                            }
                            try {
                                panel3.x(this.f70748o, activity, context, layoutInflater, c13580a, new d(panel3, interfaceC13584e2), false);
                            } catch (Exception e11) {
                                e = e11;
                                e.printStackTrace();
                                panel = panel2;
                                this.panelList.add(panel);
                                activity2 = activity;
                                layoutInflater2 = layoutInflater;
                                c13580a2 = c13580a;
                                interfaceC13584e2 = interfaceC13584e;
                                i10 = 0;
                            }
                        } else {
                            panel2 = panel3;
                            if (interfaceC13936b.f() == EnumC13805a.CloseUp) {
                                try {
                                    panel2.x(this.f70749p, activity, context, layoutInflater, c13580a, new e(panel2, interfaceC13584e2), true);
                                } catch (Exception e12) {
                                    e12.printStackTrace();
                                }
                            } else if (interfaceC13936b.f() == EnumC13805a.None) {
                                panel = panel2;
                                m(activity, context, layoutInflater, c13580a, interfaceC13584e, panel2);
                            }
                        }
                        panel = panel2;
                    } else {
                        panel = panel3;
                        m(activity, context, layoutInflater, c13580a, interfaceC13584e, panel);
                    }
                    this.panelList.add(panel);
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
                activity2 = activity;
                layoutInflater2 = layoutInflater;
                c13580a2 = c13580a;
                interfaceC13584e2 = interfaceC13584e;
                i10 = 0;
            }
        }
        if (this.f70755v == null && !this.panelList.isEmpty()) {
            int i11 = this.serializedSelectedPanelIndex;
            if (i11 < 0 || i11 >= this.panelList.size()) {
                z11 = false;
                v0(this.panelList.get(0));
                F0();
                boolean isClosed = interfaceC13936b.isClosed();
                list = this.panelList;
                if (list != null && !list.isEmpty()) {
                    for (r22 = z11; r22 < this.panelList.size(); r22++) {
                        Panel panel4 = this.panelList.get(r22);
                        if (panel4 != null) {
                            if (isClosed) {
                                panel4.f70950n.set(z11);
                            } else {
                                panel4.f70950n.set((panel4 == this.f70755v && z10) ? true : z11);
                            }
                            panel4.x0(this.f70747n, frameLayout, activity, context, layoutInflater, c13580a, this.f70757x, this.f70758y, this.width, this.height, this.f70734a, this.f70735b, this.f70736c, this.f70737d, this.f70746m, this.f70744k, interfaceC13584e);
                        }
                    }
                }
                if (this.f70755v == null) {
                    if (interfaceC13936b.isClosed()) {
                        View Q10 = this.f70755v.Q();
                        if (Q10 == null || this.f70746m.indexOfChild(Q10) == -1) {
                            return;
                        }
                        this.f70746m.removeView(Q10);
                        return;
                    }
                    View Q11 = this.f70755v.Q();
                    if (Q11 != null && this.f70746m.indexOfChild(Q11) == -1) {
                        if (Q11.getParent() != null) {
                            ((ViewGroup) Q11.getParent()).removeView(Q11);
                        }
                        this.f70746m.addView(Q11);
                    }
                    this.f70755v.y0(this.f70747n, frameLayout, activity, context, layoutInflater, c13580a, this.f70757x, this.f70758y, this.width, this.height, this.f70734a, this.f70735b, this.f70736c, this.f70737d, this.f70746m, Q11);
                    return;
                }
                return;
            }
            v0(this.panelList.get(this.serializedSelectedPanelIndex));
        }
        z11 = false;
        F0();
        boolean isClosed2 = interfaceC13936b.isClosed();
        list = this.panelList;
        if (list != null) {
            while (r22 < this.panelList.size()) {
            }
        }
        if (this.f70755v == null) {
        }
    }

    public View V(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, int layout, boolean inflateDefaultOption) {
        if (layout == -1) {
            this.f70744k = layoutInflater.inflate(R.layout.editor_panel, (ViewGroup) null);
        } else {
            this.f70744k = layoutInflater.inflate(layout, (ViewGroup) null);
        }
        if (this.f70744k.getParent() != null) {
            ((ViewGroup) this.f70744k.getParent()).removeView(this.f70744k);
        }
        screenArea.addView(this.f70744k);
        T0(editor3DScreen);
        this.f70745l = this.f70744k.findViewById(R.id.topPanelLayout);
        this.f70746m = (FrameLayout) this.f70744k.findViewById(R.id.content);
        this.f70747n = (LinearLayout) this.f70744k.findViewById(R.id.tittles);
        this.f70748o = (LinearLayout) this.f70744k.findViewById(R.id.leftBar);
        this.f70749p = (LinearLayout) this.f70744k.findViewById(R.id.rightBar);
        this.f70750q = (ImageView) this.f70744k.findViewById(R.id.menu);
        this.f70751r = (LinearLayout) this.f70744k.findViewById(R.id.rightOptions);
        this.f70752s = (LinearLayout) this.f70744k.findViewById(R.id.openPanelRightOptions);
        if (inflateDefaultOption) {
            C15042c c15042c = new C15042c(R.drawable.maximize_v3, new h());
            this.f70733N = c15042c;
            this.f70720A.add(c15042c);
        }
        for (int i10 = 0; i10 < this.f70720A.size(); i10++) {
            W(context, layoutInflater, this.f70720A.get(i10), this.f70751r);
        }
        if (inflateDefaultOption) {
            ImageView imageView = this.f70750q;
            if (imageView != null) {
                imageView.setOnClickListener(new i());
            }
        } else {
            ImageView imageView2 = this.f70750q;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
        }
        View view = this.f70745l;
        if (view != null) {
            view.setOnTouchListener(new j());
            if (this.f70732M) {
                this.f70745l.setVisibility(8);
            } else {
                this.f70745l.setVisibility(0);
            }
        }
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(this.f70744k, context);
        return this.f70744k;
    }

    public final void W(Context context, LayoutInflater layoutInflater, C15042c rightOption, LinearLayout contentView) {
        View inflate = layoutInflater.inflate(R.layout.editor_right_option_view_horizontal, (ViewGroup) null);
        rightOption.f105915f = inflate;
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(inflate, context);
        contentView.addView(rightOption.f105915f, 0);
        ImageView imageView = (ImageView) rightOption.f105915f.findViewById(R.id.icon);
        imageView.setOnClickListener(new l(rightOption, context));
        imageView.setOnLongClickListener(new a(rightOption, context));
        imageView.setOnTouchListener(new b(rightOption, context));
        if (rightOption.c() == C15042c.a.Resource) {
            Vc.e.Y(imageView, rightOption.b(), context);
            com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(rightOption.f105915f, context);
            rightOption.f105916g = new c(imageView, rightOption, context);
        }
        if (rightOption.e()) {
            return;
        }
        rightOption.f105915f.setVisibility(8);
    }

    public boolean X() {
        return this.f70732M;
    }

    public boolean Y(Vector2 pos) {
        boolean z10;
        synchronized (this.f70728I) {
            try {
                float f10 = pos.f79838x;
                Rect rect = this.f70728I;
                if (f10 >= rect.left && f10 <= rect.right) {
                    float f11 = pos.f79839y;
                    z10 = f11 >= ((float) rect.top) && f11 <= ((float) rect.bottom);
                }
            } finally {
            }
        }
        return z10;
    }

    public boolean Z(int x10, int y10) {
        float f10 = x10;
        float f11 = this.f70757x;
        if (f10 < f11 || f10 > f11 + this.width) {
            return false;
        }
        float f12 = y10;
        float f13 = this.f70758y;
        return f12 >= f13 && f12 <= f13 + this.height;
    }

    public boolean a0() {
        return true;
    }

    public boolean b0(tc.h touch) {
        boolean z10 = false;
        if (!a0()) {
            return false;
        }
        Vector2 g10 = touch.g();
        synchronized (this.f70729J) {
            try {
                float f10 = g10.f79838x;
                Rect rect = this.f70729J;
                if (f10 >= rect.left && f10 <= rect.right) {
                    float f11 = g10.f79839y;
                    if (f11 >= rect.top && f11 <= rect.bottom) {
                        z10 = true;
                    }
                }
            } finally {
            }
        }
        return z10;
    }

    public boolean c0(tc.h touch) {
        if (e0(touch)) {
            return true;
        }
        return a0() && b0(touch);
    }

    public boolean d0(tc.h... touchs) {
        if (touchs.length <= 0) {
            return false;
        }
        synchronized (this.f70730K) {
            for (tc.h hVar : touchs) {
                try {
                    Vector2 g10 = hVar.g();
                    float f10 = g10.f79838x;
                    Rect rect = this.f70730K;
                    if (f10 >= rect.left && f10 <= rect.right) {
                        float f11 = g10.f79839y;
                        if (f11 >= rect.top && f11 <= rect.bottom) {
                            return true;
                        }
                    }
                } finally {
                }
            }
            if (!a0()) {
                return false;
            }
            synchronized (this.f70729J) {
                for (tc.h hVar2 : touchs) {
                    try {
                        Vector2 g11 = hVar2.g();
                        float f12 = g11.f79838x;
                        Rect rect2 = this.f70729J;
                        if (f12 >= rect2.left && f12 <= rect2.right) {
                            float f13 = g11.f79839y;
                            if (f13 >= rect2.top && f13 <= rect2.bottom) {
                                return true;
                            }
                        }
                    } finally {
                    }
                }
                return false;
            }
        }
    }

    public boolean e0(tc.h touch) {
        boolean z10;
        Vector2 g10 = touch.g();
        synchronized (this.f70730K) {
            try {
                float f10 = g10.f79838x;
                Rect rect = this.f70730K;
                if (f10 >= rect.left && f10 <= rect.right) {
                    float f11 = g10.f79839y;
                    z10 = f11 >= ((float) rect.top) && f11 <= ((float) rect.bottom);
                }
            } finally {
            }
        }
        return z10;
    }

    public void f0(Panel panel) {
        panel.I(this.f70747n, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
        panel.H(this.f70748o, this.f70749p, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
        this.panelList.remove(panel);
        panel.h0(this.f70722C, this.f70724E, this.f70725F, this.f70746m);
        if (this.f70755v == panel) {
            this.f70755v = null;
        }
    }

    public PanelArea g(EditorPanel panel) {
        panel.getClass();
        this.f70756w.add(new Panel(panel));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean g0(EditorPanel editorPanel) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel.M() == editorPanel) {
                panel.Y();
                return true;
            }
            if ((panel instanceof InterfaceC13935a) && ((InterfaceC13935a) panel).f(editorPanel)) {
                return true;
            }
        }
        return false;
    }

    public PanelArea h(Panel panel) {
        panel.getClass();
        this.f70756w.add(panel);
        return this;
    }

    public void h0() {
        try {
            List<Panel> list = this.panelList;
            if (list == null || list.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < this.panelList.size(); i10++) {
                Panel panel = this.panelList.get(i10);
                if (panel != null) {
                    q6.g O12 = q6.f.O1(L(panel));
                    try {
                        panel.Z();
                        q6.f.M1(O12);
                    } catch (Throwable th2) {
                        q6.f.M1(O12);
                        throw th2;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public PanelArea i(List<Panel> panels) {
        for (int i10 = 0; i10 < panels.size(); i10++) {
            Panel panel = panels.get(i10);
            panel.getClass();
            this.f70756w.add(panel);
        }
        return this;
    }

    public final void i0() {
        if (!this.f70727H.h()) {
            this.f70727H.n(this);
            C15042c c15042c = this.f70733N;
            if (c15042c != null) {
                c15042c.f(R.drawable.minimize_v3);
                return;
            }
            return;
        }
        if (this.f70727H.t(this)) {
            return;
        }
        this.f70727H.n(this);
        C15042c c15042c2 = this.f70733N;
        if (c15042c2 != null) {
            c15042c2.f(R.drawable.minimize_v3);
        }
    }

    public void j(C15042c rightOption, Context context) {
        LinearLayout linearLayout = this.f70751r;
        if (linearLayout != null) {
            W(context, this.f70724E, rightOption, linearLayout);
        }
        this.f70720A.add(rightOption);
    }

    public final void j0() {
        if (this.f70727H.h() && this.f70727H.t(this)) {
            this.f70727H.a();
            C15042c c15042c = this.f70733N;
            if (c15042c != null) {
                c15042c.f(R.drawable.maximize_v3);
            }
        }
    }

    public void k(o4.e panelsBundle) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            this.panelList.get(i10).v(panelsBundle);
        }
    }

    public void k0(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        List<Panel> list;
        if (panelsControllerListener == null || panelsControllerListener.t(this) || (list = this.panelList) == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel != null) {
                panel.a0(engineUpdateData, panelsControllerListener);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void l(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        this.f70721B = screenArea;
        this.f70722C = activity;
        this.f70723D = context;
        this.f70724E = layoutInflater;
        this.f70725F = editor3DScreen;
        if (this.f70759z == null) {
            this.f70759z = new C14927b();
            if (this.f70726G.isClosed()) {
                if (this.f70726G.f() == EnumC13805a.None) {
                    this.f70759z.y(this.f70747n, activity, context, layoutInflater, editor3DScreen, null);
                } else if (this.f70726G.f() == EnumC13805a.CloseUp) {
                    this.f70759z.x(this.f70749p, activity, context, layoutInflater, editor3DScreen, null, true);
                } else if (this.f70726G.f() == EnumC13805a.CloseDown) {
                    this.f70759z.x(this.f70748o, activity, context, layoutInflater, editor3DScreen, null, false);
                }
            } else if (this.f70726G.a() == EnumC13805a.None) {
                this.f70759z.y(this.f70747n, activity, context, layoutInflater, editor3DScreen, null);
            } else if (this.f70726G.a() == EnumC13805a.CloseUp) {
                this.f70759z.x(this.f70749p, activity, context, layoutInflater, editor3DScreen, null, true);
            } else if (this.f70726G.a() == EnumC13805a.CloseDown) {
                this.f70759z.x(this.f70748o, activity, context, layoutInflater, editor3DScreen, null, false);
            }
        }
        List<Panel> list = this.panelList;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel == this.f70755v && (panel instanceof InterfaceC13935a) && panel.f70950n.get()) {
                ((InterfaceC13935a) panel).p(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
            }
        }
    }

    public void l0() {
        List<Panel> list;
        InterfaceC13584e interfaceC13584e = this.f70727H;
        if (interfaceC13584e == null || interfaceC13584e.t(this) || (list = this.panelList) == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            this.panelList.get(i10).b0();
        }
    }

    public final void m(Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener, Panel panel) {
        panel.y(this.f70747n, activity, context, layoutInflater, editor3DScreen, new k(panel, panelsControllerListener));
    }

    public void m0() {
        try {
            List<Panel> list = this.panelList;
            if (list != null) {
                for (Panel panel : list) {
                    if (panel != null) {
                        panel.i0();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void n(o4.e panelsBundle) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            this.panelList.get(i10).z(panelsBundle);
        }
    }

    public void n0() {
        Panel panel = this.f70755v;
        if (panel != null) {
            this.serializedSelectedPanelIndex = this.panelList.indexOf(panel);
        }
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            this.panelList.get(i10).j0();
        }
    }

    public PanelArea clone() {
        PanelArea panelArea = new PanelArea();
        Iterator<Panel> it = this.panelList.iterator();
        while (it.hasNext()) {
            panelArea.h(it.next());
        }
        return panelArea;
    }

    public void o0() {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            this.panelList.get(i10).k0();
        }
    }

    public boolean p(EditorPanel editorPanel) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            if (this.panelList.get(i10).M() == editorPanel) {
                return true;
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            if (this.f70756w.get(i11).M() == editorPanel) {
                return true;
            }
        }
        return false;
    }

    public void p0() {
        try {
            List<Panel> list = this.panelList;
            if (list != null) {
                for (Panel panel : list) {
                    if (panel != null) {
                        panel.l0();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean q(Panel editorPanel) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            if (this.panelList.get(i10) == editorPanel) {
                return true;
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            if (this.f70756w.get(i11) == editorPanel) {
                return true;
            }
        }
        return false;
    }

    public void q0() {
        Context context = this.f70723D;
        if (context == null) {
            context = N7.c.t();
        }
        View view = this.f70744k;
        if (view == null || context == null) {
            return;
        }
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(view, context);
    }

    public FloatingPanelArea r() {
        FloatingPanelArea floatingPanelArea = new FloatingPanelArea(this.f70757x, this.f70758y, this.width, this.height);
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel.w()) {
                floatingPanelArea.h(panel.C());
            } else {
                Toast.makeText(this.f70722C, "Panel \"" + panel.S() + "\" is not allowed to be floating", 0).show();
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            Panel panel2 = this.f70756w.get(i11);
            if (panel2.w()) {
                floatingPanelArea.h(panel2.C());
            } else {
                Toast.makeText(this.f70722C, "Panel \"" + panel2.S() + "\" is not allowed to be floating", 0).show();
            }
        }
        floatingPanelArea.M0();
        this.f70727H.s(floatingPanelArea);
        return floatingPanelArea;
    }

    public void r0(k4.c listener) {
        View M10 = M();
        if (M10 != null) {
            listener.a(M10);
        }
        List<Panel> list = this.panelList;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Object obj = (Panel) this.panelList.get(i10);
            if (obj == this.f70755v && (obj instanceof InterfaceC13935a)) {
                ((InterfaceC13935a) obj).a(listener);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean s(EditorPanel editorPanel) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel.M() == editorPanel) {
                return true;
            }
            if ((panel instanceof InterfaceC13935a) && ((InterfaceC13935a) panel).e(editorPanel)) {
                return true;
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            if (this.f70756w.get(i11).M() == editorPanel) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean s0(EditorPanel editorPanel) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel.M() == editorPanel) {
                panel.o0();
                return true;
            }
            if ((panel instanceof InterfaceC13935a) && ((InterfaceC13935a) panel).n(editorPanel)) {
                return true;
            }
        }
        return false;
    }

    public boolean t(Panel editorPanel) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Object obj = (Panel) this.panelList.get(i10);
            if (obj == editorPanel) {
                return true;
            }
            if ((obj instanceof InterfaceC13935a) && ((InterfaceC13935a) obj).i(editorPanel)) {
                return true;
            }
        }
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            if (this.f70756w.get(i11) == editorPanel) {
                return true;
            }
        }
        return false;
    }

    public void t0(C15042c rightOption, Context context) {
        if (this.f70720A.contains(rightOption)) {
            this.f70720A.remove(rightOption);
            this.f70751r.removeView(rightOption.f105915f);
            rightOption.f105915f = null;
        }
    }

    public void u() {
        v(N7.c.D().P());
    }

    public void u0() {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            if (panel != null) {
                panel.o0();
            }
        }
        this.panelList.clear();
        for (int i11 = 0; i11 < this.f70756w.size(); i11++) {
            Panel panel2 = this.f70756w.get(i11);
            if (panel2 != null) {
                panel2.o0();
            }
        }
        this.f70756w.clear();
        this.f70755v = null;
    }

    public void v(FrameLayout screenArea) {
        this.f70756w.addAll(this.panelList);
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            this.panelList.get(i10).D(screenArea);
        }
        this.panelList.clear();
        this.f70755v = null;
        View view = this.f70744k;
        if (view != null) {
            screenArea.removeView(view);
            this.f70744k = null;
        }
        for (int i11 = 0; i11 < this.f70720A.size(); i11++) {
            C15042c c15042c = this.f70720A.get(i11);
            if (c15042c.f105915f != null) {
                y(c15042c, this.f70723D);
            }
        }
        this.f70720A.clear();
    }

    public final void v0(Panel panel) {
        FrameLayout frameLayout;
        List<C15042c> W10;
        Panel panel2 = this.f70755v;
        if (panel2 == null || panel2 != panel) {
            if (panel2 != null) {
                panel2.w0(this.f70747n, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
                View Q10 = this.f70755v.Q();
                if (Q10 != null && (frameLayout = this.f70746m) != null && frameLayout.indexOfChild(Q10) != -1) {
                    this.f70746m.removeView(Q10);
                }
                this.f70755v.n0(this.f70722C, this.f70724E, this.f70725F);
            }
            this.f70755v = panel;
            if (panel != null) {
                panel.p0(this.f70747n, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
                View Q11 = this.f70755v.Q();
                if (Q11 != null && this.f70746m.indexOfChild(Q11) == -1) {
                    if (Q11.getParent() != null) {
                        ((ViewGroup) Q11.getParent()).removeView(Q11);
                    }
                    FrameLayout frameLayout2 = this.f70746m;
                    if (frameLayout2 != null) {
                        frameLayout2.addView(Q11);
                    }
                    F0();
                }
                this.f70755v.s0(this.f70722C, this.f70724E, this.f70725F, this.f70746m);
                this.f70755v.d0(this.f70722C, this.f70724E, this.f70725F);
                this.f70755v.A();
            }
            this.f70726G.d();
        } else {
            this.f70726G.toggle();
            this.f70755v.A();
        }
        if (panel2 != panel) {
            for (int i10 = 0; i10 < this.panelList.size(); i10++) {
                Panel panel3 = this.panelList.get(i10);
                if (panel3 != panel2 && panel3 != panel) {
                    panel3.w0(this.f70747n, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
                }
            }
        }
        this.f70752s.removeAllViews();
        if (panel.M() == null || (W10 = panel.M().W()) == null) {
            return;
        }
        for (int i11 = 0; i11 < W10.size(); i11++) {
            W(this.f70723D, this.f70724E, W10.get(i11), this.f70752s);
        }
    }

    public boolean w0(n4.f panelIntent) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            if (this.panelList.get(i10).q0(panelIntent)) {
                return true;
            }
        }
        return false;
    }

    public void x0(float height) {
        this.height = height;
    }

    public void y(C15042c rightOption, Context context) {
        View view = rightOption.f105915f;
        if (view == null) {
            throw new RuntimeException("");
        }
        this.f70751r.removeView(view);
        rightOption.f105915f = null;
    }

    public void y0(EnumC13805a closeDirection) {
        for (int i10 = 0; i10 < this.panelList.size(); i10++) {
            Panel panel = this.panelList.get(i10);
            Panel.g gVar = panel.f70951o;
            if (gVar == Panel.g.None || gVar == Panel.g.TopBar) {
                panel.I(this.f70747n, this.f70722C, this.f70723D, this.f70724E, this.f70725F);
                if (closeDirection == EnumC13805a.CloseDown) {
                    panel.x(this.f70748o, this.f70722C, this.f70723D, this.f70724E, this.f70725F, new f(panel), false);
                } else {
                    panel.x(this.f70749p, this.f70722C, this.f70723D, this.f70724E, this.f70725F, new g(panel), true);
                }
            }
        }
    }

    public void z() {
        A(N7.c.D().P());
    }

    public void z0(float horizontalMarginsInPanelSize) {
        this.f70753t = horizontalMarginsInPanelSize;
    }

    public PanelArea(float x10, float y10, float width, float height) {
        this.f70757x = x10;
        this.f70758y = y10;
        this.width = width;
        this.height = height;
    }
}
