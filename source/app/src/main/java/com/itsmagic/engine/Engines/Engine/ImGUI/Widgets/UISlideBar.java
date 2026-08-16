package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import android.content.Context;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.UIPBarComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIImageHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;
import ub.p;

public class UISlideBar extends UIPBarComponent {

    public static final String f78768Q = "UISlideBar";

    public static final Class f78769R = UISlideBar.class;

    public Component f78770P;

    @Expose
    @eb.f
    private ColorINT backgroundColor;

    @Expose
    private UIImageHandler backgroundH;

    @Expose
    @eb.f
    private float border;

    @Expose
    @eb.f
    private ColorINT handlerColor;

    @Expose
    private UIImageHandler handlerH;

    @Expose
    private R9.a orientation;

    @Expose
    private Square5I padding;

    @Expose
    @eb.f
    private float value;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UISlideBar.f78769R;
        }

        @Override
        public String c() {
            return UISlideBar.f78768Q;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "SlideBar";
        }
    }

    public class b extends c.n0<R9.a> {
        public b() {
        }

        @Override
        public void set(R9.a value) {
            UISlideBar.this.orientation = value;
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISlideBar.this.value + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UISlideBar.this.setValue(variable.float_value);
            }
        }
    }

    public class d implements c.o0 {

        public final Context f78773a;

        public class a implements D5.h {

            public class RunnableC1331a implements Runnable {

                public final Variable f78776b;

                public RunnableC1331a(final Variable val$variable) {
                    this.f78776b = val$variable;
                }

                @Override
                public void run() {
                    UISlideBar.this.setBackgroundColor(this.f78776b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UISlideBar.this.backgroundColor != null ? new Variable("temp", UISlideBar.this.backgroundColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1331a(variable));
                }
            }
        }

        public d(final Context val$context) {
            this.f78773a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UISlideBar uISlideBar = UISlideBar.this;
            entries.add(bVar.d(uISlideBar.f79250n, uISlideBar, "backgroundColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            entries.addAll(UISlideBar.this.backgroundH.i("Image", this.f78773a));
            return entries;
        }
    }

    public class e implements c.o0 {

        public final Context f78778a;

        public class a implements D5.h {

            public class RunnableC1332a implements Runnable {

                public final Variable f78781b;

                public RunnableC1332a(final Variable val$variable) {
                    this.f78781b = val$variable;
                }

                @Override
                public void run() {
                    UISlideBar.this.setHandlerColor(this.f78781b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UISlideBar.this.handlerColor != null ? new Variable("temp", UISlideBar.this.handlerColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1332a(variable));
                }
            }
        }

        public e(final Context val$context) {
            this.f78778a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UISlideBar uISlideBar = UISlideBar.this;
            entries.add(bVar.d(uISlideBar.f79250n, uISlideBar, "handlerColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            entries.addAll(UISlideBar.this.handlerH.i("Image", this.f78778a));
            return entries;
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISlideBar.this.border + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UISlideBar.this.setBorder(variable.float_value);
            }
        }
    }

    public class g implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UISlideBar.this.padding.i() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UISlideBar.this.padding.p(variable.int_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UISlideBar.this.padding.k() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UISlideBar.this.padding.r(variable.int_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", UISlideBar.this.padding.j() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UISlideBar.this.padding.q(variable.int_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", UISlideBar.this.padding.b() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UISlideBar.this.padding.o(variable.int_value);
                }
            }
        }

        public g() {
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

    public static class h {

        public static final int[] f78789a;

        static {
            int[] iArr = new int[R9.a.values().length];
            f78789a = iArr;
            try {
                iArr[R9.a.Horizontal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78789a[R9.a.Vertical.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UISlideBar() {
        super(f78768Q);
        this.orientation = R9.a.Horizontal;
        this.backgroundColor = new ColorINT();
        this.handlerColor = new ColorINT(255, 197, 0);
        this.backgroundH = new UIImageHandler();
        this.handlerH = new UIImageHandler();
        this.border = 2.0f;
        this.value = 0.5f;
        this.padding = new Square5I();
    }

    @Override
    public void afterTouchUpdate() {
        super.afterTouchUpdate();
        if (this.f79250n == null || getTouchTrigger() == null || getUIRectComponent() == null) {
            return;
        }
        UIController uIControllerComponent = getUIControllerComponent();
        if (getTouchTrigger().getSelectedTouch() != null) {
            if (getTouchTrigger().isPressed() || getTouchTrigger().isDown()) {
                UVec2I touchPos = uIControllerComponent.getTouchPos(getTouchTrigger().getSelectedTouch());
                int e10 = touchPos.e();
                int f10 = touchPos.f();
                float f11 = getUIRectComponent().getGlobalPosition().f();
                float g10 = getUIRectComponent().getGlobalPosition().g();
                float e11 = getUIRectComponent().getGlobalSize().e();
                float f12 = getUIRectComponent().getGlobalSize().f();
                int i10 = h.f78789a[this.orientation.ordinal()];
                if (i10 == 1) {
                    setValue(Nc.b.I((e10 - f11) / e11));
                } else {
                    if (i10 != 2) {
                        return;
                    }
                    setValue(Nc.b.I((f10 - g10) / f12));
                }
            }
        }
    }

    @Override
    public void calculateInternalSizeEnd(UIController controller) {
    }

    @Override
    public void calculateInternalSizeStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        setInternalWidgetRect(0, 0, r6, r7, r6, r7);
    }

    @Override
    public int countAsync() {
        return 2;
    }

    @InterfaceC15237a
    public ColorINT getBackgroundColor() {
        return this.backgroundColor;
    }

    @InterfaceC15237a
    public int getBackgroundSpriteIndex() {
        return this.backgroundH.l();
    }

    @InterfaceC15237a
    public p getBackgroundTexture() {
        return this.backgroundH.n();
    }

    @InterfaceC15237a
    public float getBorder() {
        return this.border;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(this.backgroundH.g(dependencyRequest).f9114a);
        return c2632k;
    }

    @InterfaceC15237a
    public ColorINT getHandlerColor() {
        return this.handlerColor;
    }

    @InterfaceC15237a
    public int getHandlerSpriteIndex() {
        return this.handlerH.l();
    }

    @InterfaceC15237a
    public p getHandlerTexture() {
        return this.handlerH.n();
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_button_v3;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        List<C5.b> inspectorEntries = super.getInspectorEntries(context);
        if (inspectorEntries == null) {
            inspectorEntries = new SteppedArrayList<>();
        }
        if (context == null) {
            return inspectorEntries;
        }
        inspectorEntries.add(F5.c.i("Orientation", R9.a.class, this.orientation, new b()));
        C5.b bVar = new C5.b(new c(), XMLExporter.ELEMENT_VALUE, b.a.SLFloat01);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        inspectorEntries.add(bVar.d(gameObject, this, "value", cVar));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Background", new d(context)));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Handler", new e(context)));
        inspectorEntries.add(new C5.b(new f(), "Border", b.a.SLFloat).d(this.f79250n, this, "border", cVar));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Padding", new g()));
        return inspectorEntries;
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

    @Override
    @InterfaceC15237a
    public R9.a getOrientation() {
        return this.orientation;
    }

    @Override
    public float getProgressValue() {
        return this.value;
    }

    @Override
    public String getTitle() {
        return "SlideBar";
    }

    @InterfaceC15237a
    public float getValue() {
        return this.value;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        listener.b("(" + this.f79250n.getName() + "),(DynamicJoystick),(Loading),(background)");
        this.backgroundH.q();
        listener.e();
        listener.b("(" + this.f79250n.getName() + "),(DynamicJoystick),(Loading),(handler)");
        this.handlerH.q();
        listener.e();
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        ImGui.nativeSetCursorPos(getUIRectComponent().getGlobalPosition().f(), getUIRectComponent().getGlobalPosition().g());
        ColorINT colorINT = this.backgroundColor;
        p or = or(this.backgroundH.n(), P9.a.j().j());
        boolean or9p = or9p(this.backgroundH, P9.a.j().j());
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f10 = getUIRectComponent().getGlobalSize().f();
        float dp = dp(this.border);
        if (or9p) {
            ImGui.J("", or, dp, 0.0f, 0.0f, colorINT, null, 0.0f, e10, f10, 0L, true, this.backgroundH);
        } else {
            ImGui.l(or, colorINT, e10, f10, this.backgroundH);
        }
        int dp2 = dp(this.padding.e());
        int dp3 = dp(this.padding.g());
        int dp4 = dp(this.padding.d());
        int dp5 = dp(this.padding.h());
        ImGui.nativeSetCursorPos(getUIRectComponent().getGlobalPosition().f() + dp2, getUIRectComponent().getGlobalPosition().g() + dp3);
        ColorINT colorINT2 = this.handlerColor;
        p or2 = or(this.handlerH.n(), P9.a.j().k());
        boolean or9p2 = or9p(this.handlerH, P9.a.j().k());
        float e11 = getUIRectComponent().getGlobalSize().e() - dp4;
        float f11 = getUIRectComponent().getGlobalSize().f() - dp5;
        int i10 = h.f78789a[this.orientation.ordinal()];
        if (i10 == 1) {
            e11 *= this.value;
        } else if (i10 == 2) {
            f11 *= this.value;
        }
        float f12 = e11;
        float f13 = f11;
        float dp6 = dp(this.border);
        if (or9p2) {
            ImGui.J("", or2, dp6, 0.0f, 0.0f, colorINT2, null, 0.0f, f12, f13, 0L, true, this.handlerH);
        } else {
            ImGui.l(or2, colorINT2, f12, f13, this.handlerH);
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.backgroundH.f(getRequestUIDirtyRunnable());
        this.handlerH.f(getRequestUIDirtyRunnable());
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.backgroundH.s(dictionary);
    }

    @InterfaceC15237a
    public void setBackgroundColor(ColorINT backgroundColor) {
        ColorINT colorINT = this.backgroundColor;
        if (colorINT == null && backgroundColor == null) {
            return;
        }
        if (colorINT == null || backgroundColor == null || colorINT.intColor != backgroundColor.intColor) {
            this.backgroundColor = backgroundColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setBackgroundSpriteIndex(int spriteIndex) {
        if (this.backgroundH.l() == spriteIndex) {
            return;
        }
        this.backgroundH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setBackgroundTexture(p texture) {
        if (this.backgroundH.n() == texture) {
            return;
        }
        this.backgroundH.x(texture);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setBorder(float border) {
        if (this.border == border) {
            return;
        }
        this.border = border;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setHandlerColor(ColorINT handlerColor) {
        ColorINT colorINT = this.handlerColor;
        if (colorINT == null && handlerColor == null) {
            return;
        }
        if (colorINT == null || handlerColor == null || colorINT.intColor != handlerColor.intColor) {
            this.handlerColor = handlerColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setHandlerSpriteIndex(int spriteIndex) {
        if (this.handlerH.l() == spriteIndex) {
            return;
        }
        this.handlerH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setHandlerTexture(p texture) {
        if (this.handlerH.n() == texture) {
            return;
        }
        this.handlerH.x(texture);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setJRPaddingBottom(int v10) {
        if (this.padding.b() == v10) {
            return;
        }
        this.padding.o(v10);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setJRPaddingLeft(int v10) {
        if (this.padding.i() == v10) {
            return;
        }
        this.padding.p(v10);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setJRPaddingRight(int v10) {
        if (this.padding.j() == v10) {
            return;
        }
        this.padding.q(v10);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setJRPaddingTop(int v10) {
        if (this.padding.k() == v10) {
            return;
        }
        this.padding.r(v10);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setOrientation(R9.a orientation) {
        if (this.orientation == orientation) {
            return;
        }
        this.orientation = orientation;
        requestUIDirty();
    }

    @Override
    public void setRuntime(Component run) {
        this.f78770P = run;
    }

    @InterfaceC15237a
    public void setValue(float value) {
        float I10 = Nc.b.I(value);
        if (this.value == I10) {
            return;
        }
        this.value = I10;
        requestUIDirty();
        markLayoutDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78770P;
        if (component != null) {
            return component;
        }
        JAVARuntime.UISlideBar uISlideBar = new JAVARuntime.UISlideBar(this);
        this.f78770P = uISlideBar;
        return uISlideBar;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UISlideBar uISlideBar = new UISlideBar();
        uISlideBar.border = this.border;
        uISlideBar.value = this.value;
        uISlideBar.backgroundColor = ColorINT.k(this.backgroundColor);
        uISlideBar.backgroundH = this.backgroundH.clone();
        uISlideBar.handlerColor = ColorINT.k(this.handlerColor);
        uISlideBar.handlerH = this.handlerH.clone();
        uISlideBar.padding = this.padding.clone();
        return uISlideBar;
    }
}
