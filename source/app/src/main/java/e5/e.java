package E5;

import D5.j;
import D5.l;
import N7.c;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.F;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import v3.k;

public class e {

    public boolean f5554a = false;

    public Context f5555b;

    public String f5556c;

    public class a implements Runnable {

        public final C5.b f5557b;

        public final TextView f5558c;

        public final Context f5559d;

        public a(final C5.b val$entry, final TextView val$tittle, final Context val$context) {
            this.f5557b = val$entry;
            this.f5558c = val$tittle;
            this.f5559d = val$context;
        }

        @Override
        public void run() {
            j jVar = this.f5557b.f2054G;
            if (jVar != null) {
                try {
                    jVar.a(this.f5558c, this.f5559d);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public class b implements View.OnTouchListener {

        public final float[] f5561b;

        public final float[] f5562c;

        public final Handler f5563d;

        public final Runnable f5564e;

        public final Vector2 f5565f;

        public final int f5566g;

        public final C5.b f5567h;

        public final View f5568i;

        public b(final float[] val$px, final float[] val$py, final Handler val$longClickHandler, final Runnable val$mLongPressed, final Vector2 val$diffV, final int val$slidingFrictionDeadZone, final C5.b val$entry, final View val$inputField) {
            this.f5561b = val$px;
            this.f5562c = val$py;
            this.f5563d = val$longClickHandler;
            this.f5564e = val$mLongPressed;
            this.f5565f = val$diffV;
            this.f5566g = val$slidingFrictionDeadZone;
            this.f5567h = val$entry;
            this.f5568i = val$inputField;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:1|(4:(1:4)(9:11|(2:30|31)|13|(1:15)(1:29)|16|(1:18)|19|(4:21|22|23|24)|28)|6|(1:8)|9)|35|36|37|6|(0)|9) */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00e3, code lost:
        
            r8 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00e4, code lost:
        
            r8.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        
            if (r8 != 5) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:8:0x00f0  */
        @Override
        @SuppressLint({"ClickableViewAccessibility"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouch(View v10, MotionEvent event) {
            int action = event.getAction() & 255;
            if (action != 0) {
                if (action == 2) {
                    float x10 = event.getX(0);
                    this.f5565f.w0(x10 - this.f5561b[0], event.getY(0) - this.f5562c[0]);
                    if (this.f5565f.S() > this.f5566g) {
                        try {
                            this.f5563d.removeCallbacks(this.f5564e);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    float b10 = (x10 - this.f5561b[0]) / K8.c.b();
                    boolean z10 = b10 < 0.0f;
                    float f10 = b10 * b10;
                    if (z10) {
                        f10 = -f10;
                    }
                    float f11 = f10 * this.f5567h.f2086u * 500.0f;
                    Editable text = F.c(this.f5568i).getText();
                    if (text != null) {
                        double s12 = Nc.b.s1(text.toString()) + f11;
                        try {
                            this.f5567h.f2067b.set(new Variable("temp", s12));
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        F.c(this.f5568i).setText(s12 + "");
                    }
                    this.f5561b[0] = event.getX(event.getActionIndex());
                    this.f5562c[0] = event.getY(event.getActionIndex());
                }
                event.getAction();
                if (event.getAction() != 2) {
                    event.getAction();
                }
                return true;
            }
            this.f5561b[0] = event.getX(event.getActionIndex());
            this.f5562c[0] = event.getY(event.getActionIndex());
            this.f5563d.postDelayed(this.f5564e, ViewConfiguration.getLongPressTimeout());
            event.getAction();
            if (event.getAction() != 2) {
            }
            return true;
        }
    }

    public class c implements v3.j {

        public final C5.b f5570a;

        public final View f5571b;

        public c(final C5.b val$entry, final View val$inputField) {
            this.f5570a = val$entry;
            this.f5571b = val$inputField;
        }

        @Override
        public void a(Activity activity, k repeater) {
            try {
                e.this.f(this.f5570a, this.f5571b);
            } catch (Exception unused) {
                N7.c.I().b(repeater);
            }
            try {
                if (this.f5570a.i()) {
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

        public final C5.b f5573a;

        public final View f5574b;

        public d(final C5.b val$entry, final View val$inputField) {
            this.f5573a = val$entry;
            this.f5574b = val$inputField;
        }

        @Override
        public void a() {
            Variable variable = this.f5573a.f2067b.get();
            F.d(variable != null ? variable.toString() : "", this.f5574b);
        }
    }

    public class C0106e implements TextWatcher {

        public Handler f5576b;

        public Runnable f5577c;

        public final C5.b f5578d;

        public class a implements Runnable {

            public final Editable f5580b;

            public a(final Editable val$s) {
                this.f5580b = val$s;
            }

            @Override
            public void run() {
                try {
                    C0106e.this.f5578d.f2067b.set(new Variable("temp", Nc.b.s1(this.f5580b.toString())));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C0106e(final C5.b val$entry) {
            this.f5578d = val$entry;
        }

        @Override
        public void afterTextChanged(Editable s10) {
            if (this.f5578d.h()) {
                this.f5577c = new a(s10);
                if (this.f5576b == null) {
                    this.f5576b = new Handler(Looper.getMainLooper());
                }
                this.f5576b.postDelayed(this.f5577c, 750L);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            Runnable runnable;
            Handler handler = this.f5576b;
            if (handler == null || (runnable = this.f5577c) == null) {
                return;
            }
            handler.removeCallbacks(runnable);
        }
    }

    public class f implements View.OnFocusChangeListener {

        public final C5.b f5582a;

        public final View f5583b;

        public f(final C5.b val$entry, final View val$inputField) {
            this.f5582a = val$entry;
            this.f5583b = val$inputField;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            Editable text;
            if (this.f5582a.i()) {
                return;
            }
            if (!hasFocus && (text = F.c(this.f5583b).getText()) != null) {
                try {
                    this.f5582a.f2067b.set(new Variable("temp", Nc.b.s1(text.toString())));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            e.this.f5554a = hasFocus;
        }
    }

    public static boolean d(C5.b bVar, TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        try {
            bVar.f2067b.set(new Variable("temp", Nc.b.s1(textView.getText().toString())));
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void c(final C5.b entry, View input, TextView tittle, Context context) {
        this.f5555b = context;
        if (entry.f2067b != null) {
            View findViewById = input.findViewById(R.id.input);
            F.e(F.a.FloatNumber, findViewById);
            try {
                f(entry, findViewById);
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
            tittle.setOnTouchListener(new b(new float[1], new float[1], new Handler(), new a(entry, tittle, context), new Vector2(), Nc.b.l0(5.0f, context), entry, findViewById));
            N7.c.I().a(new k(new c(entry, findViewById), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
            entry.f2076k = new d(entry, findViewById);
            try {
                TextInputEditText c10 = F.c(findViewById);
                if (entry.f2057J && c10 != null) {
                    c10.setImeOptions(c10.getImeOptions() & (-301989889));
                }
                c10.setOnEditorActionListener(new TextView.OnEditorActionListener() {
                    @Override
                    public final boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
                        boolean d10;
                        d10 = e.d(C5.b.this, textView, i11, keyEvent);
                        return d10;
                    }
                });
                c10.addTextChangedListener(new C0106e(entry));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            F.c(findViewById).setOnFocusChangeListener(new f(entry, findViewById));
            e(entry, findViewById);
        }
    }

    public final void e(C5.b entry, View inputField) {
        try {
            LinearLayout linearLayout = (LinearLayout) inputField.findViewById(R.id.background);
            if (linearLayout != null) {
                l lVar = entry.f2053F;
                if (lVar != null) {
                    int a10 = lVar.a();
                    if (a10 == 0 || a10 == -1) {
                        linearLayout.setBackground(ContextCompat.getDrawable(this.f5555b, R.drawable.editor3d_v2_input_text_background));
                        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(linearLayout, this.f5555b);
                    } else {
                        linearLayout.setBackground(ContextCompat.getDrawable(this.f5555b, a10));
                        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(linearLayout, this.f5555b);
                    }
                } else {
                    linearLayout.setBackground(ContextCompat.getDrawable(this.f5555b, R.drawable.editor3d_v2_input_text_background));
                    com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(linearLayout, this.f5555b);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void f(C5.b entry, View inputField) {
        if (this.f5554a || inputField == null || entry == null) {
            return;
        }
        Variable variable = entry.f2067b.get();
        String variable2 = variable != null ? variable.toString() : "";
        if (!variable2.equals(this.f5556c)) {
            F.d(variable2, inputField);
            this.f5556c = variable2;
        }
        e(entry, inputField);
    }
}
