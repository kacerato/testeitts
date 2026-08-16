package com.itsmagic.engine.Engines.Engine.ImGUI.Controller;

import C5.b;
import F5.c;
import JAVARuntime.Color;
import JAVARuntime.Component;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import JAVARuntime.Quaternion;
import JAVARuntime.Screen;
import JAVARuntime.Vector3;
import JAVARuntime.Vertex;
import K8.c;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import f5.C13189d;
import fb.AbstractC13203c;
import fb.C13201a;
import fc.C13205b;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import rc.C15169a;
import s8.InterfaceC15237a;
import yb.C16165b;

public class UIController extends ImGuiComponent {

    public static final String f78024F1 = "UIController";

    public static final int f78026L1 = 6;

    public static final int f78029y1 = 1;

    public GizmoObject f78030D0;

    public Tb.a f78031E;

    public Tb.a f78032F;

    public boolean f78033G;

    public int f78034H;

    public int f78035I;

    public boolean f78036J;

    public int f78037K;

    public int f78038L;

    public int f78039M;

    public long f78040N;

    public long f78041O;

    public transient q f78042P;

    public com.itsmagic.engine.Engines.Engine.ImGUI.Backend.a f78043Q;

    public boolean f78044R;

    public final C13205b f78045S;

    public final W9.c f78046T;

    public final Square5I f78047U;

    public final Mc.a<tc.h> f78048V;

    public int f78049W;

    public int f78050X;

    public ub.e f78051Y;

    public String f78052Z;

    @Expose
    private boolean allowScreenTouch;

    public GizmoObject f78053b1;

    @Expose
    private boolean drawToScreen;

    @Expose
    @eb.f
    private int fixedResolutionPixelsHeight;

    @Keep
    public final ec.d fixedResolutionPixelsHeight_OFCBRL;

    @Expose
    @eb.f
    private int fixedResolutionPixelsWidth;

    @Keep
    public final ec.d fixedResolutionPixelsWidth_OFCBRL;

    @Expose
    @eb.f
    private int freeResolutionPixels;

    @Keep
    public final ec.d freeResolutionPixels_OFCBRL;

    public ub.n f78054i1;

    public Component f78055m1;

    @Expose
    @eb.f
    private float pxSize;

    @Keep
    public final ec.d pxSize_OFCBRL;

    public GizmoObject f78056q0;

    @Expose
    private String renderTextureFile;

    @Expose
    @eb.f
    private float resoPercentage;

    @Keep
    public final ec.d resoPercentage_OFCBRL;

    @Expose
    private s resolutionMode;

    @Expose
    public InspectorEditor resolutionsEditor;

    public GizmoObject f78057v0;

    public static final Ac.b f78027q1 = Theme.T.UI_EDITOR_GRID_COLOR;

    public static final Ac.b f78028v1 = Theme.T.UI_EDITOR_GRID_BACKGROUND;

