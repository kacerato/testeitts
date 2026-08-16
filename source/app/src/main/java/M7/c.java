package M7;

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
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine2.R;
import java.io.File;
import kd.C13965a;
import kd.InterfaceC13966b;

public class c extends g {

    public static final int f14633H = 2;

    public Ac.b f14634A;

    public int f14635B;

    public int f14636C;

    public FrameLayout f14637D;

    public boolean f14638E;

    public ImageView f14639F;

    public boolean f14640G;

    public int f14641i;

    public d f14642j;

    public b f14643k;

    public Context f14644l;

    public int f14645m;

    public boolean f14646n;

    public Ac.b f14647o;

    public int f14648p;

    public boolean f14649q;

    public Ac.b f14650r;

    public int f14651s;

    public boolean f14652t;

    public Ac.b f14653u;

    public int f14654v;

    public boolean f14655w;

    public Ac.b f14656x;

    public int f14657y;

    public boolean f14658z;

    public class a extends AbstractViewOnClickListenerC12733a {

        public final Context f14659b;

        public class C0419a implements InterfaceC13966b {
            public C0419a() {
            }

            @Override
            public void run() {
                c cVar = c.this;
                cVar.R(cVar.f14648p, cVar.f14649q);
                c.this.w();
            }
        }

        public a(final Context val$context) {
            this.f14659b = val$context;
        }

        @Override
        public void click(View v10) {
            if (c.this.f14638E) {
                c cVar = c.this;
                cVar.R(cVar.f14651s, cVar.f14652t);
                c cVar2 = c.this;
                cVar2.x(cVar2.f14657y, cVar2.f14658z);
                new C13965a().a(50, new C0419a());
            }
            c cVar3 = c.this;
            d dVar = cVar3.f14642j;
            if (dVar != null) {
                dVar.onClick(v10, this.f14659b, cVar3);
            }
        }
    }

    public enum b {
        Left,
        Middle,
        Right,
        Top,
        Bottom,
        Disconnected
    }

    public c(int icon, Context context) {
        this.f14643k = b.Disconnected;
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14645m = Theme.i(bVar);
        this.f14646n = true;
        this.f14647o = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14648p = Theme.i(bVar2);
        this.f14649q = true;
        this.f14650r = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14651s = Theme.i(bVar3);
        this.f14652t = true;
        this.f14653u = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14654v = Theme.i(bVar4);
        this.f14655w = true;
        this.f14656x = bVar4;
        this.f14657y = Theme.i(bVar4);
        this.f14658z = true;
        this.f14634A = bVar4;
        this.f14638E = true;
        this.f14641i = icon;
        this.f14644l = context;
        this.f14635B = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f14636C = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    private int K(int color, boolean isDirect) {
        if (isDirect) {
            return color;
        }
        try {
            return this.f14644l.getResources().getColor(color);
        } catch (Exception unused) {
            return color;
        }
    }

    public void w() {
        x(this.f14654v, this.f14655w);
    }

    public void x(int color, boolean isDirect) {
        if (this.f14637D == null) {
            return;
        }
        int K10 = K(color, isDirect);
        GradientDrawable y10 = y(this.f14637D.getBackground());
        if (y10 != null) {
            y10.setStroke(Nc.b.k0(2.0f), K10);
        }
    }

    private GradientDrawable y(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Drawable mutate = drawable.mutate();
        if (mutate instanceof GradientDrawable) {
            return (GradientDrawable) mutate;
        }
        if (mutate instanceof InsetDrawable) {
            return y(((InsetDrawable) mutate).getDrawable());
        }
        if (mutate instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) mutate;
            for (int i10 = 0; i10 < layerDrawable.getNumberOfLayers(); i10++) {
                GradientDrawable y10 = y(layerDrawable.getDrawable(i10));
                if (y10 != null) {
                    return y10;
                }
            }
        }
        return null;
    }

    public int A() {
        return this.f14657y;
    }

    public b B() {
        return this.f14643k;
    }

    public int C() {
        return this.f14648p;
    }

    public ImageView D() {
        return this.f14639F;
    }

    public int E() {
        return this.f14636C;
    }

    public d F() {
        return this.f14642j;
    }

    public int G() {
        return this.f14654v;
    }

    public int H() {
        return this.f14635B;
    }

    public boolean I() {
        return this.f14640G;
    }

    public boolean J() {
        return this.f14638E;
    }

    public c L(int clickedColor) {
        this.f14651s = clickedColor;
        this.f14652t = false;
        this.f14653u = null;
        return this;
    }

    public c M(Ac.b clickedColorTag) {
        this.f14653u = clickedColorTag;
        if (clickedColorTag != null) {
            this.f14651s = Theme.i(clickedColorTag);
            this.f14652t = true;
        }
        return this;
    }

    public c N(ColorINT clickedColor) {
        this.f14651s = clickedColor.intColor;
        this.f14652t = true;
        this.f14653u = null;
        return this;
    }

    public c O(int clickedOutlineColor) {
        this.f14657y = clickedOutlineColor;
        this.f14658z = false;
        this.f14634A = null;
        return this;
    }

