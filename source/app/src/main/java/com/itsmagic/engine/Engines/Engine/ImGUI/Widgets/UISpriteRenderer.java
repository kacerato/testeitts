package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import U9.C3117f;
import U9.C3118g;
import U9.InterfaceC3114c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ImGUI.Styles.UIStyle;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIImageHandler;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.File;
import java.util.List;
import s8.InterfaceC15237a;
import ub.p;

public class UISpriteRenderer extends ImGuiRenderableComponent {

    public static final String f78790U = "UISpriteRenderer";

    public static final Class f78791V = UISpriteRenderer.class;

    public C3118g f78792P;

    public UIStyle f78793Q;

    public String f78794R;

    public float f78795S;

    public Component f78796T;

    @Expose
    @eb.f
    private float border;

    @Expose
    @eb.f
    private ColorINT color;

    @Expose
    @eb.f
    private boolean flipX;

    @Expose
    @eb.f
    private boolean flipY;

    @Expose
    private UIImageHandler normalImgH;

    @Expose
    @eb.f
    private Vector2 offset;

    @Expose
    private float speed;

    @Expose
    private String styleFile;

    @Expose
    @eb.f
    private Vector2 tilling;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISpriteRenderer.this.border + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UISpriteRenderer.this.setBorder(variable.float_value);
            }
        }
    }

    public class b implements D5.h {

        public class a implements Runnable {

            public final Variable f78799b;

            public a(final Variable val$variable) {
                this.f78799b = val$variable;
            }

            @Override
            public void run() {
                UISpriteRenderer.this.setStyleFile(this.f78799b.str_value);
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return UISpriteRenderer.this.getStyleFile() != null ? new Variable("", UISpriteRenderer.this.getStyleFile()) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return UISpriteRenderer.f78791V;
        }

        @Override
        public String c() {
            return UISpriteRenderer.f78790U;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return UISpriteRenderer.f78790U;
        }
    }

    public class d implements InterfaceC3114c {
        public d() {
        }

        @Override
        public float a(float px) {
            return UISpriteRenderer.this.getUIControllerComponent().dpToPx(px);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            UISpriteRenderer.this.requestUIDirty();
        }
    }

    public class f implements D5.h {

        public class a implements Runnable {

            public final Variable f78804b;

            public a(final Variable val$variable) {
                this.f78804b = val$variable;
            }

            @Override
            public void run() {
                UISpriteRenderer.this.setColor(this.f78804b.color_value.clone());
            }
        }

        public f() {
        }

        @Override
        public Variable get() {
            return UISpriteRenderer.this.color != null ? new Variable("temp", UISpriteRenderer.this.color) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class g implements D5.h {

        public class a implements Runnable {

            public final Variable f78807b;

            public a(final Variable val$variable) {
                this.f78807b = val$variable;
            }

            @Override
            public void run() {
                UISpriteRenderer.this.setSpeed(this.f78807b.float_value);
            }
        }

        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISpriteRenderer.this.speed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISpriteRenderer.this.flipX + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UISpriteRenderer.this.setFlipX(variable.booolean_value.booleanValue());
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISpriteRenderer.this.flipY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UISpriteRenderer.this.setFlipY(variable.booolean_value.booleanValue());
            }
        }
    }

    public class j implements c.u0 {
        public j() {
        }

        @Override
        public void a() {
            UISpriteRenderer.this.requestUIDirty();
        }
    }

    public class k implements c.u0 {
        public k() {
        }

        @Override
        public void a() {
            UISpriteRenderer.this.requestUIDirty();
        }
    }

    static {
        C13201a.b(new c());
    }

    public UISpriteRenderer() {
        super(f78790U);
        this.color = new ColorINT();
        this.normalImgH = new UIImageHandler();
        this.border = 8.0f;
        this.flipX = false;
        this.flipY = false;
        this.offset = new Vector2();
        this.tilling = new Vector2(1.0f);
        this.speed = 1.0f;
        this.f78795S = 0.0f;
    }

    private void updateSpriteAnimation() {
        p n10;
        TextureConfig u02;
        int C10;
        int f10;
        if (c8.b.k() && this.speed != 0.0f && (n10 = this.normalImgH.n()) != null && (n10 instanceof ub.g) && (u02 = ((ub.g) n10).u0()) != null && u02.type == TextureConfig.f.Sprite && u02.v() != null && (C10 = u02.v().C()) > 1 && (f10 = u02.v().f()) > 0) {
            float b10 = K8.d.b();
            if (b10 <= 0.0f) {
                return;
            }
            float f11 = this.f78795S + (this.speed * f10 * b10);
            this.f78795S = f11;
            int i10 = (int) f11;
            if (i10 == 0) {
                return;
            }
            this.f78795S = f11 - i10;
            int l10 = this.normalImgH.l();
            int wrapSpriteIndex = wrapSpriteIndex(i10 + l10, C10);
            if (wrapSpriteIndex != l10) {
                this.normalImgH.w(wrapSpriteIndex);
            }
        }
    }

    private void updateUIStyleInstance() {
        String str;
        String str2 = this.styleFile;
        if (str2 == null || str2.isEmpty()) {
            this.f78793Q = null;
            this.f78794R = null;
        } else {
            if (this.f78793Q == null || (str = this.f78794R) == null || !str.equals(this.styleFile)) {
                try {
                    this.f78793Q = UIStyle.O(X7.a.x(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.styleFile)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f78794R = this.styleFile;
        }
        reloadInspector();
        requestUIDirty();
    }

    private static int wrapSpriteIndex(int index, int spriteCount) {
        if (spriteCount <= 0) {
            return 0;
        }
        int i10 = index % spriteCount;
        return i10 < 0 ? i10 + spriteCount : i10;
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
    public float getBorder() {
        return this.border;
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(this.normalImgH.g(dependencyRequest).f9114a);
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return "UI Sprite Renderer";
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
        inspectorEntries.add(new C5.b(new f(), SerializableShaderEntry.f81153g, b.a.Color).d(this.f79250n, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        inspectorEntries.addAll(this.normalImgH.k("Image", context, this.f78793Q == null, true));
        g gVar = new g();
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(gVar, "Speed", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        inspectorEntries.add(bVar.d(gameObject, this, "speed", cVar));
        C5.b bVar2 = new C5.b(new C5.a("Other", true));
        List<C5.b> list = bVar2.f2064Q.f2042o;
        h hVar = new h();
        b.a aVar2 = b.a.SLBoolean;
        list.add(new C5.b(hVar, "Flip x", aVar2));
        bVar2.f2064Q.f2042o.add(new C5.b(new i(), "Flip y", aVar2));
        bVar2.f2064Q.f2042o.add(F5.c.z("Offset", getOffset(), new Vector2(), new j()));
        bVar2.f2064Q.f2042o.add(F5.c.z("Tilling", getTilling(), new Vector2(1.0f), new k()));
        inspectorEntries.add(bVar2);
        if (this.f78793Q == null) {
            inspectorEntries.add(new C5.b(new a(), "Border", aVar).d(this.f79250n, this, "border", cVar));
        }
        inspectorEntries.add(new C5.b(new b(), "Style", b.a.UIStyle, ".usy"));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public Vector2 getOffset() {
        if (this.offset == null) {
            this.offset = new Vector2();
        }
        return this.offset;
    }

    @InterfaceC15237a
    public float getSpeed() {
        return this.speed;
    }

    @InterfaceC15237a
    public int getSpriteIndex() {
        return this.normalImgH.l();
    }

    public String getStyleFile() {
        return this.styleFile;
    }

    @InterfaceC15237a
    public p getTexture() {
        return this.normalImgH.n();
    }

    @InterfaceC15237a
    public Vector2 getTilling() {
        if (this.tilling == null) {
            this.tilling = new Vector2(1.0f);
        }
        return this.tilling;
    }

    @Override
    public String getTitle() {
        return f78790U;
    }

    @Override
    public Component.e getType() {
        return Component.e.Unknown;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isFlipX() {
        return this.flipX;
    }

    @InterfaceC15237a
    public boolean isFlipY() {
        return this.flipY;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        listener.b("(" + this.f79250n.getName() + "),(UISpriteRenderer),(Loading),(texture)");
        this.normalImgH.q();
        listener.e();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        updateUIStyleInstance();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        C3118g c3118g = this.f78792P;
        if (c3118g != null) {
            c3118g.i();
            this.f78792P = null;
        }
    }

    @Override
    public void onDrawFrame() {
        super.onDrawFrame();
        C3118g c3118g = this.f78792P;
        if (c3118g != null) {
            c3118g.s();
        }
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
        boolean z10;
        Rect m10;
        float f10;
        float f11;
        float f12;
        float f13;
        if (getUIRectComponent() == null) {
            return;
        }
        ImGui.nativeSetCursorPos(getUIRectComponent().getGlobalPosition().f(), getUIRectComponent().getGlobalPosition().g());
        ColorINT colorINT = this.color;
        p or = or(this.normalImgH.n(), P9.a.j().i());
        boolean or9p = or9p(this.normalImgH, P9.a.j().a());
        C3118g c3118g = this.f78792P;
        if (c3118g == null || !c3118g.p()) {
            z10 = or9p;
            m10 = this.normalImgH.m();
        } else {
            or = this.f78792P.n();
            m10 = null;
            z10 = false;
        }
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f14 = getUIRectComponent().getGlobalSize().f();
        if (m10 != null) {
            float d10 = m10.d();
            float e11 = m10.e();
            float c10 = m10.c();
            f11 = m10.b();
            f12 = c10;
            f13 = e11;
            f10 = d10;
        } else {
            f10 = 0.0f;
            f11 = 1.0f;
            f12 = 1.0f;
            f13 = 0.0f;
        }
        if (!z10) {
            ImGui.n(or, colorINT, e10, f14, this.flipX, this.flipY, f10 + getOffset().getX(), f13 + getOffset().getY(), f12 * getTilling().getX(), f11 * getTilling().getY());
            return;
        }
        ImGui.L("", or, controller.dpToPx(this.border), 0.0f, 0.0f, colorINT, null, 0.0f, e10, f14, 0L, true, this.flipX, this.flipY, f10 + getOffset().getX(), f13 + getOffset().getY(), f12 * getTilling().getX(), f11 * getTilling().getY());
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        C3118g c3118g;
        super.onHierarchyActiveChanged(enabled);
        if (!enabled || (c3118g = this.f78792P) == null) {
            return;
        }
        c3118g.r();
        requestUIDirty();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.normalImgH.f(getRequestUIDirtyRunnable());
        updateSpriteAnimation();
        if (getUIRectComponent() == null) {
            return;
        }
        if (this.f78793Q == null) {
            C3118g c3118g = this.f78792P;
            if (c3118g != null) {
                c3118g.i();
                this.f78792P = null;
                return;
            }
            return;
        }
        int e10 = getUIRectComponent().getGlobalSize().e();
        int f10 = getUIRectComponent().getGlobalSize().f();
        C3118g c3118g2 = this.f78792P;
        if (c3118g2 == null) {
            this.f78792P = new C3118g(e10, f10, new d(), new e());
        } else if (c3118g2.y(e10, f10)) {
            requestUIDirty();
        }
        this.f78792P.z(this.f78793Q);
        this.f78792P.w(this.normalImgH.n());
        this.f78792P.j();
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof C3117f) {
            C3117f c3117f = (C3117f) event;
            if (getStyleFile() == null || !getStyleFile().equals(c3117f.a())) {
                return;
            }
            this.f78794R = null;
            this.f78793Q = null;
            updateUIStyleInstance();
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        this.normalImgH.s(dictionary);
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
    public void setFlipX(boolean flipX) {
        if (this.flipX == flipX) {
            return;
        }
        this.flipX = flipX;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setFlipY(boolean flipY) {
        if (this.flipY == flipY) {
            return;
        }
        this.flipY = flipY;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setOffset(Vector2 offset) {
        if (offset == null) {
            return;
        }
        getOffset().x0(offset);
        requestUIDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78796T = run;
    }

    @InterfaceC15237a
    public void setSpeed(float speed) {
        if (this.speed == speed) {
            return;
        }
        this.speed = speed;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setSpriteIndex(int spriteIndex) {
        if (this.normalImgH.l() == spriteIndex) {
            return;
        }
        this.normalImgH.w(spriteIndex);
        this.f78795S = 0.0f;
        requestUIDirty();
    }

    public void setStyleFile(String styleFile) {
        this.styleFile = styleFile;
        updateUIStyleInstance();
    }

    @InterfaceC15237a
    public void setTexture(p texture) {
        if (this.normalImgH.n() == texture) {
            return;
        }
        this.normalImgH.x(texture);
        this.f78795S = 0.0f;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setTilling(Vector2 tilling) {
        if (tilling == null) {
            return;
        }
        getTilling().x0(tilling);
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78796T;
        if (component != null) {
            return component;
        }
        JAVARuntime.UISpriteRenderer uISpriteRenderer = new JAVARuntime.UISpriteRenderer(this);
        this.f78796T = uISpriteRenderer;
        return uISpriteRenderer;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UISpriteRenderer uISpriteRenderer = new UISpriteRenderer();
        uISpriteRenderer.color = ColorINT.k(this.color);
        uISpriteRenderer.border = this.border;
        uISpriteRenderer.flipX = this.flipX;
        uISpriteRenderer.flipY = this.flipY;
        uISpriteRenderer.offset = Vector2.y(getOffset());
        uISpriteRenderer.tilling = Vector2.y(getTilling());
        uISpriteRenderer.normalImgH = this.normalImgH.clone();
        uISpriteRenderer.styleFile = this.styleFile;
        uISpriteRenderer.speed = this.speed;
        return uISpriteRenderer;
    }
}
