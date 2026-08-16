package S9;

import S9.a;
import V9.m;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITouchTrigger;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.ToIntFunction;
import rc.C15169a;
import z5.C16261a;
import z5.InterfaceC16267g;

public class h {

    public static final boolean f23022f = true;

    public final List<UITouchTrigger> f23023a = new SteppedArrayList();

    public final List<S9.a> f23024b = new SteppedArrayList();

    public final List<S9.a> f23025c = new SteppedArrayList();

    public final Mc.a<UIController> f23026d = new Mc.a<>();

    public final c f23027e = new a();

    public class a implements c {
        public a() {
        }

        @Override
        public boolean a(W9.c rect, W9.c controllerRect, tc.h touch) {
            return m.d(touch, controllerRect, rect);
        }

        @Override
        public void b(tc.h touch) {
            h.this.h(touch);
        }
    }

    public final boolean b(UITouchTrigger listener) {
        if (listener == null || listener.getController() == null) {
            return false;
        }
        return listener.acceptsMultiTouch() ? listener.allowCaptureNewTouchs() : listener.allowCaptureNewTouchs();
    }

    public final void c(S9.a capturedTouch) {
        this.f23024b.add(capturedTouch);
    }

    public final boolean d(tc.h touch) {
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f23024b.size(); i10++) {
            S9.a aVar = this.f23024b.get(i10);
            if (aVar != null && aVar.f23017a == touch) {
                UITouchTrigger uITouchTrigger = aVar.f23019c;
                if (aVar.f23020d == a.EnumC0554a.IsOver && !m.d(touch, uITouchTrigger.getControllerRect(), uITouchTrigger.getScreenRect()) && uITouchTrigger.dispatchTouchWhenOutSideRect() && uITouchTrigger.onTouchExit(touch, aVar.f23018b, this.f23027e)) {
                    this.f23025c.add(aVar);
                }
                z10 = true;
            }
        }
        this.f23024b.removeAll(this.f23025c);
        this.f23025c.clear();
        return z10;
    }

    public final boolean e() {
        return true;
    }

    public final boolean f(tc.h touch) {
        return ((touch.k() || touch.q() || touch.t()) && N7.c.D().W(touch)) ? false : true;
    }

    public final boolean g(tc.h touch) {
        for (int i10 = 0; i10 < this.f23024b.size(); i10++) {
            S9.a aVar = this.f23024b.get(i10);
            if (aVar != null && aVar.f23017a == touch) {
                return true;
            }
        }
        return false;
    }

    public final void h(tc.h touch) {
        for (int i10 = 0; i10 < this.f23024b.size(); i10++) {
            S9.a aVar = this.f23024b.get(i10);
            if (aVar != null && aVar.f23017a == touch) {
                aVar.f23019c.onTouchExit(touch, aVar.f23018b, this.f23027e);
                this.f23025c.add(aVar);
            }
        }
        this.f23024b.removeAll(this.f23025c);
        this.f23025c.clear();
    }

    public final void i() {
        boolean z10 = true;
        int i10 = 0;
        while (z10) {
            for (int i11 = i10; i11 < this.f23024b.size(); i11++) {
                S9.a aVar = this.f23024b.get(i11);
                if (!aVar.f23019c.isHierarchyActive() || aVar.f23019c.f79250n == null) {
                    this.f23024b.remove(aVar);
                    i10 = i11;
                    z10 = true;
                    break;
                }
            }
            z10 = false;
        }
    }

    public final void j(int i10, tc.h touch) {
        this.f23023a.clear();
        List<Component> h10 = R8.f.h(UITouchTrigger.class);
        for (int i11 = 0; i11 < h10.size(); i11++) {
            UITouchTrigger uITouchTrigger = (UITouchTrigger) h10.get(i11);
            try {
                if (uITouchTrigger.isExclusiveMode() && uITouchTrigger.isHierarchyActive() && m.d(touch, uITouchTrigger.getControllerRect(), uITouchTrigger.getScreenRect())) {
                    this.f23023a.add(uITouchTrigger);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Collections.sort(this.f23023a, Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((UITouchTrigger) obj).getLayer();
            }
        }));
    }

    public void k() {
        i();
        InterfaceC16267g interfaceC16267g = C16261a.f130673m0;
        if (interfaceC16267g == null) {
            return;
        }
        if (interfaceC16267g.isVisible() && e()) {
            C16261a.f130673m0.a();
            this.f23026d.clear();
            List<Component> h10 = R8.f.h(UITouchTrigger.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                UITouchTrigger uITouchTrigger = (UITouchTrigger) h10.get(i10);
                if (uITouchTrigger.isExclusiveMode() && uITouchTrigger.isHierarchyActive() && b(uITouchTrigger)) {
                    this.f23026d.add(uITouchTrigger.getController());
                }
            }
            for (int i11 = 0; i11 < this.f23026d.size(); i11++) {
                UIController uIController = this.f23026d.get(i11);
                for (int i12 = 0; i12 < uIController.virtualTouchsCount(); i12++) {
                    tc.h virtualToucheAt = uIController.getVirtualToucheAt(i12);
                    if (virtualToucheAt.k()) {
                        if (!d(virtualToucheAt)) {
                            j(i11, virtualToucheAt);
                            int size = this.f23023a.size() - 1;
                            while (true) {
                                if (size < 0) {
                                    break;
                                }
                                UITouchTrigger uITouchTrigger2 = this.f23023a.get(size);
                                if (b(uITouchTrigger2) && uITouchTrigger2.onTouchEnter(virtualToucheAt, i11, this.f23027e)) {
                                    c(new S9.a(virtualToucheAt, i11, uITouchTrigger2));
                                    break;
                                }
                                size--;
                            }
                        }
                    } else if (virtualToucheAt.q()) {
                        d(virtualToucheAt);
                    } else if (virtualToucheAt.t()) {
                        h(virtualToucheAt);
                    }
                    if (virtualToucheAt.q() && !g(virtualToucheAt)) {
                        j(i11, virtualToucheAt);
                        int size2 = this.f23023a.size() - 1;
                        while (true) {
                            if (size2 < 0) {
                                break;
                            }
                            UITouchTrigger uITouchTrigger3 = this.f23023a.get(size2);
                            if (uITouchTrigger3 != null && !uITouchTrigger3.onlyDownInside() && uITouchTrigger3.getController() == uIController && b(uITouchTrigger3) && uITouchTrigger3.onTouchEnter(virtualToucheAt, i11, this.f23027e)) {
                                c(new S9.a(virtualToucheAt, i11, uITouchTrigger3));
                                break;
                            }
                            size2--;
                        }
                    }
                }
            }
            for (int i13 = 0; i13 < C15169a.L(); i13++) {
                tc.h n10 = C15169a.n(i13);
                if (f(n10)) {
                    if (n10.k()) {
                        if (!d(n10)) {
                            j(i13, n10);
                            int size3 = this.f23023a.size() - 1;
                            while (true) {
                                if (size3 < 0) {
                                    break;
                                }
                                UITouchTrigger uITouchTrigger4 = this.f23023a.get(size3);
                                if (b(uITouchTrigger4) && uITouchTrigger4.getController().isAllowScreenTouch() && uITouchTrigger4.onTouchEnter(n10, i13, this.f23027e)) {
                                    c(new S9.a(n10, i13, uITouchTrigger4));
                                    break;
                                }
                                size3--;
                            }
                        }
                    } else if (n10.q()) {
                        d(n10);
                    } else if (n10.t()) {
                        h(n10);
                    }
                    if (n10.q() && !g(n10)) {
                        j(i13, n10);
                        int size4 = this.f23023a.size() - 1;
                        while (true) {
                            if (size4 < 0) {
                                break;
                            }
                            UITouchTrigger uITouchTrigger5 = this.f23023a.get(size4);
                            if (uITouchTrigger5 != null && !uITouchTrigger5.onlyDownInside() && b(uITouchTrigger5) && uITouchTrigger5.getController().isAllowScreenTouch() && uITouchTrigger5.onTouchEnter(n10, i13, this.f23027e)) {
                                c(new S9.a(n10, i13, uITouchTrigger5));
                                break;
                            }
                            size4--;
                        }
                    }
                }
            }
        }
        l();
    }

    public final void l() {
        for (int i10 = 0; i10 < this.f23024b.size(); i10++) {
            S9.a aVar = this.f23024b.get(i10);
            tc.h hVar = aVar.f23017a;
            if (hVar == null || ((!hVar.q() && !aVar.f23017a.t()) || !aVar.f23019c.isSelectedTouch(aVar.f23017a))) {
                this.f23025c.add(aVar);
            }
        }
        this.f23024b.removeAll(this.f23025c);
        this.f23025c.clear();
    }
}
