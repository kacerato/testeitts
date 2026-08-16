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

public class m extends g {

    public static final int f14741H = 2;

    public int f14742A;

    public View f14743B;

    public boolean f14744C;

    public ImageView f14745D;

    public boolean f14746E;

    public String f14747F;

    public TextView f14748G;

    public int f14749i;

    public n f14750j;

    public Context f14751k;

    public int f14752l;

    public boolean f14753m;

    public Ac.b f14754n;

    public int f14755o;

    public boolean f14756p;

    public Ac.b f14757q;

    public int f14758r;

    public boolean f14759s;

    public Ac.b f14760t;

    public int f14761u;

    public boolean f14762v;

    public Ac.b f14763w;

    public int f14764x;

    public boolean f14765y;

    public Ac.b f14766z;

    public class a implements View.OnClickListener {

        public final Context f14767b;

        public class C0421a implements InterfaceC13966b {
            public C0421a() {
            }

            @Override
            public void run() {
                m mVar = m.this;
                mVar.R(mVar.f14755o, mVar.f14756p);
                m.this.y();
            }
        }

        public a(final Context val$context) {
            this.f14767b = val$context;
        }

        @Override
        public void onClick(View v10) {
            N7.c.Y();
            if (m.this.f14744C) {
                m mVar = m.this;
                mVar.R(mVar.f14758r, mVar.f14759s);
                m mVar2 = m.this;
                mVar2.z(mVar2.f14764x, mVar2.f14765y);
                new C13965a().a(50, new C0421a());
            }
            m mVar3 = m.this;
            n nVar = mVar3.f14750j;
            if (nVar != null) {
                nVar.a(v10, this.f14767b, mVar3);
            }
        }
    }

    public class b implements Runnable {

        public final String f14770b;

        public b(final String val$text) {
            this.f14770b = val$text;
        }

        @Override
        public void run() {
            m.this.f14747F = this.f14770b;
            if (m.this.f14748G != null) {
                m.this.f14748G.setText(this.f14770b);
            }
        }
    }

    public m(int icon, Context context) {
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14752l = Theme.i(bVar);
        this.f14753m = true;
        this.f14754n = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14755o = Theme.i(bVar2);
        this.f14756p = true;
        this.f14757q = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14758r = Theme.i(bVar3);
        this.f14759s = true;
        this.f14760t = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14761u = Theme.i(bVar4);
        this.f14762v = true;
        this.f14763w = bVar4;
        this.f14764x = Theme.i(bVar4);
        this.f14765y = true;
        this.f14766z = bVar4;
        this.f14744C = true;
        this.f14747F = "Text";
        this.f14749i = icon;
        this.f14751k = context;
        this.f14742A = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
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
        Context context = this.f14751k;
        if (context != null) {
            try {
            } catch (Exception unused) {
                return color;
            }
        }
        return context.getResources().getColor(color);
    }

    public void y() {
        z(this.f14761u, this.f14762v);
    }

    public void z(int color, boolean isDirect) {
        if (this.f14743B == null) {
            return;
        }
        int K10 = K(color, isDirect);
        GradientDrawable A10 = A(this.f14743B.getBackground());
        if (A10 != null) {
            A10.setStroke(Nc.b.k0(2.0f), K10);
        }
    }

    public int B() {
        return this.f14758r;
    }

    public int C() {
        return this.f14764x;
    }

    public int D() {
        return this.f14755o;
    }

    public int E() {
        return this.f14742A;
    }

    public n F() {
        return this.f14750j;
    }

    public int G() {
        return this.f14761u;
    }

    public String H() {
        return this.f14747F;
    }

    public boolean I() {
        return this.f14746E;
    }

    public boolean J() {
        return this.f14744C;
    }

    public m L(int clickedColor) {
        this.f14758r = clickedColor;
        this.f14759s = false;
        this.f14760t = null;
        return this;
    }

