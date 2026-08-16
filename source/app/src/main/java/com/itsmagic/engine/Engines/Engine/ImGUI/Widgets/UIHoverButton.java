package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import D5.h;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import V9.r;
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
import s8.InterfaceC15237a;
import ub.p;

public class UIHoverButton extends ImGuiRenderableComponent {

    public static final String f78516U = "UIHoverButton";

    public static final Class f78517V = UIHoverButton.class;

    public p f78518P;

    public boolean f78519Q;

    public ColorINT f78520R;

    public ColorINT f78521S;

    public Component f78522T;

    @Expose
    private boolean autoFitText;

    @Expose
    @f
    private float border;

    @Expose
    @f
    private ColorINT clickedColor;

    @Expose
    private UIImageHandler clikedImgH;

    @Expose
    private UIFontHandler fontHandler;

    @Expose
    @f
    private ColorINT hoverColor;

    @Expose
    private UIImageHandler hoverImgH;

    @Expose
    @f
    private ColorINT normalColor;

    @Expose
    private UIImageHandler normalImgH;

    @Expose
    private Vector2 padding;

    @Expose
    private String text;

    @Expose
    @f
    private ColorINT textClickedColor;

    @Expose
    @f
    private ColorINT textHoverColor;

    @Expose
    @f
    private ColorINT textNormalColor;

