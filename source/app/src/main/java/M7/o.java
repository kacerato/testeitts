package M7;

import M7.c;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;

public class o extends c {

    public r f14772I;

    public boolean f14773J;

    public boolean f14774K;

    public boolean f14775L;

    public int f14776M;

    public int f14777N;

    public final d f14778O;

    public int f14779P;

    public int f14780Q;

    public boolean f14781R;

    public boolean f14782S;

    public Ac.b f14783T;

    public Ac.b f14784U;

    public int f14785V;

    public boolean f14786W;

    public Ac.b f14787X;

    public int f14788Y;

    public boolean f14789Z;

    public Ac.b f14790a0;

    public class a implements d {
        public a() {
        }

        @Override
        public void onClick(View v10, Context context, c tbButton) {
            if (o.this.f14772I != null) {
                o.this.f14772I.a(v10, context, o.this);
            }
            o.this.P0(true);
        }
    }

    public o(int icon, Context context) {
        super(icon, context);
        this.f14773J = false;
        this.f14774K = false;
        this.f14775L = true;
        this.f14776M = -1;
        this.f14777N = -1;
        a aVar = new a();
        this.f14778O = aVar;
        Ac.b bVar = Theme.T.PRIMARY;
        this.f14779P = Theme.i(bVar);
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14780Q = Theme.i(bVar2);
        this.f14781R = true;
        this.f14782S = true;
        this.f14783T = bVar;
        this.f14784U = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14785V = Theme.i(bVar3);
        this.f14786W = true;
        this.f14787X = bVar3;
        this.f14788Y = Theme.i(bVar3);
        this.f14789Z = true;
        this.f14790a0 = bVar3;
        super.X(false);
        i0(aVar);
    }

    public o A0(int checkedColor) {
        this.f14779P = checkedColor;
        this.f14781R = false;
        this.f14783T = null;
        Q0();
        return this;
    }

    public o B0(Ac.b checkedColorTag) {
        this.f14783T = checkedColorTag;
        if (checkedColorTag != null) {
            this.f14779P = Theme.i(checkedColorTag);
            this.f14781R = true;
        }
        Q0();
        return this;
    }

    public o C0(ColorINT checkedColor) {
        if (checkedColor != null) {
            this.f14779P = checkedColor.intColor;
            this.f14781R = true;
            this.f14783T = null;
        }
        Q0();
        return this;
    }

    public o D0(int checkedOutlineColor) {
        this.f14788Y = checkedOutlineColor;
        this.f14789Z = false;
        this.f14790a0 = null;
        Q0();
        return this;
    }

    public o E0(Ac.b checkedOutlineColorTag) {
        this.f14790a0 = checkedOutlineColorTag;
        if (checkedOutlineColorTag != null) {
            this.f14788Y = Theme.i(checkedOutlineColorTag);
            this.f14789Z = true;
        }
        Q0();
        return this;
    }

    public o F0(ColorINT checkedOutlineColor) {
        if (checkedOutlineColor != null) {
            this.f14788Y = checkedOutlineColor.intColor;
            this.f14789Z = true;
            this.f14790a0 = null;
        }
        Q0();
        return this;
    }

    @Override
    public o j0(int outlineColor) {
        this.f14785V = outlineColor;
        this.f14786W = false;
        this.f14787X = null;
        Q0();
        return this;
    }

    @Override
    public o k0(Ac.b outlineColorTag) {
        this.f14787X = outlineColorTag;
        if (outlineColorTag != null) {
            this.f14785V = Theme.i(outlineColorTag);
            this.f14786W = true;
        }
        Q0();
        return this;
    }

    @Override
    public o l0(ColorINT outlineColor) {
        if (outlineColor != null) {
            this.f14785V = outlineColor.intColor;
            this.f14786W = true;
            this.f14787X = null;
        }
        Q0();
        return this;
    }

    public o J0(boolean paintButtonOnToggle) {
        this.f14775L = paintButtonOnToggle;
        Q0();
        return this;
    }

    public o K0(int uncheckedIcon, int checkedIcon) {
        o0(uncheckedIcon, checkedIcon);
        Q0();
        return this;
    }

    public void L0(r listener) {
        this.f14772I = listener;
    }

    public o M0(int uncheckedColor) {
        this.f14780Q = uncheckedColor;
        this.f14782S = false;
        this.f14784U = null;
        Q0();
        return this;
    }

    public o N0(Ac.b uncheckedColorTag) {
        this.f14784U = uncheckedColorTag;
        if (uncheckedColorTag != null) {
            this.f14780Q = Theme.i(uncheckedColorTag);
            this.f14782S = true;
        }
        Q0();
        return this;
    }

