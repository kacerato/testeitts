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
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
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

public class UICheckBox extends ImGuiRenderableComponent {

    public static final String f78446S = "UICheckBox";

    public static final Class f78447T = UICheckBox.class;

    public p f78448P;

    public boolean f78449Q;

    public Component f78450R;

    @Expose
    @f
    private float border;

    @Expose
    private boolean checked;

    @Expose
    @f
    private ColorINT color;

    @Expose
    private UIImageHandler offImgH;

    @Expose
    private UIImageHandler onImgH;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UICheckBox.f78447T;
        }

        @Override
        public String c() {
            return UICheckBox.f78446S;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "CheckBox";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UICheckBox.this.checked + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UICheckBox.this.checked = variable.booolean_value.booleanValue();
            }
        }
    }

    public class c implements h {

        public class a implements Runnable {

            public final Variable f78453b;

            public a(final Variable val$variable) {
                this.f78453b = val$variable;
            }

            @Override
            public void run() {
                UICheckBox.this.setColor(this.f78453b.color_value.clone());
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return UICheckBox.this.color != null ? new Variable("temp", UICheckBox.this.color) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UICheckBox.this.border + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UICheckBox.this.setBorder(variable.float_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UICheckBox() {
        super(f78446S);
        this.color = new ColorINT();
        this.onImgH = new UIImageHandler();
        this.offImgH = new UIImageHandler();
        this.border = 8.0f;
        this.checked = false;
    }

    private void updateTextures() {
        p or = this.checked ? or(this.onImgH.n(), P9.a.j().d()) : or(this.offImgH.n(), P9.a.j().c());
        boolean or9p = this.checked ? or9p(this.onImgH, P9.a.j().d()) : or9p(this.offImgH, P9.a.j().c());
        if (this.f78448P != or) {
            this.f78448P = or;
            requestUIDirty();
        }
        if (this.f78449Q != or9p) {
            this.f78449Q = or9p;
            requestUIDirty();
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
    public float getBorder() {
        return this.border;
    }

    @InterfaceC15237a
    public int getCheckedSpriteIndex() {
        return this.onImgH.l();
    }

    @InterfaceC15237a
    public p getCheckedTexture() {
        return this.onImgH.n();
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(this.onImgH.g(dependencyRequest).f9114a);
        c2632k.f9114a.addAll(this.offImgH.g(dependencyRequest).f9114a);
        return c2632k;
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
        inspectorEntries.add(new C5.b(new b(), "Checked", b.a.SLBoolean));
        inspectorEntries.add(new C5.b(new c(), SerializableShaderEntry.f81153g, b.a.Color).d(this.f79250n, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        inspectorEntries.addAll(this.onImgH.i("Checked image", context));
        inspectorEntries.addAll(this.offImgH.i("Unchecked image", context));
        inspectorEntries.add(new C5.b(new d(), "Border", b.a.SLFloat).d(this.f79250n, this, "border", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        return inspectorEntries;
    }

    @Override
    public String getTitle() {
        return "CheckBox";
    }

    @Override
    public Component.e getType() {
        return Component.e.UICheckBox;
    }

    @InterfaceC15237a
    public int getUncheckedSpriteIndex() {
        return this.offImgH.l();
    }

    @InterfaceC15237a
    public p getUncheckedTexture() {
        return this.offImgH.n();
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isChecked() {
        return this.checked;
    }

    @InterfaceC15237a
    public boolean isDown() {
        if (getTouchTrigger() == null) {
            return false;
        }
        return getTouchTrigger().isDown();
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
        listener.b("(" + this.f79250n.getName() + "),(CheckBox),(Loading),(checked)");
        this.onImgH.q();
        listener.e();
        listener.b("(" + this.f79250n.getName() + "),(CheckBox),(Loading),(unchecked)");
        this.offImgH.q();
        listener.e();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        updateTextures();
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
        p pVar = this.f78448P;
        boolean z10 = this.f78449Q;
        UIImageHandler uIImageHandler = this.checked ? this.onImgH : this.offImgH;
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f10 = getUIRectComponent().getGlobalSize().f();
        if (z10) {
            ImGui.J("", pVar, controller.dpToPx(this.border), 0.0f, 0.0f, this.color, null, 0.0f, e10, f10, 0L, true, uIImageHandler);
        } else {
            ImGui.l(pVar, this.color, e10, f10, uIImageHandler);
        }
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        updateTextures();
    }

    @Override
    public void onSelectedTouchChanged(tc.h touch) {
        super.onSelectedTouchChanged(touch);
        if (this.f79250n == null || getTouchTrigger() == null) {
            return;
        }
        if (getTouchTrigger().isDown()) {
            this.checked = !this.checked;
        }
        updateTextures();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.onImgH.f(getRequestUIDirtyRunnable());
        this.offImgH.f(getRequestUIDirtyRunnable());
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.onImgH.s(dictionary);
        this.offImgH.s(dictionary);
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
    public void setChecked(boolean checked) {
        if (this.checked == checked) {
            return;
        }
        this.checked = checked;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setCheckedSpriteIndex(int spriteIndex) {
        if (this.onImgH.l() == spriteIndex) {
            return;
        }
        this.onImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setCheckedTexture(p texture) {
        if (this.onImgH.n() == texture) {
            return;
        }
        this.onImgH.x(texture);
        requestUIDirty();
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

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78450R = run;
    }

    @InterfaceC15237a
    public void setUncheckedSpriteIndex(int spriteIndex) {
        if (this.offImgH.l() == spriteIndex) {
            return;
        }
        this.offImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setUncheckedTexture(p texture) {
        if (this.offImgH.n() == texture) {
            return;
        }
        this.offImgH.x(texture);
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78450R;
        if (component != null) {
            return component;
        }
        JAVARuntime.UICheckBox uICheckBox = new JAVARuntime.UICheckBox(this);
        this.f78450R = uICheckBox;
        return uICheckBox;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UICheckBox uICheckBox = new UICheckBox();
        uICheckBox.color = ColorINT.k(this.color);
        uICheckBox.onImgH = this.onImgH.clone();
        uICheckBox.offImgH = this.offImgH.clone();
        uICheckBox.border = this.border;
        uICheckBox.checked = this.checked;
        return uICheckBox;
    }
}
