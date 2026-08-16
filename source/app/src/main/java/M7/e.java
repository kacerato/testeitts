package M7;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine2.R;
import java.io.File;
import kd.C13965a;
import kd.InterfaceC13966b;

public class e extends g {

    public static final int f14662H = 2;

    public int f14663A;

    public View f14664B;

    public boolean f14665C;

    public ImageView f14666D;

    public boolean f14667E;

    public String f14668F;

    public TextView f14669G;

    public int f14670i;

    public f f14671j;

    public Context f14672k;

    public int f14673l;

    public boolean f14674m;

    public Ac.b f14675n;

    public int f14676o;

    public boolean f14677p;

    public Ac.b f14678q;

    public int f14679r;

    public boolean f14680s;

    public Ac.b f14681t;

    public int f14682u;

    public boolean f14683v;

    public Ac.b f14684w;

    public int f14685x;

    public boolean f14686y;

    public Ac.b f14687z;

    public class a implements View.OnClickListener {

        public final Context f14688b;

        public class C0420a implements InterfaceC13966b {
            public C0420a() {
            }

            @Override
            public void run() {
                e eVar = e.this;
                eVar.R(eVar.f14676o, eVar.f14677p);
                e.this.y();
            }
        }

        public a(final Context val$context) {
            this.f14688b = val$context;
        }

        @Override
        public void onClick(View v10) {
            N7.c.Y();
            if (e.this.f14665C) {
                e eVar = e.this;
                eVar.R(eVar.f14679r, eVar.f14680s);
                e eVar2 = e.this;
                eVar2.z(eVar2.f14685x, eVar2.f14686y);
                new C13965a().a(50, new C0420a());
            }
            e eVar3 = e.this;
            f fVar = eVar3.f14671j;
            if (fVar != null) {
                fVar.a(v10, this.f14688b, eVar3);
            }
        }
    }

    public class b implements Runnable {

        public final String f14691b;

        public b(final String val$text) {
            this.f14691b = val$text;
        }

        @Override
        public void run() {
            e.this.f14668F = this.f14691b;
            if (e.this.f14669G != null) {
                e.this.f14669G.setText(this.f14691b);
            }
        }
    }

    public e(int icon, Context context) {
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14673l = Theme.i(bVar);
        this.f14674m = true;
        this.f14675n = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14676o = Theme.i(bVar2);
        this.f14677p = true;
        this.f14678q = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14679r = Theme.i(bVar3);
        this.f14680s = true;
        this.f14681t = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14682u = Theme.i(bVar4);
        this.f14683v = true;
        this.f14684w = bVar4;
        this.f14685x = Theme.i(bVar4);
        this.f14686y = true;
        this.f14687z = bVar4;
        this.f14665C = true;
        this.f14668F = "Text";
        this.f14670i = icon;
        this.f14672k = context;
        this.f14663A = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    private GradientDrawable A(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Drawable mutate = drawable.mutate();
        if (mutate instanceof GradientDrawable) {
            return (GradientDrawable) mutate;
        }
        if (mutate instanceof InsetDrawable) {
            return A(((InsetDrawable) mutate).getDrawable());
        }
        if (mutate instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) mutate;
            for (int i10 = 0; i10 < layerDrawable.getNumberOfLayers(); i10++) {
                GradientDrawable A10 = A(layerDrawable.getDrawable(i10));
                if (A10 != null) {
                    return A10;
                }
            }
        }
        return null;
    }

    private int K(int color, boolean isDirect) {
        if (isDirect) {
            return color;
        }
        Context context = this.f14672k;
        if (context != null) {
            try {
            } catch (Exception unused) {
                return color;
            }
        }
        return context.getResources().getColor(color);
    }

    public void y() {
        z(this.f14682u, this.f14683v);
    }

    public void z(int color, boolean isDirect) {
        if (this.f14664B == null) {
            return;
        }
        int K10 = K(color, isDirect);
        GradientDrawable A10 = A(this.f14664B.getBackground());
        if (A10 != null) {
            A10.setStroke(Nc.b.k0(2.0f), K10);
        }
    }

    public int B() {
        return this.f14679r;
    }

    public int C() {
        return this.f14685x;
    }

    public int D() {
        return this.f14676o;
    }

