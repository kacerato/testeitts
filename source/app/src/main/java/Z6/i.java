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

public class i extends EditorPanel {

    public static final String f31021d0 = "FloatingWarningPopup";

    public final String f31022X;

    public final h f31023Y;

    public FloatingPanelArea f31024Z;

    public final String f31025a0;

    public boolean f31026b0;

    public E f31027c0;

    public class a implements h {
        @Override
        public void a(f dialog) {
            dialog.dismiss();
        }
    }

    public class b implements E.e {

        public final String f31028a;

        public final String f31029b;

        public final h f31030c;

        public final boolean f31031d;

        public final boolean f31032e;

        public final float f31033f;

        public final float f31034g;

        public final int f31035h;

        public final int f31036i;

        public final InterfaceC0817i f31037j;

        public b(final String val$tittle, final String val$finalDescription, final h val$finalListener, final boolean val$hideButton, final boolean val$opaque, final float val$w, final float val$h, final int val$totalW, final int val$totalH, final InterfaceC0817i val$showListener) {
            this.f31028a = val$tittle;
            this.f31029b = val$finalDescription;
            this.f31030c = val$finalListener;
            this.f31031d = val$hideButton;
            this.f31032e = val$opaque;
            this.f31033f = val$w;
            this.f31034g = val$h;
            this.f31035h = val$totalW;
            this.f31036i = val$totalH;
            this.f31037j = val$showListener;
        }

        @Override
        public void a(E blockPanel) {
            i iVar = new i(this.f31028a, this.f31029b, this.f31030c, null);
            iVar.f31027c0 = blockPanel;
            iVar.f31026b0 = this.f31031d;
            FloatingPanelArea m10 = this.f31032e ? C15147a.m(iVar, this.f31033f, this.f31034g) : C15147a.o(iVar, this.f31033f, this.f31034g);
            iVar.f31024Z = m10;
            m10.T();
            m10.F1(false);
            m10.E1(true);
            m10.I1(this.f31035h, this.f31036i, FloatingPanelArea.i.Fixed);
            InterfaceC0817i interfaceC0817i = this.f31037j;
            if (interfaceC0817i != null) {
                interfaceC0817i.a(iVar, m10);
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
            i.this.f31023Y.a(i.this.u1(false));
        }
    }

    public class e implements f {

        public final boolean f31040a;

        public e(final boolean val$isDettached) {
            this.f31040a = val$isDettached;
        }

        @Override
        public void dismiss() {
            if (this.f31040a) {
                return;
            }
            i.this.R0();
        }
    }

    public interface f {
        void dismiss();
    }

    public static class g implements h {
        @Override
        public void a(f dialog) {
            dialog.dismiss();
        }
    }

    public interface h {
        void a(f dialog);
    }

    public interface InterfaceC0817i {
        void a(i popup, FloatingPanelArea area);
    }

    public i(String str, String str2, h hVar, a aVar) {
        this(str, str2, hVar);
    }

    public static void A1(String tittle, String description, h listener, boolean hideButton) {
        C1(tittle, description, listener, hideButton, false, null);
    }

    public static void B1(String tittle, String description, h listener, boolean hideButton, boolean opaque) {
        C1(tittle, description, listener, hideButton, opaque, null);
    }

    public static void C1(String tittle, String description, h listener, boolean hideButton, boolean opaque, InterfaceC0817i showListener) {
        Context t10 = N7.c.t();
        h aVar = listener == null ? new a() : listener;
        String F12 = F1(description);
        int i10 = !hideButton ? 42 : 12;
        int i11 = (int) D.g(t10, tittle, 14.0f, R.font.base_regular)[1];
        float[] g10 = D.g(t10, F12, 14.0f, R.font.base_regular);
        int i12 = (int) g10[0];
        int N10 = Nc.b.N(32, (int) g10[1]);
        int F10 = Nc.b.F(96, Nc.b.N(160, i12), 250);
        int i13 = i11 + 24 + N10 + 16 + i10;
        E.s1(new b(tittle, F12, aVar, hideButton, opaque, Nc.b.I(N7.c.g(F10)), Nc.b.I(N7.c.f(i13)), F10, i13, showListener));
    }

    public static void D1(String tittle, String description, boolean hideButton) {
        C1(tittle, description, null, hideButton, false, null);
    }

    public static void E1(String tittle, String description, boolean hideButton, boolean opaque) {
        C1(tittle, description, null, hideButton, opaque, null);
    }

    private static String F1(String description) {
        try {
            if (description.contains("\"status\":\"Error\"")) {
                return hd.c.g(hd.c.h(!description.startsWith("{") ? description.substring(description.indexOf("{")) : description), "info");
            }
            return description;
        } catch (Exception unused) {
            return description;
        }
    }

    public static void v1(View anchor, C15147a.e anchorSide, String tittle, h listener) {
        x1(anchor, anchorSide, tittle, "", listener, null);
    }

    public static void w1(View anchor, C15147a.e anchorSide, String tittle, String description, h listener) {
        x1(anchor, anchorSide, tittle, description, listener, null);
    }

    public static void x1(View anchor, C15147a.e anchorSide, String tittle, String description, h listener, InterfaceC0817i showListener) {
        C1(tittle, description, listener, false, false, showListener);
    }

    public static void y1(String tittle, String description) {
        C1(tittle, description, null, false, false, null);
    }

    public static void z1(String tittle, String description, h listener) {
        C1(tittle, description, listener, false, false, null);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.warning_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        Button button = (Button) inflate.findViewById(R.id.confirm);
        TextView textView2 = (TextView) inflate.findViewById(R.id.desc);
        String str = this.f31022X;
        if (str == null || str.isEmpty()) {
            textView.setVisibility(8);
        } else {
            textView.setText(this.f31022X);
        }
        String str2 = this.f31025a0;
        if (str2 == null || str2.isEmpty()) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.f31025a0);
        }
        if (this.f31026b0) {
            button.setVisibility(8);
        } else {
            button.setOnClickListener(new d());
        }
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f31027c0;
        if (e10 != null) {
            e10.R0();
            this.f31027c0 = null;
        }
    }

    public final f u1(boolean isDettached) {
        return new e(isDettached);
    }

    public i(String tittle, String description, h listener) {
        super(null, tittle);
        this.f31022X = tittle;
        this.f31025a0 = description;
        this.f31023Y = listener;
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
    }
}