    public c P(Ac.b clickedOutlineColorTag) {
        this.f14634A = clickedOutlineColorTag;
        if (clickedOutlineColorTag != null) {
            this.f14657y = Theme.i(clickedOutlineColorTag);
            this.f14658z = true;
        }
        return this;
    }

    public c Q(ColorINT clickedOutlineColor) {
        if (clickedOutlineColor != null) {
            this.f14657y = clickedOutlineColor.intColor;
            this.f14658z = true;
            this.f14634A = null;
        }
        return this;
    }

    public c R(int color, boolean isDirect) {
        if (this.f14637D != null) {
            int K10 = K(color, isDirect);
            GradientDrawable y10 = y(this.f14637D.getBackground());
            if (y10 != null) {
                y10.setColor(K10);
            } else if (isDirect) {
                Vc.e.t(this.f14637D, this.f14644l, color);
            } else {
                Vc.e.u(this.f14637D, this.f14644l, color);
            }
            w();
        }
        return this;
    }

    public c S(b connector) {
        this.f14643k = connector;
        return this;
    }

    public c T(int defaultColor) {
        this.f14648p = defaultColor;
        this.f14649q = false;
        this.f14650r = null;
        R(defaultColor, false);
        return this;
    }

    public c U(Ac.b defaultColorTag) {
        this.f14650r = defaultColorTag;
        if (defaultColorTag != null) {
            int i10 = Theme.i(defaultColorTag);
            this.f14648p = i10;
            this.f14649q = true;
            R(i10, true);
        }
        return this;
    }

    public c V(ColorINT defaultColor) {
        int i10 = defaultColor.intColor;
        this.f14648p = i10;
        this.f14649q = true;
        this.f14650r = null;
        R(i10, true);
        return this;
    }

    public c W(boolean disableTint) {
        this.f14640G = disableTint;
        c0(this.f14648p, this.f14649q);
        return this;
    }

    public void X(boolean enableTouchAnimation) {
        this.f14638E = enableTouchAnimation;
    }

    public c Y(int height) {
        this.f14636C = height;
        return this;
    }

    public c Z(int icon) {
        this.f14641i = icon;
        ImageView imageView = this.f14639F;
        if (imageView != null) {
            h0(imageView);
            c0(this.f14645m, this.f14646n);
        }
        return this;
    }

