package E5;

import N7.c;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Utils.F;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import v3.j;
import v3.k;

public class i {

    public boolean f5673a = false;

    public String f5674b;

    public class a implements View.OnTouchListener {

        public final float[] f5675b;

        public final float[] f5676c;

        public final C5.b f5677d;

        public final View f5678e;

        public a(final float[] val$px, final float[] val$py, final C5.b val$entry, final View val$inputField) {
            this.f5675b = val$px;
            this.f5676c = val$py;
            this.f5677d = val$entry;
            this.f5678e = val$inputField;
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
        
            if (r7 != 5) goto L26;
         */
        @Override
        @SuppressLint({"ClickableViewAccessibility"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouch(View v10, MotionEvent event) {
            float f10;
            int action = event.getAction() & 255;
            if (action != 0) {
                if (action == 2) {
                    float x10 = event.getX(0);
                    event.getY(0);
                    float b10 = (x10 - this.f5675b[0]) / K8.c.b();
                    boolean z10 = b10 < 0.0f;
                    float f11 = b10 * b10;
                    if (z10) {
                        f11 = -f11;
                    }
                    float f12 = f11 * this.f5677d.f2086u * 500.0f;
                    Editable text = F.c(this.f5678e).getText();
                    if (text != null) {
                        long z12 = Nc.b.z1(text.toString());
                        if (f12 < 0.0f) {
                            f10 = (float) z12;
                        } else {
                            f10 = (float) z12;
                            f12 = Nc.b.j1(f12);
                        }
                        long j10 = f10 + f12;
                        this.f5677d.f2067b.set(new Variable("temp", j10));
                        F.c(this.f5678e).setText(j10 + "");
                    }
                    this.f5675b[0] = event.getX(event.getActionIndex());
                    this.f5676c[0] = event.getY(event.getActionIndex());
                }
                return true;
            }
            this.f5675b[0] = event.getX(event.getActionIndex());
            this.f5676c[0] = event.getY(event.getActionIndex());
            return true;
        }
    }

    public class b implements j {

        public final C5.b f5680a;

        public final View f5681b;

        public b(final C5.b val$entry, final View val$inputField) {
            this.f5680a = val$entry;
            this.f5681b = val$inputField;
        }

        @Override
        public void a(Activity activity, k repeater) {
            try {
                i.this.e(this.f5680a, this.f5681b);
            } catch (Exception unused) {
                N7.c.I().b(repeater);
            }
            try {
                if (this.f5680a.i()) {
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

    public class c implements D5.f {

        public final C5.b f5683a;

        public final View f5684b;

        public c(final C5.b val$entry, final View val$inputField) {
            this.f5683a = val$entry;
            this.f5684b = val$inputField;
        }

        @Override
        public void a() {
            Variable variable = this.f5683a.f2067b.get();
            F.d(variable != null ? variable.toString() : "", this.f5684b);
        }
    }

    public class d implements TextWatcher {

        public Handler f5686b;

        public Runnable f5687c;

        public final C5.b f5688d;

        public class a implements Runnable {

            public final Editable f5690b;

            public a(final Editable val$s) {
                this.f5690b = val$s;
            }

            @Override
            public void run() {
                try {
                    d.this.f5688d.f2067b.set(new Variable("temp", Nc.b.z1(this.f5690b.toString())));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public d(final C5.b val$entry) {
            this.f5688d = val$entry;
        }

        @Override
        public void afterTextChanged(Editable s10) {
            if (this.f5688d.h()) {
                this.f5687c = new a(s10);
                if (this.f5686b == null) {
                    this.f5686b = new Handler(Looper.getMainLooper());
                }
                this.f5686b.postDelayed(this.f5687c, 750L);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            Runnable runnable;
            Handler handler = this.f5686b;
            if (handler == null || (runnable = this.f5687c) == null) {
                return;
            }
            handler.removeCallbacks(runnable);
        }
    }

    public class e implements View.OnFocusChangeListener {

        public final C5.b f5692a;

        public final View f5693b;

        public e(final C5.b val$entry, final View val$inputField) {
            this.f5692a = val$entry;
            this.f5693b = val$inputField;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            Editable text;
            if (this.f5692a.i()) {
                return;
            }
            if (!hasFocus && (text = F.c(this.f5693b).getText()) != null) {
                this.f5692a.f2067b.set(new Variable("temp", Nc.b.z1(text.toString())));
            }
            i.this.f5673a = hasFocus;
        }
    }

    public static boolean d(C5.b bVar, TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        bVar.f2067b.set(new Variable("temp", Nc.b.z1(textView.getText().toString())));
        return false;
    }

    public void c(final C5.b entry, View input, TextView tittle) {
        if (entry.f2067b != null) {
            View findViewById = input.findViewById(R.id.input);
            F.e(F.a.IntNumber, findViewById);
            e(entry, findViewById);
            tittle.setOnTouchListener(new a(new float[1], new float[1], entry, findViewById));
            N7.c.I().a(new k(new b(entry, findViewById), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
            entry.f2076k = new c(entry, findViewById);
            try {
                TextInputEditText c10 = F.c(findViewById);
                if (entry.f2057J && c10 != null) {
                    c10.setImeOptions(c10.getImeOptions() & (-301989889));
                }
                c10.setOnEditorActionListener(new TextView.OnEditorActionListener() {
                    @Override
                    public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                        boolean d10;
                        d10 = i.d(C5.b.this, textView, i10, keyEvent);
                        return d10;
                    }
                });
                c10.addTextChangedListener(new d(entry));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            F.c(findViewById).setOnFocusChangeListener(new e(entry, findViewById));
        }
    }

    public final void e(C5.b entry, View inputField) {
        if (this.f5673a) {
            return;
        }
        Variable variable = entry.f2067b.get();
        String variable2 = variable != null ? variable.toString() : "";
        if (variable2.equals(this.f5674b)) {
            return;
        }
        F.d(variable2, inputField);
        this.f5674b = variable2;
    }
}
