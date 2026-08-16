package E5;

import N7.c;
import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox.CustomCheckBox;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import v3.j;
import v3.k;

public class a {

    public class C0104a implements j {

        public final C5.b f5524a;

        public final CustomCheckBox f5525b;

        public C0104a(final C5.b val$entry, final CustomCheckBox val$checkBox) {
            this.f5524a = val$entry;
            this.f5525b = val$checkBox;
        }

        @Override
        public void a(Activity activity, k repeater) {
            try {
                a.this.c(this.f5524a, this.f5525b);
            } catch (Exception e10) {
                e10.printStackTrace();
                N7.c.I().b(repeater);
            }
            try {
                if (this.f5524a.i()) {
                    N7.c.I().b(repeater);
                } else if (W7.b.f27309i.f31909a.f31910a == null) {
                    N7.c.I().b(repeater);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                N7.c.I().b(repeater);
            }
        }
    }

    public class b implements D5.f {

        public final CustomCheckBox f5527a;

        public final C5.b f5528b;

        public b(final CustomCheckBox val$checkBox, final C5.b val$entry) {
            this.f5527a = val$checkBox;
            this.f5528b = val$entry;
        }

        @Override
        public void a() {
            try {
                this.f5527a.setChecked(this.f5528b.f2067b.get().str_value.equals("true"));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public final CustomCheckBox f5530b;

        public c(final CustomCheckBox val$checkBox) {
            this.f5530b = val$checkBox;
        }

        @Override
        public void click(View v10) {
            try {
                this.f5530b.setChecked(!r2.c());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class d implements CustomCheckBox.a {

        public final C5.b f5532a;

        public d(final C5.b val$entry) {
            this.f5532a = val$entry;
        }

        @Override
        public void a(CustomCheckBox compoundButton, boolean b10) {
            try {
                this.f5532a.f2067b.set(new Variable("temp", Boolean.valueOf(b10)));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void b(C5.b entry, View input, TextView tittle) {
        CustomCheckBox customCheckBox;
        if (entry.f2067b == null || (customCheckBox = (CustomCheckBox) input.findViewById(R.id.toggle)) == null) {
            return;
        }
        c(entry, customCheckBox);
        N7.c.I().a(new k(new C0104a(entry, customCheckBox), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
        entry.f2076k = new b(customCheckBox, entry);
        if (tittle != null) {
            tittle.setOnClickListener(new c(customCheckBox));
        }
        customCheckBox.setOnCheckedChangeListener(new d(entry));
    }

    public final void c(C5.b entry, CustomCheckBox checkBox) {
        if (checkBox == null || entry == null || entry.i()) {
            return;
        }
        checkBox.setChecked("true".equals(entry.f2067b.get().str_value));
    }
}
