package E5;

import D5.l;
import H5.a;
import N7.c;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.F;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import v3.j;
import v3.k;

public class f {

    public boolean f5585a = false;

    public Context f5586b;

    public H5.a f5587c;

    public C5.b f5588d;

    public View f5589e;

    public View f5590f;

    public String f5591g;

    public class a extends AbstractViewOnClickListenerC12733a {

        public final C5.b f5592b;

        public final Context f5593c;

        public final View f5594d;

        public final TextView f5595e;

        public final i f5596f;

        public a(final C5.b val$entry, final Context val$context, final View val$inputField, final TextView val$tittle, final i val$listener) {
            this.f5592b = val$entry;
            this.f5593c = val$context;
            this.f5594d = val$inputField;
            this.f5595e = val$tittle;
            this.f5596f = val$listener;
        }

        @Override
        public void click(View v10) {
            f.this.f(this.f5592b, this.f5593c, this.f5594d, this.f5595e, this.f5596f);
        }
    }

    public class b implements View.OnLongClickListener {

        public final C5.b f5598b;

        public final Context f5599c;

        public final View f5600d;

        public final TextView f5601e;

        public final i f5602f;

        public b(final C5.b val$entry, final Context val$context, final View val$inputField, final TextView val$tittle, final i val$listener) {
            this.f5598b = val$entry;
            this.f5599c = val$context;
            this.f5600d = val$inputField;
            this.f5601e = val$tittle;
            this.f5602f = val$listener;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            f.this.f(this.f5598b, this.f5599c, this.f5600d, this.f5601e, this.f5602f);
            return true;
        }
    }

    public class c implements j {

        public final C5.b f5604a;

        public final View f5605b;

        public c(final C5.b val$entry, final View val$inputField) {
            this.f5604a = val$entry;
            this.f5605b = val$inputField;
        }

        @Override
        public void a(Activity activity, k repeater) {
            try {
                f.this.h(this.f5604a, this.f5605b);
            } catch (Exception unused) {
                N7.c.I().b(repeater);
            }
            try {
                if (this.f5604a.i()) {
                    N7.c.I().b(repeater);
                } else if (W7.b.f27309i.f31909a.f31910a == null) {
                    N7.c.I().b(repeater);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                N7.c.I().b(repeater);
            }
        }
    }

    public class d implements D5.f {

        public final C5.b f5607a;

        public final View f5608b;

        public d(final C5.b val$entry, final View val$inputField) {
            this.f5607a = val$entry;
            this.f5608b = val$inputField;
        }

        @Override
        public void a() {
            Variable variable = this.f5607a.f2067b.get();
            F.d(variable != null ? variable.toString() : "", this.f5608b);
        }
    }

    public class e implements TextView.OnEditorActionListener {

        public final i f5610b;

        public final C5.b f5611c;

        public final TextInputEditText f5612d;

