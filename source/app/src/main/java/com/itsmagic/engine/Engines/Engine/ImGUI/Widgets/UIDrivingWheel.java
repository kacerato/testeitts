package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import D5.h;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
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
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;
import ub.p;

public class UIDrivingWheel extends ImGuiRenderableComponent {

    public static final String f78456V = "UIDrivingWheel";

    public static final Class f78457W = UIDrivingWheel.class;

    public final Vector2 f78458P;

    public UIAxisEventListener f78459Q;

    public float f78460R;

    public float f78461S;

    public float f78462T;

    public Component f78463U;

    @Expose
    @f
    private ColorINT color;

    @Expose
    public boolean invertX;

    @Expose
    @f
    private float lerpSpeed;

    @Expose
    @f
    private float maxAngle;

    @Expose
    private UIImageHandler wheelImgH;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIDrivingWheel.f78457W;
        }

        @Override
        public String c() {
            return UIDrivingWheel.f78456V;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "DrivingWheel";
        }
    }

    public class b implements h {

        public class a implements Runnable {

            public final Variable f78465b;

            public a(final Variable val$variable) {
                this.f78465b = val$variable;
            }

            @Override
            public void run() {
                UIDrivingWheel.this.setColor(this.f78465b.color_value.clone());
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return UIDrivingWheel.this.color != null ? new Variable("temp", UIDrivingWheel.this.color) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIDrivingWheel.this.lerpSpeed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIDrivingWheel.this.lerpSpeed = variable.float_value;
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIDrivingWheel.this.maxAngle + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIDrivingWheel.this.maxAngle = variable.float_value;
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UIDrivingWheel.this.invertX + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIDrivingWheel.this.invertX = variable.booolean_value.booleanValue();
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIDrivingWheel() {
        super(f78456V);
        this.color = new ColorINT();
        this.wheelImgH = new UIImageHandler();
        this.lerpSpeed = 8.0f;
        this.maxAngle = 360.0f;
        this.invertX = false;
        this.f78458P = new Vector2();
        this.f78460R = -99999.0f;
    }

    private UIAxisEventListener getAxisEventListener() {
        UIAxisEventListener uIAxisEventListener = this.f78459Q;
        if (uIAxisEventListener != null && uIAxisEventListener.f79250n != this.f79250n) {
            this.f78459Q = null;
        }
        UIAxisEventListener uIAxisEventListener2 = this.f78459Q;
        if (uIAxisEventListener2 == null || uIAxisEventListener2.f79250n == null) {
            GameObject gameObject = this.f79250n;
            Component.e eVar = Component.e.UIAxisEventListener;
            if (gameObject.c0(eVar) == null) {
                this.f79250n.r(new UIAxisEventListener());
            }
            UIAxisEventListener uIAxisEventListener3 = this.f78459Q;
            if (uIAxisEventListener3 == null || uIAxisEventListener3.f79250n == null) {
                this.f78459Q = (UIAxisEventListener) this.f79250n.c0(eVar);
            }
        }
        return this.f78459Q;
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
        return 1;
    }

    @InterfaceC15237a
    public float getAngle() {
        return this.f78462T;
    }

    @InterfaceC15237a
    public Vector2 getAxisValue() {
        return this.f78458P;
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(this.wheelImgH.g(dependencyRequest).f9114a);
        return c2632k;
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
        inspectorEntries.add(new C5.b(new b(), SerializableShaderEntry.f81153g, b.a.Color).d(this.f79250n, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        inspectorEntries.addAll(this.wheelImgH.i("Image", context));
        c cVar = new c();
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(cVar, "Lerp", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        inspectorEntries.add(bVar.d(gameObject, this, "lerpSpeed", cVar2));
        inspectorEntries.add(new C5.b(new d(), "Max angle", aVar).d(this.f79250n, this, "maxAngle", cVar2));
        inspectorEntries.add(new C5.b(new e(), "Invert X", b.a.SLBoolean, context));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public float getLerpSpeed() {
        return this.lerpSpeed;
    }

    @InterfaceC15237a
    public float getMaxAngle() {
        return this.maxAngle;
    }

    @InterfaceC15237a
    public int getSpriteIndex() {
        return this.wheelImgH.l();
    }

    @InterfaceC15237a
    public p getTexture() {
        return this.wheelImgH.n();
    }

    @Override
    public String getTitle() {
        return "DrivingWheel";
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @InterfaceC15237a
    public boolean isDown() {
        if (getTouchTrigger() == null) {
            return false;
        }
        return getTouchTrigger().isDown();
    }

    @InterfaceC15237a
    public boolean isInvertX() {
        return this.invertX;
    }

    @InterfaceC15237a
    public boolean isPressed() {
        if (getTouchTrigger() == null) {
            return false;
        }
        return getTouchTrigger().isPressed();
    }

    @InterfaceC15237a
    public boolean isUp() {
        if (getTouchTrigger() == null) {
            return false;
        }
        return getTouchTrigger().isUp();
    }

    @Override
    public void loadAsync(Lb.a listener) {
        listener.b("(" + this.f79250n.getName() + "),(DrivingWheel),(Loading),(texture)");
        this.wheelImgH.q();
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
        float f10 = getUIRectComponent().getGlobalPosition().f();
        float g10 = getUIRectComponent().getGlobalPosition().g();
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f11 = getUIRectComponent().getGlobalSize().f();
        if (getTouchTrigger() == null || !getTouchTrigger().isPressed() || getTouchTrigger().getSelectedTouch() == null) {
            this.f78460R = -99999.0f;
            this.f78461S = 0.0f;
        } else {
            UVec2I touchPos = controller.getTouchPos(getTouchTrigger().getSelectedTouch());
            float w10 = Nc.b.w(touchPos.e() - ((e10 / 2.0f) + f10), touchPos.f() - ((f11 / 2.0f) + g10));
            float f12 = this.f78460R;
            if (f12 != -99999.0f) {
                if (w10 < 90.0f) {
                    if (f12 > 270.0f) {
                        this.f78461S -= w10 - (f12 - 360.0f);
                    } else {
                        this.f78461S -= w10 - f12;
                    }
                } else if (w10 <= 270.0f) {
                    this.f78461S -= w10 - f12;
                } else if (f12 < 90.0f) {
                    this.f78461S -= (360.0f - w10) - f12;
                } else {
                    this.f78461S -= w10 - f12;
                }
            }
            this.f78461S = Nc.b.E(-Nc.b.k(this.maxAngle), this.f78461S, Nc.b.k(this.maxAngle));
            this.f78460R = w10;
        }
        float N02 = Nc.b.N0(this.f78462T, this.f78461S, this.lerpSpeed * K8.d.e() * (this.f78461S - this.f78462T));
        this.f78462T = N02;
        float f13 = this.maxAngle;
        this.f78458P.w0(f13 != 0.0f ? N02 / f13 : 0.0f, 0.0f);
        if (this.invertX) {
            this.f78458P.a0(-1.0f, 1.0f);
        }
        getAxisEventListener().setValue(this.f78458P);
        ImGui.nativeSetCursorPos(f10, g10);
        ImGui.s(or(this.wheelImgH.n(), P9.a.j().f()), this.color, e10, f11, this.f78462T, false, false, 0.0f, 0.0f, 1.0f, 1.0f, this.wheelImgH);
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.wheelImgH.f(getRequestUIDirtyRunnable());
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.wheelImgH.s(dictionary);
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        ColorINT colorINT = this.color;
        if (colorINT == null && color == null) {
            return;
        }
        if (colorINT == null || color == null || colorINT.intColor != color.intColor) {
            this.color = color;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setInvertX(boolean invertX) {
        if (this.invertX == invertX) {
            return;
        }
        this.invertX = invertX;
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

    @InterfaceC15237a
    public void setMaxAngle(float maxAngle) {
        if (this.maxAngle == maxAngle) {
            return;
        }
        this.maxAngle = maxAngle;
        requestUIDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78463U = run;
    }

    @InterfaceC15237a
    public void setSpriteIndex(int spriteIndex) {
        if (this.wheelImgH.l() == spriteIndex) {
            return;
        }
        this.wheelImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setTexture(p texture) {
        if (this.wheelImgH.n() == texture) {
            return;
        }
        this.wheelImgH.x(texture);
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78463U;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIDrivingWheel uIDrivingWheel = new JAVARuntime.UIDrivingWheel(this);
        this.f78463U = uIDrivingWheel;
        return uIDrivingWheel;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIDrivingWheel uIDrivingWheel = new UIDrivingWheel();
        uIDrivingWheel.color = ColorINT.k(this.color);
        uIDrivingWheel.wheelImgH = this.wheelImgH.clone();
        uIDrivingWheel.lerpSpeed = this.lerpSpeed;
        uIDrivingWheel.maxAngle = this.maxAngle;
        uIDrivingWheel.invertX = this.invertX;
        return uIDrivingWheel;
    }
}
