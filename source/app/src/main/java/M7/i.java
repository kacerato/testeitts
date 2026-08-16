package M7;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine2.R;

public class i extends g {

    public static final int f14707E = 2;

    public View f14708A;

    public TextView f14709B;

    public GradientDrawable f14710C;

    public int f14711D;

    public Context f14712i;

    public j f14713j;

    public String f14714k;

    public float f14715l;

    public int f14716m;

    public int f14717n;

    public boolean f14718o;

    public Ac.b f14719p;

    public int f14720q;

    public boolean f14721r;

    public Ac.b f14722s;

    public int f14723t;

    public boolean f14724u;

    public Ac.b f14725v;

    public int f14726w;

    public boolean f14727x;

    public Ac.b f14728y;

    public View f14729z;

    public class a implements View.OnLayoutChangeListener {
        public a() {
        }

        @Override
        public void onLayoutChange(View v10, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            i.this.v();
        }
    }

    public class b implements Runnable {

        public final String f14731b;

        public b(final String val$text) {
            this.f14731b = val$text;
        }

        @Override
        public void run() {
            i.this.f14714k = this.f14731b;
            if (i.this.f14709B != null) {
                i.this.f14709B.setText(this.f14731b);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            i.this.v();
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            i iVar = i.this;
            iVar.f14713j.a(v10, iVar.f14712i, iVar);
        }
    }

    public i(Context context) {
        this.f14714k = "Progress";
        this.f14715l = 0.0f;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14717n = Theme.i(bVar);
        this.f14718o = true;
        this.f14719p = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14720q = Theme.i(bVar2);
        this.f14721r = true;
        this.f14722s = bVar2;
        Ac.b bVar3 = Theme.T.HIGH_TEXT_COLOR;
        this.f14723t = Theme.i(bVar3);
        this.f14724u = true;
        this.f14725v = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14726w = Theme.i(bVar4);
        this.f14727x = true;
        this.f14728y = bVar4;
        this.f14711D = -1;
        this.f14712i = context;
        this.f14716m = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    private int H(int color, boolean isDirect) {
        if (isDirect) {
            return color;
        }
        Context context = this.f14712i;
        if (context != null) {
            try {
            } catch (Exception unused) {
                return color;
            }
        }
        return context.getResources().getColor(color);
    }

    private void u() {
        if (this.f14729z == null) {
            return;
        }
        int H10 = H(this.f14726w, this.f14727x);
        GradientDrawable x10 = x(this.f14729z.getBackground());
        if (x10 != null) {
            x10.setStroke(Nc.b.k0(2.0f), H10);
        }
    }

    private void w() {
        Y(this.f14723t, this.f14724u);
    }

    private GradientDrawable x(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Drawable mutate = drawable.mutate();
        if (mutate instanceof GradientDrawable) {
            return (GradientDrawable) mutate;
        }
        if (mutate instanceof InsetDrawable) {
            return x(((InsetDrawable) mutate).getDrawable());
        }
        if (mutate instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) mutate;
            for (int i10 = 0; i10 < layerDrawable.getNumberOfLayers(); i10++) {
                GradientDrawable x10 = x(layerDrawable.getDrawable(i10));
                if (x10 != null) {
                    return x10;
                }
            }
        }
        return null;
    }

    public j A() {
        return this.f14713j;
    }

    public int B() {
        return this.f14726w;
    }

    public float C() {
        return this.f14715l;
    }

    public int D() {
        return this.f14720q;
    }

    public String E() {
        return this.f14714k;
    }

    public int F() {
        return this.f14723t;
    }

    public float G() {
        return this.f14715l;
    }

    public i I(int color, boolean isDirect) {
        if (this.f14729z != null) {
            int H10 = H(color, isDirect);
            GradientDrawable x10 = x(this.f14729z.getBackground());
            if (x10 != null) {
                x10.setColor(H10);
            }
            u();
        }
        return this;
    }

    public i J(int defaultColor) {
        this.f14717n = defaultColor;
        this.f14718o = false;
        this.f14719p = null;
        I(defaultColor, false);
        return this;
    }

    public i K(Ac.b defaultColorTag) {
        this.f14719p = defaultColorTag;
        if (defaultColorTag != null) {
            int i10 = Theme.i(defaultColorTag);
            this.f14717n = i10;
            this.f14718o = true;
            I(i10, true);
        }
        return this;
    }

    public i L(ColorINT defaultColor) {
        if (defaultColor != null) {
            int i10 = defaultColor.intColor;
            this.f14717n = i10;
            this.f14718o = true;
            this.f14719p = null;
            I(i10, true);
        }
        return this;
    }

