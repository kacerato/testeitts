package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import JAVARuntime.Component;
import W9.c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.Anchor;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;

public class UIAlignment extends ImGuiLayoutComponent {

    public static final String f78352Q = "UIAlignment";

    public static final Class f78353R = UIAlignment.class;

    public Component f78354P;

    @Expose
    private Anchor anchor;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIAlignment.f78353R;
        }

        @Override
        public String c() {
            return UIAlignment.f78352Q;
        }

        @Override
        public String e() {
            return "UI/Utils";
        }

        @Override
        public String h(boolean translate) {
            return "Alignment";
        }
    }

    public class b implements T9.a {

        public final T9.a f78355a;

        public b(final T9.a val$listener) {
            this.f78355a = val$listener;
        }

        @Override
        public void a(boolean tl2, boolean tc2, boolean tr, boolean cl2, boolean cc2, boolean cr, boolean bl2, boolean bc2, boolean br) {
            UIAlignment.this.markLayoutDirty();
            T9.a aVar = this.f78355a;
            if (aVar != null) {
                aVar.a(tl2, tc2, tr, cl2, cc2, cr, bl2, bc2, br);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIAlignment() {
        super(f78352Q);
        this.anchor = new Anchor();
    }

    @Override
    public int getIconResource() {
        return R.drawable.alignment_left_view;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        return getInspectorEntries(context, null);
    }

    @Override
    public int getLayoutLayer() {
        return 0;
    }

    @Override
    public String getTitle() {
        return "Alignment";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIAlignment;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public boolean isBottomCenterEnabled() {
        return this.anchor.f78231bc;
    }

    @InterfaceC15237a
    public boolean isBottomLeftEnabled() {
        return this.anchor.f78232bl;
    }

    @InterfaceC15237a
    public boolean isBottomRightEnabled() {
        return this.anchor.br;
    }

    @InterfaceC15237a
    public boolean isCenterEnabled() {
        return this.anchor.f78233cc;
    }

    @InterfaceC15237a
    public boolean isCenterLeftEnabled() {
        return this.anchor.f78234cl;
    }

    @InterfaceC15237a
    public boolean isCenterRightEnabled() {
        return this.anchor.cr;
    }

    @InterfaceC15237a
    public boolean isTopCenterEnabled() {
        return this.anchor.f78235tc;
    }

    @InterfaceC15237a
    public boolean isTopLeftEnabled() {
        return this.anchor.f78236tl;
    }

    @InterfaceC15237a
    public boolean isTopRightEnabled() {
        return this.anchor.tr;
    }

    @Override
    public void onLayout(UIController controller) {
        float f10;
        float f11;
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        boolean z12;
        float f12;
        boolean z13;
        float M10;
        UIRect uIRectComponent = super.getUIRectComponent();
        if (uIRectComponent == null) {
            return;
        }
        c uIControllerScreenRect = super.getUIControllerScreenRect();
        UIRect parent = super.getUIRectComponent().getParent();
        Square5I parentPadding = uIRectComponent.getParentPadding();
        if (parentPadding == null) {
            return;
        }
        float c10 = uIControllerScreenRect.c();
        float b10 = uIControllerScreenRect.b();
        if (parent != null) {
            i10 = parent.getGlobalPosition().f();
            i11 = parent.getGlobalPosition().g();
            f11 = parent.getGlobalSize().e();
            f10 = parent.getGlobalSize().f();
            z11 = parent.isAutoSW();
            z10 = parent.isAutoSH();
        } else {
            f10 = b10;
            f11 = c10;
            i10 = 0;
            z10 = false;
            i11 = 0;
            z11 = false;
        }
        float e10 = uIRectComponent.getGlobalSize().e();
        float f13 = uIRectComponent.getGlobalSize().f();
        int dp = dp(parentPadding.e());
        int dp2 = dp(parentPadding.f());
        int dp3 = dp(parentPadding.g());
        int dp4 = dp(parentPadding.c());
        int dp5 = dp(uIRectComponent.getMargin().e()) + dp;
        int dp6 = dp(uIRectComponent.getMargin().f()) + dp2;
        int dp7 = dp(uIRectComponent.getMargin().g()) + dp3;
        int dp8 = dp(uIRectComponent.getMargin().c()) + dp4;
        float f14 = i10;
        float f15 = i11;
        Anchor anchor = this.anchor;
        boolean z14 = true;
        if (anchor.f78236tl || anchor.f78234cl || anchor.f78232bl) {
            i12 = dp8;
            z12 = true;
        } else {
            i12 = dp8;
            z12 = false;
        }
        if (anchor.tr || anchor.cr || anchor.br) {
            f12 = f10;
            z13 = true;
        } else {
            f12 = f10;
            z13 = false;
        }
        boolean z15 = anchor.f78235tc || anchor.f78233cc || anchor.f78231bc;
        if (z12 && z13) {
            if (!z11) {
                f14 = i10 + dp5;
                uIRectComponent.setGlobalWidth((int) ((f11 - dp5) - dp6));
            }
        } else if (z12 && z15) {
            f14 = i10 + dp5;
            uIRectComponent.setGlobalWidth((int) (((f11 / 2.0f) - dp5) - dp6));
        } else if (z13 && z15) {
            float f16 = f11 / 2.0f;
            float f17 = dp5;
            f14 = f14 + f16 + f17;
            uIRectComponent.setGlobalWidth((int) ((f16 - f17) - dp6));
        } else if (z12) {
            f14 = i10 + dp5;
        } else if (z13) {
            f14 = (f14 + Nc.b.M(0.0f, f11 - e10)) - dp6;
        } else if (z15) {
            f14 += Nc.b.M(0.0f, f11 - e10) * 0.5f;
        }
        Anchor anchor2 = this.anchor;
        boolean z16 = anchor2.f78236tl || anchor2.f78235tc || anchor2.tr;
        boolean z17 = anchor2.f78232bl || anchor2.f78231bc || anchor2.br;
        if (!anchor2.f78234cl && !anchor2.f78233cc && !anchor2.cr) {
            z14 = false;
        }
        if (z16 && z17) {
            if (!z10) {
                M10 = i11 + dp7;
                uIRectComponent.setGlobalHeight((int) ((f12 - dp7) - i12));
            }
            M10 = f15;
        } else {
            int i13 = i12;
            if (z16 && z14) {
                M10 = i11 + dp7;
                uIRectComponent.setGlobalHeight((int) (((f12 / 2.0f) - dp7) - i13));
            } else if (z17 && z14) {
                float f18 = f12 / 2.0f;
                float f19 = dp7;
                M10 = f15 + f18 + f19;
                uIRectComponent.setGlobalHeight((int) ((f18 - f19) - i13));
            } else if (z16) {
                M10 = i11 + dp7;
            } else if (z17) {
                M10 = (f15 + Nc.b.M(0.0f, f12 - f13)) - i13;
            } else {
                if (z14) {
                    M10 = f15 + (Nc.b.M(0.0f, f12 - f13) * 0.5f);
                }
                M10 = f15;
            }
        }
        uIRectComponent.setGlobalPosition((int) Nc.b.j1(f14 + dp(uIRectComponent.getLocalPosition().f())), (int) Nc.b.j1(M10 + dp(uIRectComponent.getLocalPosition().g())), false);
    }

    @InterfaceC15237a
    public void setBottomCenterEnabled(boolean bottomCenter) {
        Anchor anchor = this.anchor;
        if (anchor.f78231bc == bottomCenter) {
            return;
        }
        anchor.f78231bc = bottomCenter;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setBottomLeftEnabled(boolean bottomLeft) {
        Anchor anchor = this.anchor;
        if (anchor.f78232bl == bottomLeft) {
            return;
        }
        anchor.f78232bl = bottomLeft;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setBottomRightEnabled(boolean bottomRight) {
        Anchor anchor = this.anchor;
        if (anchor.br == bottomRight) {
            return;
        }
        anchor.br = bottomRight;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setCenterEnabled(boolean center) {
        Anchor anchor = this.anchor;
        if (anchor.f78233cc == center) {
            return;
        }
        anchor.f78233cc = center;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setCenterLeftEnabled(boolean centerLeft) {
        Anchor anchor = this.anchor;
        if (anchor.f78234cl == centerLeft) {
            return;
        }
        anchor.f78234cl = centerLeft;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setCenterRightEnabled(boolean centerRight) {
        Anchor anchor = this.anchor;
        if (anchor.cr == centerRight) {
            return;
        }
        anchor.cr = centerRight;
        markLayoutDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78354P = run;
    }

    @InterfaceC15237a
    public void setTopCenterEnabled(boolean topCenter) {
        Anchor anchor = this.anchor;
        if (anchor.f78235tc == topCenter) {
            return;
        }
        anchor.f78235tc = topCenter;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setTopLeftEnabled(boolean topLeft) {
        Anchor anchor = this.anchor;
        if (anchor.f78236tl == topLeft) {
            return;
        }
        anchor.f78236tl = topLeft;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setTopRightEnabled(boolean topRight) {
        Anchor anchor = this.anchor;
        if (anchor.tr == topRight) {
            return;
        }
        anchor.tr = topRight;
        markLayoutDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78354P;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIAlignment uIAlignment = new JAVARuntime.UIAlignment(this);
        this.f78354P = uIAlignment;
        return uIAlignment;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIAlignment uIAlignment = new UIAlignment();
        uIAlignment.anchor = this.anchor.a();
        return uIAlignment;
    }

    public List<C5.b> getInspectorEntries(Context context, T9.a listener) {
        List<C5.b> inspectorEntries = super.getInspectorEntries(context);
        if (inspectorEntries == null) {
            inspectorEntries = new SteppedArrayList<>();
        }
        if (context == null) {
            return inspectorEntries;
        }
        inspectorEntries.addAll(this.anchor.b(context, new b(listener)));
        return inspectorEntries;
    }
}