    public o O0(ColorINT uncheckedColor) {
        if (uncheckedColor != null) {
            this.f14780Q = uncheckedColor.intColor;
            this.f14782S = true;
            this.f14784U = null;
        }
        Q0();
        return this;
    }

    public void P0(boolean isFromUserAction) {
        y0(!this.f14773J, isFromUserAction);
    }

    public final void Q0() {
        if (this.f14774K) {
            super.Z(this.f14773J ? this.f14777N : this.f14776M);
        }
        if (this.f14775L) {
            if (this.f14773J) {
                super.R(this.f14779P, this.f14781R);
                x(this.f14788Y, this.f14789Z);
            } else {
                super.R(this.f14780Q, this.f14782S);
                x(this.f14785V, this.f14786W);
            }
        }
    }

    @Override
    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        super.a(parent, context, layoutInflater);
        Q0();
    }

    @Override
    public void k() {
        super.k();
        Ac.b bVar = this.f14783T;
        if (bVar != null) {
            this.f14779P = Theme.i(bVar);
            this.f14781R = true;
        }
        Ac.b bVar2 = this.f14784U;
        if (bVar2 != null) {
            this.f14780Q = Theme.i(bVar2);
            this.f14782S = true;
        }
        Ac.b bVar3 = this.f14787X;
        if (bVar3 != null) {
            this.f14785V = Theme.i(bVar3);
            this.f14786W = true;
        }
        Ac.b bVar4 = this.f14790a0;
        if (bVar4 != null) {
            this.f14788Y = Theme.i(bVar4);
            this.f14789Z = true;
        }
        Q0();
    }

    public final void o0(int uncheckedIcon, int checkedIcon) {
        this.f14776M = uncheckedIcon;
        this.f14777N = checkedIcon;
        this.f14774K = true;
        this.f14775L = false;
    }

    public int p0() {
        return this.f14779P;
    }

    public int q0() {
        return this.f14788Y;
    }

    public int r0() {
        return this.f14777N;
    }

    public r s0() {
        return this.f14772I;
    }

    public int t0() {
        return this.f14780Q;
    }

    public int u0() {
        return this.f14776M;
    }

    public boolean v0() {
        return this.f14773J;
    }

    public boolean w0() {
        return this.f14775L;
    }

    public final void x(int color, boolean isDirect) {
        if (isDirect) {
            super.l0(new ColorINT(color));
        } else {
            super.j0(color);
        }
    }

    public o x0(boolean checked) {
        z0(checked, true, false);
        return this;
    }

    public o y0(boolean checked, boolean isFromUserAction) {
        z0(checked, true, isFromUserAction);
        return this;
    }

    public void z0(boolean checked, boolean notifyListener, boolean isFromUserAction) {
        if (this.f14773J != checked) {
            this.f14773J = checked;
            Q0();
            r rVar = this.f14772I;
            if (rVar == null || !notifyListener) {
                return;
            }
            rVar.b(checked, e(), this.f14644l, this, isFromUserAction);
        }
    }

    public o(int icon, c.b connector, Context context) {
        super(icon, connector, context);
        this.f14773J = false;
        this.f14774K = false;
        this.f14775L = true;
        this.f14776M = -1;
        this.f14777N = -1;
        a aVar = new a();
        this.f14778O = aVar;
        Ac.b bVar = Theme.T.PRIMARY;
        this.f14779P = Theme.i(bVar);
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14780Q = Theme.i(bVar2);
        this.f14781R = true;
        this.f14782S = true;
        this.f14783T = bVar;
        this.f14784U = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14785V = Theme.i(bVar3);
        this.f14786W = true;
        this.f14787X = bVar3;
        this.f14788Y = Theme.i(bVar3);
        this.f14789Z = true;
        this.f14790a0 = bVar3;
        super.X(false);
        i0(aVar);
    }

    public o(int icon, r listener, Context context) {
        super(icon, context);
        this.f14773J = false;
        this.f14774K = false;
        this.f14775L = true;
        this.f14776M = -1;
        this.f14777N = -1;
        a aVar = new a();
        this.f14778O = aVar;
        Ac.b bVar = Theme.T.PRIMARY;
        this.f14779P = Theme.i(bVar);
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14780Q = Theme.i(bVar2);
        this.f14781R = true;
        this.f14782S = true;
        this.f14783T = bVar;
        this.f14784U = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14785V = Theme.i(bVar3);
        this.f14786W = true;
        this.f14787X = bVar3;
        this.f14788Y = Theme.i(bVar3);
        this.f14789Z = true;
        this.f14790a0 = bVar3;
        super.X(false);
        this.f14772I = listener;
        i0(aVar);
    }

    public o(int icon, r listener, c.b connector, Context context) {
        super(icon, connector, context);
        this.f14773J = false;
        this.f14774K = false;
        this.f14775L = true;
        this.f14776M = -1;
        this.f14777N = -1;
        a aVar = new a();
        this.f14778O = aVar;
        Ac.b bVar = Theme.T.PRIMARY;
        this.f14779P = Theme.i(bVar);
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14780Q = Theme.i(bVar2);
        this.f14781R = true;
        this.f14782S = true;
        this.f14783T = bVar;
        this.f14784U = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14785V = Theme.i(bVar3);
        this.f14786W = true;
        this.f14787X = bVar3;
        this.f14788Y = Theme.i(bVar3);
        this.f14789Z = true;
        this.f14790a0 = bVar3;
        super.X(false);
        this.f14772I = listener;
        i0(aVar);
    }

    public o(int uncheckedIcon, int checkedIcon, Context context) {
        super(uncheckedIcon, context);
        this.f14773J = false;
        this.f14774K = false;
        this.f14775L = true;
        this.f14776M = -1;
        this.f14777N = -1;
        a aVar = new a();
        this.f14778O = aVar;
        Ac.b bVar = Theme.T.PRIMARY;
        this.f14779P = Theme.i(bVar);
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14780Q = Theme.i(bVar2);
        this.f14781R = true;
        this.f14782S = true;
        this.f14783T = bVar;
        this.f14784U = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14785V = Theme.i(bVar3);
        this.f14786W = true;
        this.f14787X = bVar3;
        this.f14788Y = Theme.i(bVar3);
        this.f14789Z = true;
        this.f14790a0 = bVar3;
        super.X(false);
        o0(uncheckedIcon, checkedIcon);
        i0(aVar);
    }

    public o(int uncheckedIcon, int checkedIcon, c.b connector, Context context) {
        super(uncheckedIcon, connector, context);
        this.f14773J = false;
        this.f14774K = false;
        this.f14775L = true;
        this.f14776M = -1;
        this.f14777N = -1;
        a aVar = new a();
        this.f14778O = aVar;
        Ac.b bVar = Theme.T.PRIMARY;
        this.f14779P = Theme.i(bVar);
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14780Q = Theme.i(bVar2);
        this.f14781R = true;
        this.f14782S = true;
        this.f14783T = bVar;
        this.f14784U = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14785V = Theme.i(bVar3);
        this.f14786W = true;
        this.f14787X = bVar3;
        this.f14788Y = Theme.i(bVar3);
        this.f14789Z = true;
        this.f14790a0 = bVar3;
        super.X(false);
        o0(uncheckedIcon, checkedIcon);
        i0(aVar);
    }

    public o(int uncheckedIcon, int checkedIcon, r listener, Context context) {
        super(uncheckedIcon, context);
        this.f14773J = false;
        this.f14774K = false;
        this.f14775L = true;
        this.f14776M = -1;
        this.f14777N = -1;
        a aVar = new a();
        this.f14778O = aVar;
        Ac.b bVar = Theme.T.PRIMARY;
        this.f14779P = Theme.i(bVar);
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14780Q = Theme.i(bVar2);
        this.f14781R = true;
        this.f14782S = true;
        this.f14783T = bVar;
        this.f14784U = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14785V = Theme.i(bVar3);
        this.f14786W = true;
        this.f14787X = bVar3;
        this.f14788Y = Theme.i(bVar3);
        this.f14789Z = true;
        this.f14790a0 = bVar3;
        super.X(false);
        this.f14772I = listener;
        o0(uncheckedIcon, checkedIcon);
        i0(aVar);
    }

    public o(int uncheckedIcon, int checkedIcon, r listener, c.b connector, Context context) {
        super(uncheckedIcon, connector, context);
        this.f14773J = false;
        this.f14774K = false;
        this.f14775L = true;
        this.f14776M = -1;
        this.f14777N = -1;
        a aVar = new a();
        this.f14778O = aVar;
        Ac.b bVar = Theme.T.PRIMARY;
        this.f14779P = Theme.i(bVar);
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14780Q = Theme.i(bVar2);
        this.f14781R = true;
        this.f14782S = true;
        this.f14783T = bVar;
        this.f14784U = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14785V = Theme.i(bVar3);
        this.f14786W = true;
        this.f14787X = bVar3;
        this.f14788Y = Theme.i(bVar3);
        this.f14789Z = true;
        this.f14790a0 = bVar3;
        super.X(false);
        this.f14772I = listener;
        o0(uncheckedIcon, checkedIcon);
        i0(aVar);
    }
}
