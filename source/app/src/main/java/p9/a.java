package P9;

import R8.f;
import S9.h;
import V9.q;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine.Engines.Engine.ImGUI.Backend.ImguiBackend;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiBaseComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITouchTrigger;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.ListJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import fc.C13204a;
import gb.C13317e;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import p6.g;
import z5.C16261a;
import z5.InterfaceC16267g;

public class a {

    public static final int f21168a = 50;

    public static final int f21169b = 1;

    public static final boolean f21170c = false;

    public static final boolean f21171d = false;

    public static final int f21172e = 16;

    public static ImGui f21173f;

    public static int f21176i;

    public static int f21181n;

    public static final q f21174g = new q();

    public static final h f21175h = new h();

    public static final List<b> f21177j = new SteppedArrayList();

    public static long f21178k = -1;

    public static int f21179l = -1;

    public static int f21180m = -1;

    public static final Comparator<ImGuiLayoutComponent> f21182o = new C0517a();

    public static final tb.b f21183p = new tb.b();

    public static boolean f21184q = false;

    public static boolean f21185r = false;

    public static int f21186s = 0;

    public static final boolean[] f21187t = {true};

    public class C0517a implements Comparator<ImGuiLayoutComponent> {
        @Override
        public int compare(ImGuiLayoutComponent a10, ImGuiLayoutComponent b10) {
            return Integer.compare(a10.getLayoutLayer(), b10.getLayoutLayer());
        }
    }

    public static class b {

        public int f21188a;

        public int f21189b;

        public boolean f21190c;

        public b(int keyCode, int unicodeChar, boolean down) {
            this.f21188a = keyCode;
            this.f21189b = unicodeChar;
            this.f21190c = down;
        }
    }

    public static final class d {

        public final int f21192a;

        public final int f21193b;

        public final int f21194c;

        public final int f21195d;

        public d(UIRect uIRect, C0517a c0517a) {
            this(uIRect);
        }

        public final boolean b(d other) {
            return other != null && this.f21192a == other.f21192a && this.f21193b == other.f21193b && this.f21194c == other.f21194c && this.f21195d == other.f21195d;
        }

        public d(UIRect rect) {
            this.f21192a = rect.getGlobalPosition().f();
            this.f21193b = rect.getGlobalPosition().g();
            this.f21194c = rect.getGlobalSize().e();
            this.f21195d = rect.getGlobalSize().f();
        }
    }

    public static void A(UIController controller) {
        g L12 = p6.d.E1() ? p6.d.L1("FQS Choreographer") : null;
        boolean isDrawToScreen = controller.isDrawToScreen();
        InterfaceC16267g interfaceC16267g = C16261a.f130673m0;
        boolean z10 = interfaceC16267g != null && interfaceC16267g.isVisible();
        boolean allowScreenDraw = controller.allowScreenDraw();
        if (!z10) {
            isDrawToScreen = false;
        }
        if (isDrawToScreen && allowScreenDraw) {
            C13204a.a(controller.getImageToScreen());
        }
        p6.d.J1(L12);
    }

    public static void B() {
        long k10 = K8.a.k();
        if (f21178k != k10) {
            f21183p.e();
            f21178k = k10;
        }
    }

