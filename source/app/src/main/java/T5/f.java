package t5;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine2.R;
import org.jaredrummler.colorpicker.ColorPickerView;
import r4.C15147a;
import rc.C15169a;
import yd.C16181m;

public class f extends EditorPanel {

    public static final String f116997j0 = "ColorPicker";

    public FloatingPanelArea f116998X;

    public final j f116999Y;

    public final ColorINT f117000Z;

    public ColorPickerView f117001a0;

    public final ColorINT f117002b0;

    public ImageView f117003c0;

    public View f117004d0;

    public EditText f117005e0;

    public EditText f117006f0;

    public EditText f117007g0;

    public EditText f117008h0;

    public EditText f117009i0;

    public class a implements C15147a.f {

        public final int f117011b;

        public final int f117012c;

        public a(final int val$totalW, final int val$totalH) {
            this.f117011b = val$totalW;
            this.f117012c = val$totalH;
        }

        @Override
        public void a(FloatingPanelArea floatingPanel) {
            f.this.f116998X = floatingPanel;
            floatingPanel.I1(this.f117011b, this.f117012c, FloatingPanelArea.i.Fixed);
            floatingPanel.F1(true);
            floatingPanel.T();
            floatingPanel.M0();
            floatingPanel.O1(true);
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            f.this.f117002b0.intColor = f.this.f117000Z.intColor;
            f fVar = f.this;
            fVar.I1(fVar.f117002b0.intColor, true);
        }
    }

    public class d implements ColorPickerView.c {
        public d() {
        }

        @Override
        public void a(int newColorInt) {
            f.this.I1(newColorInt, false);
        }
    }

    public class e implements View.OnFocusChangeListener {
        public e() {
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            f.this.f117002b0.L(Nc.b.w1(f.this.f117005e0.getText().toString()));
            f fVar = f.this;
            fVar.I1(fVar.f117002b0.intColor, true);
        }
    }

    public class ViewOnFocusChangeListenerC2013f implements View.OnFocusChangeListener {
        public ViewOnFocusChangeListenerC2013f() {
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            f.this.f117002b0.b0(Nc.b.w1(f.this.f117006f0.getText().toString()));
            f fVar = f.this;
            fVar.I1(fVar.f117002b0.intColor, true);
        }
    }

    public class g implements View.OnFocusChangeListener {
        public g() {
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            f.this.f117002b0.U(Nc.b.w1(f.this.f117007g0.getText().toString()));
            f fVar = f.this;
            fVar.I1(fVar.f117002b0.intColor, true);
        }
    }

    public class h implements View.OnFocusChangeListener {
        public h() {
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            f.this.f117002b0.M(Nc.b.w1(f.this.f117008h0.getText().toString()));
            f fVar = f.this;
            fVar.I1(fVar.f117002b0.intColor, true);
        }
    }

    public class i implements View.OnFocusChangeListener {
        public i() {
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            String obj = f.this.f117009i0.getText().toString();
            if (!obj.startsWith(C16181m.f130230g)) {
                obj = C16181m.f130230g + obj;
            }
            f.this.f117002b0.V(obj);
            f fVar = f.this;
            fVar.I1(fVar.f117002b0.intColor, true);
        }
    }

    public interface j {
        void a(ColorINT colorINT);
    }

    public f(ColorINT currentColor, j listener) {
        super(null, "Color Picker");
        this.f117002b0 = new ColorINT();
        super.e1(false);
        this.f117000Z = currentColor == null ? new ColorINT() : currentColor;
        this.f116999Y = listener;
    }