    public static final Class f78025H1 = UIController.class;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIController.this.resoPercentage + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIController.this.setResolutionPercentage(variable.float_value);
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIController.this.fixedResolutionPixelsWidth + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIController.this.setFixedResolutionPixelsWidth(variable.int_value);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIController.this.fixedResolutionPixelsHeight + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIController.this.setFixedResolutionPixelsHeight(variable.int_value);
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIController.this.freeResolutionPixels + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIController.this.setFreeResolutionPixels(variable.int_value);
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIController.this.drawToScreen + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIController.this.setDrawToScreen(variable.booolean_value.booleanValue());
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIController.this.allowScreenTouch + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIController.this.setAllowScreenTouch(variable.booolean_value.booleanValue());
            }
        }
    }

    public class g implements D5.h {

        public class a implements Runnable {

            public final Variable f78065b;

            public a(final Variable val$variable) {
                this.f78065b = val$variable;
            }

            @Override
            public void run() {
                UIController.this.setRenderTextureFile(this.f78065b.str_value);
            }
        }

        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UIController.this.renderTextureFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.e()) {
                return;
            }
            K8.a.I(new a(variable));
        }
    }

    public class h extends AbstractC13203c {
        @Override
        public Class b() {
            return UIController.f78025H1;
        }

        @Override
        public String c() {
            return UIController.f78024F1;
        }

        @Override
        public String e() {
            return "UI/Base";
        }
    }

    public class i implements ec.d {
        public i() {
        }

        @Override
        public void a() {
            UIController.this.markUIDirty();
        }
    }

    public class j implements ec.d {
        public j() {
        }

        @Override
        public void a() {
            UIController.this.markUIDirty();
        }
    }

    public class k implements ec.d {
        public k() {
        }

        @Override
        public void a() {
            UIController.this.markUIDirty();
        }
    }

    public class l implements ec.d {
        public l() {
        }

        @Override
        public void a() {
            UIController.this.markUIDirty();
        }
    }

    public class m implements ec.d {
        public m() {
        }

        @Override
        public void a() {
            UIController.this.markUIDirty();
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override
        public void run() {
            if (UIController.this.f78054i1 != null) {
                for (int i10 = 0; i10 < UIController.this.f78054i1.getWidth(); i10++) {
                    for (int i11 = 0; i11 < UIController.this.f78054i1.getHeight(); i11++) {
                        int height = (UIController.this.f78054i1.getHeight() - i11) - 1;
                        if (i10 % 64 < 3 || height % 64 < 3) {
                            UIController.this.f78054i1.Y(i10, i11, ColorINT.h0());
                        } else {
                            UIController.this.f78054i1.Y(i10, i11, ColorINT.g0());
                        }
                    }
                }
                UIController.this.f78054i1.apply();
            }
        }
    }

    public class o implements D5.h {
        public o() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIController.this.pxSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIController.this.setPxSize(variable.float_value);
            }
        }
    }

    public class p extends c.n0<s> {
        public p() {
        }

        @Override
        public void a() {
            UIController.this.reloadInspector();
        }

        @Override
        public void set(s value) {
            UIController.this.setResolutionMode(value);
            UIController.this.reloadInspector();
        }

        @Override
        public String c(s enumObject) {
            int ordinal = enumObject.ordinal();
            return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? enumObject.toString() : Lang.l(Lang.T.FREE_ASPECT_RESOLUTION) : Lang.l(Lang.T.FIXED_RESOLUTION) : Lang.l(Lang.T.PERCENTAGE);
        }
    }

    public static class q {

        public final HashMap<GameObject, r> f78075a = new HashMap<>(128);

        public final WeakHashMap<GameObject, r> f78076b = new WeakHashMap<>();

        public void a() {
            this.f78075a.clear();
        }
    }

    public static class r {

        public final SteppedArrayList<ImGuiLayoutComponent> f78077a = new SteppedArrayList<>(8);

        public final SteppedArrayList<ImGuiLayoutComponent> f78078b = new SteppedArrayList<>(8);

        public UIRect f78079c;

        public int f78080d;
    }

    public enum s {
        Percentage,
        FixedResolution,
        FreeAspectResolution
    }

    static {
        C13201a.b(new h());
    }

    public UIController() {
        super(f78024F1);
        this.drawToScreen = true;
        this.allowScreenTouch = true;
        this.pxSize = 3.5f;
        this.pxSize_OFCBRL = new i();
        this.resoPercentage = 0.8f;
        this.resoPercentage_OFCBRL = new j();
        this.resolutionMode = s.FreeAspectResolution;
        this.fixedResolutionPixelsWidth = 1280;
        this.fixedResolutionPixelsWidth_OFCBRL = new k();
        this.fixedResolutionPixelsHeight = 720;
        this.fixedResolutionPixelsHeight_OFCBRL = new l();
        this.freeResolutionPixels = 720;
        this.freeResolutionPixels_OFCBRL = new m();
        this.resolutionsEditor = new InspectorEditor();
        this.f78034H = 7;
        this.f78035I = 1;
        this.f78036J = false;
        this.f78037K = -1;
        this.f78038L = -1;
        this.f78039M = -1;
        this.f78040N = -1L;
        this.f78041O = -1L;
        this.f78045S = new C13205b();
        this.f78046T = new W9.c();
        this.f78047U = new Square5I();
        this.f78048V = new Mc.a<>();
        this.f78049W = -1;
        this.f78050X = -1;
    }

    private int apkReducer(int v10) {
        return v10;
    }

    private int determineImageResolutionPercentage() {
        int ordinal = this.resolutionMode.ordinal();
        if (ordinal == 0) {
            return Nc.b.N((int) Nc.b.S0(Nc.b.D(2.0f / getImageWidth()), Nc.b.D(2.0f / getImageHeight())), (int) (this.resoPercentage * 100.0f));
        }
        if (ordinal == 1 || ordinal == 2) {
            return 100;
        }
        throw new RuntimeException();
    }

    private int getImageHeight() {
        int ordinal = this.resolutionMode.ordinal();
        if (ordinal == 0) {
            return Nc.b.N(2, apkReducer(Screen.getHeight()));
        }
        if (ordinal == 1) {
            return apkReducer(this.fixedResolutionPixelsHeight);
        }
        if (ordinal != 2) {
            throw new RuntimeException();
        }
        boolean z10 = K8.c.f11004e == c.a.Landscape;
        if (!z10) {
            return Nc.b.N(2, apkReducer((int) (Screen.getHeight() * (getImageWidth() / Nc.b.N(2, Screen.getWidth())))));
        }
        if (z10) {
            return apkReducer(this.freeResolutionPixels);
        }
        throw new RuntimeException();
    }

    private int getImageWidth() {
        int ordinal = this.resolutionMode.ordinal();
        if (ordinal == 0) {
            return Nc.b.N(2, apkReducer(Screen.getWidth()));
        }
        if (ordinal == 1) {
            return apkReducer(this.fixedResolutionPixelsWidth);
        }
        if (ordinal != 2) {
            throw new RuntimeException();
        }
        boolean z10 = K8.c.f11004e == c.a.Landscape;
        if (!z10) {
            return apkReducer(this.freeResolutionPixels);
        }
        if (z10) {
            return Nc.b.N(2, apkReducer((int) (Screen.getWidth() * (getImageHeight() / Nc.b.N(2, Screen.getHeight())))));
        }
        throw new RuntimeException();
    }

    private boolean hasAnyTouchActivity() {
        if (this.allowScreenTouch) {
            for (int i10 = 0; i10 < C15169a.L(); i10++) {
                tc.h n10 = C15169a.n(i10);
                if (n10.k() || n10.q() || n10.t()) {
                    return true;
                }
            }
        }
        for (int i11 = 0; i11 < this.f78048V.size(); i11++) {
            tc.h hVar = this.f78048V.get(i11);
            if (hVar != null && (hVar.k() || hVar.q() || hVar.t())) {
                return true;
            }
        }
        return false;
    }

    private void markAllLayoutsDirty() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return;
        }
        markLayoutsDirtyRecursive(gameObject);
    }

    private void markLayoutsDirtyRecursive(GameObject target) {
        if (target == null) {
            return;
        }
        for (int i10 = 0; i10 < target.N(); i10++) {
            com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component L10 = target.L(i10);
            if (L10 instanceof UIRect) {
                ((UIRect) L10).markLayoutDirty();
            }
        }
        for (int i11 = 0; i11 < target.D(); i11++) {
            markLayoutsDirtyRecursive(target.C(i11));
        }
    }

    private void onUIFrameBuilt(int fbW, int fbH) {
        this.f78037K = fbW;
        this.f78038L = fbH;
    }

    private void removeFromGraphics() {
        resetLayoutCacheContext();
        com.itsmagic.engine.Engines.Engine.ImGUI.Backend.a aVar = this.f78043Q;
        if (aVar != null) {
            aVar.b();
            this.f78043Q = null;
        }
        Tb.a aVar2 = this.f78031E;
        if (aVar2 != null) {
            aVar2.c();
            this.f78031E = null;
        }
        Tb.a aVar3 = this.f78032F;
        if (aVar3 != null) {
            aVar3.c();
            this.f78032F = null;
        }
        this.f78033G = false;
        this.f78034H = 7;
        this.f78035I = 1;
        markAllLayoutsDirty();
        this.f78037K = -1;
        this.f78038L = -1;
        this.f78040N = -1L;
        this.f78041O = -1L;
        this.f78036J = false;
        this.f78045S.l(null);
        GizmoObject gizmoObject = this.f78030D0;
        if (gizmoObject != null) {
            gizmoObject.setTexture(null);
            this.f78030D0 = null;
        }
    }

    private void resetLayoutCacheContext() {
        this.f78042P = null;
    }

    private boolean shouldBuildUIFrame(int fbW, int fbH) {
        return this.f78043Q == null || this.f78041O < 0 || this.f78035I > 0 || this.f78037K != fbW || this.f78038L != fbH;
    }

    private void toThemeColor(Ac.b tag, Color out) {
        try {
            out.instance.intColor = Theme.i(tag);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void updateRenderTexture() {
        String str;
        String str2 = this.renderTextureFile;
        if (str2 == null || str2.isEmpty()) {
            this.f78051Y = null;
            this.f78052Z = null;
        } else if (this.f78051Y == null || (str = this.f78052Z) == null || !str.equals(str2)) {
            this.f78052Z = str2;
            this.f78051Y = (ub.e) C16165b.u(str2);
        }
    }

    public void afterRender() {
        Tb.a aVar;
        if (this.drawToScreen && (aVar = this.f78031E) != null && aVar.s()) {
            this.f78045S.k(getPixelsPosX(), getPixelsPosY(), Screen.getWidth(), Screen.getHeight());
            this.f78045S.j(1100);
        }
    }

    public boolean allowScreenDraw() {
        Tb.a aVar = this.f78031E;
        return (aVar == null || aVar.l() == null || !this.f78031E.l().J()) ? false : true;
    }

    @InterfaceC15237a
    public float dpToPx(float px) {
        return Nc.b.w0(px * this.pxSize);
    }

    @InterfaceC15237a
    public V9.r emitTouch() {
        if (this.f78048V.size() < 15) {
            V9.r rVar = new V9.r();
            this.f78048V.add(rVar);
            markUIDirty();
            return rVar;
        }
        throw new RuntimeException("Max supported active virtual touchs at the same time in a controller is 15. Make sure to call releaseTouch(t) after releasing press.");
    }

    public void finishRenderFrame() {
        this.f78036J = false;
    }

    public Tb.a getCacheBuffer() {
        return this.f78032F;
    }

    public W9.c getControllerScreenRect() {
        return this.f78046T;
    }

    @InterfaceC15237a
    public int getFixedResolutionPixelsHeight() {
        return this.fixedResolutionPixelsHeight;
    }

    @InterfaceC15237a
    public int getFixedResolutionPixelsWidth() {
        return this.fixedResolutionPixelsWidth;
    }

    @InterfaceC15237a
    public Tb.a getFrameBuffer() {
        return this.f78031E;
    }

    @InterfaceC15237a
    public int getFrameBufferH() {
        int i10 = this.f78050X;
        return i10 > 0 ? i10 : getImageHeight();
    }

    @InterfaceC15237a
    public int getFrameBufferW() {
        int i10 = this.f78049W;
        return i10 > 0 ? i10 : getImageWidth();
    }

    @InterfaceC15237a
    public int getFreeResolutionPixels() {
        return this.freeResolutionPixels;
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_uicontroller;
    }

    @InterfaceC15237a
    public float getImageRatio() {
        return getFrameBufferW() / getImageHeight();
    }

    public C13205b getImageToScreen() {
        return this.f78045S;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_uicontroller;
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
        C5.b bVar = new C5.b(new o(), "PX Size", b.a.SLFloat);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        inspectorEntries.add(bVar.d(gameObject, this, "pxSize", cVar));
        if (this.resolutionsEditor == null) {
            this.resolutionsEditor = new InspectorEditor();
        }
        C5.b bVar2 = new C5.b(new C5.a(Lang.l(Lang.T.RESOLUTION), true, this.resolutionsEditor));
        C5.a aVar = bVar2.f2064Q;
        aVar.f2043p = R.color.interface_panel;
        aVar.f2042o.add(F5.c.i(Lang.l(Lang.T.MODE), s.class, this.resolutionMode, new p()));
        int ordinal = this.resolutionMode.ordinal();
        if (ordinal == 0) {
            bVar2.f2064Q.f2042o.add(new C5.b(new a(), Lang.l(Lang.T.RESOLUTION_PERCENTAGE), b.a.SLFloat01).d(this.f79250n, this, "resoPercentage", cVar));
        } else if (ordinal == 1) {
            List<C5.b> list = bVar2.f2064Q.f2042o;
            b bVar3 = new b();
            String l10 = Lang.l(Lang.T.WIDTH);
            b.a aVar2 = b.a.SLInt;
            C5.b bVar4 = new C5.b(bVar3, l10, aVar2);
            GameObject gameObject2 = this.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.INT;
            list.add(bVar4.d(gameObject2, this, "fixedResolutionPixelsWidth", cVar2));
            bVar2.f2064Q.f2042o.add(new C5.b(new c(), Lang.l(Lang.T.HEIGHT), aVar2).d(this.f79250n, this, "fixedResolutionPixelsHeight", cVar2));
        } else if (ordinal == 2) {
            bVar2.f2064Q.f2042o.add(new C5.b(new d(), Lang.l(Lang.T.PIXELS), b.a.SLInt).d(this.f79250n, this, "freeResolutionPixels", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
        }
        inspectorEntries.add(bVar2);
        e eVar = new e();
        b.a aVar3 = b.a.SLBoolean;
        inspectorEntries.add(new C5.b(eVar, "Draw to screen", aVar3));
        inspectorEntries.add(new C5.b(new f(), "Listen screen touches", aVar3));
        inspectorEntries.add(new C5.b(new g(), "Render texture", b.a.InputFile, ".rte"));
        return inspectorEntries;
    }

    public q getLayoutCacheContext() {
        if (this.f78042P == null) {
            this.f78042P = new q();
        }
        return this.f78042P;
    }

    public Square5I getPadding() {
        return this.f78047U;
    }

    public int getPixelsPosX() {
        return (int) ((this.f79250n.f79296m.getX() * K8.c.b()) - K8.c.f11000a);
    }

    public int getPixelsPosY() {
        return (int) ((this.f79250n.f79296m.getY() * K8.c.a()) - K8.c.f11001b);
    }

    @InterfaceC15237a
    public float getPxSize() {
        return this.pxSize;
    }

    @InterfaceC15237a
    public String getRenderTextureFile() {
        return this.renderTextureFile;
    }

    @InterfaceC15237a
    public s getResolutionMode() {
        return this.resolutionMode;
    }

    @InterfaceC15237a
    public float getResolutionPercentage() {
        return this.resoPercentage;
    }

    @Override
    public String getTitle() {
        return f78024F1;
    }

    public UVec2I getTouchPos(tc.h touch) {
        Vector2 d10 = touch.d();
        return new UVec2I((int) (d10.getX() * getFrameBufferW()), (int) (d10.getY() * getFrameBufferH()));
    }

    @InterfaceC15237a
    public Vector2 getTouchPosInVec2(tc.h touch) {
        return getTouchPos(touch).l();
    }

    @Override
    public Component.e getType() {
        return Component.e.UIController;
    }

    @InterfaceC15237a
    public int getUIBuildIntervalFrames() {
        return 1;
    }

    @InterfaceC15237a
    public tc.h getVirtualToucheAt(int i10) {
        return this.f78048V.get(i10);
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isAllowScreenTouch() {
        return this.allowScreenTouch;
    }

    @InterfaceC15237a
    public boolean isDrawToScreen() {
        return this.drawToScreen;
    }

    public boolean isRenderOutputRequested() {
        return this.f78036J;
    }

    public void markUIDirty() {
        if (P9.a.k()) {
            return;
        }
        this.f78035I = 1;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        markUIDirty();
        markAllLayoutsDirty();
    }

    @Override
    public void onDetach() {
        super.onDetach();
        removeFromGraphics();
    }

    public void onGuiEnd() {
        ImGui.nativeEndScreen();
    }

    public void onGuiStart() {
        this.f78046T.h(0, 0, getFrameBufferW(), getFrameBufferH(), getFrameBufferW(), getFrameBufferH());
        ImGui.nativeBeginScreen();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (!enabled) {
            resetLayoutCacheContext();
            removeFromGraphics();
            this.f78048V.clear();
            return;
        }
        resetLayoutCacheContext();
        this.f78036J = false;
        this.f78040N = -1L;
        this.f78041O = -1L;
        this.f78039M = -1;
        this.f78037K = -1;
        this.f78038L = -1;
        this.f78035I = 1;
        markUIDirty();
        markAllLayoutsDirty();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        int frameBufferW = getFrameBufferW();
        int frameBufferH = getFrameBufferH();
        int B02 = gameObject != null ? gameObject.B0() : -1;
        if (B02 != this.f78039M) {
            this.f78039M = B02;
            markUIDirty();
            markAllLayoutsDirty();
        }
        if (this.f78037K != frameBufferW || this.f78038L != frameBufferH) {
            markUIDirty();
            markAllLayoutsDirty();
        }
        if (this.f78043Q == null) {
            this.f78043Q = new com.itsmagic.engine.Engines.Engine.ImGUI.Backend.a();
        }
        Tb.a aVar = this.f78031E;
        if (aVar == null) {
            this.f78031E = new Tb.a(frameBufferW, frameBufferH);
        } else if (aVar.p() != frameBufferW || this.f78031E.o() != frameBufferH) {
            this.f78031E.u(frameBufferW, frameBufferH);
        }
        boolean z10 = this.f78033G;
        if (z10) {
            this.f78034H = 0;
        } else {
            int i10 = this.f78034H + 1;
            this.f78034H = i10;
            z10 = i10 <= 6;
        }
        if (z10) {
            Tb.a aVar2 = this.f78032F;
            if (aVar2 == null) {
                this.f78032F = new Tb.a(frameBufferW, frameBufferH);
            } else if (aVar2.p() != frameBufferW || this.f78032F.o() != frameBufferH) {
                this.f78032F.u(frameBufferW, frameBufferH);
            }
        } else {
            Tb.a aVar3 = this.f78032F;
            if (aVar3 != null) {
                aVar3.c();
                this.f78032F = null;
            }
        }
        this.f78033G = false;
        updateRenderTexture();
        Tb.a aVar4 = this.f78031E;
        if (aVar4 == null || aVar4.l() == null || !this.f78031E.l().J()) {
            return;
        }
        this.f78045S.l(this.f78031E.l());
        if (!E.f71997a0) {
            if (shouldBuildUIFrame(frameBufferW, frameBufferH)) {
                this.f78036J = true;
                this.f78035I--;
                P9.a.b(this);
                onUIFrameBuilt(frameBufferW, frameBufferH);
            } else {
                P9.a.m(this);
            }
        }
        P9.a.A(this);
        ub.e eVar = this.f78051Y;
        if (eVar != null) {
            Tb.a G02 = eVar.G0();
            Tb.a aVar5 = this.f78031E;
            if (G02 != aVar5) {
                this.f78051Y.H0(aVar5);
            }
        }
    }

    @Override
    public void propagateEditorViewModes(List<C13189d> viewModes) {
        super.propagateEditorViewModes(viewModes);
    }

    @InterfaceC15237a
    public float pxToDP(int px) {
        return px / this.pxSize;
    }

    @InterfaceC15237a
    public void releaseTouch(tc.h touch) {
        this.f78048V.remove(touch);
        markUIDirty();
    }

    public void requestCacheBuffer() {
        this.f78033G = true;
    }

    @InterfaceC15237a
    public void setAllowScreenTouch(boolean allowScreenTouch) {
        this.allowScreenTouch = allowScreenTouch;
        markUIDirty();
    }

    @InterfaceC15237a
    public void setDrawToScreen(boolean drawToScreen) {
        this.drawToScreen = drawToScreen;
        markUIDirty();
    }

    @InterfaceC15237a
    public void setFixedResolutionPixelsHeight(int fixedResolutionPixelsHeight) {
        this.fixedResolutionPixelsHeight = Nc.b.N(16, fixedResolutionPixelsHeight);
        markUIDirty();
    }

    @InterfaceC15237a
    public void setFixedResolutionPixelsWidth(int fixedResolutionPixelsWidth) {
        this.fixedResolutionPixelsWidth = Nc.b.N(16, fixedResolutionPixelsWidth);
        markUIDirty();
    }

    @InterfaceC15237a
    public void setFreeResolutionPixels(int freeResolutionPixels) {
        this.freeResolutionPixels = Nc.b.N(16, freeResolutionPixels);
        markUIDirty();
    }

    @InterfaceC15237a
    public void setPxSize(float pxSize) {
        this.pxSize = pxSize;
        markUIDirty();
    }

    @InterfaceC15237a
    public void setRenderTextureFile(String renderTextureFile) {
        this.renderTextureFile = renderTextureFile;
        markUIDirty();
    }

    @InterfaceC15237a
    public void setResolutionMode(s resolutionMode) {
        this.resolutionMode = resolutionMode;
        markUIDirty();
    }

    @InterfaceC15237a
    public void setResolutionPercentage(float resoPercentage) {
        this.resoPercentage = Nc.b.M(1.0f, resoPercentage);
        markUIDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78055m1 = run;
    }

    @InterfaceC15237a
    public void setUIBuildIntervalFrames(int uiBuildIntervalFrames) {
        markUIDirty();
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78055m1;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIController uIController = new JAVARuntime.UIController(this);
        this.f78055m1 = uIController;
        return uIController;
    }

    public void updateOnEditor() {
        markAllLayoutsDirty();
        markUIDirty();
        ub.n nVar = this.f78054i1;
        if (nVar == null || nVar.getWidth() != getFrameBufferW() || this.f78054i1.getHeight() != getFrameBufferH()) {
            this.f78054i1 = new ub.n(getFrameBufferW(), getFrameBufferH());
            O9.b.d(new n());
        }
        Tb.a aVar = this.f78031E;
        if (aVar == null || aVar.l() == null || !this.f78031E.l().J()) {
            return;
        }
        if (this.f78056q0 == null) {
            GizmoObject gizmoObject = new GizmoObject(Vertex.loadPrimitive(7));
            this.f78056q0 = gizmoObject;
            gizmoObject.setRotation(Quaternion.fromEuler(0.0f, 0.0f, 0.0f));
            this.f78056q0.setEnableTransparency(true);
        }
        toThemeColor(f78028v1, this.f78056q0.getColor());
        if (this.f78031E != null) {
            this.f78056q0.setPosition(new Vector3((-getFrameBufferW()) / 2.0f, getFrameBufferH() / 2.0f, 5010.0f));
            this.f78056q0.setScale(-getFrameBufferW(), -getFrameBufferH(), 1.0f);
        }
        Ub.a.a(this.f78056q0);
        ub.n nVar2 = this.f78054i1;
        if (nVar2 != null && nVar2.J()) {
            if (this.f78057v0 == null) {
                GizmoObject gizmoObject2 = new GizmoObject(Vertex.loadPrimitive(7));
                this.f78057v0 = gizmoObject2;
                gizmoObject2.setRotation(Quaternion.fromEuler(0.0f, 0.0f, 0.0f));
                this.f78057v0.setEnableTransparency(true);
            }
            toThemeColor(f78027q1, this.f78057v0.getColor());
            if (this.f78031E != null) {
                this.f78057v0.setPosition(new Vector3((-getFrameBufferW()) / 2.0f, getFrameBufferH() / 2.0f, 5009.0f));
                this.f78057v0.setScale(-getFrameBufferW(), -getFrameBufferH(), 1.0f);
                this.f78057v0.setTexture(this.f78054i1.p0());
            }
            Ub.a.a(this.f78057v0);
        }
        if (this.f78030D0 == null) {
            GizmoObject gizmoObject3 = new GizmoObject(Vertex.loadPrimitive(7));
            this.f78030D0 = gizmoObject3;
            gizmoObject3.setRotation(Quaternion.fromEuler(0.0f, 0.0f, 0.0f));
            this.f78030D0.setEnableTransparency(true);
        }
        if (this.f78031E != null) {
            this.f78030D0.setPosition(new Vector3((-getFrameBufferW()) / 2.0f, getFrameBufferH() / 2.0f, 5000.0f));
            this.f78030D0.setScale(-getFrameBufferW(), -getFrameBufferH(), 1.0f);
            this.f78030D0.setTexture(this.f78031E.l().p0());
        }
        Ub.a.a(this.f78030D0);
        if (this.f78053b1 == null) {
            GizmoObject gizmoObject4 = new GizmoObject(com.itsmagic.engine.Engines.Engine.Vertex.Vertex.E1(Vertex.v.CUBE, null).x2());
            this.f78053b1 = gizmoObject4;
            gizmoObject4.setRenderMode(GizmoElement.RenderMode.WireFrame);
            this.f78053b1.setRotation(Quaternion.fromEuler(0.0f, 0.0f, 0.0f));
            this.f78053b1.setColor(new Color(40, 40, 40));
        }
        this.f78053b1.setScale(-getFrameBufferW(), -getFrameBufferH(), 0.1f);
        this.f78053b1.setPosition(new Vector3((-getFrameBufferW()) / 2.0f, getFrameBufferH() / 2.0f, 5000.0f));
        Ub.a.a(this.f78053b1);
    }

    @InterfaceC15237a
    public int virtualTouchsCount() {
        return this.f78048V.size();
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIController uIController = new UIController();
        uIController.drawToScreen = this.drawToScreen;
        uIController.allowScreenTouch = this.allowScreenTouch;
        uIController.resoPercentage = this.resoPercentage;
        uIController.resolutionMode = this.resolutionMode;
        uIController.fixedResolutionPixelsWidth = this.fixedResolutionPixelsWidth;
        uIController.fixedResolutionPixelsHeight = this.fixedResolutionPixelsHeight;
        uIController.freeResolutionPixels = this.freeResolutionPixels;
        uIController.resolutionsEditor = this.resolutionsEditor.clone();
        uIController.renderTextureFile = this.renderTextureFile;
        return uIController;
    }

    @InterfaceC15237a
    public int dpToPx(int px) {
        return (int) Nc.b.w0(px * this.pxSize);
    }

    @InterfaceC15237a
    public void emitTouch(V9.r touch) {
        if (this.f78048V.size() < 15) {
            this.f78048V.add(touch);
            markUIDirty();
            return;
        }
        throw new RuntimeException("Max supported active virtual touchs at the same time in a controller is 15. Make sure to call releaseTouch(t) after releasing press.");
    }

    public UIController(s resolutionMode, int fixedResolutionPixelsWidth, int fixedResolutionPixelsHeight, boolean drawToScreen, boolean allowScreenTouch) {
        super(f78024F1);
        this.drawToScreen = true;
        this.allowScreenTouch = true;
        this.pxSize = 3.5f;
        this.pxSize_OFCBRL = new i();
        this.resoPercentage = 0.8f;
        this.resoPercentage_OFCBRL = new j();
        this.resolutionMode = s.FreeAspectResolution;
        this.fixedResolutionPixelsWidth = 1280;
        this.fixedResolutionPixelsWidth_OFCBRL = new k();
        this.fixedResolutionPixelsHeight = 720;
        this.fixedResolutionPixelsHeight_OFCBRL = new l();
        this.freeResolutionPixels = 720;
        this.freeResolutionPixels_OFCBRL = new m();
        this.resolutionsEditor = new InspectorEditor();
        this.f78034H = 7;
        this.f78035I = 1;
        this.f78036J = false;
        this.f78037K = -1;
        this.f78038L = -1;
        this.f78039M = -1;
        this.f78040N = -1L;
        this.f78041O = -1L;
        this.f78045S = new C13205b();
        this.f78046T = new W9.c();
        this.f78047U = new Square5I();
        this.f78048V = new Mc.a<>();
        this.f78049W = -1;
        this.f78050X = -1;
        this.resolutionMode = resolutionMode;
        this.fixedResolutionPixelsWidth = fixedResolutionPixelsWidth;
        this.fixedResolutionPixelsHeight = fixedResolutionPixelsHeight;
        this.drawToScreen = drawToScreen;
        this.allowScreenTouch = allowScreenTouch;
    }
}
