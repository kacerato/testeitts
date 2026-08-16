package com.itsmagic.engine.Activities.Editor.Interface.Areas;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.Area;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Utils.z;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine2.R;
import i4.C13580a;
import i4.InterfaceC13584e;
import j4.EnumC13805a;
import j4.EnumC13806b;
import k4.InterfaceC13936b;
import l4.C14051a;
import l4.c;
import org.json.JSONException;
import org.json.JSONObject;
import p4.InterfaceC14926a;

public class SplitArea extends Area {

    public static final String f70795u = "SplitArea";

    public static final Class f70796v = SplitArea.class;

    public EnumC13805a f70797b;

    public float f70798c;

    public C14051a f70799d;

    @Expose
    public float divisionPercentage;

    public l4.c f70800e;

    public C13580a f70801f;

    public FrameLayout f70802g;

    @Expose
    public float f70803h;

    public Context f70804i;

    public Activity f70805j;

    public final InterfaceC14926a f70806k;

    public k4.d f70807l;

    public final k4.d f70808m;

    public final k4.d f70809n;

    public final InterfaceC13936b f70810o;

    public InterfaceC13584e f70811p;

    @Expose
    public PanelArea panelArea;

    public FloatingPanelArea f70812q;

    public FloatingPanelArea f70813r;

    public FloatingPanelArea f70814s;

    @Expose
    public EnumC13805a serializedCloseDirection;

    @Expose
    public Area splitArea1;

    @Expose
    public Area splitArea2;

    @Expose
    public EnumC13806b splitDirection;

    public FloatingPanelArea f70815t;

    @Expose
    public float f70816w;

    @Expose
    public float f70817x;

    @Expose
    public float f70818y;

    public class a extends Area.a {
        @Override
        public Class b() {
            return SplitArea.f70796v;
        }

        @Override
        public String c() {
            return SplitArea.f70795u;
        }

        @Override
        public Area d(String json) {
            return SplitArea.b0(json);
        }
    }

    public class b implements InterfaceC14926a {
        public b() {
        }

        @Override
        public void a(float v10, Context context) {
            SplitArea.this.a0(v10, context);
        }

        @Override
        public InterfaceC13584e b() {
            return SplitArea.this.f70811p;
        }

        @Override
        public int c() {
            return (int) (SplitArea.this.f70801f.f91407a * SplitArea.this.f70816w);
        }

        @Override
        public int d() {
            return (int) (SplitArea.this.f70801f.f91408b * SplitArea.this.f70803h);
        }

        @Override
        public float e() {
            return SplitArea.this.divisionPercentage;
        }

        @Override
        public void f(PanelArea panelArea) {
        }
    }

    public class c implements k4.d {
        public c() {
        }

        @Override
        public EnumC13805a a() {
            return SplitArea.this.f70797b;
        }

        @Override
        public EnumC13806b b() {
            return SplitArea.this.splitDirection;
        }

        @Override
        public void c(Area to) {
            SplitArea splitArea = SplitArea.this;
            splitArea.splitArea1 = to;
            splitArea.Z(splitArea.f70802g, SplitArea.this.f70807l);
        }

        @Override
        public void d() {
            if (isClosed()) {
                SplitArea splitArea = SplitArea.this;
                splitArea.f70797b = EnumC13805a.None;
                splitArea.Y();
            }
        }

        @Override
        public boolean isClosed() {
            return SplitArea.this.f70797b == EnumC13805a.CloseUp;
        }

        @Override
        public void toggle() {
            if (isClosed()) {
                SplitArea.this.f70797b = EnumC13805a.None;
            } else {
                SplitArea.this.f70797b = EnumC13805a.CloseUp;
            }
            SplitArea.this.Y();
        }
    }

    public class d implements k4.d {
        public d() {
        }

        @Override
        public EnumC13805a a() {
            return SplitArea.this.f70797b;
        }

        @Override
        public EnumC13806b b() {
            return SplitArea.this.splitDirection;
        }

        @Override
        public void c(Area to) {
            SplitArea splitArea = SplitArea.this;
            splitArea.splitArea2 = to;
            splitArea.Z(splitArea.f70802g, SplitArea.this.f70807l);
        }

        @Override
        public void d() {
            if (isClosed()) {
                SplitArea splitArea = SplitArea.this;
                splitArea.f70797b = EnumC13805a.None;
                splitArea.Y();
            }
        }

        @Override
        public boolean isClosed() {
            return SplitArea.this.f70797b == EnumC13805a.CloseDown;
        }

        @Override
        public void toggle() {
            if (isClosed()) {
                SplitArea.this.f70797b = EnumC13805a.None;
            } else {
                SplitArea.this.f70797b = EnumC13805a.CloseDown;
            }
            SplitArea.this.Y();
        }
    }

    public class e implements InterfaceC13936b {
        public e() {
        }

        @Override
        public EnumC13805a a() {
            return SplitArea.this.f70797b;
        }

        @Override
        public EnumC13806b b() {
            return SplitArea.this.splitDirection;
        }

        @Override
        public SplitArea c() {
            return SplitArea.this;
        }

        @Override
        public void d() {
            SplitArea splitArea = SplitArea.this;
            splitArea.f70797b = EnumC13805a.None;
            splitArea.f70807l.d();
        }

        @Override
        public EnumC13806b e() {
            return SplitArea.this.f70807l.b();
        }

        @Override
        public EnumC13805a f() {
            return SplitArea.this.f70807l.a();
        }

        @Override
        public boolean isClosed() {
            return SplitArea.this.f70807l.isClosed();
        }

        @Override
        public void toggle() {
            SplitArea.this.f70807l.toggle();
        }
    }

    public class f implements Runnable {

        public final EnumC13805a f70823b;

        public f(final EnumC13805a val$pnd) {
            this.f70823b = val$pnd;
        }

        @Override
        public void run() {
            SplitArea splitArea = SplitArea.this;
            splitArea.f70797b = this.f70823b;
            splitArea.Y();
        }
    }

    static {
        Area.a(new a());
    }

    public SplitArea() {
        super(f70795u);
        this.splitDirection = EnumC13806b.None;
        this.f70797b = EnumC13805a.None;
        this.divisionPercentage = 0.5f;
        this.f70806k = new b();
        this.f70808m = new c();
        this.f70809n = new d();
        this.f70810o = new e();
    }