    public int E() {
        return this.f14663A;
    }

    public f F() {
        return this.f14671j;
    }

    public int G() {
        return this.f14682u;
    }

    public String H() {
        return this.f14668F;
    }

    public boolean I() {
        return this.f14667E;
    }

    public boolean J() {
        return this.f14665C;
    }

    public e L(int clickedColor) {
        this.f14679r = clickedColor;
        this.f14680s = false;
        this.f14681t = null;
        return this;
    }

    public e M(Ac.b clickedColorTag) {
        this.f14681t = clickedColorTag;
        if (clickedColorTag != null) {
            this.f14679r = Theme.i(clickedColorTag);
            this.f14680s = true;
        }
        return this;
    }

    public e N(ColorINT clickedColor) {
        this.f14679r = clickedColor.intColor;
        this.f14680s = true;
        this.f14681t = null;
        return this;
    }

    public e O(int clickedOutlineColor) {
        this.f14685x = clickedOutlineColor;
        this.f14686y = false;
        this.f14687z = null;
        return this;
    }

    public e P(Ac.b clickedOutlineColorTag) {
        this.f14687z = clickedOutlineColorTag;
        if (clickedOutlineColorTag != null) {
            this.f14685x = Theme.i(clickedOutlineColorTag);
            this.f14686y = true;
        }
        return this;
    }

    public e Q(ColorINT clickedOutlineColor) {
        if (clickedOutlineColor != null) {
            this.f14685x = clickedOutlineColor.intColor;
            this.f14686y = true;
            this.f14687z = null;
        }
        return this;
    }

    public e R(int color, boolean isDirect) {
        if (this.f14664B != null) {
            int K10 = K(color, isDirect);
            GradientDrawable A10 = A(this.f14664B.getBackground());
            if (A10 != null) {
                A10.setColor(K10);
            } else if (isDirect) {
                Vc.e.t(this.f14664B, this.f14672k, color);
            } else {
                Vc.e.u(this.f14664B, this.f14672k, color);
            }
            y();
        }
        return this;
    }

    public e S(int defaultColor) {
        this.f14676o = defaultColor;
        this.f14677p = false;
        this.f14678q = null;
        R(defaultColor, false);
        return this;
    }

    public e T(Ac.b defaultColorTag) {
        this.f14678q = defaultColorTag;
        if (defaultColorTag != null) {
            int i10 = Theme.i(defaultColorTag);
            this.f14676o = i10;
            this.f14677p = true;
            R(i10, true);
        }
        return this;
    }

    public e U(ColorINT defaultColor) {
        int i10 = defaultColor.intColor;
        this.f14676o = i10;
        this.f14677p = true;
        this.f14678q = null;
        R(i10, true);
        return this;
    }

    public e V(boolean disableTint) {
        this.f14667E = disableTint;
        Z(this.f14676o, this.f14677p);
        return this;
    }

    public void W(boolean enableTouchAnimation) {
        this.f14665C = enableTouchAnimation;
    }

    public e X(int height) {
        this.f14663A = height;
        return this;
    }

    public e Y(int defaultColor) {
        this.f14673l = defaultColor;
        this.f14674m = false;
        this.f14675n = null;
        Z(defaultColor, false);
        return this;
    }

    public e Z(int color, boolean isDirect) {
        ImageView imageView = this.f14666D;
        if (imageView != null) {
            if (this.f14667E) {
                Vc.e.m(imageView);
            } else if (isDirect) {
                Vc.e.y(imageView, this.f14672k, new ColorINT(color));
            } else {
                Vc.e.x(imageView, this.f14672k, color);
            }
        }
        TextView textView = this.f14669G;
        if (textView != null) {
            if (this.f14667E) {
                textView.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
            } else if (isDirect) {
                textView.setTextColor(color);
            } else {
                textView.setTextColor(K(color, false));
            }
        }
        return this;
    }