    public i M(int height) {
        this.f14716m = height;
        return this;
    }

    public void N(j listener) {
        this.f14713j = listener;
        t();
    }

    public i O(int outlineColor) {
        this.f14726w = outlineColor;
        this.f14727x = false;
        this.f14728y = null;
        u();
        return this;
    }

    public i P(Ac.b outlineColorTag) {
        this.f14728y = outlineColorTag;
        if (outlineColorTag != null) {
            this.f14726w = Theme.i(outlineColorTag);
            this.f14727x = true;
            u();
        }
        return this;
    }

    public i Q(ColorINT outlineColor) {
        if (outlineColor != null) {
            this.f14726w = outlineColor.intColor;
            this.f14727x = true;
            this.f14728y = null;
            u();
        }
        return this;
    }

    public i R(float value) {
        return b0(value);
    }

    public i S(int progressColor) {
        this.f14720q = progressColor;
        this.f14721r = false;
        this.f14722s = null;
        T(progressColor, false);
        return this;
    }

    public i T(int color, boolean isDirect) {
        GradientDrawable gradientDrawable = this.f14710C;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(H(color, isDirect));
        }
        return this;
    }

    public i U(Ac.b progressColorTag) {
        this.f14722s = progressColorTag;
        if (progressColorTag != null) {
            int i10 = Theme.i(progressColorTag);
            this.f14720q = i10;
            this.f14721r = true;
            T(i10, true);
        }
        return this;
    }

    public i V(ColorINT progressColor) {
        if (progressColor != null) {
            int i10 = progressColor.intColor;
            this.f14720q = i10;
            this.f14721r = true;
            this.f14722s = null;
            T(i10, true);
        }
        return this;
    }

    public void W(String text) {
        N7.c.j0(new b(text));
    }

    public i X(int textColor) {
        this.f14723t = textColor;
        this.f14724u = false;
        this.f14725v = null;
        Y(textColor, false);
        return this;
    }

    public i Y(int color, boolean isDirect) {
        TextView textView = this.f14709B;
        if (textView != null) {
            if (isDirect) {
                textView.setTextColor(color);
            } else {
                textView.setTextColor(H(color, false));
            }
        }
        return this;
    }

    public i Z(Ac.b textColorTag) {
        this.f14725v = textColorTag;
        if (textColorTag != null) {
            int i10 = Theme.i(textColorTag);
            this.f14723t = i10;
            this.f14724u = true;
            Y(i10, true);
        }
        return this;
    }