        public e(final i val$listener, final C5.b val$entry, final TextInputEditText val$tiet) {
            this.f5610b = val$listener;
            this.f5611c = val$entry;
            this.f5612d = val$tiet;
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 6) {
                return false;
            }
            try {
                float u12 = Nc.b.u1(v10.getText().toString());
                i iVar = this.f5610b;
                if (iVar != null) {
                    u12 = iVar.a(u12);
                }
                this.f5611c.f2067b.set(new Variable("temp", u12));
                i iVar2 = this.f5610b;
                if (iVar2 != null) {
                    iVar2.b(u12);
                }
                this.f5612d.clearFocus();
                return false;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public class C0107f implements TextWatcher {

        public Handler f5614b;

        public Runnable f5615c;

        public final C5.b f5616d;

        public final i f5617e;

        public class a implements Runnable {

            public final Editable f5619b;

            public a(final Editable val$s) {
                this.f5619b = val$s;
            }

            @Override
            public void run() {
                try {
                    float u12 = Nc.b.u1(this.f5619b.toString());
                    i iVar = C0107f.this.f5617e;
                    if (iVar != null) {
                        u12 = iVar.a(u12);
                    }
                    C0107f.this.f5616d.f2067b.set(new Variable("temp", u12));
                    i iVar2 = C0107f.this.f5617e;
                    if (iVar2 != null) {
                        iVar2.b(u12);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C0107f(final C5.b val$entry, final i val$listener) {
            this.f5616d = val$entry;
            this.f5617e = val$listener;
        }

        @Override
        public void afterTextChanged(Editable s10) {
            if (this.f5616d.h()) {
                this.f5615c = new a(s10);
                if (this.f5614b == null) {
                    this.f5614b = new Handler(Looper.getMainLooper());
                }
                this.f5614b.postDelayed(this.f5615c, 750L);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            Runnable runnable;
            Handler handler = this.f5614b;
            if (handler == null || (runnable = this.f5615c) == null) {
                return;
            }
            handler.removeCallbacks(runnable);
        }
    }

    public class g implements View.OnFocusChangeListener {

        public final C5.b f5621a;

        public final View f5622b;

        public final i f5623c;

        public g(final C5.b val$entry, final View val$inputField, final i val$listener) {
            this.f5621a = val$entry;
            this.f5622b = val$inputField;
            this.f5623c = val$listener;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            Editable text;
            if (this.f5621a.i()) {
                return;
            }
            if (!hasFocus && (text = F.c(this.f5622b).getText()) != null) {
                try {
                    float u12 = Nc.b.u1(text.toString());
                    i iVar = this.f5623c;
                    if (iVar != null) {
                        u12 = iVar.a(u12);
                    }
                    this.f5621a.f2067b.set(new Variable("temp", u12));
                    i iVar2 = this.f5623c;
                    if (iVar2 != null) {
                        iVar2.b(u12);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            f.this.f5585a = hasFocus;
        }
    }

    public class h implements a.i {

        public final C5.b f5625a;

        public final i f5626b;

        public final View f5627c;

        public h(final C5.b val$entry, final i val$listener, final View val$inputField) {
            this.f5625a = val$entry;
            this.f5626b = val$listener;
            this.f5627c = val$inputField;
        }

        @Override
        public void a(float value) {
            if (this.f5625a.i()) {
                if (f.this.f5587c != null) {
                    f.this.f5587c.R0();
                    return;
                }
                return;
            }
            i iVar = this.f5626b;
            if (iVar != null) {
                value = iVar.a(value);
            }
            this.f5625a.f2067b.set(new Variable("", value));
            F.d(value + "", this.f5627c);
            i iVar2 = this.f5626b;
            if (iVar2 != null) {
                iVar2.b(value);
            }
        }

        @Override
        public float get() {
            if (!this.f5625a.i()) {
                return Nc.b.u1(this.f5625a.f2067b.get().str_value);
            }
            if (f.this.f5587c == null) {
                return 0.0f;
            }
            f.this.f5587c.R0();
            return 0.0f;
        }
    }

    public interface i {
        float a(float newValue);

        void b(float newValue);
    }

    public void d(C5.b entry, View input, TextView tittle, Context context) {
        e(entry, input, tittle, context, null);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void e(C5.b entry, View input, TextView tittle, Context context, i listener) {
        this.f5586b = context;
        this.f5588d = entry;
        this.f5589e = input;
        if (entry.f2067b != null) {
            View findViewById = input.findViewById(R.id.input);
            this.f5590f = findViewById;
            F.e(F.a.FloatNumber, findViewById);
            try {
                h(entry, findViewById);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            LinearLayout linearLayout = (LinearLayout) findViewById.findViewById(R.id.background);
            if (linearLayout != null) {
                int i10 = entry.f2052E;
                if (i10 != -1) {
                    Vc.e.z(linearLayout, context, i10);
                } else {
                    Vc.e.A(linearLayout, context, new ColorINT(Theme.i(Theme.T.CARD)));
                }
            }
            tittle.setOnClickListener(new a(entry, context, findViewById, tittle, listener));
            tittle.setOnLongClickListener(new b(entry, context, findViewById, tittle, listener));
            N7.c.I().a(new k(new c(entry, findViewById), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
            entry.f2076k = new d(entry, findViewById);
            try {
                TextInputEditText c10 = F.c(findViewById);
                if (entry.f2057J && c10 != null) {
                    c10.setImeOptions(c10.getImeOptions() & (-301989889));
                }
                c10.setOnEditorActionListener(new e(listener, entry, c10));
                c10.addTextChangedListener(new C0107f(entry, listener));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            F.c(findViewById).setOnFocusChangeListener(new g(entry, findViewById, listener));
            g(entry, findViewById);
        }
    }

    public final void f(C5.b entry, Context context, View inputField, TextView tittle, i listener) {
        H5.a aVar = this.f5587c;
        if (aVar != null) {
            aVar.R0();
        }
        this.f5587c = H5.a.w1(tittle, entry.f2077l, context, new h(entry, listener, inputField));
    }

    public final void g(C5.b entry, View inputField) {
        try {
            LinearLayout linearLayout = (LinearLayout) inputField.findViewById(R.id.background);
            if (linearLayout != null) {
                l lVar = entry.f2053F;
                if (lVar != null) {
                    int a10 = lVar.a();
                    if (a10 == 0 || a10 == -1) {
                        linearLayout.setBackground(ContextCompat.getDrawable(this.f5586b, R.drawable.editor3d_v2_input_text_background));
                        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(linearLayout, this.f5586b);
                    } else {
                        linearLayout.setBackground(ContextCompat.getDrawable(this.f5586b, a10));
                        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(linearLayout, this.f5586b);
                    }
                } else {
                    linearLayout.setBackground(ContextCompat.getDrawable(this.f5586b, R.drawable.editor3d_v2_input_text_background));
                    com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(linearLayout, this.f5586b);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void h(C5.b entry, View inputField) {
        if (this.f5585a || inputField == null || entry == null) {
            return;
        }
        Variable variable = entry.f2067b.get();
        String variable2 = variable != null ? variable.toString() : "";
        if (!variable2.equals(this.f5591g)) {
            F.d(variable2, inputField);
            this.f5591g = variable2;
        }
        g(entry, inputField);
    }

    public void i() {
        View view;
        try {
            C5.b bVar = this.f5588d;
            if (bVar == null || (view = this.f5590f) == null) {
                return;
            }
            h(bVar, view);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
