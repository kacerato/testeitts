package E5;

import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.F;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;

public class c {

    public boolean f5536a = false;

    public class a extends AbstractViewOnClickListenerC12733a {

        public final C5.b f5537b;

        public final int f5538c;

        public a(final C5.b val$entry, final int val$positionInAdapter) {
            this.f5537b = val$entry;
            this.f5538c = val$positionInAdapter;
        }

        @Override
        public void click(View v10) {
            try {
                C5.b bVar = this.f5537b;
                bVar.f2071f.a(bVar.f2075j, this.f5538c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class b implements D5.f {

        public final C5.b f5540a;

        public final View f5541b;

        public b(final C5.b val$entry, final View val$inputField) {
            this.f5540a = val$entry;
            this.f5541b = val$inputField;
        }

        @Override
        public void a() {
            Variable variable = this.f5540a.f2067b.get();
            F.d(Tc.b.f(variable != null ? variable.toString() : "", 1), this.f5541b);
        }
    }

    public class C0105c implements TextWatcher {

        public Handler f5543b;

        public Runnable f5544c;

        public final C5.b f5545d;

        public final View f5546e;

        public class a implements Runnable {

            public final Editable f5548b;

            public a(final Editable val$s) {
                this.f5548b = val$s;
            }

            @Override
            public void run() {
                try {
                    String f10 = Tc.b.f(this.f5548b.toString(), 1);
                    if (f10.length() >= 1) {
                        char charAt = f10.charAt(0);
                        C0105c.this.f5545d.f2067b.set(new Variable("temp", (int) charAt));
                        F.d(String.valueOf(charAt), C0105c.this.f5546e);
                    } else {
                        C0105c.this.f5545d.f2067b.set(new Variable("temp", 0));
                        F.d(String.valueOf((char) 0), C0105c.this.f5546e);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C0105c(final C5.b val$entry, final View val$inputField) {
            this.f5545d = val$entry;
            this.f5546e = val$inputField;
        }

        @Override
        public void afterTextChanged(Editable s10) {
            if (this.f5545d.h()) {
                this.f5544c = new a(s10);
                if (this.f5543b == null) {
                    this.f5543b = new Handler(Looper.getMainLooper());
                }
                this.f5543b.postDelayed(this.f5544c, 750L);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            Runnable runnable;
            Handler handler = this.f5543b;
            if (handler == null || (runnable = this.f5544c) == null) {
                return;
            }
            handler.removeCallbacks(runnable);
        }
    }

    public class d implements View.OnFocusChangeListener {

        public final C5.b f5550a;

        public final View f5551b;

        public d(final C5.b val$entry, final View val$inputField) {
            this.f5550a = val$entry;
            this.f5551b = val$inputField;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            Editable text;
            if (this.f5550a.i() || hasFocus || (text = F.c(this.f5551b).getText()) == null) {
                return;
            }
            String f10 = Tc.b.f(text.toString(), 1);
            if (f10.length() >= 1) {
                char charAt = f10.charAt(0);
                this.f5550a.f2067b.set(new Variable("temp", (int) charAt));
                F.d(String.valueOf(charAt), this.f5551b);
            } else {
                this.f5550a.f2067b.set(new Variable("temp", 0));
                this.f5550a.f2067b.set(new Variable("temp", 0));
                F.d(String.valueOf((char) 0), this.f5551b);
            }
        }
    }

    public static boolean c(C5.b bVar, View view, TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 == 6) {
            String f10 = Tc.b.f(textView.getText().toString(), 1);
            if (f10.length() >= 1) {
                char charAt = f10.charAt(0);
                bVar.f2067b.set(new Variable("temp", (int) charAt));
                F.d(String.valueOf(charAt), view);
            } else {
                bVar.f2067b.set(new Variable("temp", 0));
                F.d(String.valueOf((char) 0), view);
            }
        }
        return false;
    }

    public void b(final C5.b entry, View input, TextView tittle, int positionInAdapter) {
        if (entry.f2067b != null) {
            ImageView imageView = (ImageView) input.findViewById(R.id.trashButton);
            if (imageView != null && entry.f2071f != null) {
                imageView.setOnClickListener(new a(entry, positionInAdapter));
            }
            final View findViewById = input.findViewById(R.id.input);
            F.e(F.a.SingleLineText, findViewById);
            F.d(Tc.b.f(entry.f2067b.get().str_value, 1), findViewById);
            entry.f2076k = new b(entry, findViewById);
            try {
                TextInputEditText c10 = F.c(findViewById);
                if (entry.f2057J && c10 != null) {
                    c10.setImeOptions(c10.getImeOptions() & (-301989889));
                }
                c10.setOnEditorActionListener(new TextView.OnEditorActionListener() {
                    @Override
                    public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                        boolean c11;
                        c11 = c.c(C5.b.this, findViewById, textView, i10, keyEvent);
                        return c11;
                    }
                });
                c10.addTextChangedListener(new C0105c(entry, findViewById));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            F.c(findViewById).setOnFocusChangeListener(new d(entry, findViewById));
        }
    }
}
