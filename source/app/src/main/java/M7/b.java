package M7;

import M7.c;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine2.R;
import kd.C13965a;
import kd.InterfaceC13966b;

public class b extends g {

    public static final int f14601J = 2;

    public FrameLayout f14602A;

    public int f14603B;

    public boolean f14604C;

    public Ac.b f14605D;

    public TextView f14606E;

    public ImageView f14607F;

    public String f14608G;

    public boolean f14609H;

    public boolean f14610I;

    public M7.a f14611i;

    public c.b f14612j;

    public Context f14613k;

    public int f14614l;

    public boolean f14615m;

    public Ac.b f14616n;

    public int f14617o;

    public boolean f14618p;

    public Ac.b f14619q;

    public int f14620r;

    public boolean f14621s;

    public Ac.b f14622t;

    public int f14623u;

    public int f14624v;

    public int f14625w;

    public int f14626x;

    public boolean f14627y;

    public Ac.b f14628z;

    public class a implements View.OnClickListener {

        public final Context f14629b;

        public class C0417a implements InterfaceC13966b {
            public C0417a() {
            }

            @Override
            public void run() {
                b bVar = b.this;
                bVar.L(bVar.f14614l, bVar.f14615m);
            }
        }

        public a(final Context val$context) {
            this.f14629b = val$context;
        }

        @Override
        public void onClick(View v10) {
            if (b.this.f14609H) {
                b bVar = b.this;
                bVar.L(bVar.f14617o, bVar.f14618p);
                new C13965a().a(50, new C0417a());
            }
            b bVar2 = b.this;
            M7.a aVar = bVar2.f14611i;
            if (aVar != null) {
                aVar.a(v10, this.f14629b, bVar2);
            }
        }
    }

    public static class C0418b {

        public static final int[] f14632a;

