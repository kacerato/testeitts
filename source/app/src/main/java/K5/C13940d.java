package k5;

import JAVARuntime.Color;
import JAVARuntime.GUIUtils;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoObject;
import JAVARuntime.Vector3;
import M7.c;
import M7.e;
import Z6.c;
import a8.C3589a;
import android.app.Activity;
import android.bluetooth.le.AdvertisingSetParameters;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Enums.HorizontalConstraintTarget;
import com.itsmagic.engine.Engines.Engine.ImGUI.Enums.VerticalConstraintTarget;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Vec2I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIAlignment;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIAnchor;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIFitParent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import f5.C13189d;
import gb.C13317e;
import java.util.List;
import r4.C15147a;
import rc.C15169a;

public class C13940d extends C13189d {

    public static final Ac.b f94842D;

    public static final float f94843E = 50.0f;

    public static final float f94844F = 8.0f;

    public static final int f94845G = 8;

    public static final int f94846H = 8;

    public static final ColorINT f94847I;

    public static final ColorINT f94848J;

    public static final ColorINT f94849K;

    public static final float f94850x = 5000.0f;

    public final List<AbstractC13938b> f94853g = new SteppedArrayList();

    public final List<AbstractC13938b> f94854h = new SteppedArrayList();

    public final List<AbstractC13938b> f94855i = new SteppedArrayList();

    public final List<AbstractC13938b> f94856j = new SteppedArrayList();

    public final List<D> f94857k;

    public D f94858l;

    public e f94859m;

    public boolean f94860n;

    public boolean f94861o;

    public ub.p f94862p;

    public ub.p f94863q;

    public ub.p f94864r;

    public ColorINT f94865s;

    public ColorINT f94866t;

    public ColorINT f94867u;

    public EnumC13939c f94868v;

    public EnumC13937a f94869w;

    public static final Ac.b f94851y = Theme.T.UI_EDITOR_BUTTONS_COLOR;

    public static final Ac.b f94852z = Theme.T.UI_EDITOR_PRESSED_BUTTONS_COLOR;

    public static final Ac.b f94839A = Theme.T.UI_EDITOR_BUTTONS_TEXT_COLOR;

    public static final Ac.b f94840B = Theme.T.UI_EDITOR_BUTTONS_OUTLINE_COLOR;

    public static final Ac.b f94841C = Theme.T.UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR;

