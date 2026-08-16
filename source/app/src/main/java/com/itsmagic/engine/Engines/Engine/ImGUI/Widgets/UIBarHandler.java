package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.UIPBarComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;

public class UIBarHandler extends ImGuiLayoutComponent {

    public static final String f78407Q = "UIBarHandler";

    public static final Class f78408R = UIBarHandler.class;

    public Component f78409P;

    @Expose
    private d align;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIBarHandler.f78408R;
        }

        @Override
        public String c() {
            return UIBarHandler.f78407Q;
        }

        @Override
        public String e() {
            return "UI/Utils";
        }

        @Override
        public String h(boolean translate) {
            return "BarHandler";
        }
    }

    public class b extends c.n0<d> {
        public b() {
        }

        @Override
        public void set(d value) {
            UIBarHandler.this.setAlign(value);
        }
    }

    public static class c {

        public static final int[] f78411a;

        static {
            int[] iArr = new int[R9.a.values().length];
            f78411a = iArr;
            try {
                iArr[R9.a.Horizontal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78411a[R9.a.Vertical.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum d {
        Center,
        End
    }

    static {
        C13201a.b(new a());
    }

    public UIBarHandler() {
        super(f78407Q);
        this.align = d.End;
    }

    @InterfaceC15237a
    public d getAlign() {
        return this.align;
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
        inspectorEntries.add(F5.c.i("Align", d.class, this.align, new b()));
        return inspectorEntries;
    }

    @Override
    public String getTitle() {
        return "BarHandler";
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00bb  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(UIController controller) {
        UIRect uIRectComponent = super.getUIRectComponent();
        if (uIRectComponent == null) {
            return;
        }
        super.getUIControllerScreenRect();
        UIPBarComponent uIPBarComponent = (UIPBarComponent) super.getUIRectComponent().getParent().f79250n.d0(UIPBarComponent.class);
        if (uIPBarComponent != null) {
            float progressValue = uIPBarComponent.getProgressValue();
            R9.a orientation = uIPBarComponent.getOrientation();
            float f10 = uIPBarComponent.getUIRectComponent().getGlobalPosition().f();
            float g10 = uIPBarComponent.getUIRectComponent().getGlobalPosition().g();
            float e10 = uIPBarComponent.getUIRectComponent().getGlobalSize().e();
            float f11 = uIPBarComponent.getUIRectComponent().getGlobalSize().f();
            float e11 = uIRectComponent.getGlobalSize().e();
            float f12 = uIRectComponent.getGlobalSize().f();
            float f13 = e10 / 2.0f;
            float f14 = f11 / 2.0f;
            int ordinal = this.align.ordinal();
            if (ordinal == 0) {
                int i10 = c.f78411a[orientation.ordinal()];
                if (i10 != 1) {
                    if (i10 == 2) {
                        f14 = f11 * progressValue * 0.5f;
                    }
                    float f15 = (f13 + f10) - (e11 / 2.0f);
                    float f16 = (f14 + g10) - (f12 / 2.0f);
                    if (this.align.ordinal() == 1) {
                    }
                    uIRectComponent.setGlobalPosition((int) Nc.b.j1(f15), (int) Nc.b.j1(f16), false);
                }
                progressValue *= 0.5f;
                f13 = e10 * progressValue;
                float f152 = (f13 + f10) - (e11 / 2.0f);
                float f162 = (f14 + g10) - (f12 / 2.0f);
                if (this.align.ordinal() == 1) {
                }
                uIRectComponent.setGlobalPosition((int) Nc.b.j1(f152), (int) Nc.b.j1(f162), false);
            }
            if (ordinal == 1) {
                int i11 = c.f78411a[orientation.ordinal()];
                if (i11 != 1) {
                    if (i11 == 2) {
                        f14 = (progressValue * f11) - f12;
                    }
                }
                f13 = e10 * progressValue;
            }
            float f1522 = (f13 + f10) - (e11 / 2.0f);
            float f1622 = (f14 + g10) - (f12 / 2.0f);
            if (this.align.ordinal() == 1) {
                int i12 = c.f78411a[orientation.ordinal()];
                if (i12 == 1) {
                    if (f1522 < f10) {
                        f1522 = f10;
                    }
                    float f17 = (f10 + e10) - e11;
                    if (f1522 > f17) {
                        f1522 = f17;
                    }
                } else if (i12 == 2) {
                    if (f1622 < g10) {
                        f1622 = g10;
                    }
                    float f18 = (g10 + f11) - f12;
                    if (f1622 > f18) {
                        f1622 = f18;
                    }
                }
            }
            uIRectComponent.setGlobalPosition((int) Nc.b.j1(f1522), (int) Nc.b.j1(f1622), false);
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
    }

    @InterfaceC15237a
    public void setAlign(d align) {
        if (align == null) {
            throw new NullPointerException("align can't be null");
        }
        if (this.align == align) {
            return;
        }
        this.align = align;
        markLayoutDirty();
    }

    @Override
    public void setRuntime(Component run) {
        this.f78409P = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78409P;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIBarHandler uIBarHandler = new JAVARuntime.UIBarHandler(this);
        this.f78409P = uIBarHandler;
        return uIBarHandler;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIBarHandler uIBarHandler = new UIBarHandler();
        uIBarHandler.align = this.align;
        return uIBarHandler;
    }
}
