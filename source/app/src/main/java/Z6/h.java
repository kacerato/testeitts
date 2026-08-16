package Z6;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.D;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class h extends EditorPanel {

    public static final String f31000d0 = "FloatingWarningPopup";

    public final String f31001X;

    public final InterfaceC0816h f31002Y;

    public FloatingPanelArea f31003Z;

    public final String f31004a0;

    public boolean f31005b0;

    public E f31006c0;

    public class a implements InterfaceC0816h {
        @Override
        public void a(f dialog) {
            dialog.dismiss();
        }
    }

    public class b implements E.e {

        public final String f31007a;

        public final String f31008b;

        public final InterfaceC0816h f31009c;

        public final boolean f31010d;

        public final boolean f31011e;

        public final float f31012f;

        public final float f31013g;

        public final int f31014h;

        public final int f31015i;

        public final i f31016j;

        public b(final String val$tittle, final String val$description, final InterfaceC0816h val$finalListener, final boolean val$hideButton, final boolean val$opaque, final float val$w, final float val$h, final int val$totalW, final int val$totalH, final i val$showListener) {
            this.f31007a = val$tittle;
            this.f31008b = val$description;
            this.f31009c = val$finalListener;
            this.f31010d = val$hideButton;
            this.f31011e = val$opaque;
            this.f31012f = val$w;
            this.f31013g = val$h;
            this.f31014h = val$totalW;
            this.f31015i = val$totalH;
            this.f31016j = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            h hVar = new h(this.f31007a, this.f31008b, this.f31009c, null);
            hVar.f31006c0 = blockPanel;
            hVar.f31005b0 = this.f31010d;
            FloatingPanelArea m10 = this.f31011e ? C15147a.m(hVar, this.f31012f, this.f31013g) : C15147a.o(hVar, this.f31012f, this.f31013g);
            hVar.f31003Z = m10;
            m10.T();
            m10.F1(true);
            m10.E1(true);
            m10.I1(this.f31014h, this.f31015i, FloatingPanelArea.i.Fixed);
            i iVar = this.f31016j;
            if (iVar != null) {
                iVar.a(hVar, m10);
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
            h.this.f31002Y.a(h.this.u1(false));
        }
    }

    public class e implements f {

        public final boolean f31019a;

        public e(final boolean val$isDettached) {
            this.f31019a = val$isDettached;
        }

        @Override
        public void dismiss() {
            if (this.f31019a) {
                return;
            }
            h.this.R0();
        }
    }

    public interface f {
        void dismiss();
    }

    public static class g implements InterfaceC0816h {
        @Override
        public void a(f dialog) {
            dialog.dismiss();
        }
    }

    public interface InterfaceC0816h {
        void a(f dialog);
    }

    public interface i {
        void a(h popup, FloatingPanelArea area);
    }

    public h(String str, String str2, InterfaceC0816h interfaceC0816h, a aVar) {
        this(str, str2, interfaceC0816h);
    }

    public static void A1(String tittle, String description, InterfaceC0816h listener, boolean hideButton) {
        C1(tittle, description, listener, hideButton, false, null);
    }

    public static void B1(String tittle, String description, InterfaceC0816h listener, boolean hideButton, boolean opaque) {
        C1(tittle, description, listener, hideButton, opaque, null);
    }

    public static void C1(String tittle, String description, InterfaceC0816h listener, boolean hideButton, boolean opaque, i showListener) {
        Context t10 = N7.c.t();
        InterfaceC0816h aVar = listener == null ? new a() : listener;
        int i10 = !hideButton ? 42 : 12;
        int i11 = (int) D.g(t10, tittle, 14.0f, R.font.base_regular)[1];
        float[] g10 = D.g(t10, description, 14.0f, R.font.base_regular);
        int i12 = (int) g10[0];
        int N10 = Nc.b.N(32, (int) g10[1]);
        int F10 = Nc.b.F(96, Nc.b.N(160, i12), 250);
        int i13 = i11 + 24 + N10 + 16 + i10;
        E.s1(new b(tittle, description, aVar, hideButton, opaque, Nc.b.I(N7.c.g(F10)), Nc.b.I(N7.c.f(i13)), F10, i13, showListener));
    }

    public static void D1(String tittle, String description, boolean hideButton) {
        C1(tittle, description, null, hideButton, false, null);
    }

    public static void E1(String tittle, String description, boolean hideButton, boolean opaque) {
        C1(tittle, description, null, hideButton, opaque, null);
    }

    public static void v1(View anchor, C15147a.e anchorSide, String tittle, InterfaceC0816h listener) {
        x1(anchor, anchorSide, tittle, "", listener, null);
    }

    public static void w1(View anchor, C15147a.e anchorSide, String tittle, String description, InterfaceC0816h listener) {
        x1(anchor, anchorSide, tittle, description, listener, null);
    }

    public static void x1(View anchor, C15147a.e anchorSide, String tittle, String description, InterfaceC0816h listener, i showListener) {
        C1(tittle, description, listener, false, false, showListener);
    }

    public static void y1(String tittle, String description) {
        C1(tittle, description, null, false, false, null);
    }

    public static void z1(String tittle, String description, InterfaceC0816h listener) {
        C1(tittle, description, listener, false, false, null);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.warning_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        Button button = (Button) inflate.findViewById(R.id.confirm);
        TextView textView2 = (TextView) inflate.findViewById(R.id.desc);
        String str = this.f31001X;
        if (str == null || str.isEmpty()) {
            textView.setVisibility(8);
        } else {
            textView.setText(this.f31001X);
        }
        String str2 = this.f31004a0;
        if (str2 == null || str2.isEmpty()) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.f31004a0);
        }
        if (this.f31005b0) {
            button.setVisibility(8);
        } else {
            button.setOnClickListener(new d());
        }
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f31006c0;
        if (e10 != null) {
            e10.R0();
            this.f31006c0 = null;
        }
    }

    public final f u1(boolean isDettached) {
        return new e(isDettached);
    }

    public h(String tittle, String description, InterfaceC0816h listener) {
        super(null, tittle);
        this.f31001X = tittle;
        this.f31004a0 = description;
        this.f31002Y = listener;
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
    }
}