    public m M(Ac.b clickedColorTag) {
        this.f14760t = clickedColorTag;
        if (clickedColorTag != null) {
            this.f14758r = Theme.i(clickedColorTag);
            this.f14759s = true;
        }
        return this;
    }

    public m N(ColorINT clickedColor) {
        this.f14758r = clickedColor.intColor;
        this.f14759s = true;
        this.f14760t = null;
        return this;
    }

    public m O(int clickedOutlineColor) {
        this.f14764x = clickedOutlineColor;
        this.f14765y = false;
        this.f14766z = null;
        return this;
    }

    public m P(Ac.b clickedOutlineColorTag) {
        this.f14766z = clickedOutlineColorTag;
        if (clickedOutlineColorTag != null) {
            this.f14764x = Theme.i(clickedOutlineColorTag);
            this.f14765y = true;
        }
        return this;
    }

    public m Q(ColorINT clickedOutlineColor) {
        if (clickedOutlineColor != null) {
            this.f14764x = clickedOutlineColor.intColor;
            this.f14765y = true;
            this.f14766z = null;
        }
        return this;
    }

    public m R(int color, boolean isDirect) {
        if (this.f14743B != null) {
            int K10 = K(color, isDirect);
            GradientDrawable A10 = A(this.f14743B.getBackground());
            if (A10 != null) {
                A10.setColor(K10);
            } else if (isDirect) {
                Vc.e.t(this.f14743B, this.f14751k, color);
            } else {
                Vc.e.u(this.f14743B, this.f14751k, color);
            }
            y();
        }
        return this;
    }

    public m S(int defaultColor) {
        this.f14755o = defaultColor;
        this.f14756p = false;
        this.f14757q = null;
        R(defaultColor, false);
        return this;
    }

    public m T(Ac.b defaultColorTag) {
        this.f14757q = defaultColorTag;
        if (defaultColorTag != null) {
            int i10 = Theme.i(defaultColorTag);
            this.f14755o = i10;
            this.f14756p = true;
            R(i10, true);
        }
        return this;
    }

    public m U(ColorINT defaultColor) {
        int i10 = defaultColor.intColor;
        this.f14755o = i10;
        this.f14756p = true;
        this.f14757q = null;
        R(i10, true);
        return this;
    }

    public m V(boolean disableTint) {
        this.f14746E = disableTint;
        Z(this.f14755o, this.f14756p);
        return this;
    }

    public void W(boolean enableTouchAnimation) {
        this.f14744C = enableTouchAnimation;
    }

    public m X(int height) {
        this.f14742A = height;
        return this;
    }

    public m Y(int defaultColor) {
        this.f14752l = defaultColor;
        this.f14753m = false;
        this.f14754n = null;
        Z(defaultColor, false);
        return this;
    }