        static {
            int[] iArr = new int[c.b.values().length];
            f14632a = iArr;
            try {
                iArr[c.b.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14632a[c.b.Middle.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14632a[c.b.Right.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14632a[c.b.Top.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14632a[c.b.Bottom.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14632a[c.b.Disconnected.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public b(int icon, Context context) {
        this.f14612j = c.b.Disconnected;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14614l = Theme.i(bVar);
        this.f14615m = true;
        this.f14616n = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14617o = Theme.i(bVar2);
        this.f14618p = true;
        this.f14619q = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14620r = Theme.i(bVar3);
        this.f14621s = true;
        this.f14622t = bVar3;
        Ac.b bVar4 = Theme.T.HIGH_ICON_TINT;
        this.f14626x = Theme.i(bVar4);
        this.f14627y = true;
        this.f14628z = bVar4;
        this.f14603B = Theme.i(bVar2);
        this.f14604C = true;
        this.f14605D = bVar2;
        this.f14608G = "";
        this.f14609H = true;
        this.f14625w = icon;
        this.f14613k = context;
        this.f14623u = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f14624v = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public M7.a A() {
        return this.f14611i;
    }

    public int B() {
        return this.f14620r;
    }

    public String C() {
        return this.f14608G;
    }

    public int D() {
        return this.f14603B;
    }

    public int E() {
        return this.f14623u;
    }

    public boolean F() {
        return this.f14609H;
    }

    public final int G(int color, boolean isDirect) {
        if (isDirect) {
            return color;
        }
        Context context = this.f14613k;
        if (context != null) {
            try {
            } catch (Exception unused) {
                return color;
            }
        }
        return context.getResources().getColor(color);
    }

    public b H(int clickedColor) {
        this.f14617o = clickedColor;
        this.f14618p = false;
        this.f14619q = null;
        return this;
    }

    public b I(Ac.b clickedColorTag) {
        this.f14619q = clickedColorTag;
        if (clickedColorTag != null) {
            this.f14617o = Theme.i(clickedColorTag);
            this.f14618p = true;
        }
        return this;
    }

    public b J(ColorINT clickedColor) {
        if (clickedColor != null) {
            this.f14617o = clickedColor.intColor;
            this.f14618p = true;
            this.f14619q = null;
        }
        return this;
    }

    public b K(int color) {
        return L(color, false);
    }

    public b L(int color, boolean isDirect) {
        if (this.f14602A != null) {
            int G10 = G(color, isDirect);
            GradientDrawable v10 = v(this.f14602A.getBackground());
            if (v10 != null) {
                v10.setColor(G10);
            } else if (isDirect) {
                Vc.e.t(this.f14602A, this.f14613k, color);
            } else {
                Vc.e.u(this.f14602A, this.f14613k, color);
            }
            t();
        }
        return this;
    }

    public b M(Ac.b tag) {
        return tag != null ? L(Theme.i(tag), true) : this;
    }

    public b N(ColorINT color) {
        return color != null ? L(color.intColor, true) : this;
    }

    public b O(c.b connector) {
        this.f14612j = connector;
        return this;
    }

    public b P(int defaultColor) {
        this.f14614l = defaultColor;
        this.f14615m = false;
        this.f14616n = null;
        L(defaultColor, false);
        return this;
    }

    public b Q(Ac.b defaultColorTag) {
        this.f14616n = defaultColorTag;
        if (defaultColorTag != null) {
            int i10 = Theme.i(defaultColorTag);
            this.f14614l = i10;
            this.f14615m = true;
            L(i10, true);
        }
        return this;
    }

    public b R(ColorINT defaultColor) {
        if (defaultColor != null) {
            int i10 = defaultColor.intColor;
            this.f14614l = i10;
            this.f14615m = true;
            this.f14616n = null;
            L(i10, true);
        }
        return this;
    }

    public void S(boolean enableTouchAnimation) {
        this.f14609H = enableTouchAnimation;
    }

    public b T(int height) {
        this.f14624v = height;
        return this;
    }

    public b U(int color) {
        this.f14626x = color;
        this.f14627y = false;
        this.f14628z = null;
        V(color, false);
        return this;
    }

    public b V(int color, boolean isDirect) {
        ImageView imageView = this.f14607F;
        if (imageView != null) {
            if (this.f14610I) {
                Vc.e.m(imageView);
            } else if (isDirect) {
                Vc.e.y(imageView, this.f14613k, new ColorINT(color));
            } else {
                Vc.e.x(imageView, this.f14613k, color);
            }
        }
        return this;
    }

    public b W(Ac.b iconColorTag) {
        this.f14628z = iconColorTag;
        if (iconColorTag != null) {
            int i10 = Theme.i(iconColorTag);
            this.f14626x = i10;
            this.f14627y = true;
            V(i10, true);
        }
        return this;
    }

    public b X(ColorINT color) {
        if (color != null) {
            int i10 = color.intColor;
            this.f14626x = i10;
            this.f14627y = true;
            this.f14628z = null;
            V(i10, true);
        }
        return this;
    }

    public void Y(M7.a listener) {
        this.f14611i = listener;
    }

    public b Z(int outlineColor) {
        this.f14620r = outlineColor;
        this.f14621s = false;
        this.f14622t = null;
        t();
        return this;
    }

    @Override
    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        this.f14613k = context;
        View view = null;
        switch (C0418b.f14632a[this.f14612j.ordinal()]) {
            case 1:
                view = layoutInflater.inflate(R.layout.editor_topbar_stbutton_left, (ViewGroup) null);
                break;
            case 2:
                view = layoutInflater.inflate(R.layout.editor_topbar_stbutton_middle, (ViewGroup) null);
                break;
            case 3:
                view = layoutInflater.inflate(R.layout.editor_topbar_stbutton_right, (ViewGroup) null);
                break;
            case 4:
                view = layoutInflater.inflate(R.layout.editor_topbar_stbutton_up, (ViewGroup) null);
                break;
            case 5:
                view = layoutInflater.inflate(R.layout.editor_topbar_stbutton_bottom, (ViewGroup) null);
                break;
            case 6:
                view = layoutInflater.inflate(R.layout.editor_topbar_stbutton_disconnected, (ViewGroup) null);
                break;
        }
        parent.addView(view);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = this.f14623u;
        layoutParams.height = this.f14624v;
        view.setLayoutParams(layoutParams);
        this.f14602A = (FrameLayout) view.findViewById(R.id.toucharea);
        TextView textView = (TextView) view.findViewById(R.id.text);
        this.f14606E = textView;
        textView.setText(this.f14608G);
        u();
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        this.f14607F = imageView;
        Vc.e.V(imageView, this.f14625w, context);
        V(this.f14626x, this.f14627y);
        view.setOnClickListener(new a(context));
        L(this.f14614l, this.f14615m);
        m(view);
    }

    public b a0(Ac.b outlineColorTag) {
        this.f14622t = outlineColorTag;
        if (outlineColorTag != null) {
            this.f14620r = Theme.i(outlineColorTag);
            this.f14621s = true;
            t();
        }
        return this;
    }

    public b b0(ColorINT outlineColor) {
        if (outlineColor != null) {
            this.f14620r = outlineColor.intColor;
            this.f14621s = true;
            this.f14622t = null;
            t();
        }
        return this;
    }

    public void c0(String text) {
        TextView textView = this.f14606E;
        if (textView != null) {
            textView.setText(text);
        }
        this.f14608G = text;
    }

    public void d0(int textColor) {
        this.f14603B = textColor;
        this.f14604C = false;
        this.f14605D = null;
        u();
    }

    public void e0(Ac.b textColorTag) {
        this.f14605D = textColorTag;
        if (textColorTag != null) {
            this.f14603B = Theme.i(textColorTag);
            this.f14604C = true;
            u();
        }
    }

    public void f0(ColorINT textColor) {
        if (textColor != null) {
            this.f14603B = textColor.intColor;
            this.f14604C = true;
            this.f14605D = null;
            u();
        }
    }

    public b g0(int width) {
        this.f14623u = width;
        return this;
    }

    @Override
    public void k() {
        Ac.b bVar = this.f14616n;
        if (bVar != null) {
            this.f14614l = Theme.i(bVar);
            this.f14615m = true;
        }
        Ac.b bVar2 = this.f14619q;
        if (bVar2 != null) {
            this.f14617o = Theme.i(bVar2);
            this.f14618p = true;
        }
        Ac.b bVar3 = this.f14628z;
        if (bVar3 != null) {
            this.f14626x = Theme.i(bVar3);
            this.f14627y = true;
        }
        Ac.b bVar4 = this.f14605D;
        if (bVar4 != null) {
            this.f14603B = Theme.i(bVar4);
            this.f14604C = true;
        }
        Ac.b bVar5 = this.f14622t;
        if (bVar5 != null) {
            this.f14620r = Theme.i(bVar5);
            this.f14621s = true;
        }
        L(this.f14614l, this.f14615m);
        V(this.f14626x, this.f14627y);
        u();
        t();
    }

    public final void t() {
        if (this.f14602A == null) {
            return;
        }
        int G10 = G(this.f14620r, this.f14621s);
        GradientDrawable v10 = v(this.f14602A.getBackground());
        if (v10 != null) {
            v10.setStroke(Nc.b.k0(2.0f), G10);
        }
    }

    public final void u() {
        TextView textView = this.f14606E;
        if (textView != null) {
            if (this.f14604C) {
                textView.setTextColor(this.f14603B);
            } else {
                textView.setTextColor(G(this.f14603B, false));
            }
        }
    }

    public final GradientDrawable v(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Drawable mutate = drawable.mutate();
        if (mutate instanceof GradientDrawable) {
            return (GradientDrawable) mutate;
        }
        if (mutate instanceof InsetDrawable) {
            return v(((InsetDrawable) mutate).getDrawable());
        }
        if (mutate instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) mutate;
            for (int i10 = 0; i10 < layerDrawable.getNumberOfLayers(); i10++) {
                GradientDrawable v10 = v(layerDrawable.getDrawable(i10));
                if (v10 != null) {
                    return v10;
                }
            }
        }
        return null;
    }

    public int w() {
        return this.f14617o;
    }

    public c.b x() {
        return this.f14612j;
    }

    public int y() {
        return this.f14614l;
    }

    public int z() {
        return this.f14624v;
    }

    public b(int icon, c.b connector, Context context) {
        this.f14612j = c.b.Disconnected;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14614l = Theme.i(bVar);
        this.f14615m = true;
        this.f14616n = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14617o = Theme.i(bVar2);
        this.f14618p = true;
        this.f14619q = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14620r = Theme.i(bVar3);
        this.f14621s = true;
        this.f14622t = bVar3;
        Ac.b bVar4 = Theme.T.HIGH_ICON_TINT;
        this.f14626x = Theme.i(bVar4);
        this.f14627y = true;
        this.f14628z = bVar4;
        this.f14603B = Theme.i(bVar2);
        this.f14604C = true;
        this.f14605D = bVar2;
        this.f14608G = "";
        this.f14609H = true;
        this.f14625w = icon;
        this.f14612j = connector;
        this.f14613k = context;
        this.f14623u = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f14624v = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public b(int icon, M7.a listener, Context context) {
        this.f14612j = c.b.Disconnected;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14614l = Theme.i(bVar);
        this.f14615m = true;
        this.f14616n = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14617o = Theme.i(bVar2);
        this.f14618p = true;
        this.f14619q = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14620r = Theme.i(bVar3);
        this.f14621s = true;
        this.f14622t = bVar3;
        Ac.b bVar4 = Theme.T.HIGH_ICON_TINT;
        this.f14626x = Theme.i(bVar4);
        this.f14627y = true;
        this.f14628z = bVar4;
        this.f14603B = Theme.i(bVar2);
        this.f14604C = true;
        this.f14605D = bVar2;
        this.f14608G = "";
        this.f14609H = true;
        this.f14625w = icon;
        this.f14611i = listener;
        this.f14613k = context;
        this.f14623u = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f14624v = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public b(int icon, M7.a listener, c.b connector, Context context) {
        this.f14612j = c.b.Disconnected;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14614l = Theme.i(bVar);
        this.f14615m = true;
        this.f14616n = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14617o = Theme.i(bVar2);
        this.f14618p = true;
        this.f14619q = bVar2;
        Ac.b bVar3 = Theme.T.BUTTON_OUTLINE;
        this.f14620r = Theme.i(bVar3);
        this.f14621s = true;
        this.f14622t = bVar3;
        Ac.b bVar4 = Theme.T.HIGH_ICON_TINT;
        this.f14626x = Theme.i(bVar4);
        this.f14627y = true;
        this.f14628z = bVar4;
        this.f14603B = Theme.i(bVar2);
        this.f14604C = true;
        this.f14605D = bVar2;
        this.f14608G = "";
        this.f14609H = true;
        this.f14625w = icon;
        this.f14611i = listener;
        this.f14612j = connector;
        this.f14613k = context;
        this.f14623u = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f14624v = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }
}
