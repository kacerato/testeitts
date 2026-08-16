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

public class UIImage extends ImGuiRenderableComponent {

    public static final String f78552T = "UIImage";

    public static final Class f78553U = UIImage.class;

    public C3118g f78554P;

    public UIStyle f78555Q;

    public String f78556R;

    public Component f78557S;

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
    private String styleFile;

    @Expose
    @eb.f
    private Vector2 tilling;

    public class a implements D5.h {

        public class RunnableC1320a implements Runnable {

            public final Variable f78559b;

            public RunnableC1320a(final Variable val$variable) {
                this.f78559b = val$variable;
            }

            @Override
            public void run() {
                UIImage.this.setStyleFile(this.f78559b.str_value);
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return UIImage.this.getStyleFile() != null ? new Variable("", UIImage.this.getStyleFile()) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new RunnableC1320a(variable));
            }
        }
    }

    public class b extends AbstractC13203c {
        @Override
        public Class b() {
            return UIImage.f78553U;
        }

        @Override
        public String c() {
            return UIImage.f78552T;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "Image";
        }
    }

    public class c implements InterfaceC3114c {
        public c() {
        }

        @Override
        public float a(float px) {
            return UIImage.this.getUIControllerComponent().dpToPx(px);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            UIImage.this.requestUIDirty();
        }
    }

    public class e implements D5.h {

        public class a implements Runnable {

            public final Variable f78564b;

            public a(final Variable val$variable) {
                this.f78564b = val$variable;
            }

            @Override
            public void run() {
                UIImage.this.setColor(this.f78564b.color_value.clone());
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return UIImage.this.color != null ? new Variable("temp", UIImage.this.color) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIImage.this.flipX + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIImage.this.setFlipX(variable.booolean_value.booleanValue());
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIImage.this.flipY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIImage.this.setFlipY(variable.booolean_value.booleanValue());
            }
        }
    }

    public class h implements c.u0 {
        public h() {
        }

        @Override
        public void a() {
            UIImage.this.requestUIDirty();
        }
    }

    public class i implements c.u0 {
        public i() {
        }

        @Override
        public void a() {
            UIImage.this.requestUIDirty();
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIImage.this.border + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIImage.this.setBorder(variable.float_value);
            }
        }
    }

    static {
        C13201a.b(new b());
    }

    public UIImage() {
        super(f78552T);
        this.color = new ColorINT();
        this.normalImgH = new UIImageHandler();
        this.border = 8.0f;
        this.flipX = false;
        this.flipY = false;
        this.offset = new Vector2();
        this.tilling = new Vector2(1.0f);
    }

    private void updateUIStyleInstance() {
        String str;
        String str2 = this.styleFile;
        if (str2 == null || str2.isEmpty()) {
            this.f78555Q = null;
            this.f78556R = null;
        } else {
            if (this.f78555Q == null || (str = this.f78556R) == null || !str.equals(this.styleFile)) {
                try {
                    this.f78555Q = UIStyle.O(X7.a.x(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.styleFile)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f78556R = this.styleFile;
        }
        reloadInspector();
        requestUIDirty();
    }

    @Override
    public void calculateInternalSizeEnd(UIController controller) {
    }

    @Override
    public void calculateInternalSizeStart(UIController controller) {
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
        inspectorEntries.add(new C5.b(new e(), SerializableShaderEntry.f81153g, b.a.Color).d(this.f79250n, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        inspectorEntries.addAll(this.normalImgH.j("Image", context, this.f78555Q == null));
        C5.b bVar = new C5.b(new C5.a("Other", true));
        List<C5.b> list = bVar.f2064Q.f2042o;
        f fVar = new f();
        b.a aVar = b.a.SLBoolean;
        list.add(new C5.b(fVar, "Flip x", aVar));
        bVar.f2064Q.f2042o.add(new C5.b(new g(), "Flip y", aVar));
        bVar.f2064Q.f2042o.add(F5.c.z("Offset", getOffset(), new Vector2(), new h()));
        bVar.f2064Q.f2042o.add(F5.c.z("Tilling", getTilling(), new Vector2(1.0f), new i()));
        inspectorEntries.add(bVar);
        if (this.f78555Q == null) {
            inspectorEntries.add(new C5.b(new j(), "Border", b.a.SLFloat).d(this.f79250n, this, "border", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        }
        inspectorEntries.add(new C5.b(new a(), "Style", b.a.UIStyle, ".usy"));
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
        return "Image";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIImage;
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
        listener.b("(" + this.f79250n.getName() + "),(Image),(Loading),(texture)");
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
        C3118g c3118g = this.f78554P;
        if (c3118g != null) {
            c3118g.i();
            this.f78554P = null;
        }
    }

    @Override
    public void onDrawFrame() {
        super.onDrawFrame();
        C3118g c3118g = this.f78554P;
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
        C3118g c3118g = this.f78554P;
        if (c3118g == null || !c3118g.p()) {
            z10 = or9p;
            m10 = this.normalImgH.m();
        } else {
            or = this.f78554P.n();
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
        if (!enabled || (c3118g = this.f78554P) == null) {
            return;
        }
        c3118g.r();
        requestUIDirty();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.normalImgH.f(getRequestUIDirtyRunnable());
        if (getUIRectComponent() == null) {
            return;
        }
        if (this.f78555Q == null) {
            C3118g c3118g = this.f78554P;
            if (c3118g != null) {
                c3118g.i();
                this.f78554P = null;
                return;
            }
            return;
        }
        int e10 = getUIRectComponent().getGlobalSize().e();
        int f10 = getUIRectComponent().getGlobalSize().f();
        C3118g c3118g2 = this.f78554P;
        if (c3118g2 == null) {
            this.f78554P = new C3118g(e10, f10, new c(), new d());
        } else if (c3118g2.y(e10, f10)) {
            requestUIDirty();
        }
        this.f78554P.z(this.f78555Q);
        this.f78554P.w(this.normalImgH.n());
        this.f78554P.j();
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof C3117f) {
            C3117f c3117f = (C3117f) event;
            if (getStyleFile() == null || !getStyleFile().equals(c3117f.a())) {
                return;
            }
            this.f78556R = null;
            this.f78555Q = null;
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
        this.f78557S = run;
    }

    @InterfaceC15237a
    public void setSpriteIndex(int spriteIndex) {
        if (this.normalImgH.l() == spriteIndex) {
            return;
        }
        this.normalImgH.w(spriteIndex);
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
        JAVARuntime.Component component = this.f78557S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIImage uIImage = new JAVARuntime.UIImage(this);
        this.f78557S = uIImage;
        return uIImage;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIImage uIImage = new UIImage();
        uIImage.color = ColorINT.k(this.color);
        uIImage.border = this.border;
        uIImage.flipX = this.flipX;
        uIImage.flipY = this.flipY;
        uIImage.offset = Vector2.y(getOffset());
        uIImage.tilling = Vector2.y(getTilling());
        uIImage.normalImgH = this.normalImgH.clone();
        return uIImage;
    }

    public UIImage(float border) {
        super(f78552T);
        this.color = new ColorINT();
        this.normalImgH = new UIImageHandler();
        this.border = 8.0f;
        this.flipX = false;
        this.flipY = false;
        this.offset = new Vector2();
        this.tilling = new Vector2(1.0f);
        this.border = border;
    }
}