    public static SplitArea b0(String json) {
        try {
            SplitArea splitArea = (SplitArea) X7.a.m().fromJson(json, SplitArea.class);
            if (splitArea != null) {
                splitArea.f70797b = EnumC13805a.None;
                try {
                    JSONObject jSONObject = new JSONObject(json);
                    if (jSONObject.has("splitArea1")) {
                        splitArea.splitArea1 = b0(jSONObject.getJSONObject("splitArea1").toString());
                    }
                    if (jSONObject.has("splitArea2")) {
                        splitArea.splitArea2 = b0(jSONObject.getJSONObject("splitArea2").toString());
                    }
                    if (jSONObject.has("panelArea")) {
                        splitArea.panelArea = PanelArea.w(jSONObject.getJSONObject("panelArea").toString());
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            return splitArea;
        } catch (JsonSyntaxException e11) {
            throw new ComponentDeserializeException(e11);
        }
    }

    @Override
    public void A() {
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.a(this.f70802g);
        }
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.a(this.f70802g);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.u0();
        }
        Area area = this.splitArea1;
        if (area != null) {
            area.A();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.A();
        }
        FloatingPanelArea floatingPanelArea = this.f70812q;
        if (floatingPanelArea != null) {
            floatingPanelArea.u0();
        }
        FloatingPanelArea floatingPanelArea2 = this.f70813r;
        if (floatingPanelArea2 != null) {
            floatingPanelArea2.u0();
        }
        FloatingPanelArea floatingPanelArea3 = this.f70814s;
        if (floatingPanelArea3 != null) {
            floatingPanelArea3.u0();
        }
        FloatingPanelArea floatingPanelArea4 = this.f70815t;
        if (floatingPanelArea4 != null) {
            floatingPanelArea4.u0();
        }
    }

    @Override
    public boolean B(n4.f panelIntent) {
        PanelArea panelArea = this.panelArea;
        if (panelArea != null && panelArea.w0(panelIntent)) {
            return true;
        }
        Area area = this.splitArea1;
        if (area != null && area.B(panelIntent)) {
            return true;
        }
        Area area2 = this.splitArea2;
        return area2 != null && area2.B(panelIntent);
    }

    @Override
    public JsonElement C(Context context) {
        return super.C(context);
    }

    @Override
    public void D(EnumC13805a closeDirection) {
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.y0(closeDirection);
        }
    }

