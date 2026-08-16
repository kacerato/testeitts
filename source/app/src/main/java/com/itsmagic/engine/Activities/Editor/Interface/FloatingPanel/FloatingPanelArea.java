package com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel;

import Z6.c;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.PanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.SplitArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Utils.DragPanelView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import i4.C13580a;
import i4.C13583d;
import i4.InterfaceC13584e;
import j4.EnumC13805a;
import j4.EnumC13806b;
import java.util.Iterator;
import java.util.List;
import k4.InterfaceC13936b;
import m4.C14182a;
import o4.InterfaceC14482a;
import q4.C15042c;
import r4.C15147a;
import rc.C15169a;
import tc.C15393b;

public class FloatingPanelArea extends PanelArea {

    public boolean f70825O;

    public int f70826P;

    public int f70827Q;

    public boolean f70828R;

    public boolean f70829S;

    public m4.c f70830T;

    public C13580a f70831U;

    public Context f70832V;

    public C14182a f70833W;

    public boolean f70834X;

    public boolean f70835Y;

    public boolean f70836Z;

    public float f70837a0;

    public boolean f70838b0;

    public boolean f70839c0;

    public C15042c f70840d0;

    public final List<InterfaceC14482a> f70841e0;

    public boolean f70842f0;

    @Expose
    public float floatingH;

    @Expose
    public float floatingW;

    @Expose
    public float floatingX;

    @Expose
    public float floatingY;

    public float f70843g0;

    public boolean f70844h0;

    public DragPanelView f70845i0;

    public final InterfaceC13936b f70846j0;

    public InterfaceC13584e f70847k0;

    public View f70848l0;

    public View f70849m0;

    public View f70850n0;

    public k f70851o0;

    public k f70852p0;

    public k f70853q0;

    public class a implements InterfaceC13936b {
        public a() {
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
            FloatingPanelArea.this.z1();
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
            return !FloatingPanelArea.this.a0();
        }

        @Override
        public void toggle() {
            FloatingPanelArea.this.Q1();
        }
    }

    public class b implements q4.d {

        public class a extends c.h {
            public a() {
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                FloatingPanelArea.this.f70834X = true;
            }
        }

        public b() {
        }

        @Override
        public void a(View v10, Context context, C15042c rightOption) {
            for (Panel panel : FloatingPanelArea.this.panelList) {
                if (panel != null && panel.M() != null && panel.M().q0()) {
                    Z6.c.w1(v10, C15147a.e.Below, Lang.l(Lang.T.CLOSE_PANEL), Lang.l(Lang.T.ARE_YOU_SURE), new a());
                    return;
                }
            }
            FloatingPanelArea.this.f70834X = true;
        }

        @Override
        public boolean b(View v10, MotionEvent motionEvent, Context context, C15042c rightOption) {
            return false;
        }

        @Override
        public boolean c(View v10, Context context, C15042c rightOption) {
            return false;
        }
    }

    public class c implements q4.d {
        public c() {
        }

        @Override
        public void a(View v10, Context context, C15042c rightOption) {
        }

        @Override
        public boolean b(View v10, MotionEvent motionEvent, Context context, C15042c rightOption) {
            C15393b c15393b;
            if (FloatingPanelArea.this.f70833W == null) {
                if (motionEvent.getAction() == 0 && (c15393b = C15169a.f108803l.get(0)) != null) {
                    FloatingPanelArea.this.f70833W = new C14182a();
                    int i10 = (int) c15393b.a().f79838x;
                    int i11 = (int) c15393b.a().f79839y;
                    FloatingPanelArea.this.f70833W.f96683a = i10;
                    FloatingPanelArea.this.f70833W.f96684b = i11;
                    C14182a c14182a = FloatingPanelArea.this.f70833W;
                    FloatingPanelArea floatingPanelArea = FloatingPanelArea.this;
                    c14182a.f96685c = floatingPanelArea.floatingX;
                    floatingPanelArea.f70833W.f96686d = FloatingPanelArea.this.floatingY;
                }
            } else if (motionEvent.getAction() == 1) {
                FloatingPanelArea.this.f70833W = null;
            }
            return false;
        }

