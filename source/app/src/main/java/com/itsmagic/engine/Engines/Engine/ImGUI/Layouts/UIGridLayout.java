package com.itsmagic.engine.Engines.Engine.ImGUI.Layouts;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;

public class UIGridLayout extends ImGuiLayoutComponent {

    public static final String f78152W = "UIGridLayout";

    public static final Class f78153X = UIGridLayout.class;

    public int f78154P;

    public int f78155Q;

    public int f78156R;

    public int f78157S;

    public int f78158T;

    public int f78159U;

    public Component f78160V;

    @Expose
    private boolean autoColumns;

    @Expose
    @f
    private int columns;

    @Expose
    @f
    private int spacing;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIGridLayout.f78153X;
        }

        @Override
        public String c() {
            return UIGridLayout.f78152W;
        }

        @Override
        public String e() {
            return "UI/Layouts";
        }

        @Override
        public String h(boolean translate) {
            return "GridLayout";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(UIGridLayout.this.spacing);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIGridLayout.this.setSpacing(variable.int_value);
            }
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(UIGridLayout.this.columns);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIGridLayout.this.setColumns(variable.int_value);
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIGridLayout.this.autoColumns + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIGridLayout.this.setAutoColumns(variable.booolean_value.booleanValue());
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIGridLayout() {
        super(f78152W);
        this.spacing = 8;
        this.columns = 4;
        this.autoColumns = false;
        this.f78154P = 0;
        this.f78155Q = 0;
        this.f78156R = 0;
        this.f78157S = 0;
        this.f78158T = 1;
        this.f78159U = 0;
    }

    @InterfaceC15237a
    public int getColumns() {
        return this.columns;
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_linear_ver;
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
        b.a aVar = b.a.SLInt;
        C5.b bVar2 = new C5.b(bVar, "spacing", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.INT;
        inspectorEntries.add(bVar2.d(gameObject, this, "spacing", cVar));
        inspectorEntries.add(new C5.b(new c(), "columns", aVar).d(this.f79250n, this, "columns", cVar));
        inspectorEntries.add(new C5.b(new d(), "auto columns", b.a.SLBoolean));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public int getRows() {
        return this.f78159U;
    }

    @InterfaceC15237a
    public int getSpacing() {
        return this.spacing;
    }

    @Override
    public String getTitle() {
        return "GridLayout";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIGridLayout;
    }

    @Override
    public int iconPriority() {
        return 4;
    }

    @InterfaceC15237a
    public boolean isAutoColumns() {
        return this.autoColumns;
    }

    @Override
    public void onChildInfluence(UIController controller, UIRect child) {
        super.onChildInfluence(controller, child);
        int i10 = this.f78154P;
        int i11 = this.f78158T;
        int i12 = i10 % i11;
        int i13 = i10 / i11;
        int i14 = this.f78156R;
        int i15 = this.spacing;
        child.setGlobalPosition(child.getGlobalPosition().f() + (i12 * (i14 + i15)), child.getGlobalPosition().g() + (i13 * (this.f78157S + i15)), false);
        this.f78154P++;
        UIRect uIRectComponent = getUIRectComponent();
        if (uIRectComponent == null) {
            return;
        }
        if (uIRectComponent.isAutoSW()) {
            uIRectComponent.setGlobalWidth((this.f78158T * (this.f78156R + this.spacing)) + dp(uIRectComponent.getPadding().d()));
        }
        if (uIRectComponent.isAutoSH()) {
            uIRectComponent.setGlobalHeight((this.f78159U * (this.f78157S + this.spacing)) + dp(uIRectComponent.getPadding().h()));
        }
    }

    @InterfaceC15237a
    public void setAutoColumns(boolean autoColumns) {
        if (this.autoColumns == autoColumns) {
            return;
        }
        this.autoColumns = autoColumns;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setColumns(int columns) {
        if (this.columns == columns) {
            return;
        }
        this.columns = columns;
        markLayoutDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78160V = run;
    }

    @InterfaceC15237a
    public void setSpacing(int spacing) {
        if (this.spacing == spacing) {
            return;
        }
        this.spacing = spacing;
        markLayoutDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x009b, code lost:
    
        if (r2 <= 0) goto L31;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void startChildInfluence(UIController controller) {
        UIRect uIRect;
        this.f78154P = 0;
        this.f78155Q = 0;
        this.f78156R = 0;
        this.f78157S = 0;
        this.f78158T = 1;
        this.f78159U = 0;
        UIRect uIRectComponent = getUIRectComponent();
        if (uIRectComponent == null || this.f79250n == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            GameObject C10 = this.f79250n.C(i10);
            if (C10 != null && C10.isEnabled() && (uIRect = (UIRect) C10.c0(Component.e.UIRect)) != null) {
                this.f78155Q++;
                this.f78156R = Math.max(this.f78156R, uIRect.getGlobalSize().e());
                this.f78157S = Math.max(this.f78157S, uIRect.getGlobalSize().f());
            }
        }
        int i11 = this.columns;
        if (this.autoColumns && !uIRectComponent.isAutoSW() && this.f78156R > 0) {
            int e10 = uIRectComponent.getGlobalSize().e() - dp(uIRectComponent.getPadding().d());
            int i12 = this.f78156R;
            int i13 = this.spacing;
            int i14 = i12 + i13;
            if (e10 > 0 && i14 > 0) {
                i11 = Math.max(1, (e10 + i13) / i14);
            }
            i11 = 1;
        }
        int max = Math.max(1, i11);
        this.f78158T = max;
        int i15 = this.f78155Q;
        if (i15 > 0) {
            this.f78159U = (int) Math.ceil(i15 / max);
        } else {
            this.f78159U = 0;
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78160V;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIGridLayout uIGridLayout = new JAVARuntime.UIGridLayout(this);
        this.f78160V = uIGridLayout;
        return uIGridLayout;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIGridLayout uIGridLayout = new UIGridLayout();
        uIGridLayout.spacing = this.spacing;
        uIGridLayout.columns = this.columns;
        uIGridLayout.autoColumns = this.autoColumns;
        return uIGridLayout;
    }
}
