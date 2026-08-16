package E5;

import H5.b;
import N7.c;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.F;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import v3.j;
import v3.k;

public class g {

    public boolean f5629a = false;

    public C5.b f5630b;

    public H5.b f5631c;

    public View f5632d;

    public View f5633e;

    public String f5634f;

    public class a extends AbstractViewOnClickListenerC12733a {

        public final C5.b f5635b;

        public final Context f5636c;

        public final View f5637d;

        public final TextView f5638e;

        public final i f5639f;

        public a(final C5.b val$entry, final Context val$context, final View val$inputField, final TextView val$tittle, final i val$listener) {
            this.f5635b = val$entry;
            this.f5636c = val$context;
            this.f5637d = val$inputField;
            this.f5638e = val$tittle;
            this.f5639f = val$listener;
        }

        @Override
        public void click(View v10) {
            g.this.f(this.f5635b, this.f5636c, this.f5637d, this.f5638e, this.f5639f);
        }
    }

    public class b implements View.OnLongClickListener {

        public final C5.b f5641b;

        public final Context f5642c;

        public final View f5643d;

        public final TextView f5644e;

        public final i f5645f;

        public b(final C5.b val$entry, final Context val$context, final View val$inputField, final TextView val$tittle, final i val$listener) {
            this.f5641b = val$entry;
            this.f5642c = val$context;
            this.f5643d = val$inputField;
            this.f5644e = val$tittle;
            this.f5645f = val$listener;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            g.this.f(this.f5641b, this.f5642c, this.f5643d, this.f5644e, this.f5645f);
            return true;
        }
    }

    public class c implements j {

        public final C5.b f5647a;

        public final View f5648b;

        public c(final C5.b val$entry, final View val$inputField) {
            this.f5647a = val$entry;
            this.f5648b = val$inputField;
        }

