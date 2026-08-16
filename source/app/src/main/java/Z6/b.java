package Z6;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.D;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class b extends EditorPanel {

    public static final String f30856f0 = "FloatingConfirmCheckBoxPopup";

    public final String f30857X;

    public final i f30858Y;

    public FloatingPanelArea f30859Z;

    public final String f30860a0;

    public boolean f30861b0;

    public final String f30862c0;

    public final boolean f30863d0;

    public E f30864e0;

    public class a implements E.e {

        public final String f30865a;

        public final String f30866b;

        public final String f30867c;

        public final boolean f30868d;

        public final i f30869e;

        public final View f30870f;

        public final C15147a.e f30871g;

        public final float f30872h;

        public final float f30873i;

        public final int f30874j;

        public final int f30875k;

        public final j f30876l;

        public a(final String val$tittle, final String val$description, final String val$checkBoxText, final boolean val$checkboxChecked, final i val$listener, final View val$anchor, final C15147a.e val$anchorSide, final float val$w, final float val$h, final int val$totalW, final int val$totalH, final j val$showListener) {
            this.f30865a = val$tittle;
            this.f30866b = val$description;
            this.f30867c = val$checkBoxText;
            this.f30868d = val$checkboxChecked;
            this.f30869e = val$listener;
            this.f30870f = val$anchor;
            this.f30871g = val$anchorSide;
            this.f30872h = val$w;
            this.f30873i = val$h;
            this.f30874j = val$totalW;
            this.f30875k = val$totalH;
            this.f30876l = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            b bVar = new b(this.f30865a, this.f30866b, this.f30867c, this.f30868d, this.f30869e, null);
            bVar.f30864e0 = blockPanel;
            FloatingPanelArea g10 = C15147a.g(this.f30870f, bVar, this.f30871g, this.f30872h, this.f30873i);
            bVar.f30859Z = g10;
            g10.T();
            g10.F1(false);
            g10.E1(true);
            g10.I1(this.f30874j, this.f30875k, FloatingPanelArea.i.Fixed);
            j jVar = this.f30876l;
            if (jVar != null) {
                jVar.a(bVar, g10);
            }
        }
    }

    public class C0812b implements E.e {

        public final String f30877a;

        public final String f30878b;

        public final String f30879c;

        public final boolean f30880d;

        public final i f30881e;

        public final float f30882f;

        public final float f30883g;

        public final int f30884h;

        public final int f30885i;

        public final j f30886j;

        public C0812b(final String val$tittle, final String val$description, final String val$checkBoxText, final boolean val$checkboxChecked, final i val$listener, final float val$w, final float val$h, final int val$totalW, final int val$totalH, final j val$showListener) {
            this.f30877a = val$tittle;
            this.f30878b = val$description;
            this.f30879c = val$checkBoxText;
            this.f30880d = val$checkboxChecked;
            this.f30881e = val$listener;
            this.f30882f = val$w;
            this.f30883g = val$h;
            this.f30884h = val$totalW;
            this.f30885i = val$totalH;
            this.f30886j = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            b bVar = new b(this.f30877a, this.f30878b, this.f30879c, this.f30880d, this.f30881e, null);
            bVar.f30864e0 = blockPanel;
            FloatingPanelArea m10 = C15147a.m(bVar, this.f30882f, this.f30883g);
            bVar.f30859Z = m10;
            m10.T();
            m10.F1(false);
            m10.E1(true);
            m10.I1(this.f30884h, this.f30885i, FloatingPanelArea.i.Fixed);
            j jVar = this.f30886j;
            if (jVar != null) {
                jVar.a(bVar, m10);
            }
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            b.this.f30858Y.b(b.this.u1());
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {

        public final CheckBox f30889b;

        public e(final CheckBox val$checkBox) {
            this.f30889b = val$checkBox;
        }

        @Override
        public void click(View v10) {
            b.this.f30858Y.a(this.f30889b.isChecked(), b.this.u1());
        }
    }

    public class f implements g {

        public final boolean f30891a;

        public f(final boolean val$isDettached) {
            this.f30891a = val$isDettached;
        }

        @Override
        public void dismiss() {
            if (this.f30891a) {
                return;
            }
            b.this.R0();
            b.this.f30861b0 = true;
        }
    }

    public interface g {
        void dismiss();
    }

    public static class h implements i {
        @Override
        public void a(boolean checked, g dialog) {
            dialog.dismiss();
        }

        @Override
        public void b(g dialog) {
            dialog.dismiss();
        }
    }

    public interface i {
        void a(boolean checked, g dialog);

        void b(g dialog);
    }

    public interface j {
        void a(b popup, FloatingPanelArea area);
    }

    public b(String str, String str2, String str3, boolean z10, i iVar, a aVar) {
        this(str, str2, str3, z10, iVar);
    }

    public static void A1(String tittle, String description, String checkBoxText, boolean checkboxChecked, i listener, j showListener) {
        if (checkBoxText == null || checkBoxText.isEmpty()) {
            throw new NullPointerException("checkBoxText can't be empty or null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        Context t10 = N7.c.t();
        int i10 = (int) D.f(t10, tittle, 14.0f)[1];
        float[] f10 = D.f(t10, description, 14.0f);
        int i11 = (int) f10[0];
        int N10 = Nc.b.N(32, (int) f10[1]);
        int N11 = Nc.b.N(204, i11);
        int i12 = i10 + 82 + N10 + 32;
        E.s1(new C0812b(tittle, description, checkBoxText, checkboxChecked, listener, Nc.b.I(N7.c.g(N11)), Nc.b.I(N7.c.f(i12)), N11, i12, showListener));
    }

    public static void B1(String tittle, String checkBoxText, boolean checkboxChecked, i listener) {
        A1(tittle, null, checkBoxText, checkboxChecked, listener, null);
    }

    public static void w1(View anchor, C15147a.e anchorSide, String tittle, String description, String checkBoxText, boolean checkboxChecked, i listener) {
        x1(anchor, anchorSide, tittle, description, checkBoxText, checkboxChecked, listener, null);
    }

    public static void x1(View anchor, C15147a.e anchorSide, String tittle, String description, String checkBoxText, boolean checkboxChecked, i listener, j showListener) {
        if (checkBoxText == null || checkBoxText.isEmpty()) {
            throw new NullPointerException("checkBoxText can't be empty or null");
        }
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        Context t10 = N7.c.t();
        int i10 = (int) D.g(t10, tittle, 14.0f, R.font.base_regular)[1];
        float[] g10 = D.g(t10, description, 14.0f, R.font.base_regular);
        int i11 = (int) g10[0];
        int N10 = Nc.b.N(32, (int) g10[1]);
        int F10 = Nc.b.F(96, Nc.b.N(204, i11), 250);
        int i12 = i10 + 82 + N10 + 32;
        E.s1(new a(tittle, description, checkBoxText, checkboxChecked, listener, anchor, anchorSide, Nc.b.I(N7.c.g(F10)), Nc.b.I(N7.c.f(i12)), F10, i12, showListener));
    }

    public static void y1(View anchor, C15147a.e anchorSide, String tittle, String checkBoxText, boolean checkboxChecked, i listener) {
        x1(anchor, anchorSide, tittle, null, checkBoxText, checkboxChecked, listener, null);
    }

    public static void z1(String tittle, String description, String checkBoxText, boolean checkboxChecked, i listener) {
        A1(tittle, description, checkBoxText, checkboxChecked, listener, null);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.confirm_checkbo_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        Button button = (Button) inflate.findViewById(R.id.cancel);
        Button button2 = (Button) inflate.findViewById(R.id.confirm);
        TextView textView2 = (TextView) inflate.findViewById(R.id.desc);
        CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.checkBox);
        checkBox.setChecked(this.f30863d0);
        String str = this.f30857X;
        if (str == null || str.equals("")) {
            textView.setVisibility(8);
        } else {
            textView.setText(this.f30857X);
        }
        String str2 = this.f30860a0;
        if (str2 == null || str2.equals("")) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.f30860a0);
        }
        checkBox.setText(this.f30862c0);
        button.setOnClickListener(new d());
        button2.setOnClickListener(new e(checkBox));
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f30864e0;
        if (e10 != null) {
            e10.R0();
            this.f30864e0 = null;
        }
        if (this.f30861b0) {
            return;
        }
        this.f30858Y.b(v1(true));
    }

    public final g u1() {
        return v1(false);
    }

    public final g v1(boolean isDettached) {
        return new f(isDettached);
    }

    public b(String tittle, String description, String checkBoxText, boolean checkboxChecked, i listener) {
        super(null, tittle);
        if (checkBoxText != null && !checkBoxText.isEmpty()) {
            this.f30857X = tittle;
            this.f30860a0 = description;
            this.f30858Y = listener;
            this.f30862c0 = checkBoxText;
            this.f30863d0 = checkboxChecked;
            if (listener == null) {
                throw new NullPointerException("listener can't be null");
            }
            return;
        }
        throw new NullPointerException("checkBoxText can't be empty or null");
    }
}