    @Override
    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        this.f14712i = context;
        if (this.f14711D < 0) {
            this.f14711D = Nc.b.k0(2.0f);
        }
        View inflate = layoutInflater.inflate(R.layout.editor_topbar_progress_bar, (ViewGroup) null);
        parent.addView(inflate);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = this.f14716m;
        inflate.setLayoutParams(layoutParams);
        this.f14729z = inflate.findViewById(R.id.toucharea);
        this.f14708A = inflate.findViewById(R.id.progressFill);
        TextView textView = (TextView) inflate.findViewById(R.id.textView);
        this.f14709B = textView;
        textView.setText(this.f14714k);
        t();
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f14710C = gradientDrawable;
        gradientDrawable.setShape(0);
        this.f14710C.setCornerRadius(context.getResources().getDimension(R.dimen.editor3d_v2_topbar_element_corner_radius));
        this.f14708A.setBackground(this.f14710C);
        this.f14729z.addOnLayoutChangeListener(new a());
        I(this.f14717n, this.f14718o);
        T(this.f14720q, this.f14721r);
        w();
        u();
        v();
        m(inflate);
    }

    public i a0(ColorINT textColor) {
        if (textColor != null) {
            int i10 = textColor.intColor;
            this.f14723t = i10;
            this.f14724u = true;
            this.f14725v = null;
            Y(i10, true);
        }
        return this;
    }

    public i b0(float value) {
        this.f14715l = Nc.b.I(value);
        N7.c.j0(new c());
        return this;
    }

    @Override
    public void k() {
        Ac.b bVar = this.f14719p;
        if (bVar != null) {
            this.f14717n = Theme.i(bVar);
            this.f14718o = true;
        }
        Ac.b bVar2 = this.f14722s;
        if (bVar2 != null) {
            this.f14720q = Theme.i(bVar2);
            this.f14721r = true;
        }
        Ac.b bVar3 = this.f14725v;
        if (bVar3 != null) {
            this.f14723t = Theme.i(bVar3);
            this.f14724u = true;
        }
        Ac.b bVar4 = this.f14728y;
        if (bVar4 != null) {
            this.f14726w = Theme.i(bVar4);
            this.f14727x = true;
        }
        I(this.f14717n, this.f14718o);
        T(this.f14720q, this.f14721r);
        w();
        u();
        v();
    }

    public final void t() {
        View view = this.f14729z;
        if (view == null) {
            return;
        }
        if (this.f14713j == null) {
            view.setOnClickListener(null);
            this.f14729z.setClickable(false);
        } else {
            view.setClickable(true);
            this.f14729z.setOnClickListener(new d());
        }
    }

    public final void v() {
        View view = this.f14729z;
        if (view == null || this.f14708A == null) {
            return;
        }
        int width = view.getWidth() - (this.f14711D * 2);
        if (width < 0) {
            width = 0;
        }
        int F10 = Nc.b.F(0, (int) (width * this.f14715l), width);
        ViewGroup.LayoutParams layoutParams = this.f14708A.getLayoutParams();
        if (layoutParams != null && layoutParams.width != F10) {
            layoutParams.width = F10;
            this.f14708A.setLayoutParams(layoutParams);
        }
        this.f14708A.setVisibility(F10 <= 0 ? 4 : 0);
    }

    public int y() {
        return this.f14717n;
    }

    public int z() {
        return this.f14716m;
    }

    public i(String text, Context context) {
        this.f14714k = "Progress";
        this.f14715l = 0.0f;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14717n = Theme.i(bVar);
        this.f14718o = true;
        this.f14719p = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14720q = Theme.i(bVar2);
        this.f14721r = true;
        this.f14722s = bVar2;
        Ac.b bVar3 = Theme.T.HIGH_TEXT_COLOR;
        this.f14723t = Theme.i(bVar3);
        this.f14724u = true;
        this.f14725v = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14726w = Theme.i(bVar4);
        this.f14727x = true;
        this.f14728y = bVar4;
        this.f14711D = -1;
        this.f14714k = text;
        this.f14712i = context;
        this.f14716m = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public i(String text, j listener, Context context) {
        this.f14714k = "Progress";
        this.f14715l = 0.0f;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14717n = Theme.i(bVar);
        this.f14718o = true;
        this.f14719p = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14720q = Theme.i(bVar2);
        this.f14721r = true;
        this.f14722s = bVar2;
        Ac.b bVar3 = Theme.T.HIGH_TEXT_COLOR;
        this.f14723t = Theme.i(bVar3);
        this.f14724u = true;
        this.f14725v = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14726w = Theme.i(bVar4);
        this.f14727x = true;
        this.f14728y = bVar4;
        this.f14711D = -1;
        this.f14714k = text;
        this.f14713j = listener;
        this.f14712i = context;
        this.f14716m = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public i(String text, float value, Context context) {
        this.f14714k = "Progress";
        this.f14715l = 0.0f;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14717n = Theme.i(bVar);
        this.f14718o = true;
        this.f14719p = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14720q = Theme.i(bVar2);
        this.f14721r = true;
        this.f14722s = bVar2;
        Ac.b bVar3 = Theme.T.HIGH_TEXT_COLOR;
        this.f14723t = Theme.i(bVar3);
        this.f14724u = true;
        this.f14725v = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14726w = Theme.i(bVar4);
        this.f14727x = true;
        this.f14728y = bVar4;
        this.f14711D = -1;
        this.f14714k = text;
        this.f14715l = Nc.b.I(value);
        this.f14712i = context;
        this.f14716m = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }

    public i(String text, float value, j listener, Context context) {
        this.f14714k = "Progress";
        this.f14715l = 0.0f;
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        this.f14717n = Theme.i(bVar);
        this.f14718o = true;
        this.f14719p = bVar;
        Ac.b bVar2 = Theme.T.PRIMARY;
        this.f14720q = Theme.i(bVar2);
        this.f14721r = true;
        this.f14722s = bVar2;
        Ac.b bVar3 = Theme.T.HIGH_TEXT_COLOR;
        this.f14723t = Theme.i(bVar3);
        this.f14724u = true;
        this.f14725v = bVar3;
        Ac.b bVar4 = Theme.T.BUTTON_OUTLINE;
        this.f14726w = Theme.i(bVar4);
        this.f14727x = true;
        this.f14728y = bVar4;
        this.f14711D = -1;
        this.f14714k = text;
        this.f14715l = Nc.b.I(value);
        this.f14713j = listener;
        this.f14712i = context;
        this.f14716m = (int) context.getResources().getDimension(R.dimen.editor3d_v2_topbar_height);
    }
}
