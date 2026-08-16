package v5;

import Ic.C2633l;
import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import bd.C3867a;
import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Files.PFSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Files.a;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine2.R;
import h7.AbstractC13433d;
import java.io.File;
import java.util.List;
import n7.AbstractC14360e;
import n7.InterfaceC14359d;
import r4.C15147a;
import w5.k;
import w5.n;

public class C15805a extends EditorPanel {

    public static final String f121244m0 = "FilePickerPanel";

    public static String f121245n0 = null;

    public static boolean f121246o0 = true;

    public static String f121247p0;

    public World f121248X;

    public final int f121249Y;

    public AbstractC13433d f121250Z;

    public String f121251a0;

    public PFSettings f121252b0;

    public float f121253c0;

    public FloatingPanelArea f121254d0;

    public final i f121255e0;

    public final String f121256f0;

    public TextView f121257g0;

    public File f121258h0;

    public final String f121259i0;

    public final a.C1135a f121260j0;

    public final v5.c f121261k0;

    public j7.f f121262l0;

    public class C2064a extends a.C1135a {
        public C2064a() {
        }

        @Override
        public boolean a(File file) {
            if (super.a(file)) {
                return file.isDirectory() || C2633l.b(file.getName(), C15805a.this.f121256f0);
            }
            return false;
        }
    }

    public class b extends v5.c {
        public b() {
        }

        @Override
        public List<File> j(File parent) {
            return super.j(parent);
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return false;
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View view) {
            C15805a.this.R0();
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View view) {
            C15805a.this.f121255e0.a(null, "");
            String unused = C15805a.f121245n0 = null;
            C15805a.this.R0();
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {
        public f() {
        }

        @Override
        public void click(View view) {
            if (C15805a.this.f121250Z != null) {
                C15805a.this.f121250Z.G();
                boolean unused = C15805a.f121246o0 = C15805a.this.f121250Z.q();
            }
        }
    }

    public class g extends AbstractViewOnClickListenerC12733a {
        public g() {
        }

        @Override
        public void click(View view) {
            if (C15805a.this.f121258h0 != null) {
                C15805a.this.f121255e0.a(C15805a.this.f121258h0, C15805a.this.f121258h0.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                String unused = C15805a.f121245n0 = C15805a.this.f121258h0.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                C15805a.this.R0();
            }
        }
    }

    public class h extends AbstractC13433d {

        public final Button f121270y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter, final Button val$doneButton) {
            super(activity, explorerDataProvider, filter);
            this.f121270y = val$doneButton;
        }

        @Override
        public void s(String openFolder, View v10) {
        }

        @Override
        public void t(String openFolder, View v10) {
        }

        @Override
        public void u(File file, View v10) {
            if (file.isDirectory()) {
                C15805a.this.w1(null, this.f121270y);
            } else {
                C15805a.this.w1(file, this.f121270y);
            }
        }

        @Override
        public void v(File file, View v10) {
        }
    }

    public interface i {
        void a(File file, String inProjectPath);
    }

    public C15805a(String formatAllowed, String initFolder, i listener) {
        super(null, Lang.l(Lang.T.FILES), f121244m0);
        this.f121249Y = 3;
        this.f121260j0 = new C2064a();
        this.f121261k0 = new b();
        this.f121256f0 = formatAllowed;
        this.f121255e0 = listener;
        this.f121259i0 = initFolder;
    }

    public static void x1(String formatAllowed, i listener) {
        listener.getClass();
        float g10 = 1.0f - N7.c.g(12);
        float f10 = 1.0f - N7.c.f(12);
        C15805a c15805a = new C15805a(formatAllowed, f121245n0, listener);
        FloatingPanelArea m10 = C15147a.m(c15805a, g10, f10);
        c15805a.f121254d0 = m10;
        c15805a.f121253c0 = f10;
        m10.N1(false);
        m10.T();
        m10.N0(true, true, true, false);
    }

    @Override
    public View C0() {
        LinearLayout linearLayout = (LinearLayout) this.f70908j.inflate(R.layout.file_picker_panel, (ViewGroup) null);
        linearLayout.setOnTouchListener(new c());
        try {
            this.f121252b0 = (PFSettings) new Gson().fromJson(X7.a.C("pf", "pfsettings.config", M()), PFSettings.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f121252b0 == null) {
            this.f121252b0 = new PFSettings();
        }
        TextView textView = (TextView) linearLayout.findViewById(R.id.selectedFile);
        this.f121257g0 = textView;
        textView.setText("");
        N7.c.a(this);
        TextView textView2 = (TextView) linearLayout.findViewById(R.id.formatTitle);
        String str = this.f121256f0;
        if (str == null || str.isEmpty()) {
            textView2.setText(new C3867a("Select any file", "Selecione qualquer arquivo").toString());
        } else {
            textView2.setText(new C3867a("Select any ", "Selecione qualquer ").toString() + C2633l.c(this.f121256f0));
        }
        linearLayout.findViewById(R.id.closeX).setOnClickListener(new d());
        linearLayout.findViewById(R.id.none).setOnClickListener(new e());
        linearLayout.findViewById(R.id.viewMode).setOnClickListener(new f());
        Button button = (Button) linearLayout.findViewById(R.id.done);
        button.setOnClickListener(new g());
        h hVar = new h(A(), this.f121261k0, this.f121260j0, button);
        this.f121250Z = hVar;
        hVar.i((ViewGroup) linearLayout.findViewById(R.id.filesContent));
        this.f121250Z.o(this.f121259i0);
        this.f121250Z.y(f121246o0);
        if (this.f121259i0 != null) {
            File m10 = this.f121250Z.m();
            if (m10.isDirectory()) {
                w1(null, button);
            } else {
                w1(m10, button);
            }
        }
        this.f121251a0 = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        return linearLayout;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.f0(this);
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        if (panelIntent instanceof n) {
            return false;
        }
        if (!(panelIntent instanceof k)) {
            return super.O0(panelIntent);
        }
        k kVar = (k) panelIntent;
        AbstractC13433d abstractC13433d = this.f121250Z;
        if (abstractC13433d != null) {
            abstractC13433d.o(kVar.a());
        }
        S0();
        return false;
    }

    @Override
    public EditorPanel k() {
        return new C15805a(this.f121256f0, this.f121259i0, this.f121255e0);
    }

    @Override
    public void m1() {
        this.f121260j0.b(this.f121252b0);
    }

    @Override
    public void n1() {
        AbstractC13433d abstractC13433d = this.f121250Z;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    @Override
    public void o1() {
        super.o1();
        String str = this.f121251a0;
        if (str == null || !str.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
            R0();
            this.f121251a0 = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        }
    }

    public final void w1(File file, Button doneButton) {
        this.f121258h0 = file;
        if (file == null) {
            this.f121257g0.setText("");
            doneButton.setActivated(false);
            return;
        }
        this.f121257g0.setText(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/", ""));
        doneButton.setActivated(true);
    }
}
