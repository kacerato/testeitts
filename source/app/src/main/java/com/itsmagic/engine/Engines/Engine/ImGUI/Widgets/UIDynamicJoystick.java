package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import android.content.Context;
import com.ardor3d.util.export.xml.XMLExporter;
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
import com.tonyodev.fetch2core.server.FileRequest;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;
import ub.p;

public class UIDynamicJoystick extends ImGuiRenderableComponent {

    public static final String f78470X = "UIDynamicJoystick";

    public static final Class f78471Y = UIDynamicJoystick.class;

    public final UVec2I f78472P;

    public final UVec2I f78473Q;

    public final Vector2 f78474R;

    public final Vector2 f78475S;

    public int f78476T;

    public final Vector2 f78477U;

    public UIAxisEventListener f78478V;

    public Component f78479W;

    @Expose
    @eb.f
    private ColorINT backgroundColor;

    @Expose
    private UIImageHandler backgroundImgH;

    @Expose
    @eb.f
    private int handleSize;

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

    @Expose
    @eb.f
    private int size;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIDynamicJoystick.f78471Y;
        }

        @Override
        public String c() {
            return UIDynamicJoystick.f78470X;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "DynamicJoystick";
        }
    }

    public class b implements c.o0 {

        public final Context f78480a;

        public class a implements D5.h {

            public class RunnableC1314a implements Runnable {

                public final Variable f78483b;

                public RunnableC1314a(final Variable val$variable) {
                    this.f78483b = val$variable;
                }

                @Override
                public void run() {
                    UIDynamicJoystick.this.setBackgroundColor(this.f78483b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIDynamicJoystick.this.backgroundColor != null ? new Variable("temp", UIDynamicJoystick.this.backgroundColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1314a(variable));
                }
            }
        }

        public b(final Context val$context) {
            this.f78480a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIDynamicJoystick uIDynamicJoystick = UIDynamicJoystick.this;
            entries.add(bVar.d(uIDynamicJoystick.f79250n, uIDynamicJoystick, "backgroundColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            entries.addAll(UIDynamicJoystick.this.backgroundImgH.i("Image", this.f78480a));
            return entries;
        }
    }

    public class c implements c.o0 {

        public final Context f78485a;

        public class a implements D5.h {

            public class RunnableC1315a implements Runnable {

                public final Variable f78488b;

                public RunnableC1315a(final Variable val$variable) {
                    this.f78488b = val$variable;
                }

                @Override
                public void run() {
                    UIDynamicJoystick.this.setHandlerColor(this.f78488b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIDynamicJoystick.this.handlerColor != null ? new Variable("temp", UIDynamicJoystick.this.handlerColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1315a(variable));
                }
            }
        }

        public c(final Context val$context) {
            this.f78485a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIDynamicJoystick uIDynamicJoystick = UIDynamicJoystick.this;
            entries.add(bVar.d(uIDynamicJoystick.f79250n, uIDynamicJoystick, "handlerColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            entries.addAll(UIDynamicJoystick.this.handlerImgH.i("Image", this.f78485a));
            return entries;
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIDynamicJoystick.this.size + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIDynamicJoystick.this.size = variable.int_value;
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIDynamicJoystick.this.handleSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIDynamicJoystick.this.handleSize = variable.int_value;
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UIDynamicJoystick.this.invertX + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIDynamicJoystick.this.invertX = variable.booolean_value.booleanValue();
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UIDynamicJoystick.this.invertY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIDynamicJoystick.this.invertY = variable.booolean_value.booleanValue();
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIDynamicJoystick.this.lerpSpeed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIDynamicJoystick.this.lerpSpeed = variable.float_value;
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIDynamicJoystick() {
        super(f78470X);
        this.backgroundColor = new ColorINT();
        this.backgroundImgH = new UIImageHandler();
        this.handlerColor = new ColorINT();
        this.handlerImgH = new UIImageHandler();
        this.size = 50;
        this.handleSize = 27;
        this.invertY = false;
        this.invertX = false;
        this.lerpSpeed = 1.0f;
        this.f78472P = new UVec2I();
        this.f78473Q = new UVec2I();
        this.f78474R = new Vector2();
        this.f78475S = new Vector2();
        this.f78476T = 0;
        this.f78477U = new Vector2();
    }

    private UIAxisEventListener getAxisEventListener() {
        UIAxisEventListener uIAxisEventListener = this.f78478V;
        if (uIAxisEventListener != null && uIAxisEventListener.f79250n != this.f79250n) {
            this.f78478V = null;
        }
        UIAxisEventListener uIAxisEventListener2 = this.f78478V;
        if (uIAxisEventListener2 == null || uIAxisEventListener2.f79250n == null) {
            GameObject gameObject = this.f79250n;
            Component.e eVar = Component.e.UIAxisEventListener;
            if (gameObject.c0(eVar) == null) {
                this.f79250n.r(new UIAxisEventListener());
            }
            UIAxisEventListener uIAxisEventListener3 = this.f78478V;
            if (uIAxisEventListener3 == null || uIAxisEventListener3.f79250n == null) {
                this.f78478V = (UIAxisEventListener) this.f79250n.c0(eVar);
            }
        }
        return this.f78478V;
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
        setInternalWidgetRect(0, 0, r7, r8, r7, r8);
        float dpToPx = controller.dpToPx(this.size);
        if (getUIRectComponent().isAutoSW()) {
            getUIRectComponent().setGlobalWidth((int) dpToPx);
        }
        if (getUIRectComponent().isAutoSH()) {
            getUIRectComponent().setGlobalHeight((int) dpToPx);
        }
    }

    @Override
    public int countAsync() {
        return 2;
    }

    @InterfaceC15237a
    public Vector2 getAxisValue() {
        return this.f78477U;
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
    public int getHandleSize() {
        return this.handleSize;
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
        d dVar = new d();
        b.a aVar = b.a.SLInt;
        C5.b bVar = new C5.b(dVar, FileRequest.FIELD_SIZE, aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.INT;
        inspectorEntries.add(bVar.d(gameObject, this, XMLExporter.ATTRIBUTE_SIZE, cVar));
        inspectorEntries.add(new C5.b(new e(), "Handle size", aVar).d(this.f79250n, this, "handleSize", cVar));
        f fVar = new f();
        String l10 = Lang.l(Lang.T.INVERT_X);
        b.a aVar2 = b.a.SLBoolean;
        inspectorEntries.add(new C5.b(fVar, l10, aVar2, context));
        inspectorEntries.add(new C5.b(new g(), Lang.l(Lang.T.INVERT_Y), aVar2, context));
        inspectorEntries.add(new C5.b(new h(), "Lerp speed", b.a.SLFloat).d(this.f79250n, this, "lerpSpeed", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public float getLerpSpeed() {
        return this.lerpSpeed;
    }

    @InterfaceC15237a
    public int getSize() {
        return this.size;
    }

    @Override
    public String getTitle() {
        return "DynamicJoystick";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIDynamicJoystick;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        listener.b("(" + this.f79250n.getName() + "),(DynamicJoystick),(Loading),(background)");
        this.backgroundImgH.q();
        listener.e();
        listener.b("(" + this.f79250n.getName() + "),(DynamicJoystick),(Loading),(handler)");
        this.handlerImgH.q();
        listener.e();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f78476T = 0;
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
        float dpToPx = controller.dpToPx(this.size);
        float dpToPx2 = controller.dpToPx(this.handleSize);
        if (getTouchTrigger() != null && getTouchTrigger().isDown()) {
            this.f78472P.h(controller.getTouchPos(getTouchTrigger().getSelectedTouch()));
            this.f78473Q.h(this.f78472P);
            this.f78477U.w0(0.0f, 0.0f);
        } else if (getTouchTrigger() == null || !getTouchTrigger().isPressed() || getTouchTrigger().getSelectedTouch() == null) {
            int i10 = (int) (f10 + (e10 / 2.0f));
            int i11 = (int) (g10 + (f11 / 2.0f));
            this.f78472P.g(i10, i11);
            this.f78473Q.g(i10, i11);
            this.f78477U.w0(0.0f, 0.0f);
        } else {
            this.f78473Q.h(controller.getTouchPos(getTouchTrigger().getSelectedTouch()));
            Vector2 vector2 = new Vector2(r10.e() - this.f78472P.e(), r10.f() - this.f78472P.f());
            float f12 = dpToPx / 2.0f;
            if (vector2.lengthF() > f12) {
                vector2.k0();
                this.f78477U.x0(vector2);
                vector2.Z(f12);
            } else {
                this.f78477U.x0(vector2);
                this.f78477U.C(f12);
            }
            this.f78473Q.g((int) (this.f78472P.e() + vector2.getX()), (int) (this.f78472P.f() + vector2.getY()));
        }
        float f13 = dpToPx / 2.0f;
        ImGui.G((int) (this.f78474R.getX() - f13), (int) (this.f78474R.getY() - f13));
        ImGui.l(or(this.backgroundImgH.n(), P9.a.j().g()), this.backgroundColor, dpToPx, dpToPx, this.backgroundImgH);
        float f14 = dpToPx2 / 2.0f;
        ImGui.G((int) (this.f78475S.getX() - f14), (int) (this.f78475S.getY() - f14));
        ImGui.l(or(this.handlerImgH.n(), P9.a.j().h()), this.handlerColor, dpToPx2, dpToPx2, this.handlerImgH);
        if (this.invertX) {
            this.f78477U.a0(-1.0f, 1.0f);
        }
        if (!this.invertY) {
            this.f78477U.a0(1.0f, -1.0f);
        }
        getAxisEventListener().setValue(this.f78477U);
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.backgroundImgH.f(getRequestUIDirtyRunnable());
        this.handlerImgH.f(getRequestUIDirtyRunnable());
        float z10 = Nc.b.z(this.f78475S.getX(), this.f78473Q.e(), K8.d.b() * 15.0f * this.lerpSpeed);
        boolean z11 = this.f78475S.getX() != z10;
        this.f78475S.B0(z10);
        float z12 = Nc.b.z(this.f78475S.getY(), this.f78473Q.f(), K8.d.b() * 15.0f * this.lerpSpeed);
        if (this.f78475S.getY() != z12) {
            z11 = true;
        }
        this.f78475S.C0(z12);
        float z13 = Nc.b.z(this.f78474R.getX(), this.f78472P.e(), K8.d.b() * 15.0f * this.lerpSpeed);
        if (this.f78474R.getX() != z13) {
            z11 = true;
        }
        this.f78474R.B0(z13);
        float z14 = Nc.b.z(this.f78474R.getY(), this.f78472P.f(), K8.d.b() * 15.0f * this.lerpSpeed);
        if (this.f78474R.getY() != z14) {
            z11 = true;
        }
        this.f78474R.C0(z14);
        int i10 = this.f78476T;
        if (i10 < 3) {
            this.f78476T = i10 + 1;
            this.f78475S.B0(this.f78473Q.e());
            this.f78475S.C0(this.f78473Q.f());
            this.f78474R.B0(this.f78472P.e());
            this.f78474R.C0(this.f78472P.f());
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
    public void setHandleSize(int handleSize) {
        if (this.handleSize == handleSize) {
            return;
        }
        this.handleSize = handleSize;
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
        this.f78479W = run;
    }

    @InterfaceC15237a
    public void setSize(int size) {
        if (this.size == size) {
            return;
        }
        this.size = size;
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78479W;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIDynamicJoystick uIDynamicJoystick = new JAVARuntime.UIDynamicJoystick(this);
        this.f78479W = uIDynamicJoystick;
        return uIDynamicJoystick;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIDynamicJoystick uIDynamicJoystick = new UIDynamicJoystick();
        uIDynamicJoystick.backgroundColor = ColorINT.k(this.backgroundColor);
        uIDynamicJoystick.handlerColor = ColorINT.k(this.handlerColor);
        uIDynamicJoystick.backgroundImgH = this.backgroundImgH.clone();
        uIDynamicJoystick.handlerImgH = this.handlerImgH.clone();
        uIDynamicJoystick.size = this.size;
        uIDynamicJoystick.handleSize = this.handleSize;
        uIDynamicJoystick.invertX = this.invertX;
        uIDynamicJoystick.invertY = this.invertY;
        uIDynamicJoystick.lerpSpeed = this.lerpSpeed;
        return uIDynamicJoystick;
    }
}
