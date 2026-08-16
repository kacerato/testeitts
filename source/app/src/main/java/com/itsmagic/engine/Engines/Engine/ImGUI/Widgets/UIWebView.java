package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import D5.h;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import V9.r;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine.Engines.Utils.WebViewToOpenGL;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import rc.C15169a;
import s8.InterfaceC15237a;
import ub.p;

public class UIWebView extends ImGuiRenderableComponent {

    public static final String f78862S = "UIWebView";

    public static final Class f78863T = UIWebView.class;

    public static final int f78864U = 24;

    public static final int f78865V = 1;

    public WebViewToOpenGL f78866P;

    public long f78867Q;

    public Component f78868R;

    @Expose
    private boolean allowHibernate;

    @Expose
    private boolean enableVirtualKeyboard;

    @Expose
    private int fps;

    @Expose
    private String url;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIWebView.f78863T;
        }

        @Override
        public String c() {
            return UIWebView.f78862S;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "WebView";
        }
    }

    public class b implements h {

        public class a implements Runnable {

            public final Variable f78870b;

            public a(final Variable val$variable) {
                this.f78870b = val$variable;
            }

            @Override
            public void run() {
                UIWebView.this.setUrl(this.f78870b.str_value);
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIWebView.this.url != null ? UIWebView.this.url : "");
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
            return new Variable("", UIWebView.this.fps + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIWebView.this.setFps(variable.int_value);
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIWebView.this.enableVirtualKeyboard + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIWebView.this.setEnableVirtualKeyboard(variable.booolean_value.booleanValue());
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIWebView.this.allowHibernate + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIWebView.this.setAllowHibernate(variable.booolean_value.booleanValue());
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIWebView() {
        super(f78862S);
        this.url = "https://google.com";
        this.enableVirtualKeyboard = true;
        this.allowHibernate = false;
        this.fps = 24;
    }

    private void ensureWebView(int width, int height) {
        if (this.f78866P == null && N7.c.t() != null) {
            WebViewToOpenGL webViewToOpenGL = new WebViewToOpenGL(N7.c.t(), width, height, this.url);
            this.f78866P = webViewToOpenGL;
            webViewToOpenGL.C(this.allowHibernate);
            this.f78866P.D(getSafeFps());
        }
    }

    private int getSafeFps() {
        return Math.max(1, this.fps);
    }

    private Vector2 internalizePosition(tc.h touch) {
        UIRect uIRectComponent = getUIRectComponent();
        UIController uIControllerComponent = getUIControllerComponent();
        Vector2 vector2 = new Vector2();
        if (uIRectComponent != null && uIControllerComponent != null) {
            if (touch instanceof r) {
                touch.h(vector2);
            } else {
                UVec2I touchPos = uIControllerComponent.getTouchPos(touch);
                vector2.w0(touchPos.e(), touchPos.f());
            }
            vector2.f79838x -= uIRectComponent.getGlobalPosition().f();
            vector2.f79839y -= uIRectComponent.getGlobalPosition().g();
        }
        return vector2;
    }

    private void requestDirtyAtWebViewFps() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f78867Q >= 1000 / getSafeFps()) {
            requestUIDirty();
            this.f78867Q = currentTimeMillis;
        }
    }

    private void updateKeyboardRequest() {
        if (this.enableVirtualKeyboard && this.f78866P.w()) {
            C15169a.e(this);
        } else {
            C15169a.H(this);
        }
    }

    private void updateKeyboardToWebView() {
        if (this.enableVirtualKeyboard && this.f78866P.w()) {
            for (String str : C15169a.f108811t.e()) {
                tc.e f10 = C15169a.f108811t.f(str);
                if (f10 != null) {
                    int e10 = f10.e();
                    if (f10.f117293j) {
                        this.f78866P.A(1, e10);
                    } else if (f10.f117289d || f10.f117290e) {
                        this.f78866P.A(0, e10);
                    }
                }
            }
        }
    }

    private void updateTouchToWebView() {
        tc.h selectedTouch;
        UITouchTrigger touchTrigger = getTouchTrigger();
        if (touchTrigger == null || (selectedTouch = touchTrigger.getSelectedTouch()) == null) {
            return;
        }
        Vector2 internalizePosition = internalizePosition(selectedTouch);
        if (selectedTouch.k()) {
            this.f78866P.B(0, internalizePosition.f79838x, internalizePosition.f79839y);
        } else if (selectedTouch.q()) {
            this.f78866P.B(2, internalizePosition.f79838x, internalizePosition.f79839y);
        } else if (selectedTouch.t()) {
            this.f78866P.B(1, internalizePosition.f79838x, internalizePosition.f79839y);
        }
    }

    @Override
    public void afterTouchUpdate() {
        super.afterTouchUpdate();
        updateTouchToWebView();
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
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        return new C2632k();
    }

    @InterfaceC15237a
    public int getFps() {
        return this.fps;
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
        inspectorEntries.add(new C5.b(new b(), "URL", b.a.SLString));
        inspectorEntries.add(new C5.b(new c(), "FPS", b.a.SLInt));
        d dVar = new d();
        b.a aVar = b.a.SLBoolean;
        inspectorEntries.add(new C5.b(dVar, "Enable android keyboard", aVar));
        inspectorEntries.add(new C5.b(new e(), "Allow hibernate", aVar));
        WebViewToOpenGL webViewToOpenGL = this.f78866P;
        if (webViewToOpenGL != null && webViewToOpenGL.u() != null) {
            inspectorEntries.add(new C5.b("Loaded url: " + this.f78866P.u(), 11));
        }
        return inspectorEntries;
    }

    @InterfaceC15237a
    public String getLoadedUrl() {
        WebViewToOpenGL webViewToOpenGL = this.f78866P;
        if (webViewToOpenGL == null) {
            return null;
        }
        return webViewToOpenGL.u();
    }

    @InterfaceC15237a
    public p getTexture() {
        WebViewToOpenGL webViewToOpenGL = this.f78866P;
        if (webViewToOpenGL == null) {
            return null;
        }
        return webViewToOpenGL.t();
    }

    @Override
    public String getTitle() {
        return "WebView";
    }

    @InterfaceC15237a
    public String getUrl() {
        return this.url;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isAllowHibernate() {
        return this.allowHibernate;
    }

    @InterfaceC15237a
    public boolean isEnableVirtualKeyboard() {
        return this.enableVirtualKeyboard;
    }

    @Override
    public void onDetach() {
        C15169a.H(this);
        WebViewToOpenGL webViewToOpenGL = this.f78866P;
        if (webViewToOpenGL != null) {
            webViewToOpenGL.m();
            this.f78866P = null;
        }
        super.onDetach();
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
        p texture = getTexture();
        if (texture == null || !texture.J()) {
            texture = P9.a.j().i();
        }
        ImGui.k(texture, ColorINT.h0(), getUIRectComponent().getGlobalSize().e(), getUIRectComponent().getGlobalSize().f());
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        UIRect uIRectComponent = getUIRectComponent();
        if (uIRectComponent == null) {
            return;
        }
        int max = Math.max(1, uIRectComponent.getGlobalSize().e());
        int max2 = Math.max(1, uIRectComponent.getGlobalSize().f());
        ensureWebView(max, max2);
        WebViewToOpenGL webViewToOpenGL = this.f78866P;
        if (webViewToOpenGL == null) {
            return;
        }
        webViewToOpenGL.z(max, max2);
        this.f78866P.D(getSafeFps());
        this.f78866P.C(this.allowHibernate);
        this.f78866P.F();
        updateKeyboardToWebView();
        updateKeyboardRequest();
        requestDirtyAtWebViewFps();
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
    }

    @InterfaceC15237a
    public void setAllowHibernate(boolean allowHibernate) {
        if (this.allowHibernate == allowHibernate) {
            return;
        }
        this.allowHibernate = allowHibernate;
        WebViewToOpenGL webViewToOpenGL = this.f78866P;
        if (webViewToOpenGL != null) {
            webViewToOpenGL.C(allowHibernate);
        }
    }

    @InterfaceC15237a
    public void setEnableVirtualKeyboard(boolean enableVirtualKeyboard) {
        if (this.enableVirtualKeyboard == enableVirtualKeyboard) {
            return;
        }
        this.enableVirtualKeyboard = enableVirtualKeyboard;
        if (enableVirtualKeyboard) {
            return;
        }
        C15169a.H(this);
    }

    @InterfaceC15237a
    public void setFps(int fps) {
        int max = Math.max(1, fps);
        this.fps = max;
        WebViewToOpenGL webViewToOpenGL = this.f78866P;
        if (webViewToOpenGL != null) {
            webViewToOpenGL.D(max);
        }
    }

    @Override
    public void setRuntime(Component run) {
        this.f78868R = run;
    }

    @InterfaceC15237a
    public void setUrl(String url) {
        if (url == null) {
            url = "";
        }
        String str = this.url;
        if (str == null || !str.equals(url)) {
            this.url = url;
            WebViewToOpenGL webViewToOpenGL = this.f78866P;
            if (webViewToOpenGL != null) {
                webViewToOpenGL.x(url);
            }
            requestUIDirty();
        }
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78868R;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIWebView uIWebView = new JAVARuntime.UIWebView(this);
        this.f78868R = uIWebView;
        return uIWebView;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIWebView uIWebView = new UIWebView();
        uIWebView.url = this.url;
        uIWebView.enableVirtualKeyboard = this.enableVirtualKeyboard;
        uIWebView.allowHibernate = this.allowHibernate;
        uIWebView.fps = this.fps;
        return uIWebView;
    }
}
