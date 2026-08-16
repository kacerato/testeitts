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

public class UIProgressBar extends UIPBarComponent {

    public static final String f78648Q = "UIProgressBar";

    public static final Class f78649R = UIProgressBar.class;

    public Component f78650P;

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
    private boolean reverse;

    @Expose
    @eb.f
    private float value;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIProgressBar.f78649R;
        }

        @Override
        public String c() {
            return UIProgressBar.f78648Q;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "ProgressBar";
        }
    }

    public class b extends c.n0<R9.a> {
        public b() {
        }

        @Override
        public void set(R9.a value) {
            UIProgressBar.this.orientation = value;
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIProgressBar.this.value + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIProgressBar.this.setValue(variable.float_value);
            }
        }
    }

    public class d implements c.o0 {

        public final Context f78653a;

        public class a implements D5.h {

            public class RunnableC1324a implements Runnable {

                public final Variable f78656b;

                public RunnableC1324a(final Variable val$variable) {
                    this.f78656b = val$variable;
                }

                @Override
                public void run() {
                    UIProgressBar.this.setBackgroundColor(this.f78656b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIProgressBar.this.backgroundColor != null ? new Variable("temp", UIProgressBar.this.backgroundColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1324a(variable));
                }
            }
        }

        public d(final Context val$context) {
            this.f78653a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIProgressBar uIProgressBar = UIProgressBar.this;
            entries.add(bVar.d(uIProgressBar.f79250n, uIProgressBar, "backgroundColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            entries.addAll(UIProgressBar.this.backgroundH.i("Image", this.f78653a));
            return entries;
        }
    }

    public class e implements c.o0 {

        public final Context f78658a;

        public class a implements D5.h {

            public class RunnableC1325a implements Runnable {

                public final Variable f78661b;

                public RunnableC1325a(final Variable val$variable) {
                    this.f78661b = val$variable;
                }

                @Override
                public void run() {
                    UIProgressBar.this.setHandlerColor(this.f78661b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIProgressBar.this.handlerColor != null ? new Variable("temp", UIProgressBar.this.handlerColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1325a(variable));
                }
            }
        }

        public e(final Context val$context) {
            this.f78658a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIProgressBar uIProgressBar = UIProgressBar.this;
            entries.add(bVar.d(uIProgressBar.f79250n, uIProgressBar, "handlerColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            entries.addAll(UIProgressBar.this.handlerH.i("Image", this.f78658a));
            return entries;
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIProgressBar.this.border + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIProgressBar.this.setBorder(variable.float_value);
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIProgressBar.this.reverse + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIProgressBar.this.setReverse(variable.booolean_value.booleanValue());
            }
        }
    }

    public class h implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIProgressBar.this.padding.i() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIProgressBar.this.padding.p(variable.int_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIProgressBar.this.padding.k() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIProgressBar.this.padding.r(variable.int_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIProgressBar.this.padding.j() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIProgressBar.this.padding.q(variable.int_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIProgressBar.this.padding.b() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIProgressBar.this.padding.o(variable.int_value);
                }
            }
        }

        public h() {
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

    public static class i {

        public static final int[] f78670a;

        static {
            int[] iArr = new int[R9.a.values().length];
            f78670a = iArr;
            try {
                iArr[R9.a.Horizontal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78670a[R9.a.Vertical.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIProgressBar() {
        super(f78648Q);
        this.orientation = R9.a.Horizontal;
        this.backgroundColor = new ColorINT();
        this.handlerColor = new ColorINT(255, 197, 0);
        this.backgroundH = new UIImageHandler();
        this.handlerH = new UIImageHandler();
        this.border = 2.0f;
        this.value = 0.5f;
        this.reverse = false;
        this.padding = new Square5I(2, 2, 2, 2);
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
        inspectorEntries.add(new C5.b(new g(), "Reverse", b.a.SLBoolean));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Padding", new h()));
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
        return "ProgressBar";
    }

    @InterfaceC15237a
    public float getValue() {
        return this.value;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isReverse() {
        return this.reverse;
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
        ColorINT colorINT2 = this.handlerColor;
        p or2 = or(this.handlerH.n(), P9.a.j().k());
        boolean or9p2 = or9p(this.handlerH, P9.a.j().k());
        float e11 = getUIRectComponent().getGlobalSize().e() - dp4;
        float f11 = getUIRectComponent().getGlobalSize().f() - dp5;
        float f12 = getUIRectComponent().getGlobalPosition().f() + dp2;
        float g10 = getUIRectComponent().getGlobalPosition().g() + dp3;
        int i10 = i.f78670a[this.orientation.ordinal()];
        if (i10 == 1) {
            e11 *= this.value;
            if (this.reverse) {
                f12 += (getUIRectComponent().getGlobalSize().e() - dp4) - e11;
            }
        } else if (i10 == 2) {
            f11 *= this.value;
            if (this.reverse) {
                g10 += (getUIRectComponent().getGlobalSize().f() - dp5) - f11;
            }
        }
        float f13 = e11;
        float f14 = f11;
        ImGui.nativeSetCursorPos(f12, g10);
        float dp6 = dp(this.border);
        if (or9p2) {
            ImGui.J("", or2, dp6, 0.0f, 0.0f, colorINT2, null, 0.0f, f13, f14, 0L, true, this.handlerH);
        } else {
            ImGui.l(or2, colorINT2, f13, f14, this.handlerH);
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

    @InterfaceC15237a
    public void setReverse(boolean reverse) {
        if (this.reverse == reverse) {
            return;
        }
        this.reverse = reverse;
        requestUIDirty();
    }

    @Override
    public void setRuntime(Component run) {
        this.f78650P = run;
    }

    @InterfaceC15237a
    public void setValue(float value) {
        float I10 = Nc.b.I(value);
        if (this.value == I10) {
            return;
        }
        this.value = I10;
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78650P;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIProgressBar uIProgressBar = new JAVARuntime.UIProgressBar(this);
        this.f78650P = uIProgressBar;
        return uIProgressBar;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIProgressBar uIProgressBar = new UIProgressBar();
        uIProgressBar.orientation = this.orientation;
        uIProgressBar.border = this.border;
        uIProgressBar.value = this.value;
        uIProgressBar.reverse = this.reverse;
        uIProgressBar.backgroundColor = ColorINT.k(this.backgroundColor);
        uIProgressBar.backgroundH = this.backgroundH.clone();
        uIProgressBar.handlerColor = ColorINT.k(this.handlerColor);
        uIProgressBar.handlerH = this.handlerH.clone();
        uIProgressBar.padding = this.padding.clone();
        return uIProgressBar;
    }
}
