package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import V9.k;
import V9.m;
import V9.p;
import android.content.Context;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiBaseComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.InputSystem.UIEventEntry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import rc.C15169a;
import s8.InterfaceC15237a;

public class UITouchTrigger extends ImGuiBaseComponent implements S9.f {

    public static final String f78830U = "UITouchTrigger";

    public static final Class f78831V = UITouchTrigger.class;

    public boolean f78832L;

    public final W9.c f78833M;

    public int f78834N;

    public int f78835O;

    public S9.c f78836P;

    public final List<tc.h> f78837Q;

    public final k f78838R;

    public final Vector2 f78839S;

    public Component f78840T;

    @Expose
    private boolean clickable;

    @Expose
    private boolean dispatchTouchWhenOutsideRect;

    @Expose
    @Deprecated
    private InspectorEditor eventEditor;

    @Expose
    @Deprecated
    private UIEventEntry eventEntry;

    @Expose
    private boolean exclusiveMode;

    @Expose
    private boolean multiTouch;

    @Expose
    private p objectReference;

    @Expose
    private boolean onlyDownInside;

    @Expose
    private S9.b rectObject;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UITouchTrigger.f78831V;
        }

        @Override
        public String c() {
            return UITouchTrigger.f78830U;
        }

        @Override
        public String e() {
            return "UI/Utils";
        }

        @Override
        public String h(boolean translate) {
            return "TouchTrigger";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UITouchTrigger.this.clickable ? "true" : "false");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITouchTrigger.this.clickable = variable.booolean_value.booleanValue();
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UITouchTrigger.this.onlyDownInside + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITouchTrigger.this.onlyDownInside = variable.booolean_value.booleanValue();
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UITouchTrigger.this.dispatchTouchWhenOutsideRect + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITouchTrigger.this.dispatchTouchWhenOutsideRect = variable.booolean_value.booleanValue();
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UITouchTrigger.this.exclusiveMode + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITouchTrigger.this.exclusiveMode = variable.booolean_value.booleanValue();
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UITouchTrigger.this.multiTouch + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UITouchTrigger.this.multiTouch = variable.booolean_value.booleanValue();
            }
        }
    }

    public class g extends R8.c {

        public final Context f78846a;

        public g(final Context val$context) {
            this.f78846a = val$context;
        }

        @Override
        public void a() {
            UITouchTrigger.this.reloadInspector();
        }

        @Override
        public boolean c(GameObject gameObject) {
            if (gameObject == null || gameObject.c0(Component.e.UIRect) != null) {
                return true;
            }
            Toast.makeText(this.f78846a, Lang.l(Lang.T.PLEASE_SELECT_OBJECT_WITH_SUIRECT_COMPONENT), 0).show();
            return false;
        }
    }

    public class h extends c.n0<S9.b> {
        public h() {
        }

        @Override
        public void a() {
            UITouchTrigger.this.reloadInspector();
        }

        @Override
        public void set(S9.b value) {
            UITouchTrigger.this.rectObject = value;
            UITouchTrigger.this.reloadInspector();
        }

        @Override
        public String c(S9.b enumObject) {
            int i10 = i.f78849a[enumObject.ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? enumObject.toString() : Lang.l(Lang.T.PARENT) : Lang.l(Lang.T.MY_SELF) : Lang.l(Lang.T.OTHER);
        }
    }

    public static class i {

        public static final int[] f78849a;

        static {
            int[] iArr = new int[S9.b.values().length];
            f78849a = iArr;
            try {
                iArr[S9.b.Other.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78849a[S9.b.MySelf.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78849a[S9.b.Parent.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UITouchTrigger() {
        super(f78830U);
        this.clickable = true;
        this.rectObject = S9.b.MySelf;
        this.onlyDownInside = true;
        this.exclusiveMode = true;
        this.dispatchTouchWhenOutsideRect = false;
        this.multiTouch = false;
        this.f78832L = false;
        this.f78833M = new W9.c();
        this.f78835O = -1;
        this.f78837Q = new SteppedArrayList();
        this.f78838R = new k();
        this.f78839S = new Vector2();
        this.objectReference = new p();
    }

    private boolean addSelectedTouch(tc.h touch, int idx, S9.c callbacks) {
        boolean z10 = false;
        if (touch != null && this.clickable) {
            if (this.multiTouch) {
                if (!this.f78837Q.contains(touch)) {
                    this.f78837Q.add(touch);
                }
                this.f78835O = idx;
                this.f78836P = callbacks;
            } else {
                if (this.f78837Q.size() == 1 && this.f78837Q.get(0) == touch) {
                    this.f78835O = idx;
                    this.f78836P = callbacks;
                    return false;
                }
                if (!this.f78837Q.isEmpty()) {
                    this.f78837Q.clear();
                }
                this.f78837Q.add(touch);
            }
            z10 = true;
            this.f78835O = idx;
            this.f78836P = callbacks;
        }
        return z10;
    }

    private void clearSelectedTouches() {
        if (!this.f78837Q.isEmpty()) {
            this.f78837Q.clear();
        }
        this.f78835O = -1;
        this.f78836P = null;
        updateListeners();
    }

    private boolean processLocalTouch(tc.h touch, int idx, UIController controller, boolean allowPressedInside) {
        if (touch == null || controller == null || !this.clickable) {
            return false;
        }
        if (!touch.k() && !touch.q() && !touch.t()) {
            return false;
        }
        if (touch.t()) {
            boolean removeSelectedTouch = removeSelectedTouch(touch);
            if (removeSelectedTouch) {
                this.f78835O = -1;
            }
            return removeSelectedTouch;
        }
        boolean W10 = N7.c.D().W(touch);
        boolean z10 = !W10;
        if (!W10 && !touch.k() && this.onlyDownInside && !allowPressedInside) {
            z10 = false;
        }
        if (z10 && m.d(touch, controller.getControllerScreenRect(), this.f78833M)) {
            return addSelectedTouch(touch, idx, this.f78836P);
        }
        if (this.dispatchTouchWhenOutsideRect && isSelectedTouch(touch)) {
            return removeSelectedTouch(touch);
        }
        return false;
    }

    private boolean removeSelectedTouch(tc.h touch) {
        if (touch == null) {
            return false;
        }
        boolean remove = this.f78837Q.remove(touch);
        if (remove && this.f78837Q.isEmpty()) {
            this.f78835O = -1;
            this.f78836P = null;
        }
        return remove;
    }

    private void updateListeners() {
        if (this.f79250n == null) {
            return;
        }
        tc.h firstTouch = getFirstTouch();
        for (int i10 = 0; i10 < this.f79250n.N(); i10++) {
            com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component L10 = this.f79250n.L(i10);
            if (L10 != this && (L10 instanceof ImGuiRenderableComponent)) {
                ((ImGuiRenderableComponent) L10).onSelectedTouchChanged(firstTouch);
            }
        }
    }

    @Override
    public boolean acceptsMultiTouch() {
        return this.multiTouch;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void afterTouchUpdate() {
        super.afterTouchUpdate();
        int i10 = 0;
        if (!this.f78837Q.isEmpty()) {
            SteppedArrayList steppedArrayList = new SteppedArrayList(this.f78837Q);
            int i11 = 0;
            while (i10 < steppedArrayList.size()) {
                tc.h hVar = (tc.h) steppedArrayList.get(i10);
                if (hVar != null && !hVar.k() && !hVar.q() && !hVar.t() && removeSelectedTouch(hVar)) {
                    i11 = 1;
                }
                i10++;
            }
            i10 = i11;
        }
        if (i10 != 0) {
            updateListeners();
        }
        this.f78838R.d(isOver());
        this.f78838R.e();
    }

    @Override
    public boolean allowCaptureNewTouchs() {
        return this.clickable && (acceptsMultiTouch() || this.f78837Q.isEmpty());
    }

    @Override
    public boolean allowOncePerObject() {
        return true;
    }

    public C5.b createRectRef(Context context, String varName) {
        S9.b bVar = this.rectObject;
        if (bVar == S9.b.MySelf || bVar == S9.b.Parent) {
            return createRectType(Lang.l(Lang.T.TARGET), context, b.a.SLDropdown);
        }
        C5.b bVar2 = new C5.b((String) null, b.a.Vector, new C5.b[2]);
        bVar2.f2081p[0] = createRectType(Lang.l(Lang.T.TARGET), context, b.a.SLDropdownWrap);
        bVar2.f2081p[1] = this.objectReference.d(Lang.l(Lang.T.RECT), new g(context));
        return bVar2;
    }

    public C5.b createRectType(String tittle, Context context, b.a type) {
        return F5.c.i(tittle, S9.b.class, this.rectObject, new h());
    }

    @Override
    public boolean dispatchTouchWhenOutSideRect() {
        return this.dispatchTouchWhenOutsideRect;
    }

    @Override
    public UIController getController() {
        return getUIControllerComponent();
    }

    @Override
    public W9.c getControllerRect() {
        return getUIControllerComponent().getControllerScreenRect();
    }

    public tc.h getFirstTouch() {
        for (int i10 = 0; i10 < this.f78837Q.size(); i10++) {
            tc.h hVar = this.f78837Q.get(i10);
            if (hVar != null) {
                return hVar;
            }
        }
        return null;
    }

    @Override
    public int getIconResource() {
        return R.drawable.touch;
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
        b bVar = new b();
        String l10 = Lang.l(Lang.T.CLICKABLE);
        b.a aVar = b.a.SLBoolean;
        inspectorEntries.add(new C5.b(bVar, l10, aVar));
        inspectorEntries.add(new C5.b(new c(), Lang.l(Lang.T.IGNORE_SLIDE_FROM_OUTSIDE_TO_INSIDE), aVar, context));
        inspectorEntries.add(new C5.b(new d(), Lang.l(Lang.T.DISPATCH_TOUCH_WHEN_OUTSIDE_RECT), aVar, context));
        inspectorEntries.add(new C5.b(new e(), "Exclusive mode", aVar, context));
        inspectorEntries.add(new C5.b(new f(), "Multi touch", aVar, context));
        inspectorEntries.add(createRectRef(context, Lang.l(Lang.T.TARGET_RECT)));
        return inspectorEntries;
    }

    @Override
    public int getLayer() {
        return this.f78834N;
    }

    public p getObjectReference() {
        return this.objectReference;
    }

    public S9.b getRectObject() {
        return this.rectObject;
    }

    @Override
    public W9.c getScreenRect() {
        return this.f78833M;
    }

    @InterfaceC15237a
    public tc.h getSelectedTouch() {
        return getFirstTouch();
    }

    public tc.h getSelectedTouchAt(int i10) {
        if (i10 < 0 || i10 >= this.f78837Q.size()) {
            return null;
        }
        return this.f78837Q.get(i10);
    }

    public int getSelectedTouchCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f78837Q.size(); i11++) {
            if (this.f78837Q.get(i11) != null) {
                i10++;
            }
        }
        return i10;
    }

    @Override
    public String getTitle() {
        return "TouchTrigger";
    }

    @Override
    public Component.e getType() {
        return Component.e.UITouchTrigger;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isClickable() {
        return this.clickable;
    }

    public boolean isDispatchTouchWhenOutsideRect() {
        return this.dispatchTouchWhenOutsideRect;
    }

    @InterfaceC15237a
    public boolean isDown() {
        return this.f78838R.a();
    }

    public boolean isExclusiveMode() {
        return this.exclusiveMode;
    }

    public boolean isMultiTouch() {
        return this.multiTouch;
    }

    public boolean isOver() {
        for (int i10 = 0; i10 < this.f78837Q.size(); i10++) {
            if (this.f78837Q.get(i10) != null) {
                return true;
            }
        }
        return false;
    }

    @InterfaceC15237a
    public boolean isPressed() {
        return this.f78838R.b();
    }

    @Override
    public boolean isSelectedTouch(tc.h touch) {
        return this.f78837Q.contains(touch);
    }

    @InterfaceC15237a
    public boolean isUp() {
        return this.f78838R.c();
    }

    @Override
    public void onDeserialized() {
        super.onDeserialized();
        UIEventEntry uIEventEntry = this.eventEntry;
        if (uIEventEntry != null) {
            this.clickable = uIEventEntry.clickable;
            this.rectObject = uIEventEntry.rectObject;
            this.objectReference = uIEventEntry.objectReference;
            this.onlyDownInside = uIEventEntry.onlyDownInside;
            this.exclusiveMode = uIEventEntry.exclusiveMode;
            this.dispatchTouchWhenOutsideRect = uIEventEntry.dispatchTouchWhenOutsideRect;
        }
        this.eventEntry = null;
        this.eventEditor = null;
        if (this.objectReference == null) {
            this.objectReference = new p();
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        clearSelectedTouches();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        this.f78832L = enabled;
        if (enabled) {
            return;
        }
        clearSelectedTouches();
    }

    @Override
    public boolean onTouchEnter(tc.h touch, int idx, S9.c callbacks) {
        if (!this.clickable) {
            return false;
        }
        boolean addSelectedTouch = addSelectedTouch(touch, idx, callbacks);
        if (addSelectedTouch) {
            updateListeners();
        }
        return addSelectedTouch;
    }

    @Override
    public boolean onTouchExit(tc.h touch, int idx, S9.c callbacks) {
        boolean z10;
        List<tc.h> list = this.f78837Q;
        if (list == null) {
            return false;
        }
        if (this.multiTouch) {
            z10 = removeSelectedTouch(touch);
        } else {
            z10 = !list.isEmpty();
            this.f78837Q.clear();
        }
        if (z10) {
            this.f78835O = -1;
            this.f78836P = null;
            updateListeners();
        }
        return z10;
    }

    @Override
    public boolean onlyDownInside() {
        return this.onlyDownInside;
    }

    public void setClickable(boolean clickable) {
        this.clickable = clickable;
    }

    public void setDispatchTouchWhenOutsideRect(boolean dispatchTouchWhenOutsideRect) {
        this.dispatchTouchWhenOutsideRect = dispatchTouchWhenOutsideRect;
    }

    public void setExclusiveMode(boolean exclusiveMode) {
        boolean z10 = this.exclusiveMode != exclusiveMode;
        this.exclusiveMode = exclusiveMode;
        if (z10) {
            clearSelectedTouches();
        }
    }

    public void setMultiTouch(boolean multiTouch) {
        this.multiTouch = multiTouch;
    }

    public void setRectObject(S9.b rectObject) {
        this.rectObject = rectObject;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78840T = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78840T;
        if (component != null) {
            return component;
        }
        JAVARuntime.UITouchTrigger uITouchTrigger = new JAVARuntime.UITouchTrigger(this);
        this.f78840T = uITouchTrigger;
        return uITouchTrigger;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateTouch(UIController controller, int order) {
        boolean z10;
        if (getUIRectComponent() == null) {
            return;
        }
        UIRect uIRectComponent = getUIRectComponent();
        UIController uIControllerComponent = getUIControllerComponent();
        if (uIControllerComponent == null) {
            return;
        }
        if (this.f78832L && getUIRectComponent() != null) {
            S9.b bVar = this.rectObject;
            if (bVar == S9.b.MySelf) {
                this.f78833M.i(uIRectComponent.getScreenRect());
            } else if (bVar == S9.b.Parent) {
                GameObject gameObject = uIRectComponent.f79250n.f79294k;
                if (gameObject != null) {
                    UIRect uIRect = (UIRect) gameObject.c0(Component.e.UIRect);
                    if (uIRect != null) {
                        this.f78833M.i(uIRect.getScreenRect());
                    } else {
                        this.f78833M.i(uIRectComponent.getScreenRect());
                    }
                }
            } else {
                this.objectReference.j();
                if (this.objectReference.e() == null) {
                    this.f78833M.i(uIRectComponent.getScreenRect());
                } else {
                    UIRect l10 = this.objectReference.l();
                    if (l10 != null) {
                        this.f78833M.i(l10.getScreenRect());
                    } else {
                        this.f78833M.i(uIRectComponent.getScreenRect());
                    }
                }
            }
            if (this.exclusiveMode) {
                this.f78838R.d(isOver());
            } else if (this.clickable) {
                if (controller != null) {
                    if (controller.isAllowScreenTouch()) {
                        z10 = false;
                        for (int i10 = 0; i10 < C15169a.L(); i10++) {
                            z10 |= processLocalTouch(C15169a.n(i10), i10, uIControllerComponent, false);
                        }
                    } else {
                        z10 = false;
                    }
                    for (int i11 = 0; i11 < controller.virtualTouchsCount(); i11++) {
                        z10 |= processLocalTouch(controller.getVirtualToucheAt(i11), i11, uIControllerComponent, false);
                    }
                } else {
                    z10 = false;
                }
                if (z10) {
                    updateListeners();
                }
            }
            if (this.dispatchTouchWhenOutsideRect) {
                SteppedArrayList steppedArrayList = new SteppedArrayList(this.f78837Q);
                for (int i12 = 0; i12 < steppedArrayList.size(); i12++) {
                    tc.h hVar = (tc.h) steppedArrayList.get(i12);
                    if (hVar != null && !m.d(hVar, uIControllerComponent.getControllerScreenRect(), this.f78833M) && removeSelectedTouch(hVar)) {
                        updateListeners();
                    }
                }
            }
            this.f78834N = order;
        }
        updateListeners();
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UITouchTrigger uITouchTrigger = new UITouchTrigger();
        uITouchTrigger.clickable = this.clickable;
        uITouchTrigger.rectObject = this.rectObject;
        p pVar = this.objectReference;
        uITouchTrigger.objectReference = pVar != null ? pVar.clone() : new p();
        uITouchTrigger.onlyDownInside = this.onlyDownInside;
        uITouchTrigger.exclusiveMode = this.exclusiveMode;
        uITouchTrigger.dispatchTouchWhenOutsideRect = this.dispatchTouchWhenOutsideRect;
        uITouchTrigger.multiTouch = this.multiTouch;
        return uITouchTrigger;
    }

    public UITouchTrigger(boolean onlyDownInside, boolean dispatchTouchWhenOutsideRect) {
        super(f78830U);
        this.clickable = true;
        this.rectObject = S9.b.MySelf;
        this.onlyDownInside = true;
        this.exclusiveMode = true;
        this.dispatchTouchWhenOutsideRect = false;
        this.multiTouch = false;
        this.f78832L = false;
        this.f78833M = new W9.c();
        this.f78835O = -1;
        this.f78837Q = new SteppedArrayList();
        this.f78838R = new k();
        this.f78839S = new Vector2();
        this.objectReference = new p();
        this.onlyDownInside = onlyDownInside;
        this.dispatchTouchWhenOutsideRect = dispatchTouchWhenOutsideRect;
    }
}