        @Override
        public void a(Activity activity, k repeater) {
            try {
                g.this.g(this.f5647a, this.f5648b);
            } catch (Exception unused) {
                N7.c.I().b(repeater);
            }
            try {
                if (this.f5647a.i()) {
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

        public final C5.b f5650a;

        public final View f5651b;

        public d(final C5.b val$entry, final View val$inputField) {
            this.f5650a = val$entry;
            this.f5651b = val$inputField;
        }

        @Override
        public void a() {
            Variable variable = this.f5650a.f2067b.get();
            F.d(variable != null ? variable.toString() : "", this.f5651b);
        }
    }

    public class e implements TextView.OnEditorActionListener {

        public final i f5653b;

        public final C5.b f5654c;

        public final TextInputEditText f5655d;

        public e(final i val$listener, final C5.b val$entry, final TextInputEditText val$tiet) {
            this.f5653b = val$listener;
            this.f5654c = val$entry;
            this.f5655d = val$tiet;
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 6) {
                return false;
            }
            int w12 = Nc.b.w1(v10.getText().toString());
            i iVar = this.f5653b;
            if (iVar != null) {
                w12 = iVar.c(w12);
            }
            this.f5654c.f2067b.set(new Variable("temp", w12));
            i iVar2 = this.f5653b;
            if (iVar2 != null) {
                iVar2.b(w12);
            }
            this.f5655d.clearFocus();
            return false;
        }
    }

    public class f implements TextWatcher {

        public Handler f5657b;

        public Runnable f5658c;

        public final C5.b f5659d;

        public final i f5660e;

        public class a implements Runnable {

            public final Editable f5662b;

            public a(final Editable val$s) {
                this.f5662b = val$s;
            }

            @Override
            public void run() {
                try {
                    int w12 = Nc.b.w1(this.f5662b.toString());
                    i iVar = f.this.f5660e;
                    if (iVar != null) {
                        w12 = iVar.c(w12);
                    }
                    f.this.f5659d.f2067b.set(new Variable("temp", w12));
                    i iVar2 = f.this.f5660e;
                    if (iVar2 != null) {
                        iVar2.b(w12);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public f(final C5.b val$entry, final i val$listener) {
            this.f5659d = val$entry;
            this.f5660e = val$listener;
        }

        @Override
        public void afterTextChanged(Editable s10) {
            if (this.f5659d.h()) {
                this.f5658c = new a(s10);
                if (this.f5657b == null) {
                    this.f5657b = new Handler(Looper.getMainLooper());
                }
                this.f5657b.postDelayed(this.f5658c, 750L);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            Runnable runnable;
            Handler handler = this.f5657b;
            if (handler == null || (runnable = this.f5658c) == null) {
                return;
            }
            handler.removeCallbacks(runnable);
        }
    }

    public class ViewOnFocusChangeListenerC0108g implements View.OnFocusChangeListener {

        public final C5.b f5664a;

        public final View f5665b;

        public final i f5666c;

        public ViewOnFocusChangeListenerC0108g(final C5.b val$entry, final View val$inputField, final i val$listener) {
            this.f5664a = val$entry;
            this.f5665b = val$inputField;
            this.f5666c = val$listener;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            Editable text;
            if (this.f5664a.i()) {
                return;
            }
            if (!hasFocus && (text = F.c(this.f5665b).getText()) != null) {
                int w12 = Nc.b.w1(text.toString());
                i iVar = this.f5666c;
                if (iVar != null) {
                    w12 = iVar.c(w12);
                }
                this.f5664a.f2067b.set(new Variable("temp", w12));
                i iVar2 = this.f5666c;
                if (iVar2 != null) {
                    iVar2.b(w12);
                }
            }
            g.this.f5629a = hasFocus;
        }
    }

    public class h implements b.g {

        public final C5.b f5668a;

        public final i f5669b;

        public final View f5670c;

        public h(final C5.b val$entry, final i val$listener, final View val$inputField) {
            this.f5668a = val$entry;
            this.f5669b = val$listener;
            this.f5670c = val$inputField;
        }

        @Override
        public void b(int value) {
            if (this.f5668a.i()) {
                if (g.this.f5631c != null) {
                    g.this.f5631c.R0();
                    return;
                }
                return;
            }
            i iVar = this.f5669b;
            if (iVar != null) {
                value = iVar.c(value);
            }
            this.f5668a.f2067b.set(new Variable("", value));
            F.d(value + "", this.f5670c);
            i iVar2 = this.f5669b;
            if (iVar2 != null) {
                iVar2.b(value);
            }
        }

        @Override
        public int get() {
            if (!this.f5668a.i()) {
                return Nc.b.w1(this.f5668a.f2067b.get().str_value);
            }
            if (g.this.f5631c == null) {
                return 0;
            }
            g.this.f5631c.R0();
            return 0;
        }
    }

    public interface i {
        void b(int newValue);

        int c(int newValue);
    }

    public void d(C5.b entry, View input, TextView tittle) {
        e(entry, input, tittle, null);
    }

    public void e(C5.b entry, View input, TextView tittle, i listener) {
        Context t10 = N7.c.t();
        this.f5630b = entry;
        this.f5632d = input;
        if (entry.f2067b != null) {
            View findViewById = input.findViewById(R.id.input);
            this.f5633e = findViewById;
            F.e(F.a.IntNumber, findViewById);
            g(entry, findViewById);
            if (tittle != null) {
                tittle.setOnClickListener(new a(entry, t10, findViewById, tittle, listener));
                tittle.setOnLongClickListener(new b(entry, t10, findViewById, tittle, listener));
            }
            N7.c.I().a(new k(new c(entry, findViewById), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
            entry.f2076k = new d(entry, findViewById);
            try {
                TextInputEditText c10 = F.c(findViewById);
                if (entry.f2057J && c10 != null) {
                    c10.setImeOptions(c10.getImeOptions() & (-301989889));
                }
                c10.setOnEditorActionListener(new e(listener, entry, c10));
                c10.addTextChangedListener(new f(entry, listener));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            F.c(findViewById).setOnFocusChangeListener(new ViewOnFocusChangeListenerC0108g(entry, findViewById, listener));
        }
    }

    public final void f(C5.b entry, Context context, View inputField, TextView tittle, i listener) {
        H5.b bVar = this.f5631c;
        if (bVar != null) {
            bVar.R0();
        }
        this.f5631c = H5.b.z1(tittle, entry.f2077l, context, new h(entry, listener, inputField));
    }

    public final void g(C5.b entry, View inputField) {
        if (this.f5629a) {
            return;
        }
        Variable variable = entry.f2067b.get();
        String variable2 = variable != null ? variable.toString() : "";
        if (variable2.equals(this.f5634f)) {
            return;
        }
        F.d(variable2, inputField);
        this.f5634f = variable2;
    }

    public void h() {
        View view;
        try {
            C5.b bVar = this.f5630b;
            if (bVar == null || (view = this.f5633e) == null) {
                return;
            }
            g(bVar, view);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