    @Override
    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        this.f14672k = context;
        View inflate = layoutInflater.inflate(R.layout.editor_topbar_drop_button, (ViewGroup) null);
        parent.addView(inflate);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = this.f14663A;
        inflate.setLayoutParams(layoutParams);
        TextView textView = (TextView) inflate.findViewById(R.id.textView);
        this.f14669G = textView;
        textView.setText(this.f14668F);
        this.f14664B = inflate.findViewById(R.id.toucharea);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon);
        this.f14666D = imageView;
        Vc.e.V(imageView, this.f14670i, context);
        Z(this.f14673l, this.f14674m);
        inflate.setOnClickListener(new a(context));
        R(this.f14676o, this.f14677p);
        m(inflate);
    }

    public e a0(Ac.b iconColorTag) {
        this.f14675n = iconColorTag;
        if (iconColorTag != null) {
            int i10 = Theme.i(iconColorTag);
            this.f14673l = i10;
            this.f14674m = true;
            Z(i10, true);
        }
        return this;
    }

    public e b0(ColorINT defaultColor) {
        int i10 = defaultColor.intColor;
        this.f14673l = i10;
        this.f14674m = true;
        this.f14675n = null;
        Z(i10, true);
        return this;
    }

    public void c0(File file) {
        ImageView imageView = this.f14666D;
        if (imageView != null) {
            if (file != null) {
                Vc.e.F(imageView, file);
            } else {
                Vc.e.n(imageView, this.f14672k);
            }
        }
    }

    public void d0(f listener) {
        this.f14671j = listener;
    }

    public e e0(int outlineColor) {
        this.f14682u = outlineColor;
        this.f14683v = false;
        this.f14684w = null;
        y();
        return this;
    }

    public e f0(Ac.b outlineColorTag) {
        this.f14684w = outlineColorTag;
        if (outlineColorTag != null) {
            this.f14682u = Theme.i(outlineColorTag);
            this.f14683v = true;
            y();
        }
        return this;
    }

    public e g0(ColorINT outlineColor) {
        if (outlineColor != null) {
            this.f14682u = outlineColor.intColor;
            this.f14683v = true;
            this.f14684w = null;
            y();
        }
        return this;
    }

    public void h0(String text) {
        N7.c.j0(new b(text));
    }

    @Override
    public void k() {
        Ac.b bVar = this.f14678q;
        if (bVar != null) {
            this.f14676o = Theme.i(bVar);
            this.f14677p = true;
        }
        Ac.b bVar2 = this.f14681t;
        if (bVar2 != null) {
            this.f14679r = Theme.i(bVar2);
            this.f14680s = true;
        }
        Ac.b bVar3 = this.f14675n;
        if (bVar3 != null) {
            this.f14673l = Theme.i(bVar3);
            this.f14674m = true;
        }
        Ac.b bVar4 = this.f14684w;
        if (bVar4 != null) {
            this.f14682u = Theme.i(bVar4);
            this.f14683v = true;
        }
        Ac.b bVar5 = this.f14687z;
        if (bVar5 != null) {
            this.f14685x = Theme.i(bVar5);
            this.f14686y = true;
        }
        R(this.f14676o, this.f14677p);
        Z(this.f14673l, this.f14674m);
        y();
    }

    public e(int icon, f listener, Context context) {
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14673l = Theme.i(bVar);
        this.f14674m = true;
        this.f14675n = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14676o = Theme.i(bVar2);
        this.f14677p = true;
        this.f14678q = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14679r = Theme.i(bVar3);
        this.f14680s = true;
        this.f14681t = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14682u = Theme.i(bVar4);
        this.f14683v = true;
        this.f14684w = bVar4;
        this.f14685x = Theme.i(bVar4);
        this.f14686y = true;
        this.f14687z = bVar4;
        this.f14665C = true;
        this.f14668F = "Text";
        this.f14670i = icon;
        this.f14671j = listener;
        this.f14672k = context;
        this.f14663A = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public e(int icon, String text, f listener, Context context) {
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14673l = Theme.i(bVar);
        this.f14674m = true;
        this.f14675n = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14676o = Theme.i(bVar2);
        this.f14677p = true;
        this.f14678q = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14679r = Theme.i(bVar3);
        this.f14680s = true;
        this.f14681t = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14682u = Theme.i(bVar4);
        this.f14683v = true;
        this.f14684w = bVar4;
        this.f14685x = Theme.i(bVar4);
        this.f14686y = true;
        this.f14687z = bVar4;
        this.f14665C = true;
        this.f14670i = icon;
        this.f14668F = text;
        this.f14671j = listener;
        this.f14672k = context;
        this.f14663A = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }
}