    @Override
    public void E() {
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.A0();
        }
    }

    @Override
    public void F(float w10, float h10) {
        this.f70816w = w10;
        this.f70803h = h10;
    }

    @Override
    public void G(EditorPanel panel) {
        Area area = this.splitArea1;
        if (area != null) {
            area.G(panel);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.G(panel);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea == null || !panelArea.s(panel)) {
            return;
        }
        this.panelArea.D0(panel);
    }

    @Override
    public void H(Panel panel) {
        Area area = this.splitArea1;
        if (area != null) {
            area.H(panel);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.H(panel);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea == null || !panelArea.t(panel)) {
            return;
        }
        this.panelArea.E0(panel);
    }

    @Override
    public void I() {
        Area area = this.splitArea1;
        if (area != null) {
            area.I();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.I();
        }
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.g();
        }
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.g();
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.K0();
        }
    }

    @Override
    public void J() {
        Area area = this.splitArea1;
        if (area != null) {
            area.J();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.J();
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.M0();
        }
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.h();
        }
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.h();
        }
    }

    @Override
    public void K() {
        Area area = this.splitArea1;
        if (area != null) {
            area.K();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.K();
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.S0();
        }
    }

    @Override
    public void L(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sw, float sh2, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener, k4.d parentSplitAreaConnector, int depth, boolean stepLerp) {
        EnumC13805a enumC13805a;
        this.f70817x = sx;
        this.f70818y = sy;
        this.f70816w = sw;
        this.f70803h = sh2;
        this.f70805j = activity;
        this.f70804i = context;
        this.f70811p = panelsControllerListener;
        this.f70807l = parentSplitAreaConnector;
        this.f70802g = screenArea;
        this.f70801f = editor3DScreen;
        a0(this.divisionPercentage, context);
        T(context, editor3DScreen);
        if (Z(screenArea, parentSplitAreaConnector)) {
            return;
        }
        EnumC13806b enumC13806b = this.splitDirection;
        if (enumC13806b == EnumC13806b.Horizontal) {
            this.panelArea = null;
            if (this.splitArea1 == null || this.splitArea2 == null) {
                throw new NullPointerException("Split area cant be HORIZONTAL spliced without 2 children split areas");
            }
            float X10 = (this.f70798c * sw) - (X(editor3DScreen, context) / 2.0f);
            int i10 = depth + 1;
            this.splitArea1.L(screenArea, activity, context, layoutInflater, sx, sy, X10 - (X(editor3DScreen, context) / 2.0f), sh2, editor3DScreen, panelsControllerListener, this.f70808m, i10, stepLerp);
            this.splitArea2.L(screenArea, activity, context, layoutInflater, sx + X10 + (X(editor3DScreen, context) / 2.0f), sy, (sw - X10) - (X(editor3DScreen, context) / 2.0f), sh2, editor3DScreen, panelsControllerListener, this.f70809n, i10, stepLerp);
            l0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, X10, stepLerp);
            m0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, X10, stepLerp);
            enumC13805a = null;
        } else if (enumC13806b == EnumC13806b.Vertical) {
            this.panelArea = null;
            if (this.splitArea1 == null || this.splitArea2 == null) {
                throw new NullPointerException("Split area cant be VERTICAL spliced without 2 children split areas");
            }
            float X11 = (this.f70798c * sh2) - (X(editor3DScreen, context) / 2.0f);
            int i11 = depth + 1;
            this.splitArea1.L(screenArea, activity, context, layoutInflater, sx, sy, sw, X11 - (X(editor3DScreen, context) / 2.0f), editor3DScreen, panelsControllerListener, this.f70808m, i11, stepLerp);
            this.splitArea2.L(screenArea, activity, context, layoutInflater, sx, sy + X11 + (X(editor3DScreen, context) / 2.0f), sw, (sh2 - X11) - (X(editor3DScreen, context) / 2.0f), editor3DScreen, panelsControllerListener, this.f70809n, i11, stepLerp);
            enumC13805a = null;
            n0(screenArea, activity, context, layoutInflater, sx, sy, sw, editor3DScreen, X11, stepLerp);
            o0(screenArea, activity, context, layoutInflater, sx, sy, sw, editor3DScreen, X11, stepLerp);
        } else {
            enumC13805a = null;
            if (enumC13806b == EnumC13806b.None) {
                this.splitArea1 = null;
                this.splitArea2 = null;
                PanelArea panelArea = this.panelArea;
                if (panelArea == null) {
                    throw new NullPointerException("Split area cant be NONE spliced without a panel");
                }
                panelArea.f70757x = sx;
                panelArea.f70758y = sy;
                panelArea.width = sw;
                panelArea.height = sh2;
                if (stepLerp) {
                    panelArea.M0();
                }
                this.panelArea.U0(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener, this.f70810o, !parentSplitAreaConnector.isClosed());
            }
        }
        FloatingPanelArea floatingPanelArea = this.f70812q;
        if (floatingPanelArea != null) {
            floatingPanelArea.R1(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
        }
        FloatingPanelArea floatingPanelArea2 = this.f70814s;
        if (floatingPanelArea2 != null) {
            floatingPanelArea2.R1(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
        }
        FloatingPanelArea floatingPanelArea3 = this.f70815t;
        if (floatingPanelArea3 != null) {
            floatingPanelArea3.R1(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
        }
        FloatingPanelArea floatingPanelArea4 = this.f70813r;
        if (floatingPanelArea4 != null) {
            floatingPanelArea4.R1(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
        }
        EnumC13805a enumC13805a2 = this.serializedCloseDirection;
        if (enumC13805a2 != null) {
            this.serializedCloseDirection = enumC13805a;
            N7.c.c0(new f(enumC13805a2));
        }
    }

    public final void T(Context context, C13580a editor3DScreen) {
        float e02;
        float f10;
        float e03;
        float f11;
        EnumC13805a enumC13805a = this.f70797b;
        if (enumC13805a == EnumC13805a.CloseUp) {
            this.f70798c = 0.0f;
            if (this.splitDirection == EnumC13806b.Horizontal) {
                e03 = i0(context, editor3DScreen);
                f11 = this.f70816w;
            } else {
                e03 = e0(context, editor3DScreen);
                f11 = this.f70803h;
            }
            float f12 = e03 * (1.0f / f11);
            this.f70798c = Nc.b.E(f12, this.f70798c, 1.0f - f12);
            return;
        }
        if (enumC13805a != EnumC13805a.CloseDown) {
            this.f70798c = this.divisionPercentage;
            return;
        }
        this.f70798c = 1.0f;
        if (this.splitDirection == EnumC13806b.Horizontal) {
            e02 = i0(context, editor3DScreen);
            f10 = this.f70816w;
        } else {
            e02 = e0(context, editor3DScreen);
            f10 = this.f70803h;
        }
        float f13 = e02 * (1.0f / f10);
        this.f70798c = Nc.b.E(f13, this.f70798c, 1.0f - f13);
    }

    public final float U(C13580a editor3DScreen, Context context) {
        float l02 = Nc.b.l0(12, context);
        int i10 = (int) l02;
        if (!Nc.b.J0(i10)) {
            l02 = i10 + 1.0f;
        }
        return l02 / (this.splitDirection == EnumC13806b.Horizontal ? editor3DScreen.f91407a : editor3DScreen.f91408b);
    }

    public final float V(C13580a editor3DScreen, Context context, int pixels) {
        return pixels / editor3DScreen.f91407a;
    }

    public final float W(C13580a editor3DScreen, Context context, int pixels) {
        float l02 = Nc.b.l0(pixels, context);
        int i10 = (int) l02;
        if (!Nc.b.J0(i10)) {
            l02 = i10 + 1.0f;
        }
        return l02 / editor3DScreen.f91407a;
    }

    public final float X(C13580a editor3DScreen, Context context) {
        float l02 = Nc.b.l0(2, context);
        int i10 = (int) l02;
        if (!Nc.b.J0(i10)) {
            l02 = i10 + 1.0f;
        }
        return l02 / (this.splitDirection == EnumC13806b.Horizontal ? editor3DScreen.f91407a : editor3DScreen.f91408b);
    }

    public final void Y() {
        if (this.splitDirection == EnumC13806b.Horizontal) {
            EnumC13805a enumC13805a = this.f70797b;
            if (enumC13805a == EnumC13805a.CloseDown) {
                Area area = this.splitArea1;
                if (area != null) {
                    area.E();
                }
                Area area2 = this.splitArea2;
                if (area2 != null) {
                    area2.D(this.f70797b);
                    return;
                }
                return;
            }
            if (enumC13805a == EnumC13805a.CloseUp) {
                Area area3 = this.splitArea1;
                if (area3 != null) {
                    area3.D(enumC13805a);
                }
                Area area4 = this.splitArea2;
                if (area4 != null) {
                    area4.E();
                    return;
                }
                return;
            }
            Area area5 = this.splitArea1;
            if (area5 != null) {
                area5.E();
            }
            Area area6 = this.splitArea2;
            if (area6 != null) {
                area6.E();
            }
        }
    }

    public final boolean Z(FrameLayout screenArea, k4.d splitAreaToParentSplitArea) {
        if (this.splitDirection != EnumC13806b.None) {
            Area area = this.splitArea1;
            boolean l10 = area != null ? area.l() : false;
            Area area2 = this.splitArea2;
            boolean l11 = area2 != null ? area2.l() : false;
            if (l10 && !l11) {
                Area area3 = this.splitArea2;
                if (area3 != null) {
                    area3.h(screenArea);
                    this.splitArea2 = null;
                }
                C14051a c14051a = this.f70799d;
                if (c14051a != null) {
                    c14051a.b(screenArea);
                    this.f70799d = null;
                }
                l4.c cVar = this.f70800e;
                if (cVar != null) {
                    cVar.b(screenArea);
                    this.f70800e = null;
                }
                Area area4 = this.splitArea1;
                if (area4 != null) {
                    area4.E();
                }
                splitAreaToParentSplitArea.c(this.splitArea1);
                return true;
            }
            if (!l10 && l11) {
                Area area5 = this.splitArea1;
                if (area5 != null) {
                    area5.h(screenArea);
                    this.splitArea1 = null;
                }
                C14051a c14051a2 = this.f70799d;
                if (c14051a2 != null) {
                    c14051a2.b(screenArea);
                    this.f70799d = null;
                }
                l4.c cVar2 = this.f70800e;
                if (cVar2 != null) {
                    cVar2.b(screenArea);
                    this.f70800e = null;
                }
                Area area6 = this.splitArea2;
                if (area6 != null) {
                    area6.E();
                }
                splitAreaToParentSplitArea.c(this.splitArea2);
                return true;
            }
            if (!l10 && !l11) {
                Area area7 = this.splitArea1;
                if (area7 != null) {
                    area7.h(screenArea);
                    this.splitArea1 = null;
                }
                Area area8 = this.splitArea2;
                if (area8 != null) {
                    area8.h(screenArea);
                    this.splitArea2 = null;
                }
                C14051a c14051a3 = this.f70799d;
                if (c14051a3 != null) {
                    c14051a3.b(screenArea);
                    this.f70799d = null;
                }
                l4.c cVar3 = this.f70800e;
                if (cVar3 != null) {
                    cVar3.b(screenArea);
                    this.f70800e = null;
                }
                splitAreaToParentSplitArea.c(null);
                return true;
            }
        } else {
            PanelArea panelArea = this.panelArea;
            if (panelArea == null || !panelArea.R()) {
                PanelArea panelArea2 = this.panelArea;
                if (panelArea2 != null) {
                    panelArea2.A(screenArea);
                    this.panelArea = null;
                }
                C14051a c14051a4 = this.f70799d;
                if (c14051a4 != null) {
                    c14051a4.b(screenArea);
                    this.f70799d = null;
                }
                l4.c cVar4 = this.f70800e;
                if (cVar4 != null) {
                    cVar4.b(screenArea);
                    this.f70800e = null;
                }
                splitAreaToParentSplitArea.c(null);
                return true;
            }
        }
        return false;
    }

    public final void a0(float v10, Context context) {
        float e02;
        float f10;
        if (this.splitDirection == EnumC13806b.Horizontal) {
            e02 = i0(context, this.f70801f);
            f10 = this.f70816w;
        } else {
            e02 = e0(context, this.f70801f);
            f10 = this.f70803h;
        }
        float f11 = e02 * (1.0f / f10);
        float E10 = Nc.b.E(f11, v10, 1.0f - f11);
        this.divisionPercentage = E10;
        this.divisionPercentage = Nc.b.I(E10);
    }

    @Override
    public void b(Panel panel) {
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.h(panel);
            return;
        }
        Area area = this.splitArea1;
        if (area != null) {
            area.b(panel);
            return;
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.b(panel);
        }
    }

    @Override
    public void c(o4.e panelsBundle) {
        super.c(panelsBundle);
        Area area = this.splitArea1;
        if (area != null) {
            area.c(panelsBundle);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.c(panelsBundle);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.k(panelsBundle);
        }
    }

    public final float c0() {
        return e0(this.f70804i, this.f70801f);
    }

    @Override
    public void d(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sw, float sh2, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        InterfaceC13584e interfaceC13584e;
        this.f70817x = sx;
        this.f70818y = sy;
        this.f70816w = sw;
        this.f70803h = sh2;
        this.f70805j = activity;
        this.f70801f = editor3DScreen;
        EnumC13806b enumC13806b = this.splitDirection;
        if (enumC13806b == EnumC13806b.Horizontal) {
            if (this.splitArea1 == null || this.splitArea2 == null) {
                throw new NullPointerException("Split area cant be HORIZONTAL spliced without 2 children split areas");
            }
            float U10 = (this.f70798c * sw) - (U(editor3DScreen, context) / 2.0f);
            this.splitArea1.d(screenArea, activity, context, layoutInflater, sx, sy, U10, sh2, editor3DScreen, panelsControllerListener);
            this.splitArea2.d(screenArea, activity, context, layoutInflater, sx + U10 + (U(editor3DScreen, context) / 2.0f), sy, sw - U10, sh2, editor3DScreen, panelsControllerListener);
            return;
        }
        if (enumC13806b == EnumC13806b.Vertical) {
            if (this.splitArea1 == null || this.splitArea2 == null) {
                throw new NullPointerException("Split area cant be VERTICAL spliced without 2 children split areas");
            }
            float U11 = (this.f70798c * sh2) - (U(editor3DScreen, context) / 2.0f);
            this.splitArea1.d(screenArea, activity, context, layoutInflater, sx, sy, sw, U11, editor3DScreen, panelsControllerListener);
            this.splitArea2.d(screenArea, activity, context, layoutInflater, sx, sy + U11 + (U(editor3DScreen, context) / 2.0f), sw, sh2 - U11, editor3DScreen, panelsControllerListener);
            return;
        }
        if (enumC13806b == EnumC13806b.None) {
            PanelArea panelArea = this.panelArea;
            if (panelArea == null) {
                throw new NullPointerException("Split area cant be NONE spliced without a panel");
            }
            panelArea.f70757x = sx;
            panelArea.f70758y = sy;
            panelArea.width = sw;
            panelArea.height = sh2;
            panelArea.l(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
            if (this.f70807l.isClosed()) {
                return;
            }
            if (sh2 <= c0() * 6.0f) {
                if (sw <= g0() * 6.0f) {
                    if (this.f70813r == null) {
                        m4.b bVar = new m4.b(sx, d0(8) + sy, sw, sh2 - d0(8));
                        this.f70813r = bVar;
                        bVar.f70825O = false;
                        bVar.M0();
                        panelsControllerListener.s(this.f70813r);
                        return;
                    }
                    return;
                }
                if (this.f70815t == null) {
                    m4.b bVar2 = new m4.b(sx, (sh2 / 4.0f) + sy + (d0(8) / 2.0f), sw / 4.0f, sh2 / 2.0f);
                    this.f70815t = bVar2;
                    bVar2.f70825O = false;
                    bVar2.M0();
                    panelsControllerListener.s(this.f70815t);
                }
                if (this.f70813r == null) {
                    float f10 = sw / 4.0f;
                    m4.b bVar3 = new m4.b((sx + sw) - f10, (sh2 / 4.0f) + sy + (d0(8) / 2.0f), f10, sh2 / 2.0f);
                    this.f70813r = bVar3;
                    bVar3.f70825O = false;
                    bVar3.M0();
                    panelsControllerListener.s(this.f70813r);
                    return;
                }
                return;
            }
            if (this.f70812q == null) {
                m4.b bVar4 = new m4.b((sw / 4.0f) + sx, d0(8) + sy, sw / 2.0f, sh2 / 3.0f);
                this.f70812q = bVar4;
                bVar4.f70825O = false;
                bVar4.M0();
                interfaceC13584e = panelsControllerListener;
                interfaceC13584e.s(this.f70812q);
            } else {
                interfaceC13584e = panelsControllerListener;
            }
            if (this.f70814s == null) {
                float f11 = sh2 / 3.0f;
                m4.b bVar5 = new m4.b((sw / 4.0f) + sx, (sy + sh2) - f11, sw / 2.0f, f11);
                this.f70814s = bVar5;
                bVar5.f70825O = false;
                bVar5.M0();
                interfaceC13584e.s(this.f70814s);
            }
            if (sw > g0() * 6.0f) {
                if (this.f70815t == null) {
                    m4.b bVar6 = new m4.b(sx, (sh2 / 4.0f) + sy + (d0(8) / 2.0f), sw / 4.0f, sh2 / 2.0f);
                    this.f70815t = bVar6;
                    bVar6.f70825O = false;
                    bVar6.M0();
                    interfaceC13584e.s(this.f70815t);
                }
                if (this.f70813r == null) {
                    float f12 = sw / 4.0f;
                    m4.b bVar7 = new m4.b((sx + sw) - f12, (sh2 / 4.0f) + sy + (d0(8) / 2.0f), f12, sh2 / 2.0f);
                    this.f70813r = bVar7;
                    bVar7.f70825O = false;
                    bVar7.M0();
                    interfaceC13584e.s(this.f70813r);
                }
            }
        }
    }

    public final float d0(int incrementDP) {
        return f0(this.f70804i, this.f70801f, incrementDP);
    }

    @Override
    public void e(o4.e panelsBundle) {
        super.e(panelsBundle);
        Area area = this.splitArea1;
        if (area != null) {
            area.e(panelsBundle);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.e(panelsBundle);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.n(panelsBundle);
        }
    }

    public final float e0(Context context, C13580a editor3DScreen) {
        return f0(context, editor3DScreen, 6);
    }

    @Override
    public void f(FrameLayout screenArea) {
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.a(screenArea);
        }
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.a(screenArea);
        }
        Area area = this.splitArea1;
        if (area != null) {
            area.f(screenArea);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.f(screenArea);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.v(screenArea);
        }
        FloatingPanelArea floatingPanelArea = this.f70812q;
        if (floatingPanelArea != null) {
            floatingPanelArea.u0();
        }
        FloatingPanelArea floatingPanelArea2 = this.f70813r;
        if (floatingPanelArea2 != null) {
            floatingPanelArea2.u0();
        }
        FloatingPanelArea floatingPanelArea3 = this.f70814s;
        if (floatingPanelArea3 != null) {
            floatingPanelArea3.u0();
        }
        FloatingPanelArea floatingPanelArea4 = this.f70815t;
        if (floatingPanelArea4 != null) {
            floatingPanelArea4.u0();
        }
    }

    public final float f0(Context context, C13580a editor3DScreen, int incrementDP) {
        return (context.getResources().getDimension(R.dimen.editor3d_v2_panel_tittle_total) + Nc.b.l0(incrementDP, context)) / editor3DScreen.f91408b;
    }

    public final float g0() {
        return i0(this.f70804i, this.f70801f);
    }

    @Override
    public void h(FrameLayout screenArea) {
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.b(screenArea);
        }
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.b(screenArea);
        }
        Area area = this.splitArea1;
        if (area != null) {
            area.h(screenArea);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.h(screenArea);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.A(screenArea);
        }
        FloatingPanelArea floatingPanelArea = this.f70812q;
        if (floatingPanelArea != null) {
            floatingPanelArea.u0();
        }
        FloatingPanelArea floatingPanelArea2 = this.f70813r;
        if (floatingPanelArea2 != null) {
            floatingPanelArea2.u0();
        }
        FloatingPanelArea floatingPanelArea3 = this.f70814s;
        if (floatingPanelArea3 != null) {
            floatingPanelArea3.u0();
        }
        FloatingPanelArea floatingPanelArea4 = this.f70815t;
        if (floatingPanelArea4 != null) {
            floatingPanelArea4.u0();
        }
    }

    public final float h0(int incrementDP) {
        return j0(this.f70804i, this.f70801f, incrementDP);
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0363 A[Catch: NullPointerException -> 0x0074, TryCatch #0 {NullPointerException -> 0x0074, blocks: (B:3:0x0010, B:5:0x0023, B:7:0x0027, B:9:0x002b, B:10:0x0376, B:13:0x037e, B:14:0x0381, B:15:0x0384, B:18:0x038a, B:19:0x038d, B:20:0x0390, B:23:0x0396, B:24:0x0399, B:25:0x039c, B:28:0x03a2, B:29:0x03a5, B:33:0x0077, B:34:0x007e, B:35:0x007f, B:37:0x0084, B:39:0x0088, B:41:0x008c, B:42:0x00da, B:43:0x00e1, B:44:0x00e2, B:46:0x00eb, B:48:0x00ef, B:50:0x0110, B:52:0x0116, B:54:0x0120, B:56:0x019f, B:57:0x01a2, B:59:0x01a6, B:60:0x01b2, B:62:0x01b6, B:64:0x01c2, B:66:0x023b, B:67:0x023e, B:69:0x0242, B:70:0x024d, B:72:0x0251, B:74:0x025b, B:76:0x02d5, B:77:0x02d8, B:79:0x02dc, B:80:0x02e2, B:82:0x02e6, B:84:0x02f0, B:86:0x0363, B:87:0x0366, B:89:0x036a, B:95:0x036e, B:96:0x0375), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x036a A[Catch: NullPointerException -> 0x0074, TryCatch #0 {NullPointerException -> 0x0074, blocks: (B:3:0x0010, B:5:0x0023, B:7:0x0027, B:9:0x002b, B:10:0x0376, B:13:0x037e, B:14:0x0381, B:15:0x0384, B:18:0x038a, B:19:0x038d, B:20:0x0390, B:23:0x0396, B:24:0x0399, B:25:0x039c, B:28:0x03a2, B:29:0x03a5, B:33:0x0077, B:34:0x007e, B:35:0x007f, B:37:0x0084, B:39:0x0088, B:41:0x008c, B:42:0x00da, B:43:0x00e1, B:44:0x00e2, B:46:0x00eb, B:48:0x00ef, B:50:0x0110, B:52:0x0116, B:54:0x0120, B:56:0x019f, B:57:0x01a2, B:59:0x01a6, B:60:0x01b2, B:62:0x01b6, B:64:0x01c2, B:66:0x023b, B:67:0x023e, B:69:0x0242, B:70:0x024d, B:72:0x0251, B:74:0x025b, B:76:0x02d5, B:77:0x02d8, B:79:0x02dc, B:80:0x02e2, B:82:0x02e6, B:84:0x02f0, B:86:0x0363, B:87:0x0366, B:89:0x036a, B:95:0x036e, B:96:0x0375), top: B:2:0x0010 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void i(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sw, float sh2, C13580a editor3DScreen, InterfaceC13584e panelsControllerListener) {
        Point point;
        Panel panel;
        EnumC13806b enumC13806b;
        C13580a c13580a;
        EnumC13806b enumC13806b2;
        Point point2;
        Panel panel2;
        FloatingPanelArea floatingPanelArea;
        EnumC13806b enumC13806b3;
        FloatingPanelArea floatingPanelArea2;
        C14051a c14051a;
        l4.c cVar;
        try {
            this.f70817x = sx;
            this.f70818y = sy;
            this.f70816w = sw;
            this.f70803h = sh2;
            this.f70801f = editor3DScreen;
            EnumC13806b enumC13806b4 = this.splitDirection;
            EnumC13806b enumC13806b5 = EnumC13806b.Horizontal;
            if (enumC13806b4 != enumC13806b5) {
                EnumC13806b enumC13806b6 = EnumC13806b.Vertical;
                if (enumC13806b4 == enumC13806b6) {
                    if (this.splitArea1 == null || this.splitArea2 == null) {
                        throw new NullPointerException("Split area cant be VERTICAL spliced without 2 children split areas");
                    }
                    float U10 = (this.f70798c * sh2) - (U(editor3DScreen, context) / 2.0f);
                    this.splitArea1.i(screenArea, activity, context, layoutInflater, sx, sy, sw, U10, editor3DScreen, panelsControllerListener);
                    this.splitArea2.i(screenArea, activity, context, layoutInflater, sx, sy + U10 + (U(editor3DScreen, context) / 2.0f), sw, sh2 - U10, editor3DScreen, panelsControllerListener);
                } else if (enumC13806b4 == EnumC13806b.None) {
                    PanelArea panelArea = this.panelArea;
                    if (panelArea == null) {
                        throw new NullPointerException("Split area cant be NONE spliced without a panel");
                    }
                    panelArea.f70757x = sx;
                    panelArea.f70758y = sy;
                    panelArea.width = sw;
                    panelArea.height = sh2;
                    panelArea.C(screenArea, activity, context, layoutInflater, editor3DScreen, panelsControllerListener);
                    Panel v10 = panelsControllerListener.v();
                    Point w10 = panelsControllerListener.w();
                    if (v10 != null) {
                        FloatingPanelArea floatingPanelArea3 = this.f70812q;
                        if (floatingPanelArea3 == null || !z.c(floatingPanelArea3.M(), w10)) {
                            point = w10;
                            panel = v10;
                            enumC13806b = enumC13806b5;
                            c13580a = editor3DScreen;
                            enumC13806b2 = enumC13806b6;
                        } else {
                            v10.o0();
                            this.splitDirection = enumC13806b6;
                            this.splitArea1 = new SplitArea(new PanelArea().h(v10).C0(v10));
                            this.splitArea2 = new SplitArea(this.panelArea);
                            this.panelArea = null;
                            this.divisionPercentage = 0.5f;
                            point = w10;
                            panel = v10;
                            enumC13806b = enumC13806b5;
                            enumC13806b2 = enumC13806b6;
                            n0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sh2) - (U(editor3DScreen, context) / 2.0f), false);
                            c13580a = editor3DScreen;
                            o0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sw) - (U(editor3DScreen, context) / 2.0f), false);
                            C14051a c14051a2 = this.f70799d;
                            if (c14051a2 != null) {
                                c14051a2.h();
                            }
                            l4.c cVar2 = this.f70800e;
                            if (cVar2 != null) {
                                cVar2.h();
                            }
                        }
                        FloatingPanelArea floatingPanelArea4 = this.f70814s;
                        if (floatingPanelArea4 != null) {
                            Point point3 = point;
                            if (z.c(floatingPanelArea4.M(), point3)) {
                                panel.o0();
                                this.splitDirection = enumC13806b2;
                                this.splitArea1 = new SplitArea(this.panelArea);
                                panel2 = panel;
                                this.splitArea2 = new SplitArea(new PanelArea().h(panel2).C0(panel2));
                                this.panelArea = null;
                                this.divisionPercentage = 0.5f;
                                point2 = point3;
                                n0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sh2) - (U(c13580a, context) / 2.0f), false);
                                o0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sw) - (U(c13580a, context) / 2.0f), false);
                                C14051a c14051a3 = this.f70799d;
                                if (c14051a3 != null) {
                                    c14051a3.h();
                                }
                                l4.c cVar3 = this.f70800e;
                                if (cVar3 != null) {
                                    cVar3.h();
                                }
                                floatingPanelArea = this.f70815t;
                                if (floatingPanelArea == null && z.c(floatingPanelArea.M(), point2)) {
                                    panel2.o0();
                                    EnumC13806b enumC13806b7 = enumC13806b;
                                    this.splitDirection = enumC13806b7;
                                    this.splitArea1 = new SplitArea(new PanelArea().h(panel2).C0(panel2));
                                    this.splitArea2 = new SplitArea(this.panelArea);
                                    this.panelArea = null;
                                    this.divisionPercentage = 0.5f;
                                    enumC13806b3 = enumC13806b7;
                                    l0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sw) - (U(c13580a, context) / 2.0f), false);
                                    m0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sw) - (U(c13580a, context) / 2.0f), false);
                                    C14051a c14051a4 = this.f70799d;
                                    if (c14051a4 != null) {
                                        c14051a4.h();
                                    }
                                    l4.c cVar4 = this.f70800e;
                                    if (cVar4 != null) {
                                        cVar4.h();
                                    }
                                } else {
                                    enumC13806b3 = enumC13806b;
                                }
                                floatingPanelArea2 = this.f70813r;
                                if (floatingPanelArea2 != null && z.c(floatingPanelArea2.M(), point2)) {
                                    panel2.o0();
                                    this.splitDirection = enumC13806b3;
                                    this.splitArea1 = new SplitArea(this.panelArea);
                                    this.splitArea2 = new SplitArea(new PanelArea().h(panel2).C0(panel2));
                                    this.panelArea = null;
                                    this.divisionPercentage = 0.5f;
                                    l0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sw) - (U(c13580a, context) / 2.0f), false);
                                    m0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sw) - (U(c13580a, context) / 2.0f), false);
                                    c14051a = this.f70799d;
                                    if (c14051a != null) {
                                        c14051a.h();
                                    }
                                    cVar = this.f70800e;
                                    if (cVar != null) {
                                        cVar.h();
                                    }
                                }
                            } else {
                                point2 = point3;
                            }
                        } else {
                            point2 = point;
                        }
                        panel2 = panel;
                        floatingPanelArea = this.f70815t;
                        if (floatingPanelArea == null) {
                        }
                        enumC13806b3 = enumC13806b;
                        floatingPanelArea2 = this.f70813r;
                        if (floatingPanelArea2 != null) {
                            panel2.o0();
                            this.splitDirection = enumC13806b3;
                            this.splitArea1 = new SplitArea(this.panelArea);
                            this.splitArea2 = new SplitArea(new PanelArea().h(panel2).C0(panel2));
                            this.panelArea = null;
                            this.divisionPercentage = 0.5f;
                            l0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sw) - (U(c13580a, context) / 2.0f), false);
                            m0(screenArea, activity, context, layoutInflater, sx, sy, sh2, editor3DScreen, (this.f70798c * sw) - (U(c13580a, context) / 2.0f), false);
                            c14051a = this.f70799d;
                            if (c14051a != null) {
                            }
                            cVar = this.f70800e;
                            if (cVar != null) {
                            }
                        }
                    }
                }
            } else {
                if (this.splitArea1 == null || this.splitArea2 == null) {
                    throw new NullPointerException("Split area cant be HORIZONTAL spliced without 2 children split areas");
                }
                float U11 = (this.f70798c * sw) - (U(editor3DScreen, context) / 2.0f);
                this.splitArea1.i(screenArea, activity, context, layoutInflater, sx, sy, U11, sh2, editor3DScreen, panelsControllerListener);
                this.splitArea2.i(screenArea, activity, context, layoutInflater, sx + U11 + (U(editor3DScreen, context) / 2.0f), sy, sw - U11, sh2, editor3DScreen, panelsControllerListener);
            }
            FloatingPanelArea floatingPanelArea5 = this.f70812q;
            if (floatingPanelArea5 != null) {
                if (panelsControllerListener != null) {
                    panelsControllerListener.b(floatingPanelArea5);
                }
                this.f70812q = null;
            }
            FloatingPanelArea floatingPanelArea6 = this.f70814s;
            if (floatingPanelArea6 != null) {
                if (panelsControllerListener != null) {
                    panelsControllerListener.b(floatingPanelArea6);
                }
                this.f70814s = null;
            }
            FloatingPanelArea floatingPanelArea7 = this.f70815t;
            if (floatingPanelArea7 != null) {
                if (panelsControllerListener != null) {
                    panelsControllerListener.b(floatingPanelArea7);
                }
                this.f70815t = null;
            }
            FloatingPanelArea floatingPanelArea8 = this.f70813r;
            if (floatingPanelArea8 != null) {
                if (panelsControllerListener != null) {
                    panelsControllerListener.b(floatingPanelArea8);
                }
                this.f70813r = null;
            }
        } catch (NullPointerException e10) {
            e10.printStackTrace();
        }
    }

    public final float i0(Context context, C13580a editor3DScreen) {
        return j0(context, editor3DScreen, 6);
    }

    @Override
    public void j(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        Area area = this.splitArea1;
        if (area != null) {
            area.j(engineUpdateData, panelsControllerListener);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.j(engineUpdateData, panelsControllerListener);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.D(engineUpdateData, panelsControllerListener);
        }
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.c();
        }
    }

    public final float j0(Context context, C13580a editor3DScreen, int incrementDP) {
        return (context.getResources().getDimension(R.dimen.editor3d_v2_panel_tittle_total) + Nc.b.l0(incrementDP, context)) / editor3DScreen.f91407a;
    }

    @Override
    public PanelArea k(EditorPanel editorPanel) {
        PanelArea k10;
        PanelArea k11;
        if (this.panelArea != null) {
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
        }
        Area area = this.splitArea1;
        if (area != null && (k11 = area.k(editorPanel)) != null) {
            return k11;
        }
        Area area2 = this.splitArea2;
        if (area2 == null || (k10 = area2.k(editorPanel)) == null) {
            return null;
        }
        return k10;
    }

    public void k0(EditorPanel newPanel) {
        float f10 = this.f70817x;
        float f11 = this.f70818y;
        float f12 = this.f70816w;
        float f13 = this.f70803h;
        LayoutInflater B10 = N7.c.B();
        Panel panel = new Panel(newPanel);
        this.splitDirection = EnumC13806b.Vertical;
        this.splitArea1 = new SplitArea(this.panelArea);
        this.splitArea2 = new SplitArea(new PanelArea().h(panel).C0(panel));
        this.panelArea = null;
        this.divisionPercentage = 0.5f;
        FrameLayout frameLayout = this.f70802g;
        Activity activity = this.f70805j;
        Context context = this.f70804i;
        C13580a c13580a = this.f70801f;
        n0(frameLayout, activity, context, B10, f10, f11, f13, c13580a, (this.f70798c * f13) - (U(c13580a, context) / 2.0f), false);
        FrameLayout frameLayout2 = this.f70802g;
        Activity activity2 = this.f70805j;
        Context context2 = this.f70804i;
        C13580a c13580a2 = this.f70801f;
        o0(frameLayout2, activity2, context2, B10, f10, f11, f13, c13580a2, (f12 * this.f70798c) - (U(c13580a2, context2) / 2.0f), false);
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.h();
        }
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.h();
        }
    }

    @Override
    public boolean l() {
        if (this.splitDirection != EnumC13806b.None) {
            return this.splitArea1.l() || this.splitArea2.l();
        }
        PanelArea panelArea = this.panelArea;
        return panelArea != null && panelArea.R();
    }

    public final void l0(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sh2, C13580a editor3DScreen, float w12, boolean stepLerp) {
        float U10 = (sx + w12) - (U(editor3DScreen, context) / 2.0f);
        float U11 = U(editor3DScreen, context);
        if (this.f70799d == null) {
            this.f70799d = new C14051a(this.f70806k);
        }
        this.f70799d.i(screenArea, activity, context, layoutInflater, U10, sy, U11, sh2, C14051a.EnumC1861a.Horizontal, editor3DScreen, stepLerp);
    }

    @Override
    public void m() {
        Area area = this.splitArea1;
        if (area != null) {
            area.m();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.m();
        }
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.d();
        }
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.c();
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.S();
        }
    }

    public final void m0(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sh2, C13580a editor3DScreen, float w12, boolean stepLerp) {
        float X10 = (sx + w12) - (X(editor3DScreen, context) / 2.0f);
        float X11 = X(editor3DScreen, context);
        if (this.f70800e == null) {
            this.f70800e = new l4.c(this.f70806k);
        }
        this.f70800e.i(screenArea, activity, context, layoutInflater, X10, sy, X11, sh2, c.a.Horizontal, editor3DScreen, stepLerp);
    }

    @Override
    public boolean n(EditorPanel editorPanel) {
        PanelArea panelArea = this.panelArea;
        if (panelArea != null && panelArea.g0(editorPanel)) {
            return true;
        }
        Area area = this.splitArea1;
        if (area != null && area.n(editorPanel)) {
            return true;
        }
        Area area2 = this.splitArea2;
        return area2 != null && area2.n(editorPanel);
    }

    public final void n0(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sw, C13580a editor3DScreen, float h12, boolean stepLerp) {
        float U10 = (sy + h12) - (U(editor3DScreen, context) / 2.0f);
        float U11 = U(editor3DScreen, context);
        if (this.f70799d == null) {
            this.f70799d = new C14051a(this.f70806k);
        }
        this.f70799d.i(screenArea, activity, context, layoutInflater, sx, U10, sw, U11, C14051a.EnumC1861a.Vertical, editor3DScreen, stepLerp);
    }

    @Override
    public void o() {
        Area area = this.splitArea1;
        if (area != null) {
            area.o();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.o();
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.h0();
        }
    }

    public final void o0(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, float sx, float sy, float sw, C13580a editor3DScreen, float h12, boolean stepLerp) {
        float X10 = (sy + h12) - (X(editor3DScreen, context) / 2.0f);
        float X11 = X(editor3DScreen, context);
        if (this.f70800e == null) {
            this.f70800e = new l4.c(this.f70806k);
        }
        this.f70800e.i(screenArea, activity, context, layoutInflater, sx, X10, sw, X11, c.a.Vertical, editor3DScreen, stepLerp);
    }

    @Override
    public void p(o4.b engineUpdateData, InterfaceC13584e panelsControllerListener) {
        Area area = this.splitArea1;
        if (area != null) {
            area.p(engineUpdateData, panelsControllerListener);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.p(engineUpdateData, panelsControllerListener);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.k0(engineUpdateData, panelsControllerListener);
        }
    }

    public SplitArea p0(EnumC13805a closeDirection) {
        this.serializedCloseDirection = closeDirection;
        return this;
    }

    @Override
    public void q() {
        Area area = this.splitArea1;
        if (area != null) {
            area.q();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.q();
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.l0();
        }
    }

    @Override
    public void r(String json, JSONObject jsonObj) {
        super.r(json, jsonObj);
    }

    @Override
    public void s() {
        super.s();
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.m0();
        }
        Area area = this.splitArea1;
        if (area != null) {
            area.s();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.s();
        }
    }

    @Override
    public void t() {
        this.serializedCloseDirection = this.f70797b;
        Area area = this.splitArea1;
        if (area != null) {
            area.t();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.t();
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.n0();
        }
    }

    @Override
    public void u() {
        Area area = this.splitArea1;
        if (area != null) {
            area.u();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.u();
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.o0();
        }
    }

    @Override
    public void v() {
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.p0();
        }
        Area area = this.splitArea1;
        if (area != null) {
            area.v();
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.v();
        }
    }

    @Override
    public void w() {
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.e();
        }
    }

    @Override
    public void x(k4.c listener) {
        Area area = this.splitArea1;
        if (area != null) {
            area.x(listener);
        }
        Area area2 = this.splitArea2;
        if (area2 != null) {
            area2.x(listener);
        }
        C14051a c14051a = this.f70799d;
        if (c14051a != null) {
            c14051a.f(listener);
        }
        l4.c cVar = this.f70800e;
        if (cVar != null) {
            cVar.f(listener);
        }
        PanelArea panelArea = this.panelArea;
        if (panelArea != null) {
            panelArea.r0(listener);
        }
    }

    @Override
    public boolean y(PanelArea panelArea) {
        PanelArea panelArea2 = this.panelArea;
        if (panelArea2 != null && panelArea2 == panelArea) {
            panelArea2.v(this.f70802g);
            return true;
        }
        Area area = this.splitArea1;
        if (area != null && area.y(panelArea)) {
            C14051a c14051a = this.f70799d;
            if (c14051a != null) {
                c14051a.b(this.f70802g);
            }
            this.f70799d = null;
            l4.c cVar = this.f70800e;
            if (cVar != null) {
                cVar.b(this.f70802g);
            }
            this.f70800e = null;
            this.splitArea1.f(this.f70802g);
            this.f70807l.c(this.splitArea2);
            return false;
        }
        Area area2 = this.splitArea2;
        if (area2 != null && area2.y(panelArea)) {
            C14051a c14051a2 = this.f70799d;
            if (c14051a2 != null) {
                c14051a2.b(this.f70802g);
            }
            this.f70799d = null;
            l4.c cVar2 = this.f70800e;
            if (cVar2 != null) {
                cVar2.b(this.f70802g);
            }
            this.f70800e = null;
            this.splitArea2.f(this.f70802g);
            this.f70807l.c(this.splitArea1);
        }
        return false;
    }

    @Override
    public boolean z(EditorPanel editorPanel) {
        PanelArea panelArea = this.panelArea;
        if (panelArea != null && panelArea.s0(editorPanel)) {
            return true;
        }
        Area area = this.splitArea1;
        if (area != null && area.z(editorPanel)) {
            return true;
        }
        Area area2 = this.splitArea2;
        return area2 != null && area2.z(editorPanel);
    }

    public SplitArea(PanelArea panelArea) {
        super(f70795u);
        this.splitDirection = EnumC13806b.None;
        this.f70797b = EnumC13805a.None;
        this.divisionPercentage = 0.5f;
        this.f70806k = new b();
        this.f70808m = new c();
        this.f70809n = new d();
        this.f70810o = new e();
        this.panelArea = panelArea;
    }

    public SplitArea(float divisionPercentage, EnumC13806b splitDirection, SplitArea splitArea1, SplitArea splitArea2) {
        super(f70795u);
        this.splitDirection = EnumC13806b.None;
        this.f70797b = EnumC13805a.None;
        this.divisionPercentage = 0.5f;
        this.f70806k = new b();
        this.f70808m = new c();
        this.f70809n = new d();
        this.f70810o = new e();
        this.divisionPercentage = divisionPercentage;
        this.splitDirection = splitDirection;
        this.splitArea1 = splitArea1;
        this.splitArea2 = splitArea2;
    }
}
