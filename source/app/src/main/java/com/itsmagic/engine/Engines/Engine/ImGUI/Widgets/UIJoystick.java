package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import D5.h;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIImageHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;
import ub.p;

public class UIJoystick extends ImGuiRenderableComponent {

    public static final String f78597W = "UIJoystick";

    public static final Class f78598X = UIJoystick.class;

    public final UVec2I f78599P;

    public final UVec2I f78600Q;

    public final Vector2 f78601R;

    public final Vector2 f78602S;

    public UIAxisEventListener f78603T;

    public int f78604U;

    public Component f78605V;

    @Expose
    @eb.f
    private ColorINT backgroundColor;

    @Expose
    private UIImageHandler backgroundImgH;

    @Expose
    @eb.f
    private float handleSizePercentage;

    @Expose
    @eb.f
    private ColorINT handlerColor;

    @Expose
    private UIImageHandler handlerImgH;

    @Expose
    public boolean invertX;

    @Expose
    public boolean invertY;

    @Expose
    @eb.f
    private float lerpSpeed;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIJoystick.f78598X;
        }

        @Override
        public String c() {
            return UIJoystick.f78597W;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "Joystick";
        }
    }

    public class b implements c.o0 {

        public final Context f78606a;

        public class a implements h {

            public class RunnableC1322a implements Runnable {

                public final Variable f78609b;

                public RunnableC1322a(final Variable val$variable) {
                    this.f78609b = val$variable;
                }

                @Override
                public void run() {
                    UIJoystick.this.setBackgroundColor(this.f78609b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIJoystick.this.backgroundColor != null ? new Variable("temp", UIJoystick.this.backgroundColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1322a(variable));
                }
            }
        }

        public b(final Context val$context) {
            this.f78606a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIJoystick uIJoystick = UIJoystick.this;
            entries.add(bVar.d(uIJoystick.f79250n, uIJoystick, "backgroundColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            entries.addAll(UIJoystick.this.backgroundImgH.i("Image", this.f78606a));
            return entries;
        }
    }

    public class c implements c.o0 {

        public final Context f78611a;

        public class a implements h {

            public class RunnableC1323a implements Runnable {

                public final Variable f78614b;

                public RunnableC1323a(final Variable val$variable) {
                    this.f78614b = val$variable;
                }

                @Override
                public void run() {
                    UIJoystick.this.setHandlerColor(this.f78614b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIJoystick.this.handlerColor != null ? new Variable("temp", UIJoystick.this.handlerColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1323a(variable));
                }
            }
        }

        public c(final Context val$context) {
            this.f78611a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIJoystick uIJoystick = UIJoystick.this;
            entries.add(bVar.d(uIJoystick.f79250n, uIJoystick, "handlerColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            entries.addAll(UIJoystick.this.handlerImgH.i("Image", this.f78611a));
            return entries;
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIJoystick.this.handleSizePercentage + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIJoystick.this.handleSizePercentage = variable.float_value;
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UIJoystick.this.invertX + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIJoystick.this.invertX = variable.booolean_value.booleanValue();
            }
        }
    }

    public class f implements h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UIJoystick.this.invertY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIJoystick.this.invertY = variable.booolean_value.booleanValue();
            }
        }
    }

    public class g implements h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIJoystick.this.lerpSpeed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIJoystick.this.lerpSpeed = variable.float_value;
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIJoystick() {
        super(f78597W);
        this.backgroundColor = new ColorINT();
        this.backgroundImgH = new UIImageHandler();
        this.handlerColor = new ColorINT();
        this.handlerImgH = new UIImageHandler();
        this.handleSizePercentage = 0.6f;
        this.invertY = false;
        this.invertX = false;
        this.lerpSpeed = 1.0f;
        this.f78599P = new UVec2I();
        this.f78600Q = new UVec2I();
        this.f78601R = new Vector2();
        this.f78602S = new Vector2();
        this.f78604U = 0;
    }

    private UIAxisEventListener getAxisEventListener() {
        UIAxisEventListener uIAxisEventListener = this.f78603T;
        if (uIAxisEventListener != null && uIAxisEventListener.f79250n != this.f79250n) {
            this.f78603T = null;
        }
        UIAxisEventListener uIAxisEventListener2 = this.f78603T;
        if (uIAxisEventListener2 == null || uIAxisEventListener2.f79250n == null) {
            GameObject gameObject = this.f79250n;
            Component.e eVar = Component.e.UIAxisEventListener;
            if (gameObject.c0(eVar) == null) {
                this.f79250n.r(new UIAxisEventListener());
            }
            UIAxisEventListener uIAxisEventListener3 = this.f78603T;
            if (uIAxisEventListener3 == null || uIAxisEventListener3.f79250n == null) {
                this.f78603T = (UIAxisEventListener) this.f79250n.c0(eVar);
            }
        }
        return this.f78603T;
    }

    @Override
    public void afterTouchUpdate() {
        super.afterTouchUpdate();
        if (this.f79250n == null || getTouchTrigger() == null || getTouchTrigger().getSelectedTouch() == null) {
            return;
        }
        requestUIDirty();
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
    public Vector2 getAxisValue() {
        return this.f78602S;
    }

    @InterfaceC15237a
    public ColorINT getBackgroundColor() {
        return this.backgroundColor;
    }

    @InterfaceC15237a
    public int getBackgroundSpriteIndex() {
        return this.backgroundImgH.l();
    }

    @InterfaceC15237a
    public p getBackgroundTexture() {
        return this.backgroundImgH.n();
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(this.backgroundImgH.g(dependencyRequest).f9114a);
        c2632k.f9114a.addAll(this.handlerImgH.g(dependencyRequest).f9114a);
        return c2632k;
    }

    @InterfaceC15237a
    public float getHandleSizePercentage() {
        return this.handleSizePercentage;
    }

    @InterfaceC15237a
    public ColorINT getHandlerColor() {
        return this.handlerColor;
    }

    @InterfaceC15237a
    public int getHandlerSpriteIndex() {
        return this.handlerImgH.l();
    }

    @InterfaceC15237a
    public p getHandlerTexture() {
        return this.handlerImgH.n();
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_joystick;
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
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Background", new b(context)));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Handle", new c(context)));
        C5.b bVar = new C5.b(new d(), "Handle size", b.a.SLFloatSlider, 0.0f, 1.0f, 0.0f);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        inspectorEntries.add(bVar.d(gameObject, this, "handleSizePercentage", cVar));
        e eVar = new e();
        String l10 = Lang.l(Lang.T.INVERT_X);
        b.a aVar = b.a.SLBoolean;
        inspectorEntries.add(new C5.b(eVar, l10, aVar, context));
        inspectorEntries.add(new C5.b(new f(), Lang.l(Lang.T.INVERT_Y), aVar, context));
        inspectorEntries.add(new C5.b(new g(), "Lerp speed", b.a.SLFloat).d(this.f79250n, this, "lerpSpeed", cVar));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public float getLerpSpeed() {
        return this.lerpSpeed;
    }

    @Override
    public String getTitle() {
        return "Joystick";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIJoystick;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        listener.b("(" + this.f79250n.getName() + "),(Joystick),(Loading),(background)");
        this.backgroundImgH.q();
        listener.e();
        listener.b("(" + this.f79250n.getName() + "),(Joystick),(Loading),(handler)");
        this.handlerImgH.q();
        listener.e();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f78604U = 0;
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        float f10 = getUIRectComponent().getGlobalPosition().f();
        float g10 = getUIRectComponent().getGlobalPosition().g();
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f11 = getUIRectComponent().getGlobalSize().f();
        float X02 = Nc.b.X0(e10, f11);
        float f12 = this.handleSizePercentage * X02;
        this.f78599P.g((int) (f10 + (e10 / 2.0f)), (int) (g10 + (f11 / 2.0f)));
        if (getTouchTrigger() == null || !getTouchTrigger().isPressed() || getTouchTrigger().getSelectedTouch() == null) {
            this.f78600Q.h(this.f78599P);
            this.f78602S.w0(0.0f, 0.0f);
        } else {
            UVec2I touchPos = controller.getTouchPos(getTouchTrigger().getSelectedTouch());
            Vector2 vector2 = new Vector2(touchPos.e() - this.f78599P.e(), touchPos.f() - this.f78599P.f());
            float f13 = X02 / 2.0f;
            if (vector2.lengthF() > f13) {
                vector2.k0();
                this.f78602S.x0(vector2);
                vector2.Z(f13);
            } else {
                this.f78602S.x0(vector2);
                this.f78602S.C(f13);
            }
            this.f78600Q.g((int) (this.f78599P.e() + vector2.getX()), (int) (this.f78599P.f() + vector2.getY()));
        }
        float f14 = X02 / 2.0f;
        ImGui.G((int) (this.f78599P.e() - f14), (int) (this.f78599P.f() - f14));
        ImGui.l(or(this.backgroundImgH.n(), P9.a.j().g()), this.backgroundColor, X02, X02, this.backgroundImgH);
        float f15 = f12 / 2.0f;
        ImGui.G((int) (this.f78601R.getX() - f15), (int) (this.f78601R.getY() - f15));
        ImGui.l(or(this.handlerImgH.n(), P9.a.j().h()), this.handlerColor, f12, f12, this.handlerImgH);
        if (this.invertX) {
            this.f78602S.a0(-1.0f, 1.0f);
        }
        if (!this.invertY) {
            this.f78602S.a0(1.0f, -1.0f);
        }
        getAxisEventListener().setValue(this.f78602S);
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.backgroundImgH.f(getRequestUIDirtyRunnable());
        this.handlerImgH.f(getRequestUIDirtyRunnable());
        float z10 = Nc.b.z(this.f78601R.getX(), this.f78600Q.e(), K8.d.b() * 15.0f * this.lerpSpeed);
        boolean z11 = this.f78601R.getX() != z10;
        this.f78601R.B0(z10);
        float z12 = Nc.b.z(this.f78601R.getY(), this.f78600Q.f(), K8.d.b() * 15.0f * this.lerpSpeed);
        if (this.f78601R.getY() != z12) {
            z11 = true;
        }
        this.f78601R.C0(z12);
        int i10 = this.f78604U;
        if (i10 < 3) {
            this.f78604U = i10 + 1;
            this.f78601R.B0(this.f78600Q.e());
            this.f78601R.C0(this.f78600Q.f());
        }
        if (z11) {
            requestUIDirty();
            markLayoutDirty();
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.backgroundImgH.s(dictionary);
        this.handlerImgH.s(dictionary);
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
        if (this.backgroundImgH.l() == spriteIndex) {
            return;
        }
        this.backgroundImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setBackgroundTexture(p texture) {
        if (this.backgroundImgH.n() == texture) {
            return;
        }
        this.backgroundImgH.x(texture);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setHandleSizePercentage(float handleSizePercentage) {
        if (this.handleSizePercentage == handleSizePercentage) {
            return;
        }
        this.handleSizePercentage = handleSizePercentage;
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
        if (this.handlerImgH.l() == spriteIndex) {
            return;
        }
        this.handlerImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setHandlerTexture(p texture) {
        if (this.handlerImgH.n() == texture) {
            return;
        }
        this.handlerImgH.x(texture);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setLerpSpeed(float lerpSpeed) {
        if (this.lerpSpeed == lerpSpeed) {
            return;
        }
        this.lerpSpeed = lerpSpeed;
        requestUIDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78605V = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78605V;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIJoystick uIJoystick = new JAVARuntime.UIJoystick(this);
        this.f78605V = uIJoystick;
        return uIJoystick;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIJoystick uIJoystick = new UIJoystick();
        uIJoystick.backgroundColor = ColorINT.k(this.backgroundColor);
        uIJoystick.handlerColor = ColorINT.k(this.handlerColor);
        uIJoystick.backgroundImgH = this.backgroundImgH.clone();
        uIJoystick.handlerImgH = this.handlerImgH.clone();
        uIJoystick.handleSizePercentage = this.handleSizePercentage;
        uIJoystick.invertX = this.invertX;
        uIJoystick.invertY = this.invertY;
        uIJoystick.lerpSpeed = this.lerpSpeed;
        return uIJoystick;
    }
}