        @Override
        public boolean c(View v10, Context context, C15042c rightOption) {
            return false;
        }
    }

    public class d implements View.OnTouchListener {

        public final Context f70858b;

        public class a implements j {
            public a() {
            }

            @Override
            public void a(k resize) {
                FloatingPanelArea.this.f70851o0 = resize;
            }
        }

        public d(final Context val$context) {
            this.f70858b = val$context;
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 0) {
                return false;
            }
            FloatingPanelArea.this.P1(v10, this.f70858b, new a());
            return false;
        }
    }

    public class e implements View.OnTouchListener {

        public final Context f70861b;

        public class a implements j {
            public a() {
            }

            @Override
            public void a(k resize) {
                FloatingPanelArea.this.f70852p0 = resize;
            }
        }

        public e(final Context val$context) {
            this.f70861b = val$context;
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 0) {
                return false;
            }
            FloatingPanelArea.this.P1(v10, this.f70861b, new a());
            return false;
        }
    }

    public class f implements View.OnTouchListener {

        public final Context f70864b;

        public class a implements j {
            public a() {
            }

            @Override
            public void a(k resize) {
                FloatingPanelArea.this.f70853q0 = resize;
            }
        }

        public f(final Context val$context) {
            this.f70864b = val$context;
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 0) {
                return false;
            }
            FloatingPanelArea.this.P1(v10, this.f70864b, new a());
            return false;
        }
    }

    public class g implements InterfaceC14482a {
        public g() {
        }

        @Override
        public void a() {
            FloatingPanelArea.this.u0();
        }
    }

    public class h implements InterfaceC14482a {
        public h() {
        }

        @Override
        public void a() {
            FloatingPanelArea.this.u0();
        }
    }

    public enum i {
        Fixed,
        MinSize
    }

    public interface j {
        void a(k resize);
    }

    public class k {

        public int f70869a;

        public int f70870b;

        public float f70871c;

        public float f70872d;

        public float f70873e;

        public float f70874f;

        public k() {
        }
    }

    public FloatingPanelArea() {
        this.f70825O = true;
        this.f70826P = -1;
        this.f70827Q = -1;
        this.f70828R = true;
        this.f70829S = true;
        this.f70834X = false;
        this.f70835Y = false;
        this.f70836Z = false;
        this.f70839c0 = true;
        this.f70841e0 = new SteppedArrayList();
        this.f70842f0 = false;
        this.f70843g0 = 0.0f;
        this.f70846j0 = new a();
    }

    public static FloatingPanelArea g1(String json) {
        return (FloatingPanelArea) PanelArea.x(json, FloatingPanelArea.class);
    }

    public Panel A1(int i10) {
        if (i10 < 0) {
            return null;
        }
        if (i10 < this.panelList.size()) {
            return this.panelList.get(i10);
        }
        int size = i10 - this.panelList.size();
        if (size < 0 || size >= this.f70756w.size()) {
            return null;
        }
        return this.f70756w.get(size);
    }

    public int B1() {
        return this.panelList.size() + this.f70756w.size();
    }

    public void C1(InterfaceC14482a trigger) {
        synchronized (this.f70841e0) {
            this.f70841e0.remove(trigger);
        }
    }

    @Override
    public void D(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        super.D(engineUpdateData, panelsControllerListener);
        this.f70837a0 += K8.d.e();
    }

    public void D1(boolean allowCloseX) {
        C15042c c15042c;
        if (this.f70839c0 != allowCloseX && (c15042c = this.f70840d0) != null) {
            c15042c.h(allowCloseX);
        }
        this.f70839c0 = allowCloseX;
    }

    public void E1(boolean captureTouchWhenClickOutside) {
        this.f70836Z = captureTouchWhenClickOutside;
    }

    public void F1(boolean closeWhenClickOutside) {
        this.f70835Y = closeWhenClickOutside;
    }

    public void G1(boolean closeWhenPressBack) {
        this.f70842f0 = closeWhenPressBack;
    }

    public void H1(DragPanelView customDragView) {
        this.f70845i0 = customDragView;
        if (customDragView != null) {
            customDragView.setPanel(this);
        }
    }

    public FloatingPanelArea I1(int w10, int h10, i mode) {
        int ordinal = mode.ordinal();
        if (ordinal == 0) {
            this.f70826P = w10;
            this.f70827Q = h10;
            this.f70829S = false;
        } else if (ordinal == 1) {
            this.f70826P = w10;
            this.f70827Q = h10;
            this.f70829S = true;
        }
        return this;
    }

    public void J1(float floatingH) {
        this.floatingH = floatingH;
    }

    public void K1(float floatingW) {
        this.floatingW = floatingW;
    }

    public void L1(float floatingX) {
        this.floatingX = floatingX;
    }

    public void M1(float floatingY) {
        this.floatingY = floatingY;
    }

    public void N1(boolean resizeable) {
        this.f70829S = resizeable;
    }

    public void O1(boolean singleton) {
        this.f70844h0 = singleton;
    }

    public void P1(View view, Context context, j dragCallBack) {
        C15393b c15393b = C15169a.f108803l.get(0);
        if (c15393b == null || !this.f70829S) {
            return;
        }
        int i10 = (int) c15393b.a().f79838x;
        int i11 = (int) c15393b.a().f79839y;
        k kVar = new k();
        kVar.f70869a = i10;
        kVar.f70870b = i11;
        kVar.f70871c = this.floatingX;
        kVar.f70872d = this.floatingW;
        kVar.f70873e = this.floatingY;
        kVar.f70874f = this.floatingH;
        dragCallBack.a(kVar);
    }

    public final void Q1() {
        if (this.f70828R) {
            e1();
        } else {
            z1();
        }
    }

    public void R1(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        this.f70832V = context;
        this.f70831U = editor3DScreen;
        this.f70847k0 = panelsControllerListener;
        this.f70843g0 += K8.d.d();
        DragPanelView dragPanelView = this.f70845i0;
        if (dragPanelView != null) {
            dragPanelView.e();
        }
        int i10 = 0;
        if (this.f70834X) {
            if (this.f70737d <= 0.0f) {
                for (int i11 = 0; i11 < this.panelList.size(); i11++) {
                    this.panelList.get(i11).g0();
                }
                this.f70828R = false;
                panelsControllerListener.b(this);
                this.f70834X = false;
                synchronized (this.f70841e0) {
                    try {
                        Iterator<InterfaceC14482a> it = this.f70841e0.iterator();
                        while (it.hasNext()) {
                            it.next().a();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
            }
            this.height = 0.0f;
        } else if (this.f70828R) {
            if (X()) {
                this.height = this.floatingH + (Nc.b.l0(3.0f, context) / editor3DScreen.f91408b);
            } else {
                this.height = this.floatingH + (context.getResources().getDimension(R.dimen.editor3d_v2_panel_tittle_total) / editor3DScreen.f91408b);
            }
            this.height = Nc.b.E(q1(context, editor3DScreen), this.height, 1.0f);
        } else {
            this.height = q1(context, editor3DScreen);
        }
        if (this.f70829S) {
            if (this.f70851o0 != null) {
                C15393b c15393b = C15169a.f108803l.get(0);
                if (c15393b == null || !c15393b.c()) {
                    this.f70851o0 = null;
                } else {
                    float b10 = (((int) c15393b.a().f79838x) - this.f70851o0.f70869a) / K8.c.b();
                    this.floatingX = Nc.b.I(this.f70851o0.f70871c + b10);
                    this.floatingW = Nc.b.I(this.f70851o0.f70872d - b10);
                }
            }
            if (this.f70853q0 != null) {
                C15393b c15393b2 = C15169a.f108803l.get(0);
                if (c15393b2 == null || !c15393b2.c()) {
                    this.f70853q0 = null;
                } else {
                    this.floatingW = Nc.b.I(this.f70853q0.f70872d + ((((int) c15393b2.a().f79838x) - this.f70853q0.f70869a) / K8.c.b()));
                }
            }
            if (this.f70852p0 != null) {
                C15393b c15393b3 = C15169a.f108803l.get(0);
                if (c15393b3 == null || !c15393b3.c()) {
                    this.f70852p0 = null;
                } else {
                    this.floatingH = Nc.b.I(this.f70852p0.f70874f + ((((int) c15393b3.a().f79839y) - this.f70852p0.f70870b) / K8.c.a()));
                }
            }
        }
        if (this.f70833W != null) {
            C15393b c15393b4 = C15169a.f108803l.get(0);
            if (c15393b4 == null || !c15393b4.c()) {
                this.f70833W = null;
            } else {
                int i12 = (int) c15393b4.a().f79838x;
                int i13 = (int) c15393b4.a().f79839y;
                C14182a c14182a = this.f70833W;
                int i14 = i12 - c14182a.f96683a;
                int i15 = i13 - c14182a.f96684b;
                this.floatingX = Nc.b.I(c14182a.f96685c + (i14 / editor3DScreen.f91407a));
                this.floatingY = Nc.b.I(this.f70833W.f96686d + (i15 / editor3DScreen.f91408b));
            }
        }
        int i16 = this.f70826P;
        if (i16 >= 0) {
            float g10 = N7.c.g(i16);
            if (this.f70829S) {
                float M10 = Nc.b.M(g10, this.floatingW);
                this.floatingW = M10;
                this.floatingW = Nc.b.I(M10);
            } else {
                this.floatingW = Nc.b.I(g10);
            }
        }
        int i17 = this.f70827Q;
        if (i17 >= 0) {
            float f10 = N7.c.f(i17);
            if (this.f70829S) {
                float M11 = Nc.b.M(f10, this.floatingH);
                this.floatingH = M11;
                this.floatingH = Nc.b.I(M11);
            } else {
                this.floatingH = Nc.b.I(f10);
            }
        }
        float E10 = Nc.b.E(r1(context, editor3DScreen), this.floatingW, 1.0f);
        this.floatingW = E10;
        this.width = E10;
        float E11 = Nc.b.E(0.0f, this.floatingX, 1.0f - E10);
        this.floatingX = E11;
        this.f70757x = E11;
        float E12 = Nc.b.E(0.0f, this.floatingY, 1.0f - this.height);
        this.floatingY = E12;
        this.f70758y = E12;
        if (!this.f70834X && this.f70825O && !R()) {
            this.f70834X = true;
            return;
        }
        if (this.f70835Y && this.f70843g0 >= 1.0f) {
            if (!this.f70838b0) {
                this.f70838b0 = true;
                for (int i18 = 0; i18 < C15169a.L(); i18++) {
                    tc.h n10 = C15169a.n(i18);
                    if (n10.k() || n10.q()) {
                        this.f70838b0 = false;
                        break;
                    }
                }
            }
            if (this.f70838b0) {
                while (true) {
                    if (i10 >= C15169a.L()) {
                        break;
                    }
                    tc.h n11 = C15169a.n(i10);
                    if (this.f70836Z) {
                        if ((n11.k() || n11.q()) && !n11.f117309e && !c0(n11)) {
                            u0();
                            break;
                        }
                        i10++;
                    } else {
                        if (n11.k() && !n11.f117309e && !c0(n11)) {
                            u0();
                            break;
                        }
                        i10++;
                    }
                }
            }
        }
        super.U0(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener, this.f70846j0, this.f70828R);
    }

    @Override
    public View U(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        View s12 = s1(screenArea, activity, context, layoutInflater, editor3DScreen);
        C15042c c15042c = new C15042c(R.drawable.close_x, new b());
        this.f70840d0 = c15042c;
        j(c15042c, context);
        this.f70840d0.h(this.f70839c0);
        j(new C15042c(R.drawable.slide, new c()), context);
        this.f70848l0 = s12.findViewById(R.id.leftResize);
        this.f70849m0 = s12.findViewById(R.id.bottomResize);
        this.f70850n0 = s12.findViewById(R.id.rightResize);
        this.f70848l0.setOnTouchListener(new d(context));
        this.f70849m0.setOnTouchListener(new e(context));
        this.f70850n0.setOnTouchListener(new f(context));
        return s12;
    }

    @Override
    public boolean a0() {
        return this.f70828R;
    }

    public void d1(InterfaceC14482a trigger) {
        synchronized (this.f70841e0) {
            this.f70841e0.add(trigger);
        }
    }

    public final void e1() {
        this.f70828R = false;
        float q12 = q1(this.f70832V, this.f70831U);
        float f10 = this.floatingY;
        if (f10 >= 0.4f - q12) {
            this.floatingY = f10 + (this.floatingH - q12);
        }
    }

    public void f1() {
        this.f70842f0 = true;
    }

    public void h1(FloatingPanelArea editorPanel) {
        editorPanel.d1(new h());
    }

    public void i1(EditorPanel editorPanel) {
        editorPanel.b(new g());
    }

    public float j1() {
        return this.f70837a0;
    }

    @Override
    public void k(o4.e panelsBundle) {
        m4.c cVar = this.f70830T;
        if (cVar != null) {
            this.floatingW = N7.c.g((int) cVar.f96687a);
            this.floatingH = N7.c.g((int) this.f70830T.f96688b);
        }
        this.f70830T = null;
        super.k(panelsBundle);
    }

    public DragPanelView k1() {
        return this.f70845i0;
    }

    public float l1() {
        return this.floatingH;
    }

    public float m1() {
        return this.floatingW;
    }

    @Override
    public void n(o4.e panelsBundle) {
        m4.c cVar = new m4.c();
        this.f70830T = cVar;
        cVar.f96687a = N7.c.k(this.f70740g);
        this.f70830T.f96688b = N7.c.k(this.f70740g);
        super.n(panelsBundle);
    }

    public float n1() {
        return this.floatingX;
    }

    public float o1() {
        return this.floatingY;
    }

    public float p1() {
        return this.f70843g0;
    }

    public final float q1(Context context, C13580a editor3DScreen) {
        float l02;
        int i10;
        float dimension = !X() ? context.getResources().getDimension(R.dimen.editor3d_v2_panel_tittle_total) : 0.0f;
        if (this.f70828R) {
            l02 = dimension + Nc.b.l0(16.0f, context);
            i10 = editor3DScreen.f91408b;
        } else {
            l02 = dimension - Nc.b.l0(2.0f, context);
            i10 = editor3DScreen.f91408b;
        }
        return l02 / i10;
    }

    public final float r1(Context context, C13580a editor3DScreen) {
        return Nc.b.l0(80.0f, context) / editor3DScreen.f91407a;
    }

    public View s1(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        return super.V(screenArea, activity, context, layoutInflater, editor3DScreen, R.layout.editor_floating_panel_no_mask, false);
    }

    public boolean t1() {
        return this.f70839c0;
    }

    public boolean u1() {
        return this.f70836Z;
    }

    public boolean v1() {
        return this.f70835Y;
    }

    @Override
    public boolean w0(n4.f panelIntent) {
        if (!(panelIntent instanceof C13583d) || !this.f70842f0) {
            return super.w0(panelIntent);
        }
        u0();
        return true;
    }

    public boolean w1() {
        return this.f70842f0;
    }

    public boolean x1() {
        return this.f70829S;
    }

    public boolean y1() {
        return this.f70844h0;
    }

    public final void z1() {
        this.f70828R = true;
    }

    public FloatingPanelArea(float x10, float y10, float width, float height) {
        super(x10, y10, width, height);
        this.f70825O = true;
        this.f70826P = -1;
        this.f70827Q = -1;
        this.f70828R = true;
        this.f70829S = true;
        this.f70834X = false;
        this.f70835Y = false;
        this.f70836Z = false;
        this.f70839c0 = true;
        this.f70841e0 = new SteppedArrayList();
        this.f70842f0 = false;
        this.f70843g0 = 0.0f;
        this.f70846j0 = new a();
        super.z0(N7.c.t().getResources().getDimension(R.dimen.editor3d_v2_floating_panel_horizontal_outline_panel_reducer));
        super.G0(N7.c.t().getResources().getDimension(R.dimen.editor3d_v2_floating_panel_vertical_outline_panel_reducer));
        this.floatingX = Nc.b.I(x10);
        this.floatingY = Nc.b.I(y10);
        this.floatingW = Nc.b.I(width);
        this.floatingH = Nc.b.I(height);
    }
}
