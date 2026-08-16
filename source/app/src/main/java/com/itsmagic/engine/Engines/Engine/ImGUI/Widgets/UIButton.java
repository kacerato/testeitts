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
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIFontHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIImageHandler;
import com.itsmagic.engine.Engines.Engine.JavaPool.FloatArrayJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.tonyodev.fetch2core.server.FileRequest;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import java.util.Objects;
import s8.InterfaceC15237a;
import ub.p;

public class UIButton extends ImGuiRenderableComponent {

    public static final String f78412U = "UIButton";

    public static final Class f78413V = UIButton.class;

    public p f78414P;

    public boolean f78415Q;

    public ColorINT f78416R;

    public ColorINT f78417S;

    public Component f78418T;

    @Expose
    private boolean autoFitText;

    @Expose
    @f
    private float border;

    @Expose
    private UIFontHandler fontHandler;

    @Expose
    @f
    private ColorINT normalColor;

    @Expose
    private UIImageHandler normalImgH;

    @Expose
    private Vector2 padding;

    @Expose
    @f
    private ColorINT pressedColor;

    @Expose
    private UIImageHandler pressedImgH;

    @Expose
    private String text;

    @Expose
    @f
    private ColorINT textNormalColor;

    @Expose
    @f
    private ColorINT textPressedColor;