    public static void a() {
        g L12 = p6.d.E1() ? p6.d.L1("UI after render") : null;
        List<Component> h10 = f.h(UIController.class);
        for (int i10 = 0; i10 < h10.size(); i10++) {
            UIController uIController = (UIController) h10.get(i10);
            if (C13317e.J(uIController.f79250n) && uIController.isRenderOutputRequested()) {
                ImguiBackend.afterFrame(uIController);
            }
        }
        p6.d.J1(L12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(UIController uIController) {
        Object[] objArr;
        boolean z10;
        boolean z11;
        char c10;
        boolean z12;
        g L12 = p6.d.E1() ? p6.d.L1("UI build") : null;
        if (f21173f.u()) {
            B();
        }
        g L13 = p6.d.E1() ? p6.d.L1("Imgui start") : null;
        boolean z13 = false;
        if (f21173f.u()) {
            int frameBufferW = uIController.getFrameBufferW();
            int frameBufferH = uIController.getFrameBufferH();
            if (f21179l != frameBufferW || f21180m != frameBufferH) {
                f21173f.y(frameBufferW, frameBufferH);
                f21179l = frameBufferW;
                f21180m = frameBufferH;
            }
            f21173f.P(uIController.getPxSize());
            objArr = true;
        } else {
            objArr = false;
        }
        p6.d.J1(L13);
        if (objArr != false) {
            try {
                g L14 = p6.d.E1() ? p6.d.L1("UIController start") : null;
                uIController.onGuiStart();
                p6.d.J1(L14);
                g L15 = p6.d.E1() ? p6.d.L1("On layout") : null;
                GameObject gameObject = uIController.f79250n;
                UIController.q layoutCacheContext = uIController.getLayoutCacheContext();
                f21187t[0] = true;
                f21184q = true;
                int i10 = 0;
                int i11 = 0;
                c cVar = null;
                while (true) {
                    try {
                        boolean[] zArr = f21187t;
                        z11 = zArr[z13 ? 1 : 0];
                        if (!z11 || i10 >= 50) {
                            break;
                        }
                        zArr[z13 ? 1 : 0] = z13;
                        f21185r = z13;
                        layoutCacheContext.a();
                        i10++;
                        f21186s = i10;
                        int D10 = gameObject.D();
                        for (int i12 = z13 ? 1 : 0; i12 < D10; i12++) {
                            try {
                                GameObject C10 = gameObject.C(i12);
                                if (C10.isHierarchyActive()) {
                                    d(C10, uIController);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                z10 = z13 ? 1 : 0;
                                f21184q = z10;
                                f21185r = z10;
                                throw th;
                            }
                        }
                        for (int i13 = z13 ? 1 : 0; i13 < D10; i13++) {
                            GameObject C11 = gameObject.C(i13);
                            if (C11.isHierarchyActive()) {
                                l(C11, uIController);
                            }
                        }
                        for (int i14 = z13 ? 1 : 0; i14 < D10; i14++) {
                            GameObject C12 = gameObject.C(i14);
                            if (C12.isHierarchyActive()) {
                                r(e(C12, uIController, f21187t, gameObject, layoutCacheContext));
                            }
                        }
                        c f10 = f(gameObject);
                        i11 = (cVar == null || !cVar.b(f10)) ? 0 : i11 + 1;
                        boolean[] zArr2 = f21187t;
                        if (i11 < 1) {
                            z12 = true;
                            c10 = 0;
                        } else {
                            c10 = 0;
                            z12 = false;
                        }
                        zArr2[c10] = z12;
                        cVar = f10;
                        z13 = false;
                    } catch (Throwable th3) {
                        th = th3;
                        z10 = false;
                    }
                }
                boolean z14 = z13 ? 1 : 0;
                f21184q = z14;
                f21185r = z14;
                f21181n = i10;
                if (z11) {
                    uIController.markUIDirty();
                }
                p6.d.J1(L15);
                g L16 = p6.d.E1() ? p6.d.L1("Render") : null;
                GameObject gameObject2 = uIController.f79250n;
                int D11 = gameObject2.D();
                for (int i15 = 0; i15 < D11; i15++) {
                    GameObject C13 = gameObject2.C(i15);
                    if (C13.isHierarchyActive()) {
                        u(C13, uIController);
                    }
                }
                p6.d.J1(L16);
                h(uIController);
                g L17 = p6.d.E1() ? p6.d.L1("UIController end") : null;
                uIController.onGuiEnd();
                p6.d.J1(L17);
                g L18 = p6.d.E1() ? p6.d.L1("Native render") : null;
                f21173f.E();
                p6.d.J1(L18);
                if (uIController.isRenderOutputRequested()) {
                    g L19 = p6.d.E1() ? p6.d.L1("Native output frame") : null;
                    f21173f.A(false);
                    p6.d.J1(L19);
                    g L110 = p6.d.E1() ? p6.d.L1("Extract frame") : null;
                    ImguiBackend.extractTo(uIController);
                    p6.d.J1(L110);
                }
            } finally {
                g L111 = p6.d.E1() ? p6.d.L1("Native render") : null;
                f21173f.E();
                p6.d.J1(L111);
                if (uIController.isRenderOutputRequested()) {
                    g L112 = p6.d.E1() ? p6.d.L1("Native output frame") : null;
                    f21173f.A(false);
                    p6.d.J1(L112);
                    g L113 = p6.d.E1() ? p6.d.L1("Extract frame") : null;
                    ImguiBackend.extractTo(uIController);
                    p6.d.J1(L113);
                }
            }
        }
        p6.d.J1(L12);
    }

    public static UIController.r c(GameObject gameObject) {
        UIController.r rVar = new UIController.r();
        int N10 = gameObject.N();
        for (int i10 = 0; i10 < N10; i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof ImGuiLayoutComponent) {
                rVar.f78077a.add((ImGuiLayoutComponent) L10);
            }
            if (rVar.f78079c == null && (L10 instanceof UIRect)) {
                rVar.f78079c = (UIRect) L10;
            }
        }
        if (!rVar.f78077a.isEmpty()) {
            rVar.f78078b.addAll(rVar.f78077a);
            if (rVar.f78078b.size() > 1) {
                Collections.sort(rVar.f78078b, f21182o);
            }
        }
        return rVar;
    }

    public static void d(GameObject gameObject, UIController controller) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && (L10 instanceof ImGuiRenderableComponent)) {
                try {
                    ImGuiRenderableComponent imGuiRenderableComponent = (ImGuiRenderableComponent) L10;
                    if (imGuiRenderableComponent.getUIRectComponent() != null) {
                        imGuiRenderableComponent.calculateInternalSizeStart(controller);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            try {
                GameObject C10 = gameObject.C(i11);
                if (C10.isEnabled()) {
                    d(C10, controller);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        for (int i12 = 0; i12 < gameObject.N(); i12++) {
            Component L11 = gameObject.L(i12);
            if (L11.isEnabled() && (L11 instanceof ImGuiRenderableComponent)) {
                try {
                    ImGuiRenderableComponent imGuiRenderableComponent2 = (ImGuiRenderableComponent) L11;
                    if (imGuiRenderableComponent2.getUIRectComponent() != null) {
                        imGuiRenderableComponent2.calculateInternalSizeEnd(controller);
                    }
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
    }

    public static List<W9.b> e(GameObject gameObject, UIController controller, boolean[] repeat, GameObject parent, UIController.q cacheContext) {
        int i10;
        SteppedArrayList acquire = ListJP.acquire(16);
        UIController.r rVar = cacheContext.f78075a.get(gameObject);
        if (rVar == null) {
            rVar = cacheContext.f78076b.get(gameObject);
            int B02 = gameObject.B0();
            if (rVar == null || rVar.f78080d != B02) {
                rVar = c(gameObject);
                rVar.f78080d = B02;
                cacheContext.f78076b.put(gameObject, rVar);
            }
            cacheContext.f78075a.put(gameObject, rVar);
        }
        UIRect uIRect = rVar.f78079c;
        if (uIRect != null && !uIRect.isEnabled()) {
            uIRect = null;
        }
        if (uIRect != null) {
            UIRect parent2 = uIRect.getParent();
            int layoutStamp = parent2 != null ? parent2.getLayoutStamp() : 0;
            i10 = uIRect.getLayoutDependencyStamp();
            if (uIRect.getLayoutStampSnapshot() == uIRect.getLayoutStamp() && uIRect.getParentLayoutStampSnapshot() == layoutStamp && uIRect.getLayoutDependencyStampSnapshot() == i10) {
                W9.b bVar = (W9.b) JP.acquire(W9.b.class);
                W9.c boundRect = uIRect.getBoundRect();
                bVar.h(boundRect.d());
                bVar.i(boundRect.e());
                bVar.f(boundRect.f());
                bVar.g(boundRect.g());
                bVar.f27340e = true;
                acquire.add(bVar);
                return acquire;
            }
        } else {
            i10 = 0;
        }
        if (uIRect != null) {
            try {
                uIRect.alignToParentLeft(controller);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        SteppedArrayList<ImGuiLayoutComponent> steppedArrayList = rVar.f78077a;
        for (int i11 = 0; i11 < steppedArrayList.size(); i11++) {
            ImGuiLayoutComponent imGuiLayoutComponent = steppedArrayList.get(i11);
            if (imGuiLayoutComponent.isEnabled()) {
                try {
                    imGuiLayoutComponent.startChildInfluence(controller);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        SteppedArrayList<ImGuiLayoutComponent> steppedArrayList2 = rVar.f78078b;
        for (int i12 = 0; i12 < steppedArrayList2.size(); i12++) {
            ImGuiLayoutComponent imGuiLayoutComponent2 = steppedArrayList2.get(i12);
            if (imGuiLayoutComponent2.isEnabled()) {
                try {
                    imGuiLayoutComponent2.internalOnLayout(controller);
                    imGuiLayoutComponent2.onLayout(controller);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
        if (uIRect != null) {
            for (int i13 = 0; i13 < parent.N(); i13++) {
                Component L10 = parent.L(i13);
                if (L10.isEnabled() && (L10 instanceof ImGuiLayoutComponent)) {
                    try {
                        ((ImGuiLayoutComponent) L10).onChildInfluence(controller, uIRect);
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                }
            }
            for (int i14 = 0; i14 < gameObject.D(); i14++) {
                try {
                    GameObject C10 = gameObject.C(i14);
                    if (C10.isEnabled()) {
                        List<W9.b> e14 = e(C10, controller, repeat, gameObject, cacheContext);
                        acquire.addAll(e14);
                        s(e14);
                    }
                } catch (Exception e15) {
                    e15.printStackTrace();
                }
            }
            try {
                W9.b calculateInnerBounds = uIRect.calculateInnerBounds();
                acquire.add(calculateInnerBounds);
                if (uIRect.applyBounds(controller, acquire, calculateInnerBounds, i10)) {
                    repeat[0] = true;
                }
            } catch (Exception e16) {
                e16.printStackTrace();
            }
        }
        return acquire;
    }

    public static c f(GameObject root) {
        c cVar = new c(null);
        if (root == null) {
            return cVar;
        }
        for (int i10 = 0; i10 < root.D(); i10++) {
            GameObject C10 = root.C(i10);
            if (C10 != null && C10.isHierarchyActive()) {
                g(C10, cVar);
            }
        }
        return cVar;
    }

    public static void g(GameObject gameObject, c snapshot) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && (L10 instanceof UIRect)) {
                snapshot.a((UIRect) L10);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10 != null && C10.isEnabled()) {
                g(C10, snapshot);
            }
        }
    }

    public static void h(UIController controller) {
        g L12 = p6.d.E1() ? p6.d.L1("Touch handler") : null;
        f21176i = 0;
        GameObject gameObject = controller.f79250n;
        int D10 = gameObject.D();
        for (int i10 = 0; i10 < D10; i10++) {
            GameObject C10 = gameObject.C(i10);
            if (C10.isHierarchyActive()) {
                y(C10, controller);
            }
        }
        p6.d.J1(L12);
    }

    public static h i() {
        return f21175h;
    }

    public static q j() {
        return f21174g;
    }

    public static boolean k() {
        return f21184q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void l(GameObject gameObject, UIController controller) {
        UIRect uIRect;
        if (gameObject == null) {
            return;
        }
        for (int i10 = 0; i10 < gameObject.D(); i10++) {
            GameObject C10 = gameObject.C(i10);
            if (C10 != null && C10.isHierarchyActive()) {
                l(C10, controller);
            }
        }
        UIRect uIRect2 = (UIRect) gameObject.d0(UIRect.class);
        if (uIRect2 == null || !uIRect2.isEnabled()) {
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i11 = 0; i11 < gameObject.N(); i11++) {
            Component L10 = gameObject.L(i11);
            if (L10.isEnabled() && (L10 instanceof ImGuiLayoutComponent)) {
                steppedArrayList.add((ImGuiLayoutComponent) L10);
            }
        }
        for (int i12 = 0; i12 < steppedArrayList.size(); i12++) {
            try {
                ((ImGuiLayoutComponent) steppedArrayList.get(i12)).startChildInfluence(controller);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        for (int i13 = 0; i13 < gameObject.D(); i13++) {
            GameObject C11 = gameObject.C(i13);
            if (C11 != null && C11.isEnabled() && (uIRect = (UIRect) C11.d0(UIRect.class)) != null && uIRect.isEnabled()) {
                for (int i14 = 0; i14 < steppedArrayList.size(); i14++) {
                    try {
                        ((ImGuiLayoutComponent) steppedArrayList.get(i14)).measureChildInfluence(controller, uIRect);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            }
        }
    }

    public static void m(UIController controller) {
        h(controller);
        w(controller);
    }

    public static boolean n(int keyCode, KeyEvent event) {
        return false;
    }

    public static boolean o(int keyCode, KeyEvent event) {
        return false;
    }

    public static void p() {
        ImGui imGui = new ImGui();
        f21173f = imGui;
        imGui.O();
        f21174g.n();
        f21179l = -1;
        f21180m = -1;
        ImguiBackend.initialize();
    }

    public static boolean q(MotionEvent event) {
        return false;
    }

    public static void r(List<W9.b> bounds) {
        if (bounds == null) {
            return;
        }
        for (int i10 = 0; i10 < bounds.size(); i10++) {
            JP.release(bounds.get(i10));
        }
        ListJP.release(bounds);
    }

    public static void s(List<W9.b> bounds) {
        ListJP.release(bounds);
    }

    public static void t() {
        if (E.f71997a0) {
            return;
        }
        g L12 = p6.d.E1() ? p6.d.L1("UI render") : null;
        if (f21173f.u()) {
            List<Component> h10 = f.h(UIController.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                UIController uIController = (UIController) h10.get(i10);
                if (C13317e.J(uIController.f79250n) && uIController.isHierarchyActive() && uIController.isRenderOutputRequested()) {
                    ImguiBackend.renderTo(uIController);
                }
            }
            g L13 = p6.d.E1() ? p6.d.L1("Input system") : null;
            f21175h.k();
            p6.d.J1(L13);
            for (int i11 = 0; i11 < h10.size(); i11++) {
                w((UIController) h10.get(i11));
            }
        }
        p6.d.J1(L12);
    }

    public static void u(GameObject gameObject, UIController controller) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && (L10 instanceof ImGuiRenderableComponent)) {
                try {
                    ImGuiRenderableComponent imGuiRenderableComponent = (ImGuiRenderableComponent) L10;
                    if (imGuiRenderableComponent.getUIRectComponent() != null) {
                        imGuiRenderableComponent.onGuiStart(controller);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            try {
                GameObject C10 = gameObject.C(i11);
                if (C10.isEnabled()) {
                    u(C10, controller);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        for (int i12 = 0; i12 < gameObject.N(); i12++) {
            Component L11 = gameObject.L(i12);
            if (L11.isEnabled()) {
                if (L11 instanceof ImGuiRenderableComponent) {
                    try {
                        ImGuiRenderableComponent imGuiRenderableComponent2 = (ImGuiRenderableComponent) L11;
                        if (imGuiRenderableComponent2.getUIRectComponent() != null) {
                            imGuiRenderableComponent2.onGuiEnd(controller);
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                } else if (L11 instanceof ImGuiLayoutComponent) {
                    try {
                        ((ImGuiLayoutComponent) L11).postRender(controller);
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                }
            }
        }
    }

    public static void v() {
        if (f21184q) {
            f21185r = true;
        }
    }

    public static void w(UIController controller) {
        if (C13317e.J(controller.f79250n) && controller.isHierarchyActive()) {
            GameObject gameObject = controller.f79250n;
            int D10 = gameObject.D();
            for (int i10 = 0; i10 < D10; i10++) {
                GameObject C10 = gameObject.C(i10);
                if (C10.isHierarchyActive()) {
                    x(C10, controller);
                }
            }
        }
    }

    public static void x(GameObject gameObject, UIController controller) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && (L10 instanceof ImGuiBaseComponent)) {
                try {
                    ((ImGuiBaseComponent) L10).afterTouchUpdate();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            try {
                GameObject C10 = gameObject.C(i11);
                if (C10.isEnabled()) {
                    x(C10, controller);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
    }

    public static void y(GameObject gameObject, UIController controller) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && (L10 instanceof UITouchTrigger)) {
                try {
                    ((UITouchTrigger) L10).updateTouch(controller, f21176i);
                    f21176i++;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            try {
                GameObject C10 = gameObject.C(i11);
                if (C10.isEnabled()) {
                    y(C10, controller);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
    }

    public static String z(GameObject gameObject) {
        if (gameObject == null) {
            return "null";
        }
        try {
            String name = gameObject.getName();
            if (name != null) {
                if (!name.isEmpty()) {
                    return name;
                }
            }
        } catch (Exception unused) {
        }
        return "@" + Integer.toHexString(System.identityHashCode(gameObject));
    }

    public static final class c {

        public final IdentityHashMap<UIRect, d> f21191a;

        public c() {
            this.f21191a = new IdentityHashMap<>();
        }

        public void a(UIRect rect) {
            this.f21191a.put(rect, new d(rect, null));
        }

        public boolean b(c other) {
            if (other == null || this.f21191a.size() != other.f21191a.size()) {
                return false;
            }
            for (Map.Entry<UIRect, d> entry : this.f21191a.entrySet()) {
                d dVar = other.f21191a.get(entry.getKey());
                if (dVar == null || !entry.getValue().b(dVar)) {
                    return false;
                }
            }
            return true;
        }

        public c(C0517a c0517a) {
            this();
        }
    }
}
