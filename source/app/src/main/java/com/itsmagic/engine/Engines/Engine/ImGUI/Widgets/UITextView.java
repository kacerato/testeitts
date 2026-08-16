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
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIFontHandler;
import com.itsmagic.engine.Engines.Engine.JavaPool.FloatArrayJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import java.util.Locale;
import s8.InterfaceC15237a;
import tb.C15391a;

public class UITextView extends ImGuiRenderableComponent {

    public static final String f78813Q = "UITextView";

    public static final Class f78814R = UITextView.class;

    public Component f78815P;

    @Expose
    @eb.f
    private boolean allCaps;

    @Expose
    @eb.f
    private ColorINT color;

    @Expose
    private UIFontHandler fontHandler;

    @Expose
    @eb.f
    private ColorINT outlineColor;

    @Expose
    @eb.f
    private float outlineDP;

    @Expose
    private String text;

    @Expose
    @eb.f
    private float textSize;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UITextView.f78814R;
        }

        @Override
        public String c() {
            return "UITextView";
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "TextView";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return UITextView.this.text != null ? new Variable("", UITextView.this.text) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITextView.this.setText(variable.str_value);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UITextView.this.allCaps + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITextView.this.setAllCaps(variable.booolean_value.booleanValue());
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f78819b;

            public a(final Variable val$variable) {
                this.f78819b = val$variable;
            }

            @Override
            public void run() {
                UITextView.this.setColor(this.f78819b.color_value.clone());
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return UITextView.this.color != null ? new Variable("temp", UITextView.this.color) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", UITextView.this.textSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITextView.this.setTextSize(variable.float_value);
            }
        }
    }

    public class f implements c.s0 {
        public f() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(int id2) {
            UITextView.this.fontHandler.m(id2);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UITextView.this.fontHandler.f() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITextView.this.fontHandler.l(variable.str_value);
            }
        }
    }

    public class h implements c.o0 {

        public final Context f78824a;

        public class a implements D5.h {

            public class RunnableC1333a implements Runnable {

                public final Variable f78827b;

                public RunnableC1333a(final Variable val$variable) {
                    this.f78827b = val$variable;
                }

                @Override
                public void run() {
                    UITextView.this.setOutlineColor(this.f78827b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UITextView.this.outlineColor != null ? new Variable("temp", UITextView.this.outlineColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1333a(variable));
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UITextView.this.outlineDP + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UITextView.this.setOutlineDP(variable.float_value);
                }
            }
        }

        public h(final Context val$context) {
            this.f78824a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "color", b.a.Color, this.f78824a);
            UITextView uITextView = UITextView.this;
            entries.add(bVar.d(uITextView.f79250n, uITextView, "outlineColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            C5.b bVar2 = new C5.b(new b(), "dp", b.a.SLFloat);
            UITextView uITextView2 = UITextView.this;
            entries.add(bVar2.d(uITextView2.f79250n, uITextView2, "outlineDP", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return entries;
        }
    }

    static {
        C13201a.b(new a());
    }

    public UITextView() {
        super("UITextView");
        this.text = "My textview";
        this.color = new ColorINT();
        this.outlineColor = new ColorINT(255, 0, 0, 0);
        this.textSize = 1.0f;
        this.outlineDP = 0.0f;
        this.allCaps = false;
        this.fontHandler = new UIFontHandler();
    }

    private String getDisplayText() {
        String str = this.text;
        return str == null ? "" : !this.allCaps ? str : str.toUpperCase(Locale.ROOT);
    }

    @Override
    public void calculateInternalSizeEnd(UIController controller) {
    }

    @Override
    public void calculateInternalSizeStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f10 = getUIRectComponent().getGlobalSize().f();
        String displayText = getDisplayText();
        if (getUIRectComponent().isAutoSW()) {
            e10 = -1.0f;
        }
        float f11 = getUIRectComponent().isAutoSH() ? -1.0f : f10;
        float[] acquireZeroFill = FloatArrayJP.acquireZeroFill(2);
        try {
            ImGui.nativeCalcTextSize(displayText, this.textSize, e10, f11, true, this.fontHandler.g(), acquireZeroFill);
            float f12 = this.outlineDP;
            int ceil = f12 > 0.0f ? (int) Math.ceil(f12) : 0;
            if (ceil > 0) {
                float f13 = ceil * 2.0f;
                acquireZeroFill[0] = acquireZeroFill[0] + f13;
                acquireZeroFill[1] = acquireZeroFill[1] + f13;
            }
            float f14 = acquireZeroFill[0];
            float f15 = acquireZeroFill[1];
            setInternalWidgetRect(0, 0, (int) f14, (int) f15, (int) f14, (int) f15);
            boolean isAutoSW = getUIRectComponent().isAutoSW();
            boolean isAutoSH = getUIRectComponent().isAutoSH();
            if (isAutoSW && isAutoSH) {
                getUIRectComponent().setGlobalSize((int) acquireZeroFill[0], (int) acquireZeroFill[1]);
            } else if (isAutoSW) {
                getUIRectComponent().setGlobalWidth((int) acquireZeroFill[0]);
            } else if (isAutoSH) {
                getUIRectComponent().setGlobalHeight((int) acquireZeroFill[1]);
            }
            FloatArrayJP.release(acquireZeroFill);
        } catch (Throwable th2) {
            FloatArrayJP.release(acquireZeroFill);
            throw th2;
        }
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.fontHandler.n(getRequestUIDirtyRunnable());
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(this.fontHandler.d(dependencyRequest).f9114a);
        return c2632k;
    }

    public C15391a getFont() {
        return this.fontHandler.e();
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_text;
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
        inspectorEntries.add(new C5.b(new b(), Lang.l(Lang.T.TEXT), b.a.MLString, context));
        inspectorEntries.add(new C5.b(new c(), "all caps", b.a.Boolean, context));
        inspectorEntries.add(new C5.b(new d(), "color", b.a.Color, context).d(this.f79250n, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        inspectorEntries.add(new C5.b(new e(), XMLExporter.ATTRIBUTE_SIZE, b.a.SLFloat).d(this.f79250n, this, "textSize", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        inspectorEntries.add(UIFontHandler.b("Resolution", this.fontHandler.h(), new f()));
        inspectorEntries.add(new C5.b(new g(), Lang.l(Lang.T.FONT), b.a.InputFile, ".ttf|.otf"));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Outline", new h(context)));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public ColorINT getOutlineColor() {
        return this.outlineColor;
    }

    @InterfaceC15237a
    public float getOutlineDP() {
        return this.outlineDP;
    }

    @InterfaceC15237a
    public String getText() {
        return this.text;
    }

    @InterfaceC15237a
    public float getTextSize() {
        return this.textSize;
    }

    @Override
    public String getTitle() {
        return "TextView";
    }

    @Override
    public Component.e getType() {
        return Component.e.UITextView;
    }

    @Override
    public int iconPriority() {
        return 4;
    }

    @InterfaceC15237a
    public boolean isAllCaps() {
        return this.allCaps;
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
        ImGui.R(getDisplayText(), this.color, this.outlineColor, this.outlineDP, true, this.textSize, getUIRectComponent().isAutoSW() ? -1.0f : getUIRectComponent().getGlobalSize().e(), getUIRectComponent().isAutoSH() ? -1.0f : getUIRectComponent().getGlobalSize().f(), 0.0f, 0.0f, this.fontHandler.g());
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.fontHandler.n(getRequestUIDirtyRunnable());
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.fontHandler.j(dictionary);
    }

    @InterfaceC15237a
    public void setAllCaps(boolean allCaps) {
        if (this.allCaps == allCaps) {
            return;
        }
        this.allCaps = allCaps;
        requestUIDirty();
        markLayoutDirty();
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

    public void setFont(C15391a font) {
        this.fontHandler.k(font);
    }

    @InterfaceC15237a
    public void setOutlineColor(ColorINT outlineColor) {
        ColorINT colorINT = this.outlineColor;
        if (colorINT == null && outlineColor == null) {
            return;
        }
        if (colorINT == null || outlineColor == null || colorINT.intColor != outlineColor.intColor) {
            this.outlineColor = outlineColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setOutlineDP(float outlineDP) {
        float max = Math.max(0.0f, outlineDP);
        if (this.outlineDP == max) {
            return;
        }
        this.outlineDP = max;
        requestUIDirty();
        markLayoutDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78815P = run;
    }

    @InterfaceC15237a
    public void setText(String text) {
        if (text == null) {
            text = "";
        }
        String str = this.text;
        if (str != null && str.equals(text)) {
            return;
        }
        this.text = text;
        requestUIDirty();
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setTextSize(float textSize) {
        if (this.textSize == textSize) {
            return;
        }
        this.textSize = textSize;
        requestUIDirty();
        markLayoutDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78815P;
        if (component != null) {
            return component;
        }
        JAVARuntime.UITextView uITextView = new JAVARuntime.UITextView(this);
        this.f78815P = uITextView;
        return uITextView;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UITextView uITextView = new UITextView();
        uITextView.text = this.text;
        uITextView.color = ColorINT.k(this.color);
        uITextView.outlineColor = ColorINT.k(this.outlineColor);
        uITextView.textSize = this.textSize;
        uITextView.outlineDP = this.outlineDP;
        uITextView.allCaps = this.allCaps;
        uITextView.fontHandler = this.fontHandler.a();
        return uITextView;
    }
}