    public static void L1(ColorINT currentColor, View anchor, Context context, C15147a.e anchorSide, j listener) {
        listener.getClass();
        if (currentColor == null) {
            currentColor = new ColorINT();
        }
        if (N7.c.D().x0()) {
            int v10 = N7.c.v(R.dimen.color_picker_width);
            int v11 = N7.c.v(R.dimen.color_picker_height);
            float g10 = N7.c.g(v10);
            float f10 = N7.c.f(v11);
            f fVar = new f(currentColor, listener);
            C15147a.i(anchor, fVar, anchorSide, g10, f10, new a(v10, v11));
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.color_picker_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        this.f117004d0 = inflate;
        ColorPickerView colorPickerView = (ColorPickerView) inflate.findViewById(R.id.colorPicker);
        this.f117001a0 = colorPickerView;
        colorPickerView.setAlphaSliderVisible(true);
        N1();
        M1();
        this.f117002b0.K(this.f117000Z);
        this.f117001a0.setColor(this.f117000Z.intColor);
        K1(this.f117000Z);
        J1(this.f117000Z);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.viewer);
        this.f117003c0 = imageView;
        imageView.setBackgroundColor(this.f117000Z.intColor);
        ((ImageView) inflate.findViewById(R.id.oldviewer)).setBackgroundColor(this.f117000Z.intColor);
        inflate.findViewById(R.id.oldviewer_parent).setOnClickListener(new c());
        this.f117001a0.setOnColorChangedListener(new d());
        return inflate;
    }

    public final boolean D1(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        String obj = this.f117009i0.getText().toString();
        if (!obj.startsWith(C16181m.f130230g)) {
            obj = C16181m.f130230g + obj;
        }
        this.f117002b0.V(obj);
        I1(this.f117002b0.intColor, true);
        return false;
    }

    public final boolean E1(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        this.f117002b0.L(Nc.b.w1(textView.getText().toString()));
        I1(this.f117002b0.intColor, true);
        return false;
    }

    public final boolean F1(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        this.f117002b0.b0(Nc.b.w1(textView.getText().toString()));
        I1(this.f117002b0.intColor, true);
        return false;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.D().s0(this);
    }

    public final boolean G1(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        this.f117002b0.U(Nc.b.w1(textView.getText().toString()));
        I1(this.f117002b0.intColor, true);
        return false;
    }

    public final boolean H1(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        this.f117002b0.M(Nc.b.w1(textView.getText().toString()));
        I1(this.f117002b0.intColor, true);
        return false;
    }

    public final void I1(int newC, boolean changePallet) {
        this.f117002b0.intColor = newC;
        this.f117003c0.setBackgroundColor(newC);
        K1(this.f117002b0);
        J1(this.f117002b0);
        this.f116999Y.a(this.f117002b0.clone());
        if (changePallet) {
            this.f117001a0.setColor(newC);
        }
    }

    public final void J1(ColorINT color) {
        this.f117009i0.setText(color.y());
    }

    @SuppressLint({"SetTextI18n"})
    public final void K1(ColorINT color) {
        this.f117005e0.setText(color.o() + "");
        this.f117006f0.setText(color.C() + "");
        this.f117007g0.setText(color.x() + "");
        this.f117008h0.setText(color.p() + "");
    }

    public final void M1() {
        EditText editText = (EditText) this.f117004d0.findViewById(R.id.hex);
        this.f117009i0 = editText;
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean D12;
                D12 = f.this.D1(textView, i10, keyEvent);
                return D12;
            }
        });
        this.f117009i0.setOnFocusChangeListener(new i());
    }

    public final void N1() {
        this.f117005e0 = (EditText) this.f117004d0.findViewById(R.id.f131501a);
        this.f117006f0 = (EditText) this.f117004d0.findViewById(R.id.f131512r);
        this.f117007g0 = (EditText) this.f117004d0.findViewById(R.id.f131509g);
        this.f117008h0 = (EditText) this.f117004d0.findViewById(R.id.f131502b);
        this.f117005e0.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean E12;
                E12 = f.this.E1(textView, i10, keyEvent);
                return E12;
            }
        });
        this.f117005e0.setOnFocusChangeListener(new e());
        this.f117006f0.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean F12;
                F12 = f.this.F1(textView, i10, keyEvent);
                return F12;
            }
        });
        this.f117006f0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC2013f());
        this.f117007g0.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean G12;
                G12 = f.this.G1(textView, i10, keyEvent);
                return G12;
            }
        });
        this.f117007g0.setOnFocusChangeListener(new g());
        this.f117008h0.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean H12;
                H12 = f.this.H1(textView, i10, keyEvent);
                return H12;
            }
        });
        this.f117008h0.setOnFocusChangeListener(new h());
    }

    @Override
    public void n1() {
        super.n1();
        if (C15169a.q()) {
            N7.c.D().u(this);
        } else {
            N7.c.D().s0(this);
        }
    }
}