    @Expose
    @f
    private float textSize;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIButton.f78413V;
        }

        @Override
        public String c() {
            return UIButton.f78412U;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "Button";
        }
    }

    public class b implements c.o0 {

        public final Context f78419a;

        public class a implements h {

            public class RunnableC1311a implements Runnable {

                public final Variable f78422b;

                public RunnableC1311a(final Variable val$variable) {
                    this.f78422b = val$variable;
                }

                @Override
                public void run() {
                    UIButton.this.setText(this.f78422b.str_value);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIButton.this.text != null ? new Variable("", UIButton.this.text) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1311a(variable));
                }
            }
        }

        public class C1312b implements h {

            public class a implements Runnable {

                public final Variable f78425b;

                public a(final Variable val$variable) {
                    this.f78425b = val$variable;
                }

                @Override
                public void run() {
                    UIButton.this.setTextNormalColor(this.f78425b.color_value.clone());
                }
            }

            public C1312b() {
            }

            @Override
            public Variable get() {
                return UIButton.this.textNormalColor != null ? new Variable("temp", UIButton.this.textNormalColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements h {

            public class a implements Runnable {

                public final Variable f78428b;

                public a(final Variable val$variable) {
                    this.f78428b = val$variable;
                }

                @Override
                public void run() {
                    UIButton.this.setTextPressedColor(this.f78428b.color_value.clone());
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return UIButton.this.textPressedColor != null ? new Variable("temp", UIButton.this.textPressedColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class d implements h {

            public class a implements Runnable {

                public final Variable f78431b;

                public a(final Variable val$variable) {
                    this.f78431b = val$variable;
                }

                @Override
                public void run() {
                    UIButton.this.setAutoFitText(this.f78431b.booolean_value.booleanValue());
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIButton.this.autoFitText + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class e implements h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIButton.this.textSize + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIButton.this.setTextSize(variable.float_value);
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
                UIButton.this.fontHandler.m(id2);
            }
        }

        public class g implements h {
            public g() {
            }

            @Override
            public Variable get() {
                return new Variable("temp", UIButton.this.fontHandler.f() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIButton.this.fontHandler.l(variable.str_value);
                }
            }
        }

        public b(final Context val$context) {
            this.f78419a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Text", b.a.SLString, this.f78419a));
            C1312b c1312b = new C1312b();
            b.a aVar = b.a.Color;
            C5.b bVar = new C5.b(c1312b, "Normal", aVar);
            UIButton uIButton = UIButton.this;
            GameObject gameObject = uIButton.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
            entries.add(bVar.d(gameObject, uIButton, "textNormalColor", cVar));
            C5.b bVar2 = new C5.b(new c(), "Pressed", aVar);
            UIButton uIButton2 = UIButton.this;
            entries.add(bVar2.d(uIButton2.f79250n, uIButton2, "textPressedColor", cVar));
            entries.add(new C5.b(new d(), "Auto fit text", b.a.SLBoolean));
            C5.b bVar3 = new C5.b(new e(), "Text size", b.a.SLFloat);
            UIButton uIButton3 = UIButton.this;
            entries.add(bVar3.d(uIButton3.f79250n, uIButton3, "textSize", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            entries.add(UIFontHandler.b("Resolution", UIButton.this.fontHandler.h(), new f()));
            entries.add(new C5.b(new g(), Lang.l(Lang.T.FONT), b.a.InputFile, ".ttf|.otf"));
            return entries;
        }
    }

    public class c implements c.o0 {

        public final Context f78436a;

        public class a implements h {

            public class RunnableC1313a implements Runnable {

                public final Variable f78439b;

                public RunnableC1313a(final Variable val$variable) {
                    this.f78439b = val$variable;
                }

                @Override
                public void run() {
                    UIButton.this.setNormalColor(this.f78439b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIButton.this.normalColor != null ? new Variable("temp", UIButton.this.normalColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1313a(variable));
                }
            }
        }

        public class b implements h {

            public class a implements Runnable {

                public final Variable f78442b;

                public a(final Variable val$variable) {
                    this.f78442b = val$variable;
                }

                @Override
                public void run() {
                    UIButton.this.setPressedColor(this.f78442b.color_value.clone());
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return UIButton.this.pressedColor != null ? new Variable("temp", UIButton.this.pressedColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public c(final Context val$context) {
            this.f78436a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.Color;
            C5.b bVar = new C5.b(aVar, "Normal", aVar2);
            UIButton uIButton = UIButton.this;
            GameObject gameObject = uIButton.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
            entries.add(bVar.d(gameObject, uIButton, "normalColor", cVar));
            entries.addAll(UIButton.this.normalImgH.i("Normal image", this.f78436a));
            C5.b bVar2 = new C5.b(new b(), "Pressed", aVar2);
            UIButton uIButton2 = UIButton.this;
            entries.add(bVar2.d(uIButton2.f79250n, uIButton2, "pressedColor", cVar));
            entries.addAll(UIButton.this.pressedImgH.i("Pressed image", this.f78436a));
            return entries;
        }
    }

    public class d implements c.o0 {

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIButton.this.border + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIButton.this.setBorder(variable.float_value);
                }
            }
        }

        public d() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), FileRequest.FIELD_SIZE, b.a.SLFloat);
            UIButton uIButton = UIButton.this;
            entries.add(bVar.d(uIButton.f79250n, uIButton, "border", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            entries.add(F5.c.y("Padding", UIButton.this.padding, new Vector2(12.0f, 8.0f)));
            return entries;
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIButton() {
        super(f78412U);
        this.normalColor = new ColorINT();
        this.pressedColor = new ColorINT(222, 222, 222);
        this.text = "My button";
        this.textNormalColor = new ColorINT(10, 10, 10);
        this.textPressedColor = new ColorINT(22, 22, 22);
        this.border = 8.0f;
        this.padding = new Vector2(12.0f, 8.0f);
        this.textSize = 1.0f;
        this.autoFitText = true;
        this.fontHandler = new UIFontHandler();
        this.normalImgH = new UIImageHandler();
        this.pressedImgH = new UIImageHandler();
    }

    private void updateTextures() {
        if (this.f79250n == null || getTouchTrigger() == null) {
            return;
        }
        p or = or(this.normalImgH.n(), P9.a.j().a());
        boolean or9p = or9p(this.normalImgH, P9.a.j().a());
        ColorINT colorINT = this.normalColor;
        ColorINT colorINT2 = this.textNormalColor;
        if (getTouchTrigger().getSelectedTouch() != null) {
            or = or(this.pressedImgH.n(), P9.a.j().b());
            or9p = or9p(this.pressedImgH, P9.a.j().b());
            colorINT = this.pressedColor;
            colorINT2 = this.textPressedColor;
        }
        if (this.f78414P != or) {
            this.f78414P = or;
            requestUIDirty();
        }
        if (this.f78415Q != or9p) {
            this.f78415Q = or9p;
            requestUIDirty();
        }
        if (this.f78416R != colorINT) {
            this.f78416R = colorINT;
            requestUIDirty();
        }
        if (this.f78417S != colorINT2) {
            this.f78417S = colorINT2;
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
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f10 = getUIRectComponent().getGlobalSize().f();
        float f11 = getUIRectComponent().isAutoSW() ? -1.0f : e10;
        float f12 = getUIRectComponent().isAutoSH() ? -1.0f : f10;
        float[] acquireZeroFill = FloatArrayJP.acquireZeroFill(2);
        ImGui.nativeCalcImageButtonNinePatchSize(this.text, this.textSize, controller.dpToPx(this.padding.getX()), controller.dpToPx(this.padding.getY()), f11, f12, this.fontHandler.g(), acquireZeroFill);
        float f13 = acquireZeroFill[0];
        float f14 = acquireZeroFill[1];
        setInternalWidgetRect(0, 0, (int) f13, (int) f14, (int) f13, (int) f14);
        if (getUIRectComponent().isAutoSW()) {
            getUIRectComponent().setGlobalWidth((int) acquireZeroFill[0]);
        }
        if (getUIRectComponent().isAutoSH()) {
            getUIRectComponent().setGlobalHeight((int) acquireZeroFill[1]);
        }
    }

    @Override
    public int countAsync() {
        return 2;
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.fontHandler.n(getRequestUIDirtyRunnable());
        this.normalImgH.f(getRequestUIDirtyRunnable());
        this.pressedImgH.f(getRequestUIDirtyRunnable());
    }

    @InterfaceC15237a
    public float getBorder() {
        return this.border;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(this.fontHandler.d(dependencyRequest).f9114a);
        c2632k.f9114a.addAll(this.normalImgH.g(dependencyRequest).f9114a);
        c2632k.f9114a.addAll(this.pressedImgH.g(dependencyRequest).f9114a);
        return c2632k;
    }

    @InterfaceC15237a
    public String getFontFile() {
        return this.fontHandler.f();
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
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Text", new b(context)));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Appearance", new c(context)));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Border", new d()));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public ColorINT getNormalColor() {
        return this.normalColor;
    }

    @InterfaceC15237a
    public int getNormalSpriteIndex() {
        return this.normalImgH.l();
    }

    @InterfaceC15237a
    public p getNormalTexture() {
        return this.normalImgH.n();
    }

    @InterfaceC15237a
    public Vector2 getPadding() {
        return this.padding;
    }

    @InterfaceC15237a
    public ColorINT getPressedColor() {
        return this.pressedColor;
    }

    @InterfaceC15237a
    public int getPressedSpriteIndex() {
        return this.pressedImgH.l();
    }

    @InterfaceC15237a
    public p getPressedTexture() {
        return this.pressedImgH.n();
    }

    @InterfaceC15237a
    public int getResolution() {
        return this.fontHandler.h();
    }

    @InterfaceC15237a
    public String getText() {
        return this.text;
    }

    @InterfaceC15237a
    public ColorINT getTextNormalColor() {
        return this.textNormalColor;
    }

    @InterfaceC15237a
    public ColorINT getTextPressedColor() {
        return this.textPressedColor;
    }

    @InterfaceC15237a
    public float getTextSize() {
        return this.textSize;
    }

    @Override
    public String getTitle() {
        return "Button";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIButton;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isAutoFitText() {
        return this.autoFitText;
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
        listener.b("(" + this.f79250n.getName() + "),(UIButton),(Loading),(normal)");
        this.normalImgH.q();
        listener.e();
        listener.b("(" + this.f79250n.getName() + "),(UIButton),(Loading),(pressed)");
        this.pressedImgH.q();
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
        updateTextures();
        ImGui.nativeSetCursorPos(getUIRectComponent().getGlobalPosition().f(), getUIRectComponent().getGlobalPosition().g());
        p pVar = this.f78414P;
        boolean z10 = this.f78415Q;
        ColorINT colorINT = this.f78416R;
        ColorINT colorINT2 = this.f78417S;
        UIImageHandler uIImageHandler = pVar == or(this.normalImgH.n(), P9.a.j().a()) ? this.normalImgH : this.pressedImgH;
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f10 = getUIRectComponent().getGlobalSize().f();
        if (z10) {
            ImGui.J(this.text, pVar, controller.dpToPx(this.border), controller.dpToPx(this.padding.getX()), controller.dpToPx(this.padding.getY()), colorINT, colorINT2, this.textSize, e10, f10, this.fontHandler.g(), this.autoFitText, uIImageHandler);
        } else {
            ImGui.d(this.text, pVar, controller.dpToPx(this.padding.getX()), controller.dpToPx(this.padding.getY()), colorINT, colorINT2, this.textSize, e10, f10, this.fontHandler.g(), this.autoFitText, uIImageHandler);
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
        updateTextures();
    }

    @Override
    public void onUIDirtyCalled() {
        super.onUIDirtyCalled();
        updateTextures();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.fontHandler.n(getRequestUIDirtyRunnable());
        this.normalImgH.f(getRequestUIDirtyRunnable());
        this.pressedImgH.f(getRequestUIDirtyRunnable());
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.fontHandler.j(dictionary);
        this.normalImgH.s(dictionary);
        this.pressedImgH.s(dictionary);
    }

    @InterfaceC15237a
    public void setAutoFitText(boolean autoFitText) {
        if (this.autoFitText == autoFitText) {
            return;
        }
        this.autoFitText = autoFitText;
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
    public void setFontFile(String fontFile) {
        String f10 = this.fontHandler.f();
        if (f10 == null) {
            if (fontFile == null) {
                return;
            }
        } else if (f10.equals(fontFile)) {
            return;
        }
        this.fontHandler.l(fontFile);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setNormalColor(ColorINT normalColor) {
        ColorINT colorINT = this.normalColor;
        if (colorINT == null && normalColor == null) {
            return;
        }
        if (colorINT == null || normalColor == null || colorINT.intColor != normalColor.intColor) {
            this.normalColor = normalColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setNormalSpriteIndex(int spriteIndex) {
        if (this.normalImgH.l() == spriteIndex) {
            return;
        }
        this.normalImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setNormalTexture(p texture) {
        if (this.normalImgH.n() == texture) {
            return;
        }
        this.normalImgH.x(texture);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setPadding(Vector2 padding) {
        Vector2 vector2 = this.padding;
        if (vector2 == null && padding == null) {
            return;
        }
        if (vector2 == null || padding == null || !vector2.equally(padding)) {
            this.padding = padding;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setPressedColor(ColorINT pressedColor) {
        ColorINT colorINT = this.pressedColor;
        if (colorINT == null && pressedColor == null) {
            return;
        }
        if (colorINT == null || pressedColor == null || colorINT.intColor != pressedColor.intColor) {
            this.pressedColor = pressedColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setPressedSpriteIndex(int spriteIndex) {
        if (this.pressedImgH.l() == spriteIndex) {
            return;
        }
        this.pressedImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setPressedTexture(p texture) {
        if (this.pressedImgH.n() == texture) {
            return;
        }
        this.pressedImgH.x(texture);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setResolution(int resolution) {
        if (resolution < 0) {
            throw new IndexOutOfBoundsException("Bounds:0.." + UIFontHandler.f78324j.length);
        }
        if (resolution >= UIFontHandler.f78324j.length) {
            throw new IndexOutOfBoundsException("Bounds:0.." + UIFontHandler.f78324j.length);
        }
        if (this.fontHandler.h() == resolution) {
            return;
        }
        this.fontHandler.m(resolution);
        requestUIDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78418T = run;
    }

    @InterfaceC15237a
    public void setText(String text) {
        if (Objects.equals(this.text, text)) {
            return;
        }
        this.text = text;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setTextNormalColor(ColorINT textNormalColor) {
        ColorINT colorINT = this.textNormalColor;
        if (colorINT == null && textNormalColor == null) {
            return;
        }
        if (colorINT == null || textNormalColor == null || colorINT.intColor != textNormalColor.intColor) {
            this.textNormalColor = textNormalColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setTextPressedColor(ColorINT textPressedColor) {
        ColorINT colorINT = this.textPressedColor;
        if (colorINT == null && textPressedColor == null) {
            return;
        }
        if (colorINT == null || textPressedColor == null || colorINT.intColor != textPressedColor.intColor) {
            this.textPressedColor = textPressedColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setTextSize(float textSize) {
        if (this.textSize == textSize) {
            return;
        }
        this.textSize = textSize;
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78418T;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIButton uIButton = new JAVARuntime.UIButton(this);
        this.f78418T = uIButton;
        return uIButton;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIButton uIButton = new UIButton();
        uIButton.text = this.text;
        uIButton.normalColor = ColorINT.k(this.normalColor);
        uIButton.pressedColor = ColorINT.k(this.pressedColor);
        uIButton.textNormalColor = ColorINT.k(this.textNormalColor);
        uIButton.textPressedColor = ColorINT.k(this.textPressedColor);
        uIButton.border = this.border;
        uIButton.padding = Vector2.y(this.padding);
        uIButton.textSize = this.textSize;
        uIButton.fontHandler = this.fontHandler.a();
        uIButton.normalImgH = this.normalImgH.clone();
        uIButton.pressedImgH = this.pressedImgH.clone();
        uIButton.autoFitText = this.autoFitText;
        return uIButton;
    }
}