    public class A extends AbstractC13938b {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                C13940d.this.f94868v = EnumC13939c.ManageAnchors;
            }
        }

        public A(int iconPadding, ub.p textureInstance) {
            super(iconPadding, textureInstance);
        }

        @Override
        public void a(GameObject gameObject, UIRect rect) {
            K8.a.I(new a());
        }
    }

    public class B extends AbstractC13938b {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                C13940d.this.f94868v = EnumC13939c.Rect;
                C13940d.this.f94869w = null;
            }
        }

        public B(int iconPadding, ub.p textureInstance) {
            super(iconPadding, textureInstance);
        }

        @Override
        public void a(GameObject gameObject, UIRect rect) {
            K8.a.I(new a());
        }
    }

    public class C extends AbstractC13938b {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                C13940d.this.f94868v = EnumC13939c.Rect;
            }
        }

        public C(int iconPadding, ub.p textureInstance) {
            super(iconPadding, textureInstance);
        }

        @Override
        public void a(GameObject gameObject, UIRect rect) {
            K8.a.I(new a());
        }
    }

    public static class D {

        public String f94876a;

        public int f94877b;

        public int f94878c;

        public D(String name, int forcedResoW, int forcedResoH) {
            this.f94876a = name;
            this.f94877b = forcedResoW;
            this.f94878c = forcedResoH;
        }
    }

    public enum E {
        TopCenter,
        TopRight,
        BottomCenter,
        BottomRight
    }

    public class RunnableC13941a implements Runnable {

        public final GameObject f94879b;

        public RunnableC13941a(final GameObject val$candidate) {
            this.f94879b = val$candidate;
        }

        @Override
        public void run() {
            W7.b.f27308h.h(this.f94879b);
        }
    }

    public class RunnableC13942b implements Runnable {

        public final GameObject f94881b;

        public final GameObject f94882c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                C13940d.this.f94868v = EnumC13939c.ManageAnchors;
                UIAnchor uIAnchor = (UIAnchor) RunnableC13942b.this.f94881b.c0(Component.e.UIAnchor);
                if (uIAnchor == null) {
                    uIAnchor = new UIAnchor();
                    RunnableC13942b.this.f94881b.r(uIAnchor);
                }
                int i10 = u.f94928b[C13940d.this.f94869w.ordinal()];
                if (i10 == 1) {
                    uIAnchor.setTopOffset(0);
                    uIAnchor.setTopTarget(RunnableC13942b.this.f94882c);
                    uIAnchor.setTopAnchor(VerticalConstraintTarget.ToTopOf);
                } else if (i10 == 2) {
                    uIAnchor.setBottomOffset(0);
                    uIAnchor.setBottomTarget(RunnableC13942b.this.f94882c);
                    uIAnchor.setBottomAnchor(VerticalConstraintTarget.ToTopOf);
                }
                UIRect uIRect = (UIRect) RunnableC13942b.this.f94881b.c0(Component.e.UIRect);
                if (uIRect != null) {
                    uIRect.getLocalPosition().k(0);
                }
            }
        }

        public RunnableC13942b(final GameObject val$anchorOutputObject, final GameObject val$gameObject) {
            this.f94881b = val$anchorOutputObject;
            this.f94882c = val$gameObject;
        }

        @Override
        public void run() {
            K8.a.I(new a());
        }
    }

    public class RunnableC13943c implements Runnable {

        public final GameObject f94885b;

        public final GameObject f94886c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                C13940d.this.f94868v = EnumC13939c.ManageAnchors;
                UIAnchor uIAnchor = (UIAnchor) RunnableC13943c.this.f94885b.c0(Component.e.UIAnchor);
                if (uIAnchor == null) {
                    uIAnchor = new UIAnchor();
                    RunnableC13943c.this.f94885b.r(uIAnchor);
                }
                int i10 = u.f94928b[C13940d.this.f94869w.ordinal()];
                if (i10 == 1) {
                    uIAnchor.setTopOffset(0);
                    uIAnchor.setTopTarget(RunnableC13943c.this.f94886c);
                    uIAnchor.setTopAnchor(VerticalConstraintTarget.ToBottomOf);
                } else if (i10 == 2) {
                    uIAnchor.setBottomOffset(0);
                    uIAnchor.setBottomTarget(RunnableC13943c.this.f94886c);
                    uIAnchor.setBottomAnchor(VerticalConstraintTarget.ToBottomOf);
                }
                UIRect uIRect = (UIRect) RunnableC13943c.this.f94885b.c0(Component.e.UIRect);
                if (uIRect != null) {
                    uIRect.getLocalPosition().k(0);
                }
            }
        }

        public RunnableC13943c(final GameObject val$anchorOutputObject, final GameObject val$gameObject) {
            this.f94885b = val$anchorOutputObject;
            this.f94886c = val$gameObject;
        }

        @Override
        public void run() {
            K8.a.I(new a());
        }
    }

    public class RunnableC1833d implements Runnable {

        public final GameObject f94889b;

        public final GameObject f94890c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                C13940d.this.f94868v = EnumC13939c.ManageAnchors;
                UIAnchor uIAnchor = (UIAnchor) RunnableC1833d.this.f94889b.c0(Component.e.UIAnchor);
                if (uIAnchor == null) {
                    uIAnchor = new UIAnchor();
                    RunnableC1833d.this.f94889b.r(uIAnchor);
                }
                int i10 = u.f94928b[C13940d.this.f94869w.ordinal()];
                if (i10 == 3) {
                    uIAnchor.setLeftOffset(0);
                    uIAnchor.setLeftTarget(RunnableC1833d.this.f94890c);
                    uIAnchor.setLeftAnchor(HorizontalConstraintTarget.ToLeftOf);
                } else if (i10 == 4) {
                    uIAnchor.setRightOffset(0);
                    uIAnchor.setRightTarget(RunnableC1833d.this.f94890c);
                    uIAnchor.setRightAnchor(HorizontalConstraintTarget.ToLeftOf);
                }
                UIRect uIRect = (UIRect) RunnableC1833d.this.f94889b.c0(Component.e.UIRect);
                if (uIRect != null) {
                    uIRect.getLocalPosition().j(0);
                }
            }
        }

        public RunnableC1833d(final GameObject val$anchorOutputObject, final GameObject val$gameObject) {
            this.f94889b = val$anchorOutputObject;
            this.f94890c = val$gameObject;
        }

        @Override
        public void run() {
            K8.a.I(new a());
        }
    }

    public class RunnableC13944e implements Runnable {

        public final GameObject f94893b;

        public final GameObject f94894c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                C13940d.this.f94868v = EnumC13939c.ManageAnchors;
                UIAnchor uIAnchor = (UIAnchor) RunnableC13944e.this.f94893b.c0(Component.e.UIAnchor);
                if (uIAnchor == null) {
                    uIAnchor = new UIAnchor();
                    RunnableC13944e.this.f94893b.r(uIAnchor);
                }
                int i10 = u.f94928b[C13940d.this.f94869w.ordinal()];
                if (i10 == 3) {
                    uIAnchor.setLeftOffset(0);
                    uIAnchor.setLeftTarget(RunnableC13944e.this.f94894c);
                    uIAnchor.setLeftAnchor(HorizontalConstraintTarget.ToRightOf);
                } else if (i10 == 4) {
                    uIAnchor.setRightOffset(0);
                    uIAnchor.setRightTarget(RunnableC13944e.this.f94894c);
                    uIAnchor.setRightAnchor(HorizontalConstraintTarget.ToRightOf);
                }
                UIRect uIRect = (UIRect) RunnableC13944e.this.f94893b.c0(Component.e.UIRect);
                if (uIRect != null) {
                    uIRect.getLocalPosition().j(0);
                }
            }
        }

        public RunnableC13944e(final GameObject val$anchorOutputObject, final GameObject val$gameObject) {
            this.f94893b = val$anchorOutputObject;
            this.f94894c = val$gameObject;
        }

        @Override
        public void run() {
            K8.a.I(new a());
        }
    }

    public class f implements Runnable {

        public final UIAnchor f94897b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                f.this.f94897b.setTopAnchor(VerticalConstraintTarget.Unfixed);
                f.this.f94897b.setTopTarget(null);
            }
        }

        public f(final UIAnchor val$anchor) {
            this.f94897b = val$anchor;
        }

        @Override
        public void run() {
            K8.a.I(new a());
        }
    }

    public class g implements Runnable {

        public final UIAnchor f94900b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                g.this.f94900b.setBottomAnchor(VerticalConstraintTarget.Unfixed);
                g.this.f94900b.setBottomTarget(null);
            }
        }

        public g(final UIAnchor val$anchor) {
            this.f94900b = val$anchor;
        }

        @Override
        public void run() {
            K8.a.I(new a());
        }
    }

    public class h implements Runnable {

        public final UIAnchor f94903b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                h.this.f94903b.setRightAnchor(HorizontalConstraintTarget.Unfixed);
                h.this.f94903b.setRightTarget(null);
            }
        }

        public h(final UIAnchor val$anchor) {
            this.f94903b = val$anchor;
        }

        @Override
        public void run() {
            K8.a.I(new a());
        }
    }

    public class i implements Runnable {

        public final UIAnchor f94906b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                i.this.f94906b.setLeftAnchor(HorizontalConstraintTarget.Unfixed);
                i.this.f94906b.setLeftTarget(null);
            }
        }

        public i(final UIAnchor val$anchor) {
            this.f94906b = val$anchor;
        }

        @Override
        public void run() {
            K8.a.I(new a());
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override
        public void run() {
            C13940d.this.f94868v = EnumC13939c.AnchorSelection;
            C13940d.this.f94869w = EnumC13937a.Top;
        }
    }

    public class k extends SteppedArrayList<D> {
        public k() {
            add(new D("Free", -1, -1));
            add(null);
            add(new D("18:9", 1440, 720));
            add(new D("19:9", V1.e.f26480w, 720));
            add(new D("20:9", AdvertisingSetParameters.INTERVAL_HIGH, 720));
            add(null);
            add(new D("16:9", 1280, 720));
            add(new D("16:10", 1152, 720));
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override
        public void run() {
            C13940d.this.f94868v = EnumC13939c.AnchorSelection;
            C13940d.this.f94869w = EnumC13937a.Left;
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override
        public void run() {
            C13940d.this.f94868v = EnumC13939c.AnchorSelection;
            C13940d.this.f94869w = EnumC13937a.Right;
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override
        public void run() {
            C13940d.this.f94868v = EnumC13939c.AnchorSelection;
            C13940d.this.f94869w = EnumC13937a.Bottom;
        }
    }

    public class o implements Runnable {

        public final AbstractC13938b f94914b;

        public final GameObject f94915c;

        public final UIRect f94916d;

        public o(final AbstractC13938b val$option, final GameObject val$selectedGameObject, final UIRect val$rect) {
            this.f94914b = val$option;
            this.f94915c = val$selectedGameObject;
            this.f94916d = val$rect;
        }

        @Override
        public void run() {
            this.f94914b.a(this.f94915c, this.f94916d);
        }
    }

    public class p implements M7.d {
        public p() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            GameObject gameObject;
            try {
                C3589a c3589a = W7.b.f27309i;
                if (C13317e.J(c3589a.f31909a.f31910a) && com.itsmagic.engine.Activities.Editor.Utils.r.b(c3589a.f31909a.f31910a)) {
                    try {
                        gameObject = c3589a.f31909a.f31910a.clone();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        Toast.makeText(context, "Error:" + e10.getMessage(), 0).show();
                        gameObject = null;
                    }
                    if (gameObject != null) {
                        C3589a c3589a2 = W7.b.f27309i;
                        GameObject gameObject2 = c3589a2.f31909a.f31910a;
                        GameObject gameObject3 = gameObject2.f79294k;
                        if (gameObject3 != null) {
                            int U02 = gameObject3.U0(gameObject2) + 1;
                            gameObject.f79294k = null;
                            com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(gameObject, c3589a2.f31909a.f31910a.f79294k, U02));
                            W7.b.f27308h.h(gameObject);
                            return;
                        }
                        int s10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.s(gameObject2) + 1;
                        gameObject.f79294k = null;
                        com.itsmagic.engine.Engines.Engine.World.b.d(new Mb.a(gameObject, c3589a2.f31909a.f31910a.f79294k, s10));
                        W7.b.f27308h.h(gameObject);
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public class q implements M7.d {

        public G4.c f94919a;

        public q() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            W7.b.f27308h.h(null);
        }
    }

    public class r implements M7.d {
        public r() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            UIController U10 = C13940d.this.U();
            if (U10 == null) {
                Toast.makeText(context, "No UIController found", 0).show();
            } else {
                Y6.a.F1(v10, C15147a.e.Below, I3.a.l(U10.f79250n));
            }
        }
    }

    public class s implements M7.f {

        public class a implements dd.d {

            public final D f94923a;

            public final e f94924b;

            public a(final D val$aspect, final e val$tbButton) {
                this.f94923a = val$aspect;
                this.f94924b = val$tbButton;
            }

            @Override
            public void onSelected(View view) {
                C13940d c13940d = C13940d.this;
                D d10 = this.f94923a;
                c13940d.f94858l = d10;
                this.f94924b.h0(d10.f94876a);
            }
        }

        public s() {
        }

        @Override
        public void a(View v10, Context context, e tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (D d10 : C13940d.this.f94857k) {
                if (d10 == null) {
                    steppedArrayList.add(new C12908b());
                } else {
                    steppedArrayList.add(new C12908b(d10.f94876a, new a(d10, tbButton)));
                }
            }
            Y6.a.F1(v10, C15147a.e.Below, steppedArrayList);
        }
    }

    public class t implements M7.r {
        public t() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
        }
    }

    public static class u {

        public static final int[] f94927a;

        public static final int[] f94928b;

        static {
            int[] iArr = new int[EnumC13937a.values().length];
            f94928b = iArr;
            try {
                iArr[EnumC13937a.Top.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f94928b[EnumC13937a.Bottom.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f94928b[EnumC13937a.Left.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f94928b[EnumC13937a.Right.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[EnumC13939c.values().length];
            f94927a = iArr2;
            try {
                iArr2[EnumC13939c.Rect.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f94927a[EnumC13939c.ManageAnchors.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f94927a[EnumC13939c.AnchorSelection.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public class v extends AbstractC13938b {

        public float f94929d;

        public float f94930e;

        public int f94931f;

        public int f94932g;

        public final Panel3DView f94933h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(int iconPadding, ub.p textureInstance, final Panel3DView val$panel3DView) {
            super(iconPadding, textureInstance);
            this.f94933h = val$panel3DView;
        }

        @Override
        public void b(GameObject gameObject, UIRect rect, Vector2 slide, tc.h touch) {
            aa.d screenPointToWorldRay = this.f94933h.f71460a0.f97746a.screenPointToWorldRay(this.f94933h.Z(touch));
            rect.getLocalPosition().h(this.f94931f + ((int) ((this.f94929d - screenPointToWorldRay.f().getX()) / rect.getUIController().getPxSize())), this.f94932g + ((int) ((this.f94930e - screenPointToWorldRay.f().getY()) / rect.getUIController().getPxSize())));
        }

        @Override
        public void c(GameObject gameObject, UIRect rect, tc.h touch) {
        }

        @Override
        public void d(GameObject gameObject, UIRect rect, tc.h touch) {
            aa.d screenPointToWorldRay = this.f94933h.f71460a0.f97746a.screenPointToWorldRay(this.f94933h.Z(touch));
            this.f94929d = screenPointToWorldRay.f().getX();
            this.f94930e = screenPointToWorldRay.f().getY();
            this.f94931f = rect.getLocalPosition().f();
            this.f94932g = rect.getLocalPosition().g();
        }
    }

    public class w extends AbstractC13938b {

        public class a implements Runnable {

            public final GameObject f94936b;

            public class C1834a extends c.h {
                public C1834a() {
                }

                @Override
                public void a(c.g dialog) {
                    super.a(dialog);
                    a.this.f94936b.destroy();
                    W7.b.f27308h.h(null);
                }
            }

            public class b implements c.j {
                public b() {
                }

                @Override
                public void a(Z6.c popup, FloatingPanelArea panel) {
                    panel.E1(true);
                    panel.F1(true);
                }
            }

            public a(final GameObject val$gameObject) {
                this.f94936b = val$gameObject;
            }

            @Override
            public void run() {
                Z6.c.A1("Attention?", "Delete " + this.f94936b.getName(), new C1834a(), new b());
            }
        }

        public w(int iconPadding, ub.p textureInstance) {
            super(iconPadding, textureInstance);
        }

        @Override
        public void a(GameObject gameObject, UIRect rect) {
            N7.c.l(0.0f, new a(gameObject));
        }
    }

    public class x extends AbstractC13938b {

        public class a implements Runnable {

            public final UIRect f94941b;

            public a(final UIRect val$rect) {
                this.f94941b = val$rect;
            }

            @Override
            public void run() {
                G4.c x12 = G4.c.x1("", 140, 140, this.f94941b.getCoordiantesEntriesForFP(N7.c.t()));
                x12.f7543Z.F1(true);
                x12.f7543Z.G1(true);
                x12.f7543Z.T();
            }
        }

        public x(int iconPadding, ub.p textureInstance) {
            super(iconPadding, textureInstance);
        }

        @Override
        public void a(GameObject gameObject, UIRect rect) {
            N7.c.l(0.0f, new a(rect));
        }
    }

    public class y extends AbstractC13938b {

        public class a implements Runnable {

            public final UIRect f94944b;

            public a(final UIRect val$rect) {
                this.f94944b = val$rect;
            }

            @Override
            public void run() {
                G4.c x12 = G4.c.x1("", 104, 110, this.f94944b.getSizeEntries(N7.c.t()));
                x12.f7543Z.F1(true);
                x12.f7543Z.G1(true);
                x12.f7543Z.T();
            }
        }

        public y(int iconPadding, ub.p textureInstance) {
            super(iconPadding, textureInstance);
        }

        @Override
        public void a(GameObject gameObject, UIRect rect) {
            N7.c.l(0.0f, new a(rect));
        }
    }

    public class z extends AbstractC13938b {

        public class a implements Runnable {

            public final GameObject f94947b;

            public final UIRect f94948c;

            public class C1835a implements T9.a {
                public C1835a() {
                }

                @Override
                public void a(boolean tl2, boolean tc2, boolean tr, boolean cl2, boolean cc2, boolean cr, boolean bl2, boolean bc2, boolean br) {
                    a.this.f94948c.getLocalPosition().h(0, 0);
                }
            }

            public a(final GameObject val$gameObject, final UIRect val$rect) {
                this.f94947b = val$gameObject;
                this.f94948c = val$rect;
            }

            @Override
            public void run() {
                UIAlignment uIAlignment = (UIAlignment) this.f94947b.c0(Component.e.UIAlignment);
                if (uIAlignment == null) {
                    uIAlignment = new UIAlignment();
                    this.f94947b.r(uIAlignment);
                }
                UIFitParent uIFitParent = (UIFitParent) this.f94947b.c0(Component.e.UIFitParent);
                if (uIFitParent != null) {
                    if (uIFitParent.isFitWidth() && uIFitParent.isFitHeight()) {
                        uIAlignment.setTopLeftEnabled(true);
                        uIAlignment.setTopCenterEnabled(false);
                        uIAlignment.setTopRightEnabled(true);
                        uIAlignment.setCenterLeftEnabled(false);
                        uIAlignment.setCenterEnabled(false);
                        uIAlignment.setCenterRightEnabled(false);
                        uIAlignment.setBottomLeftEnabled(true);
                        uIAlignment.setBottomCenterEnabled(false);
                        uIAlignment.setBottomRightEnabled(true);
                    } else if (uIFitParent.isFitWidth()) {
                        uIAlignment.setTopLeftEnabled(true);
                        uIAlignment.setTopCenterEnabled(false);
                        uIAlignment.setTopRightEnabled(true);
                        uIAlignment.setCenterLeftEnabled(false);
                        uIAlignment.setCenterEnabled(false);
                        uIAlignment.setCenterRightEnabled(false);
                        uIAlignment.setBottomLeftEnabled(false);
                        uIAlignment.setBottomCenterEnabled(false);
                        uIAlignment.setBottomRightEnabled(false);
                    } else if (uIFitParent.isFitHeight()) {
                        uIAlignment.setTopLeftEnabled(true);
                        uIAlignment.setTopCenterEnabled(false);
                        uIAlignment.setTopRightEnabled(false);
                        uIAlignment.setCenterLeftEnabled(false);
                        uIAlignment.setCenterEnabled(false);
                        uIAlignment.setCenterRightEnabled(false);
                        uIAlignment.setBottomLeftEnabled(true);
                        uIAlignment.setBottomCenterEnabled(false);
                        uIAlignment.setBottomRightEnabled(false);
                    }
                    uIFitParent.destroyComponent();
                }
                G4.c x12 = G4.c.x1("Align", 136, 125, uIAlignment.getInspectorEntries(N7.c.t(), new C1835a()));
                x12.f7543Z.F1(true);
                x12.f7543Z.G1(true);
                x12.f7543Z.T();
            }
        }

        public z(int iconPadding, ub.p textureInstance) {
            super(iconPadding, textureInstance);
        }

        @Override
        public void a(GameObject gameObject, UIRect rect) {
            N7.c.l(0.0f, new a(gameObject, rect));
        }
    }

    static {
        Ac.b bVar = Theme.T.UI_EDITOR_BACKGROUND_COLOR;
        f94842D = bVar;
        f94847I = new ColorINT(255, 255, 255);
        f94848J = new ColorINT();
        f94849K = new ColorINT(Theme.i(bVar));
    }

    public C13940d() {
        k kVar = new k();
        this.f94857k = kVar;
        this.f94858l = kVar.get(3);
        this.f94860n = false;
        this.f94861o = false;
        this.f94868v = EnumC13939c.Rect;
        c0();
    }

    private void d0() {
        if (this.f94861o) {
            return;
        }
        this.f94861o = true;
    }

    @Override
    public boolean B() {
        return false;
    }

    @Override
    public boolean C() {
        return false;
    }

    @Override
    public Boolean D() {
        return Boolean.FALSE;
    }

    @Override
    public boolean F() {
        return false;
    }

    @Override
    public void G() {
        super.G();
        if (this.f94860n) {
            this.f94859m.g();
        } else {
            this.f94859m.p();
        }
    }

    public final void L(Panel3DView panel3DView, boolean touchCaptured, UIController controller) {
        tc.h y10;
        if (controller == null || (y10 = panel3DView.y(GUIUtils.TouchFilter.Up, true)) == null || y10.f117309e || !C15169a.f108812u.k() || touchCaptured) {
            return;
        }
        Vector2 vector2 = new Vector2();
        panel3DView.a0(y10, vector2);
        aa.d screenPointToWorldRay = panel3DView.f71460a0.f97746a.screenPointToWorldRay(vector2);
        GameObject b02 = b0(controller.f79250n, (int) (-screenPointToWorldRay.f().getX()), (int) (controller.getFrameBufferH() - screenPointToWorldRay.f().getY()));
        if (b02 != null) {
            N7.c.j0(new RunnableC13941a(b02));
        }
    }

    public final boolean M(GameObject selectedGameObject) {
        UIRect uIRect;
        UIController uIController = (UIController) selectedGameObject.i0(UIController.class);
        if (uIController == null || (uIRect = (UIRect) selectedGameObject.c0(Component.e.UIRect)) == null) {
            return false;
        }
        Panel3DView h10 = h();
        uIController.getControllerScreenRect().c();
        float b10 = uIController.getControllerScreenRect().b();
        Vector3 vector3 = new Vector3(0.1f);
        vector3.setX(uIRect.getScreenRect().c());
        vector3.setY(uIRect.getScreenRect().b());
        return R(selectedGameObject, h10, b10, 2, S(selectedGameObject, uIRect, 2, vector3, false, this.f94856j, E.TopRight), uIRect);
    }

    public final boolean N(Vec2I point, float screenH, int layer, boolean touchCaptured, int buttonSize, Runnable onTouch) {
        Vector3 vector3 = new Vector3(-point.f(), screenH - point.g(), 5000.0f - layer);
        float f10 = buttonSize;
        float f11 = f10 / 2.0f;
        float f12 = -f11;
        vector3.subLocal(f12, f11, 0.0f);
        if (e0(h().y(GUIUtils.TouchFilter.Up, true), vector3.copy(), buttonSize)) {
            N7.c.j0(onTouch);
            touchCaptured = true;
        }
        Vector3 copy = vector3.copy();
        copy.sumLocal(f12, f11, 0.0f);
        GizmoObject gizmoObject = new GizmoObject(Vertex.C1(Vertex.v.CIRCLE).x2());
        gizmoObject.setPosition(copy);
        gizmoObject.setScale(f10, f10, f10);
        gizmoObject.setRotation(-90.0f, 0.0f, 0.0f);
        gizmoObject.setColor(new Color(222, 252, 255));
        gizmoObject.setTexture(this.f94864r.p0());
        gizmoObject.setEnableTransparency(true);
        gizmoObject.setDualFaceRender(true);
        Gizmo.drawEngine(gizmoObject);
        return touchCaptured;
    }

    public final boolean O(GameObject gameObject, float screenW, float screenH, boolean touchCaptured, GameObject anchorOutputObject) {
        boolean z10;
        UIRect uIRect = (UIRect) gameObject.c0(Component.e.UIRect);
        boolean z11 = false;
        if (uIRect == null) {
            return false;
        }
        h();
        int X10 = (int) (X() * 50.0f);
        Vector3 vector3 = new Vector3(0.1f);
        vector3.setX(uIRect.getScreenRect().c());
        vector3.setY(uIRect.getScreenRect().b());
        UIAnchor uIAnchor = (UIAnchor) gameObject.c0(Component.e.UIAnchor);
        if (uIAnchor != null) {
            boolean z12 = (uIAnchor.getLeftTarget() == anchorOutputObject || uIAnchor.getRightTarget() == anchorOutputObject) ? false : true;
            if (uIAnchor.getTopTarget() != anchorOutputObject && uIAnchor.getBottomTarget() != anchorOutputObject) {
                z11 = true;
            }
            z10 = z12;
        } else {
            z11 = true;
            z10 = true;
        }
        EnumC13937a enumC13937a = this.f94869w;
        if ((enumC13937a == EnumC13937a.Top || enumC13937a == EnumC13937a.Bottom) && z11) {
            N(a0(uIRect), screenH, 2, touchCaptured, X10, new RunnableC13942b(anchorOutputObject, gameObject));
            N(V(uIRect), screenH, 2, touchCaptured, X10, new RunnableC13943c(anchorOutputObject, gameObject));
        }
        EnumC13937a enumC13937a2 = this.f94869w;
        if ((enumC13937a2 == EnumC13937a.Left || enumC13937a2 == EnumC13937a.Right) && z10) {
            N(Y(uIRect), screenH, 2, touchCaptured, X10, new RunnableC1833d(anchorOutputObject, gameObject));
            N(Z(uIRect), screenH, 2, touchCaptured, X10, new RunnableC13944e(anchorOutputObject, gameObject));
        }
        return touchCaptured;
    }

    public final boolean P(GameObject selectedGameObject) {
        UIRect uIRect;
        UIController uIController = (UIController) selectedGameObject.i0(UIController.class);
        if (uIController == null || (uIRect = (UIRect) selectedGameObject.c0(Component.e.UIRect)) == null) {
            return false;
        }
        h();
        float c10 = uIController.getControllerScreenRect().c();
        float b10 = uIController.getControllerScreenRect().b();
        Vector3 vector3 = new Vector3(0.1f);
        vector3.setX(uIRect.getScreenRect().c());
        vector3.setY(uIRect.getScreenRect().b());
        boolean S10 = S(selectedGameObject, uIRect, 2, vector3, false, this.f94855i, E.TopRight);
        if (!selectedGameObject.O0()) {
            return S10;
        }
        GameObject H02 = selectedGameObject.H0();
        boolean z10 = S10;
        for (int i10 = 0; i10 < H02.D(); i10++) {
            GameObject C10 = H02.C(i10);
            if (C10 != selectedGameObject && C10.isEnabled()) {
                z10 = O(C10, c10, b10, z10, selectedGameObject);
            }
        }
        return z10;
    }

    public final boolean Q(V9.j ap, float screenH, int layer, boolean touchCaptured, int buttonSize, Runnable onTouch) {
        if (ap != null) {
            Vector3 vector3 = new Vector3(-ap.c().f(), screenH - ap.c().g(), 5000.0f - layer);
            float f10 = buttonSize;
            float f11 = f10 / 2.0f;
            float f12 = -f11;
            vector3.subLocal(f12, f11, 0.0f);
            if (e0(h().y(GUIUtils.TouchFilter.Up, true), vector3.copy(), buttonSize)) {
                N7.c.j0(onTouch);
                touchCaptured = true;
            }
            Vector3 copy = vector3.copy();
            copy.sumLocal(f12, f11, 0.0f);
            GizmoObject gizmoObject = new GizmoObject(Vertex.C1(Vertex.v.CIRCLE).x2());
            gizmoObject.setPosition(copy);
            gizmoObject.setScale(f10, f10, f10);
            gizmoObject.setRotation(-90.0f, 0.0f, 0.0f);
            gizmoObject.setColor(new Color(255, 229, 222));
            gizmoObject.setTexture(this.f94863q.p0());
            gizmoObject.setEnableTransparency(true);
            gizmoObject.setDualFaceRender(true);
            Gizmo.drawEngine(gizmoObject);
        }
        return touchCaptured;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean R(GameObject selectedGameObject, Panel3DView panel3DView, float screenH, int layer, boolean touchCaptured, UIRect rect) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int X10 = (int) (X() * 50.0f);
        UIAnchor uIAnchor = (UIAnchor) selectedGameObject.c0(Component.e.UIAnchor);
        boolean z14 = false;
        if (uIAnchor != null) {
            float f10 = panel3DView.cameraZoom * 0.001f;
            EnumC13939c enumC13939c = this.f94868v;
            EnumC13939c enumC13939c2 = EnumC13939c.ManageAnchors;
            uIAnchor.drawGizmos(f10, enumC13939c != enumC13939c2);
            if (this.f94868v == enumC13939c2) {
                boolean z15 = uIAnchor.getTopAnchorPoints() != null;
                z11 = uIAnchor.getLeftAnchorPoints() != null;
                z12 = uIAnchor.getRightAnchorPoints() != null;
                z13 = uIAnchor.getBottomAnchorPoints() != null;
                z10 = Q(uIAnchor.getLeftAnchorPoints(), screenH, layer, Q(uIAnchor.getRightAnchorPoints(), screenH, layer, Q(uIAnchor.getBottomAnchorPoints(), screenH, layer, Q(uIAnchor.getTopAnchorPoints(), screenH, layer, touchCaptured, X10, new f(uIAnchor)), X10, new g(uIAnchor)), X10, new h(uIAnchor)), X10, new i(uIAnchor));
                z14 = z15;
                if (this.f94868v == EnumC13939c.ManageAnchors) {
                    if (!z14) {
                        N(a0(rect), screenH, layer, z10, X10, new j());
                    }
                    if (!z11) {
                        N(Y(rect), screenH, layer, z10, X10, new l());
                    }
                    if (!z12) {
                        N(Z(rect), screenH, layer, z10, X10, new m());
                    }
                    if (!z13) {
                        N(V(rect), screenH, layer, z10, X10, new n());
                    }
                }
                return z10;
            }
        }
        z10 = touchCaptured;
        z11 = false;
        z12 = false;
        z13 = false;
        if (this.f94868v == EnumC13939c.ManageAnchors) {
        }
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean S(GameObject selectedGameObject, UIRect rect, int layer, Vector3 scale, boolean touchCaptured, List<AbstractC13938b> inSceneOptions, E location) {
        int size;
        int x10;
        int i10;
        int i11;
        Vector3 copy;
        Vector3 copy2;
        boolean z10;
        GameObject gameObject = selectedGameObject;
        UIRect uIRect = rect;
        UIController uIController = (UIController) gameObject.i0(UIController.class);
        if (uIController == null) {
            return false;
        }
        uIController.getControllerScreenRect().c();
        float b10 = uIController.getControllerScreenRect().b();
        Panel3DView h10 = h();
        int X10 = (int) (X() * 8.0f);
        int X11 = (int) (X() * 8.0f);
        int X12 = (int) (X() * 50.0f);
        Vector3 vector3 = new Vector3();
        vector3.setX(-rect.getScreenRect().d());
        vector3.setY((b10 - rect.getScreenRect().e()) + X11);
        vector3.setZ(5000.0f - layer);
        int ordinal = location.ordinal();
        if (ordinal == 2 || ordinal == 3) {
            vector3.setY(b10 - (((rect.getScreenRect().e() + X11) + rect.getScreenRect().b()) + X12));
        }
        int ordinal2 = location.ordinal();
        if (ordinal2 != 0) {
            if (ordinal2 != 1) {
                if (ordinal2 != 2) {
                    if (ordinal2 != 3) {
                        size = 0;
                        x10 = 0;
                        tc.h y10 = h10.y(GUIUtils.TouchFilter.Down, true);
                        tc.h y11 = h10.y(GUIUtils.TouchFilter.Up, true);
                        boolean z11 = touchCaptured;
                        i10 = 0;
                        while (i10 < inSceneOptions.size()) {
                            AbstractC13938b abstractC13938b = inSceneOptions.get(i10);
                            int X13 = (int) (abstractC13938b.f94836a * X());
                            int i12 = ((x10 - ((i10 * X12) + (i10 * X10))) - X12) + size;
                            int i13 = size;
                            tc.h hVar = abstractC13938b.f94838c;
                            if (hVar != null) {
                                if (!hVar.q()) {
                                    abstractC13938b.c(gameObject, uIRect, abstractC13938b.f94838c);
                                    abstractC13938b.f94838c = null;
                                }
                                tc.h hVar2 = abstractC13938b.f94838c;
                                if (hVar2 != null && hVar2.s()) {
                                    i11 = X10;
                                    abstractC13938b.b(gameObject, uIRect, abstractC13938b.f94838c.i(), abstractC13938b.f94838c);
                                    copy = vector3.copy();
                                    float f10 = -i12;
                                    copy.sumLocal(f10, 0.0f, 0.0f);
                                    if (e0(y10, copy, X12)) {
                                        abstractC13938b.f94838c = y10;
                                        abstractC13938b.d(gameObject, uIRect, y10);
                                    }
                                    copy2 = vector3.copy();
                                    copy2.sumLocal(f10, 0.0f, 0.0f);
                                    if (e0(y11, copy2, X12)) {
                                        z10 = false;
                                    } else {
                                        N7.c.j0(new o(abstractC13938b, gameObject, uIRect));
                                        z10 = true;
                                        z11 = true;
                                    }
                                    Vector3 copy3 = vector3.copy();
                                    tc.h hVar3 = y11;
                                    copy3.sumLocal((-X12) / 2.0f, X12 / 2.0f, 0.0f);
                                    copy3.sumLocal(f10, 0.0f, 0.0f);
                                    if (z10) {
                                        Gizmo.drawTransparentQuad(copy3, new Vector3(X12, X12, 1), this.f94862p.p0(), this.f94865s.e0(), true);
                                    } else {
                                        Gizmo.drawTransparentQuad(copy3, new Vector3(X12, X12, 1), this.f94862p.p0(), this.f94866t.e0(), true);
                                    }
                                    float f11 = (X12 - X13) - X13;
                                    Vector3 copy4 = vector3.copy();
                                    copy4.sumLocal((-f11) / 2.0f, f11 / 2.0f, 0.0f);
                                    copy4.sumLocal(f10, 0.0f, 0.0f);
                                    Gizmo.drawTransparentQuad(copy4.sum(-X13, X13, -1.0f), new Vector3(f11, f11, 1), abstractC13938b.f94837b.p0(), this.f94867u.e0(), true);
                                    i10++;
                                    gameObject = selectedGameObject;
                                    uIRect = rect;
                                    size = i13;
                                    X10 = i11;
                                    y11 = hVar3;
                                }
                            }
                            i11 = X10;
                            copy = vector3.copy();
                            float f102 = -i12;
                            copy.sumLocal(f102, 0.0f, 0.0f);
                            if (e0(y10, copy, X12)) {
                            }
                            copy2 = vector3.copy();
                            copy2.sumLocal(f102, 0.0f, 0.0f);
                            if (e0(y11, copy2, X12)) {
                            }
                            Vector3 copy32 = vector3.copy();
                            tc.h hVar32 = y11;
                            copy32.sumLocal((-X12) / 2.0f, X12 / 2.0f, 0.0f);
                            copy32.sumLocal(f102, 0.0f, 0.0f);
                            if (z10) {
                            }
                            float f112 = (X12 - X13) - X13;
                            Vector3 copy42 = vector3.copy();
                            copy42.sumLocal((-f112) / 2.0f, f112 / 2.0f, 0.0f);
                            copy42.sumLocal(f102, 0.0f, 0.0f);
                            Gizmo.drawTransparentQuad(copy42.sum(-X13, X13, -1.0f), new Vector3(f112, f112, 1), abstractC13938b.f94837b.p0(), this.f94867u.e0(), true);
                            i10++;
                            gameObject = selectedGameObject;
                            uIRect = rect;
                            size = i13;
                            X10 = i11;
                            y11 = hVar32;
                        }
                        return z11;
                    }
                }
            }
            x10 = (int) scale.getX();
            size = 0;
            tc.h y102 = h10.y(GUIUtils.TouchFilter.Down, true);
            tc.h y112 = h10.y(GUIUtils.TouchFilter.Up, true);
            boolean z112 = touchCaptured;
            i10 = 0;
            while (i10 < inSceneOptions.size()) {
            }
            return z112;
        }
        size = (int) ((((inSceneOptions.size() * X12) + ((inSceneOptions.size() - 1) * X10)) / 2.0f) - (X10 / 4.0f));
        x10 = (int) (scale.getX() / 2.0f);
        tc.h y1022 = h10.y(GUIUtils.TouchFilter.Down, true);
        tc.h y1122 = h10.y(GUIUtils.TouchFilter.Up, true);
        boolean z1122 = touchCaptured;
        i10 = 0;
        while (i10 < inSceneOptions.size()) {
        }
        return z1122;
    }

    public final boolean T(GameObject selectedGameObject) {
        UIRect uIRect;
        UIController uIController = (UIController) selectedGameObject.i0(UIController.class);
        if (uIController == null || (uIRect = (UIRect) selectedGameObject.c0(Component.e.UIRect)) == null) {
            return false;
        }
        Panel3DView h10 = h();
        uIController.getControllerScreenRect().c();
        float b10 = uIController.getControllerScreenRect().b();
        Vector3 vector3 = new Vector3(0.1f);
        vector3.setX(uIRect.getScreenRect().c());
        vector3.setY(uIRect.getScreenRect().b());
        return R(selectedGameObject, h10, b10, 2, S(selectedGameObject, uIRect, 2, vector3, S(selectedGameObject, uIRect, 2, vector3, false, this.f94853g, E.TopCenter), this.f94854h, E.BottomCenter), uIRect);
    }

    public final UIController U() {
        try {
            List<Component> h10 = R8.f.h(UIController.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                UIController uIController = (UIController) h10.get(i10);
                if (uIController != null && uIController.isHierarchyActive()) {
                    return uIController;
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final Vec2I V(UIRect rect) {
        Vec2I vec2I = new Vec2I();
        vec2I.j((int) (rect.getScreenRect().d() + (rect.getScreenRect().c() / 2.0f)));
        vec2I.k(rect.getScreenRect().e() + rect.getScreenRect().b());
        return vec2I;
    }

    public D W() {
        return this.f94858l;
    }

    public final float X() {
        return N7.c.f(50) * (1.0f / h().f71460a0.f97746a.getScaledRectHeight()) * h().cameraZoom * 0.01f;
    }

    public final Vec2I Y(UIRect rect) {
        Vec2I vec2I = new Vec2I();
        vec2I.j(rect.getScreenRect().d());
        vec2I.k((int) (rect.getScreenRect().e() + (rect.getScreenRect().b() / 2.0f)));
        return vec2I;
    }

    public final Vec2I Z(UIRect rect) {
        Vec2I vec2I = new Vec2I();
        vec2I.j(rect.getScreenRect().d() + rect.getScreenRect().c());
        vec2I.k((int) (rect.getScreenRect().e() + (rect.getScreenRect().b() / 2.0f)));
        return vec2I;
    }

    @Override
    public boolean a(GameObject gameObject) {
        if (gameObject != null && ((UIController) gameObject.h0(Component.e.UIController)) != null) {
            return true;
        }
        N7.c.v0("Object needs to be a UI object.");
        return false;
    }

    public final Vec2I a0(UIRect rect) {
        Vec2I vec2I = new Vec2I();
        vec2I.j((int) (rect.getScreenRect().d() + (rect.getScreenRect().c() / 2.0f)));
        vec2I.k(rect.getScreenRect().e());
        return vec2I;
    }

    @Override
    public Boolean b() {
        return Boolean.FALSE;
    }

    public GameObject b0(GameObject gameObject, int x10, int y10) {
        UIRect uIRect;
        for (int D10 = gameObject.D() - 1; D10 >= 0; D10--) {
            GameObject b02 = b0(gameObject.C(D10), x10, y10);
            if (b02 != null) {
                return b02;
            }
        }
        if (!gameObject.i1() || (uIRect = (UIRect) gameObject.c0(Component.e.UIRect)) == null) {
            return null;
        }
        W9.c screenRect = uIRect.getScreenRect();
        int d10 = screenRect.d();
        int e10 = screenRect.e();
        int f10 = screenRect.f();
        int g10 = screenRect.g();
        if (x10 < d10 || x10 > f10 || y10 < e10 || y10 > g10) {
            return null;
        }
        return gameObject;
    }

    @Override
    public boolean c() {
        return false;
    }

    public void c0() {
        this.f94869w = null;
        this.f94868v = EnumC13939c.Rect;
        this.f94865s = new ColorINT(Theme.i(f94851y));
        this.f94866t = new ColorINT(Theme.i(f94852z));
        this.f94867u = new ColorINT(Theme.i(Theme.T.PANEL));
        f94849K.J(Theme.i(f94842D));
        this.f94861o = false;
    }

    @Override
    public boolean d() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void e() {
        boolean z10;
        d0();
        Panel3DView h10 = h();
        h10.cameraPitch = 0.0f;
        h10.cameraYaw = 0.0f;
        h10.selectedPosition.setZ(4995.0f);
        if (this.f94860n) {
            this.f94858l = this.f94857k.get(0);
        }
        C3589a c3589a = W7.b.f27309i;
        GameObject gameObject = c3589a.f31909a.f31910a;
        if (gameObject != null) {
            this.f94860n = false;
            UIController uIController = (UIController) gameObject.i0(UIController.class);
            if (uIController != null && uIController.getResolutionMode() == UIController.s.FixedResolution) {
                this.f94860n = true;
            }
            int i10 = u.f94927a[this.f94868v.ordinal()];
            if (i10 == 1) {
                z10 = T(c3589a.f31909a.f31910a);
            } else if (i10 == 2) {
                z10 = M(c3589a.f31909a.f31910a);
            } else if (i10 == 3) {
                z10 = P(c3589a.f31909a.f31910a);
            }
            if (z10) {
                try {
                    List<Component> h11 = R8.f.h(UIController.class);
                    for (int i11 = 0; i11 < h11.size(); i11++) {
                        UIController uIController2 = (UIController) h11.get(i11);
                        if (uIController2 != null && uIController2.isHierarchyActive()) {
                            if (h().w0()) {
                                D d10 = this.f94858l;
                                uIController2.f78049W = d10.f94877b;
                                uIController2.f78050X = d10.f94878c;
                            } else {
                                uIController2.f78049W = -1;
                                uIController2.f78050X = -1;
                            }
                            uIController2.updateOnEditor();
                            L(h10, z10, uIController2);
                        }
                    }
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            return;
        }
        z10 = false;
        if (z10) {
        }
    }

    public final boolean e0(tc.h touch, Vector3 quadPos, int buttonSize) {
        Panel3DView h10 = h();
        if (touch == null || touch.f117309e || !C15169a.f108812u.k()) {
            return false;
        }
        Vector2 vector2 = new Vector2();
        h10.a0(touch, vector2);
        aa.d screenPointToWorldRay = h10.f71460a0.f97746a.screenPointToWorldRay(vector2);
        int i10 = (int) (-screenPointToWorldRay.f().getX());
        int y10 = (int) screenPointToWorldRay.f().getY();
        int i11 = (int) (-quadPos.getX());
        int y11 = (int) quadPos.getY();
        return i10 >= i11 && i10 <= i11 + buttonSize && y10 >= y11 && y10 <= buttonSize + y11;
    }

    @Override
    public MousePicker.i g() {
        return MousePicker.f71420T;
    }

    @Override
    public String i() {
        return "UI Editor";
    }

    @Override
    public int j() {
        return Theme.i(f94840B);
    }

    @Override
    public int k() {
        return Theme.i(f94841C);
    }

    @Override
    public int l() {
        return Theme.i(f94839A);
    }

    @Override
    public int m() {
        return Theme.i(f94851y);
    }

    @Override
    public void o(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.o(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        new M7.o(R.drawable.touch, new t(), c.b.Top, activity).N0(f94851y).B0(f94852z).k0(f94840B).E0(f94841C).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
    }

    @Override
    public void r(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        p pVar = new p();
        c.b bVar = c.b.Disconnected;
        M7.c cVar = new M7.c(R.drawable.paste, pVar, bVar, activity);
        Ac.b bVar2 = f94851y;
        M7.c U10 = cVar.U(bVar2);
        Ac.b bVar3 = f94852z;
        M7.c M10 = U10.M(bVar3);
        Ac.b bVar4 = f94840B;
        M7.c k02 = M10.k0(bVar4);
        Ac.b bVar5 = f94841C;
        M7.c P10 = k02.P(bVar5);
        Ac.b bVar6 = Theme.T.PANEL;
        elements.add(P10.e0(new ColorINT(Theme.i(bVar6))).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.c(R.drawable.unselect, new q(), bVar, activity).U(bVar2).M(bVar3).k0(bVar4).P(bVar5).e0(new ColorINT(Theme.i(bVar6))).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.c(R.drawable.new_object, new r(), bVar, activity).U(bVar2).M(bVar3).k0(bVar4).P(bVar5).e0(new ColorINT(Theme.i(bVar6))).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        e X10 = new e(R.drawable.sui_mask, this.f94858l.f94876a, new s(), activity).T(bVar2).M(bVar3).f0(bVar4).P(bVar5).b0(new ColorINT(Theme.i(bVar6))).X((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        this.f94859m = X10;
        elements.add(X10);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
    }

    @Override
    public void s(Activity activity, Panel3DView panel3DView) {
        try {
            List<Component> h10 = R8.f.h(UIController.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                UIController uIController = (UIController) h10.get(i10);
                if (uIController != null && uIController.isHierarchyActive()) {
                    uIController.f78049W = -1;
                    uIController.f78050X = -1;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        panel3DView.f71460a0.f97746a.setProjection(Camera.G.Perspective);
        c0();
    }

    @Override
    public void t() {
    }

    @Override
    public void u(Activity activity, Panel3DView panel3DView) {
        panel3DView.S1(Panel3DView.j.Disable, true, true);
        panel3DView.f71460a0.f97746a.setProjection(Camera.G.Orthographic);
        panel3DView.cameraPitch = 0.0f;
        panel3DView.cameraYaw = 0.0f;
        if (U() != null) {
            panel3DView.cameraZoom = r7.getFrameBufferW();
            panel3DView.selectedPosition.set((-r7.getFrameBufferW()) / 2.0f, r7.getFrameBufferH() / 2.0f, 4995.0f);
        }
        if (this.f94853g.isEmpty()) {
            this.f94853g.add(new v(8, w3.n.h(R.drawable.slide, 64, true, false, true), panel3DView));
            this.f94853g.add(new w(8, w3.n.h(R.drawable.bin_no_padding_square, 64, true, false, true)));
            this.f94853g.add(new x(8, w3.n.h(R.drawable.axis_v3_position, 64, true, false, true)));
            this.f94853g.add(new y(8, w3.n.h(R.drawable.brush_size, 64, true, false, true)));
            this.f94853g.add(new z(8, w3.n.h(R.drawable.width, 64, true, false, true)));
            this.f94853g.add(new A(8, w3.n.h(R.drawable.sui_constraint, 64, true, false, true)));
        }
        if (this.f94855i.isEmpty()) {
            this.f94855i.add(new B(8, w3.n.h(R.drawable.close_x, 64, true, false, true)));
        }
        if (this.f94856j.isEmpty()) {
            this.f94856j.add(new C(8, w3.n.h(R.drawable.close_x, 64, true, false, true)));
        }
        if (this.f94862p == null) {
            this.f94862p = w3.n.c(R.drawable.uieditor_inscn_button_background, 64);
        }
        if (this.f94863q == null) {
            this.f94863q = w3.n.h(R.drawable.minus, 64, true, false, true);
        }
        if (this.f94864r == null) {
            this.f94864r = w3.n.h(R.drawable.anchor_plus, 64, true, false, true);
        }
        c0();
    }

    @Override
    public void v() {
        this.f94865s = new ColorINT(Theme.i(f94851y));
        this.f94866t = new ColorINT(Theme.i(f94852z));
        this.f94867u = new ColorINT(Theme.i(Theme.T.PANEL));
        f94849K.J(Theme.i(f94842D));
    }

    @Override
    public ColorINT w() {
        return f94847I;
    }

    @Override
    public ColorINT x() {
        return f94848J;
    }

    @Override
    public ColorINT y() {
        return f94849K;
    }
}