    @Expose
    @f
    private float textSize;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIHoverButton.f78517V;
        }

        @Override
        public String c() {
            return UIHoverButton.f78516U;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "HoverButton";
        }
    }

    public class b implements c.o0 {

        public final Context f78523a;

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return UIHoverButton.this.text != null ? new Variable("", UIHoverButton.this.text) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIHoverButton.this.text = variable.str_value;
                }
            }
        }

        public class C1317b implements D5.h {

            public class a implements Runnable {

                public final Variable f78527b;

                public a(final Variable val$variable) {
                    this.f78527b = val$variable;
                }

                @Override
                public void run() {
                    UIHoverButton.this.setTextNormalColor(this.f78527b.color_value.clone());
                }
            }

            public C1317b() {
            }

            @Override
            public Variable get() {
                return UIHoverButton.this.textNormalColor != null ? new Variable("temp", UIHoverButton.this.textNormalColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements D5.h {

            public class a implements Runnable {

                public final Variable f78530b;

                public a(final Variable val$variable) {
                    this.f78530b = val$variable;
                }

                @Override
                public void run() {
                    UIHoverButton.this.setTextHoverColor(this.f78530b.color_value.clone());
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return UIHoverButton.this.textHoverColor != null ? new Variable("temp", UIHoverButton.this.textHoverColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class d implements D5.h {

            public class a implements Runnable {

                public final Variable f78533b;

                public a(final Variable val$variable) {
                    this.f78533b = val$variable;
                }

                @Override
                public void run() {
                    UIHoverButton.this.setTextClickedColor(this.f78533b.color_value.clone());
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return UIHoverButton.this.textClickedColor != null ? new Variable("temp", UIHoverButton.this.textClickedColor) : new Variable("", "");
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
                return new Variable("", UIHoverButton.this.autoFitText + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIHoverButton.this.autoFitText = variable.booolean_value.booleanValue();
                }
            }
        }

        public class f implements D5.h {
            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIHoverButton.this.textSize + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIHoverButton.this.setTextSize(variable.float_value);
                }
            }
        }

        public class g implements c.s0 {
            public g() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b(int id2) {
                UIHoverButton.this.fontHandler.m(id2);
            }
        }

        public class h implements D5.h {
            public h() {
            }

            @Override
            public Variable get() {
                return new Variable("temp", UIHoverButton.this.fontHandler.f() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIHoverButton.this.fontHandler.l(variable.str_value);
                }
            }
        }

        public b(final Context val$context) {
            this.f78523a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Text", b.a.SLString, this.f78523a));
            C1317b c1317b = new C1317b();
            b.a aVar = b.a.Color;
            C5.b bVar = new C5.b(c1317b, "Normal", aVar);
            UIHoverButton uIHoverButton = UIHoverButton.this;
            GameObject gameObject = uIHoverButton.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
            entries.add(bVar.d(gameObject, uIHoverButton, "textNormalColor", cVar));
            C5.b bVar2 = new C5.b(new c(), "Hover", aVar);
            UIHoverButton uIHoverButton2 = UIHoverButton.this;
            entries.add(bVar2.d(uIHoverButton2.f79250n, uIHoverButton2, "textHoverColor", cVar));
            C5.b bVar3 = new C5.b(new d(), "Clicked", aVar);
            UIHoverButton uIHoverButton3 = UIHoverButton.this;
            entries.add(bVar3.d(uIHoverButton3.f79250n, uIHoverButton3, "textClickedColor", cVar));
            entries.add(new C5.b(new e(), "Auto fit text", b.a.SLBoolean));
            C5.b bVar4 = new C5.b(new f(), "Text size", b.a.SLFloat);
            UIHoverButton uIHoverButton4 = UIHoverButton.this;
            entries.add(bVar4.d(uIHoverButton4.f79250n, uIHoverButton4, "textSize", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            entries.add(UIFontHandler.b("Resolution", UIHoverButton.this.fontHandler.h(), new g()));
            entries.add(new C5.b(new h(), Lang.l(Lang.T.FONT), b.a.InputFile, ".ttf|.otf"));
            return entries;
        }
    }

    public class c implements c.o0 {

        public final Context f78539a;

        public class a implements h {

            public class RunnableC1318a implements Runnable {

                public final Variable f78542b;

                public RunnableC1318a(final Variable val$variable) {
                    this.f78542b = val$variable;
                }

                @Override
                public void run() {
                    UIHoverButton.this.setNormalColor(this.f78542b.color_value.clone());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return UIHoverButton.this.normalColor != null ? new Variable("temp", UIHoverButton.this.normalColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1318a(variable));
                }
            }
        }

        public class b implements h {

            public class a implements Runnable {

                public final Variable f78545b;

                public a(final Variable val$variable) {
                    this.f78545b = val$variable;
                }

                @Override
                public void run() {
                    UIHoverButton.this.setHoverColor(this.f78545b.color_value.clone());
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return UIHoverButton.this.hoverColor != null ? new Variable("temp", UIHoverButton.this.hoverColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class C1319c implements h {

            public class a implements Runnable {

                public final Variable f78548b;

                public a(final Variable val$variable) {
                    this.f78548b = val$variable;
                }

                @Override
                public void run() {
                    UIHoverButton.this.setClickedColor(this.f78548b.color_value.clone());
                }
            }

            public C1319c() {
            }

            @Override
            public Variable get() {
                return UIHoverButton.this.clickedColor != null ? new Variable("temp", UIHoverButton.this.clickedColor) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public c(final Context val$context) {
            this.f78539a = val$context;
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
            UIHoverButton uIHoverButton = UIHoverButton.this;
            GameObject gameObject = uIHoverButton.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
            entries.add(bVar.d(gameObject, uIHoverButton, "normalColor", cVar));
            entries.addAll(UIHoverButton.this.normalImgH.i("Normal image", this.f78539a));
            C5.b bVar2 = new C5.b(new b(), "Hover", aVar2);
            UIHoverButton uIHoverButton2 = UIHoverButton.this;
            entries.add(bVar2.d(uIHoverButton2.f79250n, uIHoverButton2, "hoverColor", cVar));
            entries.addAll(UIHoverButton.this.hoverImgH.i("Hover image", this.f78539a));
            C5.b bVar3 = new C5.b(new C1319c(), "Clicked", aVar2);
            UIHoverButton uIHoverButton3 = UIHoverButton.this;
            entries.add(bVar3.d(uIHoverButton3.f79250n, uIHoverButton3, "clickedColor", cVar));
            entries.addAll(UIHoverButton.this.clikedImgH.i("Clicked image", this.f78539a));
            return entries;
        }
    }

    public class d implements c.o0 {

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIHoverButton.this.border + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIHoverButton.this.setBorder(variable.float_value);
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
            UIHoverButton uIHoverButton = UIHoverButton.this;
            entries.add(bVar.d(uIHoverButton.f79250n, uIHoverButton, "border", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            entries.add(F5.c.y("Padding", UIHoverButton.this.padding, new Vector2(12.0f, 8.0f)));
            return entries;
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIHoverButton() {
        super(f78516U);
        this.normalColor = new ColorINT();
        this.hoverColor = new ColorINT(222, 222, 222);
        this.clickedColor = new ColorINT(255, 166, 166);
        this.text = "My button";
        this.textNormalColor = new ColorINT(10, 10, 10);
        this.textHoverColor = new ColorINT(22, 22, 22);
        this.textClickedColor = new ColorINT(22, 22, 22);
        this.border = 8.0f;
        this.padding = new Vector2(12.0f, 8.0f);
        this.textSize = 1.0f;
        this.autoFitText = true;
        this.fontHandler = new UIFontHandler();
        this.normalImgH = new UIImageHandler();
        this.hoverImgH = new UIImageHandler();
        this.clikedImgH = new UIImageHandler();
    }

    private void updateTextures() {
        if (this.f79250n == null || getTouchTrigger() == null) {
            return;
        }
        ColorINT colorINT = this.normalColor;
        ColorINT colorINT2 = this.textNormalColor;
        p or = or(this.normalImgH.n(), P9.a.j().a());
        boolean or9p = or9p(this.normalImgH, P9.a.j().a());
        tc.h selectedTouch = getTouchTrigger().getSelectedTouch();
        boolean z10 = (selectedTouch instanceof r) && ((r) selectedTouch).M();
        if (getTouchTrigger().isUp() || z10) {
            or = or(this.clikedImgH.n(), P9.a.j().b());
            or9p = or9p(this.clikedImgH, P9.a.j().b());
            colorINT = this.clickedColor;
            colorINT2 = this.textClickedColor;
        } else if (getTouchTrigger().getSelectedTouch() != null) {
            or = or(this.hoverImgH.n(), P9.a.j().b());
            or9p = or9p(this.hoverImgH, P9.a.j().b());
            colorINT = this.hoverColor;
            colorINT2 = this.textHoverColor;
        }
        if (this.f78518P != or) {
            this.f78518P = or;
            requestUIDirty();
        }
        if (this.f78519Q != or9p) {
            this.f78519Q = or9p;
            requestUIDirty();
        }
        if (this.f78520R != colorINT) {
            this.f78520R = colorINT;
            requestUIDirty();
        }
        if (this.f78521S != colorINT2) {
            this.f78521S = colorINT2;
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
        return 3;
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.fontHandler.n(getRequestUIDirtyRunnable());
        this.normalImgH.f(getRequestUIDirtyRunnable());
        this.hoverImgH.f(getRequestUIDirtyRunnable());
        this.clikedImgH.f(getRequestUIDirtyRunnable());
    }

    @InterfaceC15237a
    public float getBorder() {
        return this.border;
    }

    @InterfaceC15237a
    public ColorINT getClickedColor() {
        return this.clickedColor;
    }

    @InterfaceC15237a
    public int getClickedSpriteIndex() {
        return this.clikedImgH.l();
    }

    @InterfaceC15237a
    public p getClickedTexture() {
        return this.clikedImgH.n();
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(this.fontHandler.d(dependencyRequest).f9114a);
        c2632k.f9114a.addAll(this.normalImgH.g(dependencyRequest).f9114a);
        c2632k.f9114a.addAll(this.hoverImgH.g(dependencyRequest).f9114a);
        c2632k.f9114a.addAll(this.clikedImgH.g(dependencyRequest).f9114a);
        return c2632k;
    }

    @InterfaceC15237a
    public String getFontFile() {
        return this.fontHandler.f();
    }

    @InterfaceC15237a
    public ColorINT getHoverColor() {
        return this.hoverColor;
    }

    @InterfaceC15237a
    public int getHoverSpriteIndex() {
        return this.hoverImgH.l();
    }

    @InterfaceC15237a
    public p getHoverTexture() {
        return this.hoverImgH.n();
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
    public int getResolution() {
        return this.fontHandler.h();
    }

    @InterfaceC15237a
    public String getText() {
        return this.text;
    }

    @InterfaceC15237a
    public ColorINT getTextClickedColor() {
        return this.textClickedColor;
    }

    @InterfaceC15237a
    public ColorINT getTextHoverColor() {
        return this.textHoverColor;
    }

    @InterfaceC15237a
    public ColorINT getTextNormalColor() {
        return this.textNormalColor;
    }

    @InterfaceC15237a
    public float getTextSize() {
        return this.textSize;
    }

    @Override
    public String getTitle() {
        return "HoverButton";
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
    public boolean isClicked() {
        tc.h selectedTouch = getTouchTrigger() != null ? getTouchTrigger().getSelectedTouch() : null;
        if ((selectedTouch instanceof r) && ((r) selectedTouch).M()) {
            return true;
        }
        if (getTouchTrigger() == null) {
            return false;
        }
        return getTouchTrigger().isUp();
    }

    @InterfaceC15237a
    public boolean isHover() {
        return (getTouchTrigger() == null || getTouchTrigger().getSelectedTouch() == null) ? false : true;
    }

    @InterfaceC15237a
    public boolean isJustBeginHover() {
        if (getTouchTrigger() == null) {
            return false;
        }
        return getTouchTrigger().isDown();
    }

    @Override
    public void loadAsync(Lb.a listener) {
        listener.b("(" + this.f79250n.getName() + "),(UIHoverButton),(Loading),(normal)");
        this.normalImgH.q();
        listener.e();
        listener.b("(" + this.f79250n.getName() + "),(UIHoverButton),(Loading),(hover)");
        this.hoverImgH.q();
        listener.e();
        listener.b("(" + this.f79250n.getName() + "),(UIHoverButton),(Loading),(clicked)");
        this.clikedImgH.q();
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
        p pVar = this.f78518P;
        boolean z10 = this.f78519Q;
        ColorINT colorINT = this.f78520R;
        ColorINT colorINT2 = this.f78521S;
        tc.h selectedTouch = getTouchTrigger() != null ? getTouchTrigger().getSelectedTouch() : null;
        boolean z11 = (selectedTouch instanceof r) && ((r) selectedTouch).M();
        if ((getTouchTrigger() != null && getTouchTrigger().isUp()) || z11) {
            pVar = or(this.clikedImgH.n(), P9.a.j().b());
            z10 = or9p(this.clikedImgH, P9.a.j().b());
            colorINT = this.clickedColor;
            colorINT2 = this.textClickedColor;
        } else if (getTouchTrigger() != null && getTouchTrigger().getSelectedTouch() != null) {
            pVar = or(this.hoverImgH.n(), P9.a.j().b());
            z10 = or9p(this.hoverImgH, P9.a.j().b());
            colorINT = this.hoverColor;
            colorINT2 = this.textHoverColor;
        }
        p pVar2 = pVar;
        UIImageHandler uIImageHandler = ((getTouchTrigger() == null || !getTouchTrigger().isUp()) && !z11) ? (getTouchTrigger() == null || getTouchTrigger().getSelectedTouch() == null) ? this.normalImgH : this.hoverImgH : this.clikedImgH;
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f10 = getUIRectComponent().getGlobalSize().f();
        if (z10) {
            ImGui.J(this.text, pVar2, controller.dpToPx(this.border), controller.dpToPx(this.padding.getX()), controller.dpToPx(this.padding.getY()), colorINT, colorINT2, this.textSize, e10, f10, this.fontHandler.g(), this.autoFitText, uIImageHandler);
        } else {
            ImGui.d(this.text, pVar2, controller.dpToPx(this.padding.getX()), controller.dpToPx(this.padding.getY()), colorINT, colorINT2, this.textSize, e10, f10, this.fontHandler.g(), this.autoFitText, uIImageHandler);
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
        this.hoverImgH.f(getRequestUIDirtyRunnable());
        this.clikedImgH.f(getRequestUIDirtyRunnable());
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.fontHandler.j(dictionary);
        this.normalImgH.s(dictionary);
        this.hoverImgH.s(dictionary);
        this.clikedImgH.s(dictionary);
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
    public void setClickedColor(ColorINT clickedColor) {
        ColorINT colorINT = this.clickedColor;
        if (colorINT == null && clickedColor == null) {
            return;
        }
        if (colorINT == null || clickedColor == null || colorINT.intColor != clickedColor.intColor) {
            this.clickedColor = clickedColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setClickedSpriteIndex(int spriteIndex) {
        if (this.clikedImgH.l() == spriteIndex) {
            return;
        }
        this.clikedImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setClickedTexture(p texture) {
        if (this.clikedImgH.n() == texture) {
            return;
        }
        this.clikedImgH.x(texture);
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
    public void setHoverColor(ColorINT hoverColor) {
        ColorINT colorINT = this.hoverColor;
        if (colorINT == null && hoverColor == null) {
            return;
        }
        if (colorINT == null || hoverColor == null || colorINT.intColor != hoverColor.intColor) {
            this.hoverColor = hoverColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setHoverSpriteIndex(int spriteIndex) {
        if (this.hoverImgH.l() == spriteIndex) {
            return;
        }
        this.hoverImgH.w(spriteIndex);
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setHoverTexture(p texture) {
        if (this.hoverImgH.n() == texture) {
            return;
        }
        this.hoverImgH.x(texture);
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
    public void setRuntime(Component run) {
        this.f78522T = run;
    }

    @InterfaceC15237a
    public void setText(String text) {
        String str = this.text;
        if (str == null) {
            if (text == null) {
                return;
            }
        } else if (str.equals(text)) {
            return;
        }
        this.text = text;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setTextClickedColor(ColorINT textClickedColor) {
        ColorINT colorINT = this.textClickedColor;
        if (colorINT == null && textClickedColor == null) {
            return;
        }
        if (colorINT == null || textClickedColor == null || colorINT.intColor != textClickedColor.intColor) {
            this.textClickedColor = textClickedColor;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setTextHoverColor(ColorINT textNormalColor) {
        ColorINT colorINT = this.textHoverColor;
        if (colorINT == null && textNormalColor == null) {
            return;
        }
        if (colorINT == null || textNormalColor == null || colorINT.intColor != textNormalColor.intColor) {
            this.textHoverColor = textNormalColor;
            requestUIDirty();
        }
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
    public Component toJAVARuntime() {
        Component component = this.f78522T;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIHoverButton uIHoverButton = new JAVARuntime.UIHoverButton(this);
        this.f78522T = uIHoverButton;
        return uIHoverButton;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIHoverButton uIHoverButton = new UIHoverButton();
        uIHoverButton.text = this.text;
        uIHoverButton.normalColor = ColorINT.k(this.normalColor);
        uIHoverButton.hoverColor = ColorINT.k(this.hoverColor);
        uIHoverButton.clickedColor = ColorINT.k(this.clickedColor);
        uIHoverButton.textNormalColor = ColorINT.k(this.textNormalColor);
        uIHoverButton.textClickedColor = ColorINT.k(this.textClickedColor);
        uIHoverButton.border = this.border;
        uIHoverButton.padding = Vector2.y(this.padding);
        uIHoverButton.textSize = this.textSize;
        uIHoverButton.fontHandler = this.fontHandler.a();
        uIHoverButton.normalImgH = this.normalImgH.clone();
        uIHoverButton.hoverImgH = this.hoverImgH.clone();
        uIHoverButton.clikedImgH = this.clikedImgH.clone();
        uIHoverButton.autoFitText = this.autoFitText;
        return uIHoverButton;
    }
}