    public m Z(int color, boolean isDirect) {
        ImageView imageView = this.f14745D;
        if (imageView != null) {
            if (this.f14746E) {
                Vc.e.m(imageView);
            } else if (isDirect) {
                Vc.e.y(imageView, this.f14751k, new ColorINT(color));
            } else {
                Vc.e.x(imageView, this.f14751k, color);
            }
        }
        TextView textView = this.f14748G;
        if (textView != null) {
            if (this.f14746E) {
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
        this.f14751k = context;
        View inflate = layoutInflater.inflate(R.layout.editor_topbar_text_button, (ViewGroup) null);
        parent.addView(inflate);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = this.f14742A;
        inflate.setLayoutParams(layoutParams);
        TextView textView = (TextView) inflate.findViewById(R.id.textView);
        this.f14748G = textView;
        textView.setText(this.f14747F);
        this.f14743B = inflate.findViewById(R.id.toucharea);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon);
        this.f14745D = imageView;
        Vc.e.V(imageView, this.f14749i, context);
        Z(this.f14752l, this.f14753m);
        inflate.setOnClickListener(new a(context));
        R(this.f14755o, this.f14756p);
        m(inflate);
    }

    public m a0(Ac.b iconColorTag) {
        this.f14754n = iconColorTag;
        if (iconColorTag != null) {
            int i10 = Theme.i(iconColorTag);
            this.f14752l = i10;
            this.f14753m = true;
            Z(i10, true);
        }
        return this;
    }

    public m b0(ColorINT defaultColor) {
        int i10 = defaultColor.intColor;
        this.f14752l = i10;
        this.f14753m = true;
        this.f14754n = null;
        Z(i10, true);
        return this;
    }

    public void c0(File file) {
        ImageView imageView = this.f14745D;
        if (imageView != null) {
            if (file != null) {
                Vc.e.F(imageView, file);
            } else {
                Vc.e.n(imageView, this.f14751k);
            }
        }
    }

    public void d0(n listener) {
        this.f14750j = listener;
    }

    public m e0(int outlineColor) {
        this.f14761u = outlineColor;
        this.f14762v = false;
        this.f14763w = null;
        y();
        return this;
    }

    public m f0(Ac.b outlineColorTag) {
        this.f14763w = outlineColorTag;
        if (outlineColorTag != null) {
            this.f14761u = Theme.i(outlineColorTag);
            this.f14762v = true;
            y();
        }
        return this;
    }

    public m g0(ColorINT outlineColor) {
        if (outlineColor != null) {
            this.f14761u = outlineColor.intColor;
            this.f14762v = true;
            this.f14763w = null;
            y();
        }
        return this;
    }

    public void h0(String text) {
        N7.c.j0(new b(text));
    }

    @Override
    public void k() {
        Ac.b bVar = this.f14757q;
        if (bVar != null) {
            this.f14755o = Theme.i(bVar);
            this.f14756p = true;
        }
        Ac.b bVar2 = this.f14760t;
        if (bVar2 != null) {
            this.f14758r = Theme.i(bVar2);
            this.f14759s = true;
        }
        Ac.b bVar3 = this.f14754n;
        if (bVar3 != null) {
            this.f14752l = Theme.i(bVar3);
            this.f14753m = true;
        }
        Ac.b bVar4 = this.f14763w;
        if (bVar4 != null) {
            this.f14761u = Theme.i(bVar4);
            this.f14762v = true;
        }
        Ac.b bVar5 = this.f14766z;
        if (bVar5 != null) {
            this.f14764x = Theme.i(bVar5);
            this.f14765y = true;
        }
        R(this.f14755o, this.f14756p);
        Z(this.f14752l, this.f14753m);
        y();
    }

    public m(int icon, n listener, Context context) {
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14752l = Theme.i(bVar);
        this.f14753m = true;
        this.f14754n = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14755o = Theme.i(bVar2);
        this.f14756p = true;
        this.f14757q = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14758r = Theme.i(bVar3);
        this.f14759s = true;
        this.f14760t = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14761u = Theme.i(bVar4);
        this.f14762v = true;
        this.f14763w = bVar4;
        this.f14764x = Theme.i(bVar4);
        this.f14765y = true;
        this.f14766z = bVar4;
        this.f14744C = true;
        this.f14747F = "Text";
        this.f14749i = icon;
        this.f14750j = listener;
        this.f14751k = context;
        this.f14742A = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public m(int icon, String text, n listener, Context context) {
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14752l = Theme.i(bVar);
        this.f14753m = true;
        this.f14754n = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14755o = Theme.i(bVar2);
        this.f14756p = true;
        this.f14757q = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14758r = Theme.i(bVar3);
        this.f14759s = true;
        this.f14760t = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14761u = Theme.i(bVar4);
        this.f14762v = true;
        this.f14763w = bVar4;
        this.f14764x = Theme.i(bVar4);
        this.f14765y = true;
        this.f14766z = bVar4;
        this.f14744C = true;
        this.f14749i = icon;
        this.f14747F = text;
        this.f14750j = listener;
        this.f14751k = context;
        this.f14742A = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }
}