    @Override
    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        this.f14644l = context;
        int ordinal = this.f14643k.ordinal();
        View view = null;
        if (ordinal == 0) {
            view = layoutInflater.inflate(R.layout.editor_topbar_button_left, (ViewGroup) null);
        } else if (ordinal == 1) {
            view = layoutInflater.inflate(R.layout.editor_topbar_button_middle, (ViewGroup) null);
        } else if (ordinal == 2) {
            view = layoutInflater.inflate(R.layout.editor_topbar_button_right, (ViewGroup) null);
        } else if (ordinal == 3) {
            view = layoutInflater.inflate(R.layout.editor_topbar_button_up, (ViewGroup) null);
        } else if (ordinal == 4) {
            view = layoutInflater.inflate(R.layout.editor_topbar_button_bottom, (ViewGroup) null);
        } else if (ordinal == 5) {
            view = layoutInflater.inflate(R.layout.editor_topbar_button_disconnected, (ViewGroup) null);
        }
        parent.addView(view);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = this.f14635B;
        layoutParams.height = this.f14636C;
        view.setLayoutParams(layoutParams);
        this.f14637D = (FrameLayout) view.findViewById(R.id.toucharea);
        this.f14639F = (ImageView) view.findViewById(R.id.icon);
        int k02 = Nc.b.k0(6.0f);
        this.f14639F.setPadding(k02, k02, k02, k02);
        h0(this.f14639F);
        c0(this.f14645m, this.f14646n);
        view.setOnClickListener(new a(context));
        R(this.f14648p, this.f14649q);
        m(view);
        d dVar = this.f14642j;
        if (dVar != null) {
            dVar.a(this);
        }
    }

    public c a0(File file) {
        ImageView imageView = this.f14639F;
        if (imageView != null) {
            Vc.e.G(imageView, file, this.f14644l);
            c0(this.f14645m, this.f14646n);
        }
        return this;
    }

    public c b0(int defaultColor) {
        this.f14645m = defaultColor;
        this.f14646n = false;
        this.f14647o = null;
        c0(defaultColor, false);
        return this;
    }

    public c c0(int color, boolean isDirect) {
        ImageView imageView = this.f14639F;
        if (imageView != null) {
            if (this.f14640G) {
                Vc.e.m(imageView);
            } else if (isDirect) {
                Vc.e.y(imageView, this.f14644l, new ColorINT(color));
            } else {
                Vc.e.x(imageView, this.f14644l, color);
            }
        }
        return this;
    }

    public c d0(Ac.b iconColorTag) {
        this.f14647o = iconColorTag;
        if (iconColorTag != null) {
            int i10 = Theme.i(iconColorTag);
            this.f14645m = i10;
            this.f14646n = true;
            c0(i10, true);
        }
        return this;
    }

    public c e0(ColorINT defaultColor) {
        int i10 = defaultColor.intColor;
        this.f14645m = i10;
        this.f14646n = true;
        this.f14647o = null;
        c0(i10, true);
        return this;
    }

    public void f0(File file) {
        ImageView imageView = this.f14639F;
        if (imageView != null) {
            if (file != null) {
                Vc.e.F(imageView, file);
            } else {
                Vc.e.n(imageView, this.f14644l);
            }
        }
    }

    public void g0(int dp) {
        int k02 = Nc.b.k0(dp);
        this.f14639F.setPadding(k02, k02, k02, k02);
    }

    public void h0(ImageView imageView) {
        Vc.e.V(imageView, this.f14641i, this.f14644l);
    }

    public void i0(d listener) {
        this.f14642j = listener;
    }

    public c j0(int outlineColor) {
        this.f14654v = outlineColor;
        this.f14655w = false;
        this.f14656x = null;
        w();
        return this;
    }

    @Override
    public void k() {
        Ac.b bVar = this.f14650r;
        if (bVar != null) {
            this.f14648p = Theme.i(bVar);
            this.f14649q = true;
        }
        Ac.b bVar2 = this.f14653u;
        if (bVar2 != null) {
            this.f14651s = Theme.i(bVar2);
            this.f14652t = true;
        }
        Ac.b bVar3 = this.f14647o;
        if (bVar3 != null) {
            this.f14645m = Theme.i(bVar3);
            this.f14646n = true;
        }
        Ac.b bVar4 = this.f14656x;
        if (bVar4 != null) {
            this.f14654v = Theme.i(bVar4);
            this.f14655w = true;
        }
        Ac.b bVar5 = this.f14634A;
        if (bVar5 != null) {
            this.f14657y = Theme.i(bVar5);
            this.f14658z = true;
        }
        R(this.f14648p, this.f14649q);
        c0(this.f14645m, this.f14646n);
        w();
    }

    public c k0(Ac.b outlineColorTag) {
        this.f14656x = outlineColorTag;
        if (outlineColorTag != null) {
            this.f14654v = Theme.i(outlineColorTag);
            this.f14655w = true;
            w();
        }
        return this;
    }

    public c l0(ColorINT outlineColor) {
        if (outlineColor != null) {
            this.f14654v = outlineColor.intColor;
            this.f14655w = true;
            this.f14656x = null;
            w();
        }
        return this;
    }

    public c m0(int width) {
        this.f14635B = width;
        return this;
    }

    public int z() {
        return this.f14651s;
    }

    public c(int icon, b connector, Context context) {
        this.f14643k = b.Disconnected;
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14645m = Theme.i(bVar);
        this.f14646n = true;
        this.f14647o = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14648p = Theme.i(bVar2);
        this.f14649q = true;
        this.f14650r = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14651s = Theme.i(bVar3);
        this.f14652t = true;
        this.f14653u = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14654v = Theme.i(bVar4);
        this.f14655w = true;
        this.f14656x = bVar4;
        this.f14657y = Theme.i(bVar4);
        this.f14658z = true;
        this.f14634A = bVar4;
        this.f14638E = true;
        this.f14641i = icon;
        this.f14643k = connector;
        this.f14644l = context;
        this.f14635B = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f14636C = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public c(int icon, d listener, Context context) {
        this.f14643k = b.Disconnected;
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14645m = Theme.i(bVar);
        this.f14646n = true;
        this.f14647o = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14648p = Theme.i(bVar2);
        this.f14649q = true;
        this.f14650r = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14651s = Theme.i(bVar3);
        this.f14652t = true;
        this.f14653u = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14654v = Theme.i(bVar4);
        this.f14655w = true;
        this.f14656x = bVar4;
        this.f14657y = Theme.i(bVar4);
        this.f14658z = true;
        this.f14634A = bVar4;
        this.f14638E = true;
        this.f14641i = icon;
        this.f14642j = listener;
        this.f14644l = context;
        this.f14635B = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f14636C = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public c(int icon, d listener, b connector, Context context) {
        this.f14643k = b.Disconnected;
        Ac.b bVar = Theme.T.HIGH_ICON_TINT;
        this.f14645m = Theme.i(bVar);
        this.f14646n = true;
        this.f14647o = bVar;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        this.f14648p = Theme.i(bVar2);
        this.f14649q = true;
        this.f14650r = bVar2;
        Ac.b bVar3 = Theme.T.PRIMARY;
        this.f14651s = Theme.i(bVar3);
        this.f14652t = true;
        this.f14653u = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14654v = Theme.i(bVar4);
        this.f14655w = true;
        this.f14656x = bVar4;
        this.f14657y = Theme.i(bVar4);
        this.f14658z = true;
        this.f14634A = bVar4;
        this.f14638E = true;
        this.f14641i = icon;
        this.f14642j = listener;
        this.f14643k = connector;
        this.f14644l = context;
        this.f14635B = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
        this.f14636C = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }
}
