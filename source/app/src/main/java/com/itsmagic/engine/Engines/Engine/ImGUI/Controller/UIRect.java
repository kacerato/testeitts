package com.itsmagic.engine.Engines.Engine.ImGUI.Controller;

import C5.b;
import D5.n;
import F5.c;
import JAVARuntime.Color;
import JAVARuntime.Component;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import JAVARuntime.Point2;
import JAVARuntime.Vector3;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Vec2I;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.tonyodev.fetch2core.server.FileRequest;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class UIRect extends ImGuiComponent {

    public static final String f78081q1 = "UIRect";

    public static final Class f78082v1 = UIRect.class;

    public int f78083D0;

    public UIController f78084E;

    public final UVec2I f78085F;

    public final Vec2I f78086G;

    public final W9.c f78087H;

    public final W9.c f78088I;

    public final W9.a f78089J;

    public int f78090K;

    public int f78091L;

    public boolean f78092M;

    public int f78093N;

    public int f78094O;

    public int f78095P;

    public int f78096Q;

    public int f78097R;

    public int f78098S;

    public int f78099T;

    public int f78100U;

    public int f78101V;

    public int f78102W;

    public int f78103X;

    public int f78104Y;

    public boolean f78105Z;

    @Expose
    private boolean autoSH;

    @Expose
    private boolean autoSW;

    public int f78106b1;

    public GizmoObject f78107i1;

    @Expose
    @Deprecated
    private Vec2I localPosition;

    @Expose
    private Vec2I localPositionDP;

    @Expose
    private UVec2I localSize;

    public Component f78108m1;

    @Expose
    private Square5I margin;

    @Expose
    private Square5I padding;

    public boolean f78109q0;

    @Expose
    @Deprecated
    private UVec2I size;

    public int f78110v0;

    public class a implements c.o0 {

        public class C1306a implements D5.h {
            public C1306a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.margin.i() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.margin.p(variable.int_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.margin.k() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.margin.r(variable.int_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.margin.j() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.margin.q(variable.int_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.margin.b() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.margin.o(variable.int_value);
                }
            }
        }

        public a() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C1306a c1306a = new C1306a();
            b.a aVar = b.a.SLInt;
            entries.add(new C5.b(c1306a, "Left", aVar));
            entries.add(new C5.b(new b(), "Top", aVar));
            entries.add(new C5.b(new c(), "Right", aVar));
            entries.add(new C5.b(new d(), "Bottom", aVar));
            return entries;
        }
    }

    public class b implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.padding.i() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.padding.p(variable.int_value);
                }
            }
        }

        public class C1307b implements D5.h {
            public C1307b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.padding.k() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.padding.r(variable.int_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.padding.j() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.padding.q(variable.int_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.padding.b() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.padding.o(variable.int_value);
                }
            }
        }

        public b() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLInt;
            entries.add(new C5.b(aVar, "Left", aVar2));
            entries.add(new C5.b(new C1307b(), "Top", aVar2));
            entries.add(new C5.b(new c(), "Right", aVar2));
            entries.add(new C5.b(new d(), "Bottom", aVar2));
            return entries;
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return UIRect.f78082v1;
        }

        @Override
        public String c() {
            return UIRect.f78081q1;
        }

        @Override
        public String e() {
            return "UI/Base";
        }
    }

    public class d implements c.o0 {

        public final Context f78121a;

        public d(final Context val$context) {
            this.f78121a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.addAll(UIRect.this.getSizeEntries(this.f78121a));
            return entries;
        }
    }

    public class e implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.margin.e() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.margin.p(variable.int_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.margin.g() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.margin.r(variable.int_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.margin.f() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.margin.q(variable.int_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.margin.c() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.margin.o(variable.int_value);
                }
            }
        }

        public e() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLInt;
            entries.add(new C5.b(aVar, "Left", aVar2));
            entries.add(new C5.b(new b(), "Top", aVar2));
            entries.add(new C5.b(new c(), "Right", aVar2));
            entries.add(new C5.b(new d(), "Bottom", aVar2));
            return entries;
        }
    }

    public class f implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.padding.i() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.padding.p(variable.int_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.padding.k() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.padding.r(variable.int_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.padding.j() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.padding.q(variable.int_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIRect.this.padding.b() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIRect.this.padding.o(variable.int_value);
                }
            }
        }

        public f() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLInt;
            entries.add(new C5.b(aVar, "Left", aVar2));
            entries.add(new C5.b(new b(), "Top", aVar2));
            entries.add(new C5.b(new c(), "Right", aVar2));
            entries.add(new C5.b(new d(), "Bottom", aVar2));
            return entries;
        }
    }

    public class g implements n {
        public g() {
        }

        @Override
        public String getText() {
            return "Rect:\n" + UIRect.this.f78088I.a();
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            if (UIRect.this.localSize == null) {
                return new Variable("", "0");
            }
            return new Variable("", UIRect.this.localSize.e() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIRect.this.localSize.j(variable.int_value);
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            if (UIRect.this.localSize == null) {
                return new Variable("", "0");
            }
            return new Variable("", UIRect.this.localSize.f() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIRect.this.localSize.k(variable.int_value);
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIRect.this.autoSW + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIRect.this.setAutoSW(variable.booolean_value.booleanValue());
            }
        }
    }

    public class k implements D5.h {
        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIRect.this.autoSH + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIRect.this.setAutoSH(variable.booolean_value.booleanValue());
            }
        }
    }

    static {
        C13201a.b(new c());
    }

    public UIRect() {
        super(f78081q1);
        this.localPositionDP = new Vec2I();
        this.localSize = new UVec2I(50, 50);
        this.margin = new Square5I();
        this.padding = new Square5I();
        this.autoSW = false;
        this.autoSH = false;
        this.f78085F = new UVec2I(200, 200);
        this.f78086G = new Vec2I();
        this.f78087H = new W9.c();
        this.f78088I = new W9.c();
        this.f78089J = new W9.a();
        this.f78090K = 1;
        this.f78091L = 1;
        this.f78092M = false;
        this.f79241c = true;
    }

    private int dp(int v10) {
        return getUIController().dpToPx(v10);
    }

    private void incrementLayoutSizeStamp() {
        int i10 = this.f78091L + 1;
        this.f78091L = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f78091L = 1;
        }
    }

    private void incrementLayoutStamp() {
        int i10 = this.f78090K + 1;
        this.f78090K = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f78090K = 1;
        }
    }

    private void markControllerDirty() {
        UIController uIController = getUIController();
        if (uIController != null) {
            uIController.markUIDirty();
        }
        markLayoutDirty();
    }

    private void migrateValues() {
        if (this.f78084E == null) {
            return;
        }
        if (this.localPosition != null) {
            this.localPositionDP.j((int) (r0.f() / this.f78084E.getPxSize()));
            this.localPositionDP.k((int) (this.localPosition.g() / this.f78084E.getPxSize()));
            this.localPosition = null;
        }
        if (this.size != null) {
            this.localSize.j((int) (r0.e() / this.f78084E.getPxSize()));
            this.localSize.k((int) (this.size.f() / this.f78084E.getPxSize()));
            this.size = null;
        }
    }

    private float pxToDp(int v10) {
        return getUIController().pxToDP(v10);
    }

    private void recursiveCalculateBounds(GameObject gameObject, W9.b out) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && (L10 instanceof ImGuiRenderableComponent)) {
                try {
                    W9.c internalWidgetRect = ((ImGuiRenderableComponent) L10).getInternalWidgetRect();
                    if (internalWidgetRect != null) {
                        int d10 = internalWidgetRect.d();
                        int e10 = internalWidgetRect.e();
                        int f10 = internalWidgetRect.f();
                        int g10 = internalWidgetRect.g();
                        if (f10 <= d10) {
                            f10 = Math.max(0, internalWidgetRect.c()) + d10;
                        }
                        if (g10 <= e10) {
                            g10 = e10 + Math.max(0, internalWidgetRect.b());
                        }
                        if (f10 > d10 && g10 > e10) {
                            out.f27340e = true;
                            out.f27336a = Math.min(out.f27336a, d10);
                            out.f27337b = Math.min(out.f27337b, e10);
                            out.f27338c = Math.max(out.f27338c, f10);
                            out.f27339d = Math.max(out.f27339d, g10);
                        }
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                recursiveCalculateBounds(C10, out);
            }
        }
    }

    private void refreshDirtySnapshot() {
        UIController uIController = getUIController();
        if (uIController == null) {
            this.f78092M = false;
            return;
        }
        if (this.f78092M && this.f78093N == this.localPositionDP.f() && this.f78094O == this.localPositionDP.g() && this.f78095P == this.localSize.e() && this.f78096Q == this.localSize.f() && this.f78097R == this.margin.i() && this.f78098S == this.margin.k() && this.f78099T == this.margin.j() && this.f78100U == this.margin.b() && this.f78101V == this.padding.i() && this.f78102W == this.padding.k() && this.f78103X == this.padding.j() && this.f78104Y == this.padding.b() && this.f78105Z == this.autoSW && this.f78109q0 == this.autoSH) {
            return;
        }
        this.f78092M = true;
        this.f78093N = this.localPositionDP.f();
        this.f78094O = this.localPositionDP.g();
        this.f78095P = this.localSize.e();
        this.f78096Q = this.localSize.f();
        this.f78097R = this.margin.i();
        this.f78098S = this.margin.k();
        this.f78099T = this.margin.j();
        this.f78100U = this.margin.b();
        this.f78101V = this.padding.i();
        this.f78102W = this.padding.k();
        this.f78103X = this.padding.j();
        this.f78104Y = this.padding.b();
        this.f78105Z = this.autoSW;
        this.f78109q0 = this.autoSH;
        uIController.markUIDirty();
        markLayoutDirty();
    }

    private void saveLayoutStamps() {
        if (this.f79250n == null) {
            this.f78110v0 = 0;
            this.f78083D0 = 0;
        } else {
            this.f78110v0 = this.f78090K;
            UIRect parent = getParent();
            this.f78083D0 = parent != null ? parent.getLayoutStamp() : 0;
            this.f78106b1 = getLayoutDependencyStamp();
        }
    }

    private void syncScreenRectsWithGlobal() {
        this.f78088I.l(this.f78086G.f());
        this.f78088I.m(this.f78086G.g());
        this.f78088I.n(this.f78086G.f() + this.f78085F.e());
        this.f78088I.o(this.f78086G.g() + this.f78085F.f());
        this.f78088I.k(this.f78085F.e());
        this.f78088I.j(this.f78085F.f());
        if (getUIController() == null) {
            this.f78089J.l(this.f78086G.f());
            this.f78089J.m(this.f78086G.g());
            this.f78089J.n(this.f78086G.f() + this.f78085F.e());
            this.f78089J.o(this.f78086G.g() + this.f78085F.f());
            this.f78089J.k(this.f78085F.e());
            this.f78089J.j(this.f78085F.f());
            return;
        }
        this.f78089J.l(pxToDp(this.f78086G.f()));
        this.f78089J.m(pxToDp(this.f78086G.g()));
        W9.a aVar = this.f78089J;
        aVar.n(aVar.d() + pxToDp(this.f78085F.e()));
        W9.a aVar2 = this.f78089J;
        aVar2.o(aVar2.e() + pxToDp(this.f78085F.f()));
        this.f78089J.k(pxToDp(this.f78085F.e()));
        this.f78089J.j(pxToDp(this.f78085F.f()));
    }

    public void alignToParentLeft(UIController controller) {
        int i10;
        int i11;
        UIRect parent = getParent();
        Square5I parentPadding = getParentPadding();
        if (parentPadding == null) {
            return;
        }
        if (parent != null) {
            i10 = parent.getGlobalPosition().f();
            i11 = parent.getGlobalPosition().g();
        } else {
            i10 = 0;
            i11 = 0;
        }
        setGlobalPosition(i10 + dp(this.margin.e()) + dp(parentPadding.e()), i11 + dp(this.margin.g()) + dp(parentPadding.g()));
        if (!this.autoSW) {
            setGlobalWidth(dp(this.localSize.e()));
        }
        if (this.autoSH) {
            return;
        }
        setGlobalHeight(dp(this.localSize.f()));
    }

    @Override
    public boolean allowOncePerObject() {
        return true;
    }

    public boolean applyBounds(UIController controller, List<W9.b> boundList, W9.b copyScreenRectOutput) {
        return applyBounds(controller, boundList, copyScreenRectOutput, getLayoutDependencyStamp());
    }

    public W9.b calculateInnerBounds() {
        W9.b bVar = (W9.b) JP.acquire(W9.b.class);
        if (this.f79250n == null) {
            bVar.j();
            return bVar;
        }
        for (int i10 = 0; i10 < this.f79250n.N(); i10++) {
            com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component L10 = this.f79250n.L(i10);
            if (L10.isEnabled() && (L10 instanceof ImGuiRenderableComponent)) {
                try {
                    W9.c internalWidgetRect = ((ImGuiRenderableComponent) L10).getInternalWidgetRect();
                    if (internalWidgetRect != null) {
                        int d10 = internalWidgetRect.d();
                        int e10 = internalWidgetRect.e();
                        int f10 = internalWidgetRect.f();
                        int g10 = internalWidgetRect.g();
                        if (f10 <= d10) {
                            f10 = Math.max(0, internalWidgetRect.c()) + d10;
                        }
                        if (g10 <= e10) {
                            g10 = e10 + Math.max(0, internalWidgetRect.b());
                        }
                        if (f10 > d10 && g10 > e10) {
                            bVar.f27340e = true;
                            bVar.f27336a = Math.min(bVar.f27336a, d10);
                            bVar.f27337b = Math.min(bVar.f27337b, e10);
                            bVar.f27338c = Math.max(bVar.f27338c, f10);
                            bVar.f27339d = Math.max(bVar.f27339d, g10);
                        }
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        if (!bVar.f27340e) {
            bVar.j();
        }
        return bVar;
    }

    public void determineBoundsRecursively(UIController controller) {
        int d10 = this.f78087H.d();
        int e10 = this.f78087H.e();
        int f10 = this.f78087H.f();
        int g10 = this.f78087H.g();
        int c10 = this.f78087H.c();
        int b10 = this.f78087H.b();
        W9.b bVar = new W9.b();
        recursiveCalculateBounds(this.f79250n, bVar);
        if (bVar.f27340e) {
            this.f78087H.l(bVar.f27336a);
            this.f78087H.m(bVar.f27337b);
            this.f78087H.n(bVar.f27338c);
            this.f78087H.o(bVar.f27339d);
            this.f78087H.k(Math.max(0, bVar.f27338c - bVar.f27336a));
            this.f78087H.j(Math.max(0, bVar.f27339d - bVar.f27337b));
        } else {
            this.f78087H.l(0);
            this.f78087H.m(0);
            this.f78087H.n(0);
            this.f78087H.o(0);
            this.f78087H.k(0);
            this.f78087H.j(0);
        }
        if (d10 == this.f78087H.d() && e10 == this.f78087H.e() && f10 == this.f78087H.f() && g10 == this.f78087H.g() && c10 == this.f78087H.c() && b10 == this.f78087H.b()) {
            saveLayoutStamps();
        } else {
            incrementLayoutStamp();
        }
    }

    public W9.c getBoundRect() {
        return this.f78087H;
    }

    public List<C5.b> getCoordiantesEntriesForFP(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(F5.c.H("Coordinates", this.localPositionDP, new Vec2I()));
        steppedArrayList.add(F5.c.d(getInspectorMemory(), "Margin", new a()));
        steppedArrayList.add(F5.c.d(getInspectorMemory(), "Padding", new b()));
        return steppedArrayList;
    }

    public Vec2I getGlobalPosition() {
        return this.f78086G;
    }

    public UVec2I getGlobalSize() {
        return this.f78085F;
    }

    @Override
    public int getIconResource() {
        return R.drawable.boundinc_center_v2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_uirect;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(F5.c.H("Coordinates", this.localPositionDP, new Vec2I()));
        linkedList.add(F5.c.d(getInspectorMemory(), FileRequest.FIELD_SIZE, new d(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), "Margin", new e()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Padding", new f()));
        linkedList.add(new C5.b("Rect:\n" + this.f78088I.a(), 12, new g()));
        return linkedList;
    }

    @InterfaceC15237a
    public int getJRMarginBottom() {
        return this.margin.b();
    }

    @InterfaceC15237a
    public int getJRMarginLeft() {
        return this.margin.i();
    }

    @InterfaceC15237a
    public int getJRMarginRight() {
        return this.margin.j();
    }

    @InterfaceC15237a
    public int getJRMarginTop() {
        return this.margin.k();
    }

    @InterfaceC15237a
    public int getJRPaddingBottom() {
        return this.padding.b();
    }

    @InterfaceC15237a
    public int getJRPaddingLeft() {
        return this.padding.i();
    }

    @InterfaceC15237a
    public int getJRPaddingRight() {
        return this.padding.j();
    }

    @InterfaceC15237a
    public int getJRPaddingTop() {
        return this.padding.k();
    }

    @InterfaceC15237a
    public Point2 getJRPosition() {
        return new Point2(this.localPositionDP.f(), this.localPositionDP.g());
    }

    @InterfaceC15237a
    public int getJRPositionX() {
        return this.localPositionDP.f();
    }

    @InterfaceC15237a
    public int getJRPositionY() {
        return this.localPositionDP.g();
    }

    @InterfaceC15237a
    public Point2 getJRSize() {
        return new Point2(this.localSize.e(), this.localSize.f());
    }

    @InterfaceC15237a
    public int getJRSizeX() {
        return this.localSize.e();
    }

    @InterfaceC15237a
    public int getJRSizeY() {
        return this.localSize.f();
    }

    public int getLayoutDependencyStamp() {
        UIRect uIRect;
        int i10 = 1;
        if (this.f79250n == null) {
            return 1;
        }
        for (int i11 = 0; i11 < this.f79250n.N(); i11++) {
            com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component L10 = this.f79250n.L(i11);
            if (L10.isEnabled() && (L10 instanceof ImGuiLayoutComponent)) {
                i10 = (i10 * 31) + ((ImGuiLayoutComponent) L10).getLayoutDependencyStamp();
            }
        }
        for (int i12 = 0; i12 < this.f79250n.D(); i12++) {
            GameObject C10 = this.f79250n.C(i12);
            if (C10 != null && C10.isEnabled() && (uIRect = (UIRect) C10.c0(Component.e.UIRect)) != null) {
                i10 = (((i10 * 31) + uIRect.getLayoutDependencyStamp()) * 31) + uIRect.getLayoutSizeStamp();
            }
        }
        return i10;
    }

    public int getLayoutDependencyStampSnapshot() {
        return this.f78106b1;
    }

    public int getLayoutSizeStamp() {
        return this.f78091L;
    }

    public int getLayoutStamp() {
        return this.f78090K;
    }

    public int getLayoutStampSnapshot() {
        return this.f78110v0;
    }

    public Vec2I getLocalPosition() {
        return this.localPositionDP;
    }

    public UVec2I getLocalSize() {
        return this.localSize;
    }

    public Square5I getMargin() {
        return this.margin;
    }

    public Square5I getPadding() {
        return this.padding;
    }

    public UIRect getParent() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return null;
        }
        UIRect uIRect = null;
        for (GameObject gameObject2 = gameObject.f79294k; uIRect == null && C13317e.J(gameObject2); gameObject2 = gameObject2.f79294k) {
            if (((UIController) gameObject2.c0(Component.e.UIController)) != null) {
                return null;
            }
            uIRect = (UIRect) gameObject2.c0(Component.e.UIRect);
        }
        return uIRect;
    }

    public W9.c getParentBounds() {
        GameObject gameObject = this.f79250n.f79294k;
        UIRect uIRect = null;
        while (uIRect == null) {
            if (gameObject != null) {
                UIController uIController = (UIController) gameObject.c0(Component.e.UIController);
                if (uIController != null) {
                    return uIController.getControllerScreenRect();
                }
                uIRect = (UIRect) gameObject.c0(Component.e.UIRect);
                gameObject = gameObject.f79294k;
            }
        }
        return uIRect.getBoundRect();
    }

    public int getParentLayoutStampSnapshot() {
        return this.f78083D0;
    }

    public Square5I getParentPadding() {
        GameObject gameObject = this.f79250n.f79294k;
        UIRect uIRect = null;
        while (uIRect == null) {
            if (gameObject != null) {
                UIController uIController = (UIController) gameObject.c0(Component.e.UIController);
                if (uIController != null) {
                    return uIController.getPadding();
                }
                uIRect = (UIRect) gameObject.c0(Component.e.UIRect);
                gameObject = gameObject.f79294k;
            }
        }
        return uIRect.getPadding();
    }

    public W9.c getScreenRect() {
        return this.f78088I;
    }

    public W9.a getScreenRectDP() {
        return this.f78089J;
    }

    public List<C5.b> getSizeEntries(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        h hVar = new h();
        b.a aVar = b.a.SLInt;
        steppedArrayList.add(new C5.b(hVar, F2.d.f6276t1, aVar));
        steppedArrayList.add(new C5.b(new i(), "Height", aVar));
        j jVar = new j();
        b.a aVar2 = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(jVar, "Auto width", aVar2));
        steppedArrayList.add(new C5.b(new k(), "Auto height", aVar2));
        return steppedArrayList;
    }

    @Override
    public String getTitle() {
        return f78081q1;
    }

    @Override
    public Component.e getType() {
        return Component.e.UIRect;
    }

    public UIController getUIController() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return null;
        }
        UIController uIController = this.f78084E;
        if (uIController == null || uIController.f79250n == null) {
            UIController uIController2 = (UIController) gameObject.i0(UIController.class);
            this.f78084E = uIController2;
            if (uIController2 != null) {
                migrateValues();
            }
        }
        return this.f78084E;
    }

    @Override
    public int iconPriority() {
        return 0;
    }

    @InterfaceC15237a
    public boolean isAutoSH() {
        return this.autoSH;
    }

    @InterfaceC15237a
    public boolean isAutoSW() {
        return this.autoSW;
    }

    public void markLayoutDirty() {
        incrementLayoutStamp();
        for (UIRect parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.incrementLayoutStamp();
        }
        this.f78106b1 = 0;
        UIController uIController = getUIController();
        if (uIController != null && !P9.a.k()) {
            uIController.markUIDirty();
        }
        if (P9.a.k()) {
            return;
        }
        P9.a.v();
    }

    @Override
    public void onDeserialized() {
        super.onDeserialized();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.f78084E = null;
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        this.f78092M = false;
        this.f78110v0 = 0;
        this.f78083D0 = 0;
        this.f78106b1 = 0;
        this.f78091L = 1;
        markLayoutDirty();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        refreshDirtySnapshot();
    }

    @InterfaceC15237a
    public void setAutoSH(boolean autoSH) {
        this.autoSH = autoSH;
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setAutoSW(boolean autoSW) {
        this.autoSW = autoSW;
        markControllerDirty();
    }

    public boolean setGlobalHeight(int height) {
        if (this.f78085F.f() == height) {
            return false;
        }
        this.f78085F.f();
        this.f78085F.k(height);
        incrementLayoutSizeStamp();
        syncScreenRectsWithGlobal();
        markLayoutDirty();
        return true;
    }

    public boolean setGlobalPosition(int x10, int y10) {
        return setGlobalPosition(x10, y10, true);
    }

    public boolean setGlobalSize(int width, int height) {
        boolean z10;
        this.f78085F.e();
        this.f78085F.f();
        boolean z11 = true;
        if (this.f78085F.e() != width) {
            this.f78085F.j(width);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f78085F.f() != height) {
            this.f78085F.k(height);
        } else {
            z11 = z10;
        }
        if (z11) {
            incrementLayoutSizeStamp();
            syncScreenRectsWithGlobal();
            markLayoutDirty();
        }
        return z11;
    }

    public boolean setGlobalWidth(int width) {
        if (this.f78085F.e() == width) {
            return false;
        }
        this.f78085F.e();
        this.f78085F.j(width);
        incrementLayoutSizeStamp();
        syncScreenRectsWithGlobal();
        markLayoutDirty();
        return true;
    }

    @InterfaceC15237a
    public void setJRMarginBottom(int v10) {
        this.margin.o(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRMarginLeft(int v10) {
        this.margin.p(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRMarginRight(int v10) {
        this.margin.q(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRMarginTop(int v10) {
        this.margin.r(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRPaddingBottom(int v10) {
        this.padding.o(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRPaddingLeft(int v10) {
        this.padding.p(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRPaddingRight(int v10) {
        this.padding.q(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRPaddingTop(int v10) {
        this.padding.r(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRPosition(int x10, int y10) {
        this.localPositionDP.h(x10, y10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRPositionX(int v10) {
        this.localPositionDP.j(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRPositionY(int v10) {
        this.localPositionDP.k(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRSize(int x10, int y10) {
        this.localSize.g(x10, y10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRSizeX(int v10) {
        this.localSize.j(v10);
        markControllerDirty();
    }

    @InterfaceC15237a
    public void setJRSizeY(int v10) {
        this.localSize.k(v10);
        markControllerDirty();
    }

    public void setLocalPosition(Vec2I localPosition) {
        this.localPositionDP = localPosition;
        markControllerDirty();
    }

    public void setLocalSize(UVec2I localSize) {
        this.localSize = localSize;
        markControllerDirty();
    }

    public void setMargin(Square5I margin) {
        this.margin = margin;
        markControllerDirty();
    }

    public void setPadding(Square5I padding) {
        this.padding = padding;
        markControllerDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78108m1 = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78108m1;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIRect uIRect = new JAVARuntime.UIRect(this);
        this.f78108m1 = uIRect;
        return uIRect;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        UIController uIController;
        super.updateOnSelectedHierarchy();
        if (!this.f79250n.Z0() || (uIController = getUIController()) == null) {
            return;
        }
        uIController.getControllerScreenRect().c();
        float b10 = uIController.getControllerScreenRect().b();
        Vector3 vector3 = new Vector3(0.1f);
        vector3.setX(getScreenRect().c());
        vector3.setY(getScreenRect().b());
        Vector3 vector32 = new Vector3();
        vector32.setX((-getScreenRect().d()) - (getScreenRect().c() / 2.0f));
        vector32.setY(b10 - (getScreenRect().e() + (getScreenRect().b() / 2.0f)));
        vector32.setZ(4999.0f);
        if (this.f78107i1 == null) {
            GizmoObject gizmoObject = new GizmoObject(Vertex.E1(Vertex.v.CUBE, null).x2());
            this.f78107i1 = gizmoObject;
            gizmoObject.setRenderMode(GizmoElement.RenderMode.WireFrame);
            this.f78107i1.setColor(new Color(255, 162, 87));
        }
        this.f78107i1.setPosition(vector32);
        this.f78107i1.setScale(vector3);
        Ub.a.a(this.f78107i1);
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIRect uIRect = new UIRect();
        uIRect.localPosition = Vec2I.e(this.localPosition);
        uIRect.localPositionDP = Vec2I.e(this.localPositionDP);
        uIRect.localSize = UVec2I.d(this.localSize);
        uIRect.size = UVec2I.d(this.size);
        uIRect.margin = this.margin.clone();
        uIRect.padding = this.padding.clone();
        uIRect.autoSW = this.autoSW;
        uIRect.autoSH = this.autoSH;
        return uIRect;
    }

    public boolean setGlobalPosition(int x10, int y10, boolean includeLocalOffset) {
        if (includeLocalOffset) {
            x10 += dp(this.localPositionDP.f());
            y10 += dp(this.localPositionDP.g());
        }
        if (this.f78086G.f() == x10 && this.f78086G.g() == y10) {
            return false;
        }
        this.f78086G.f();
        this.f78086G.g();
        this.f78086G.h(x10, y10);
        syncScreenRectsWithGlobal();
        markLayoutDirty();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x023c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean applyBounds(UIController controller, List<W9.b> boundList, W9.b copyScreenRectOutput, int layoutDependencyStampAtCalculationStart) {
        boolean z10;
        W9.b bVar = (W9.b) JP.acquire(W9.b.class);
        try {
            Square5I parentPadding = getParentPadding();
            int f10 = parentPadding.f();
            int c10 = parentPadding.c();
            for (int i10 = 0; i10 < boundList.size(); i10++) {
                W9.b bVar2 = boundList.get(i10);
                int c11 = bVar2.c();
                int d10 = bVar2.d();
                int a10 = bVar2.a();
                int b10 = bVar2.b();
                bVar.f27340e = true;
                bVar.f27336a = Math.min(bVar.f27336a, c11);
                bVar.f27337b = Math.min(bVar.f27337b, d10);
                bVar.f27338c = Math.max(bVar.f27338c, a10);
                bVar.f27339d = Math.max(bVar.f27339d, b10);
            }
            int d11 = this.f78087H.d();
            int e10 = this.f78087H.e();
            int f11 = this.f78087H.f();
            int g10 = this.f78087H.g();
            int c12 = this.f78087H.c();
            int b11 = this.f78087H.b();
            if (bVar.f27340e) {
                this.f78087H.l(bVar.f27336a);
                this.f78087H.m(bVar.f27337b);
                this.f78087H.n(bVar.f27338c);
                this.f78087H.o(bVar.f27339d);
                this.f78087H.k(Math.max(0, bVar.f27338c - bVar.f27336a));
                this.f78087H.j(Math.max(0, bVar.f27339d - bVar.f27337b));
            } else {
                this.f78087H.l(0);
                this.f78087H.m(0);
                this.f78087H.n(0);
                this.f78087H.o(0);
                this.f78087H.k(0);
                this.f78087H.j(0);
            }
            W9.c cVar = this.f78087H;
            cVar.l(cVar.d() + this.f78086G.f());
            W9.c cVar2 = this.f78087H;
            cVar2.m(cVar2.e() + this.f78086G.g());
            W9.c cVar3 = this.f78087H;
            cVar3.n(cVar3.f() + this.f78086G.f() + this.margin.f() + f10);
            W9.c cVar4 = this.f78087H;
            cVar4.o(cVar4.g() + this.f78086G.g() + this.margin.c() + c10);
            this.f78088I.l(this.f78086G.f());
            W9.c cVar5 = this.f78088I;
            cVar5.n(cVar5.d() + this.f78085F.e());
            this.f78088I.k(this.f78085F.e());
            this.f78088I.m(this.f78086G.g());
            W9.c cVar6 = this.f78088I;
            cVar6.o(cVar6.e() + this.f78085F.f());
            this.f78088I.j(this.f78085F.f());
            this.f78089J.l(pxToDp(this.f78086G.f()));
            W9.a aVar = this.f78089J;
            aVar.n(aVar.d() + pxToDp(this.f78085F.e()));
            this.f78089J.k(pxToDp(this.f78085F.e()));
            this.f78089J.m(pxToDp(this.f78086G.g()));
            W9.a aVar2 = this.f78089J;
            aVar2.o(aVar2.e() + pxToDp(this.f78085F.f()));
            this.f78089J.j(pxToDp(this.f78085F.f()));
            copyScreenRectOutput.h(this.f78087H.f27341a);
            copyScreenRectOutput.i(this.f78087H.f27342b);
            copyScreenRectOutput.f(this.f78087H.f27343c);
            copyScreenRectOutput.g(this.f78087H.f27344d);
            copyScreenRectOutput.f27340e = true;
            if (d11 == this.f78087H.d() && e10 == this.f78087H.e() && f11 == this.f78087H.f() && g10 == this.f78087H.g() && c12 == this.f78087H.c() && b11 == this.f78087H.b()) {
                z10 = false;
                boolean z11 = getLayoutDependencyStamp() == layoutDependencyStampAtCalculationStart;
                if (!z10 || z11) {
                    incrementLayoutStamp();
                }
                if (!z10 && !z11) {
                    saveLayoutStamps();
                    JP.release(bVar);
                    return false;
                }
                return true;
            }
            z10 = true;
            if (getLayoutDependencyStamp() == layoutDependencyStampAtCalculationStart) {
            }
            if (!z10) {
            }
            incrementLayoutStamp();
            if (!z10) {
                saveLayoutStamps();
                JP.release(bVar);
                return false;
            }
            return true;
        } finally {
            JP.release(bVar);
        }
    }

    public UIRect(boolean autoSW, boolean autoSH) {
        super(f78081q1);
        this.localPositionDP = new Vec2I();
        this.localSize = new UVec2I(50, 50);
        this.margin = new Square5I();
        this.padding = new Square5I();
        this.autoSW = false;
        this.autoSH = false;
        this.f78085F = new UVec2I(200, 200);
        this.f78086G = new Vec2I();
        this.f78087H = new W9.c();
        this.f78088I = new W9.c();
        this.f78089J = new W9.a();
        this.f78090K = 1;
        this.f78091L = 1;
        this.f78092M = false;
        this.autoSW = autoSW;
        this.autoSH = autoSH;
    }

    public UIRect(int sx, int sy) {
        super(f78081q1);
        this.localPositionDP = new Vec2I();
        this.localSize = new UVec2I(50, 50);
        this.margin = new Square5I();
        this.padding = new Square5I();
        this.autoSW = false;
        this.autoSH = false;
        this.f78085F = new UVec2I(200, 200);
        this.f78086G = new Vec2I();
        this.f78087H = new W9.c();
        this.f78088I = new W9.c();
        this.f78089J = new W9.a();
        this.f78090K = 1;
        this.f78091L = 1;
        this.f78092M = false;
        this.localSize.g(sx, sy);
    }
}
