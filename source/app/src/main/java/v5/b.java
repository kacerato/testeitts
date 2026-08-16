package v5;

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
import n7.C14358c;
import n7.InterfaceC14359d;
import r4.C15147a;
import w5.k;
import w5.n;

public class b extends EditorPanel {

    public static final String f121272l0 = "FolderPickerPanel";

    public static String f121273m0 = null;

    public static boolean f121274n0 = true;

    public static String f121275o0;

    public World f121276X;

    public final int f121277Y;

    public AbstractC13433d f121278Z;

    public String f121279a0;

    public PFSettings f121280b0;

    public float f121281c0;

    public FloatingPanelArea f121282d0;

    public final i f121283e0;

    public TextView f121284f0;

    public File f121285g0;

    public final String f121286h0;

    public final a.C1135a f121287i0;

    public final C14358c f121288j0;

    public j7.f f121289k0;

    public class a extends a.C1135a {
        public a() {
        }

        @Override
        public boolean a(File file) {
            return super.a(file) && file.isDirectory();
        }
    }

    public class C2065b extends C14358c {
        public C2065b() {
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
            b.this.R0();
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View view) {
            b.this.f121283e0.a(null, "");
            String unused = b.f121273m0 = null;
            b.this.R0();
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {
        public f() {
        }

        @Override
        public void click(View view) {
            if (b.this.f121278Z != null) {
                b.this.f121278Z.G();
                boolean unused = b.f121274n0 = b.this.f121278Z.q();
            }
        }
    }

    public class g extends AbstractViewOnClickListenerC12733a {
        public g() {
        }

        @Override
        public void click(View view) {
            if (b.this.f121285g0 != null) {
                b.this.f121283e0.a(b.this.f121285g0, b.this.f121285g0.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                String unused = b.f121273m0 = b.this.f121285g0.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                b.this.R0();
            }
        }
    }

    public class h extends AbstractC13433d {

        public final Button f121297y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter, final Button val$doneButton) {
            super(activity, explorerDataProvider, filter);
            this.f121297y = val$doneButton;
        }

        @Override
        public void r() {
            super.r();
            String l10 = b.this.f121278Z.l();
            b.this.f121285g0 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(b.this.M()) + "/" + l10);
            b.this.f121284f0.setText(l10);
            this.f121297y.setActivated(true);
        }

        @Override
        public void s(String openFolder, View v10) {
        }

        @Override
        public void t(String openFolder, View v10) {
        }

        @Override
        public void u(File file, View v10) {
            b.this.x1(file, this.f121297y);
        }

        @Override
        public void v(File file, View v10) {
        }
    }

    public interface i {
        void a(File file, String inProjectPath);
    }

    public b(String initFolder, i listener) {
        super(null, Lang.l(Lang.T.FILES), f121272l0);
        this.f121277Y = 3;
        this.f121287i0 = new a();
        this.f121288j0 = new C2065b();
        this.f121283e0 = listener;
        this.f121286h0 = initFolder;
    }

    public void x1(File file, Button doneButton) {
        this.f121285g0 = file;
        if (file == null) {
            this.f121284f0.setText("");
            doneButton.setActivated(false);
            return;
        }
        this.f121284f0.setText(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/", ""));
        doneButton.setActivated(true);
    }

    public static void y1(String startFolder, i listener) {
        listener.getClass();
        float g10 = 1.0f - N7.c.g(12);
        float f10 = 1.0f - N7.c.f(12);
        b bVar = new b(startFolder, listener);
        FloatingPanelArea m10 = C15147a.m(bVar, g10, f10);
        bVar.f121282d0 = m10;
        bVar.f121281c0 = f10;
        m10.N1(false);
        m10.T();
        m10.N0(true, true, true, false);
    }

    public static void z1(i listener) {
        y1(f121273m0, listener);
    }

    @Override
    public View C0() {
        LinearLayout linearLayout = (LinearLayout) this.f70908j.inflate(R.layout.folder_picker_panel, (ViewGroup) null);
        linearLayout.setOnTouchListener(new c());
        try {
            this.f121280b0 = (PFSettings) new Gson().fromJson(X7.a.C("pf", "pfsettings.config", M()), PFSettings.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f121280b0 == null) {
            this.f121280b0 = new PFSettings();
        }
        TextView textView = (TextView) linearLayout.findViewById(R.id.selectedFile);
        this.f121284f0 = textView;
        textView.setText("");
        N7.c.a(this);
        ((TextView) linearLayout.findViewById(R.id.formatTitle)).setText(new C3867a("Select any folder", "Selecione qualquer diretorio").toString());
        linearLayout.findViewById(R.id.closeX).setOnClickListener(new d());
        linearLayout.findViewById(R.id.none).setOnClickListener(new e());
        linearLayout.findViewById(R.id.viewMode).setOnClickListener(new f());
        Button button = (Button) linearLayout.findViewById(R.id.done);
        button.setOnClickListener(new g());
        h hVar = new h(A(), this.f121288j0, this.f121287i0, button);
        this.f121278Z = hVar;
        hVar.i((ViewGroup) linearLayout.findViewById(R.id.filesContent));
        this.f121278Z.o(this.f121286h0);
        this.f121278Z.y(f121274n0);
        if (this.f121286h0 != null) {
            this.f121285g0 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + this.f121286h0);
            this.f121284f0.setText(this.f121286h0);
            button.setActivated(true);
        }
        this.f121279a0 = com.itsmagic.engine.Core.Components.ProjectController.a.T();
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
        AbstractC13433d abstractC13433d = this.f121278Z;
        if (abstractC13433d != null) {
            abstractC13433d.o(kVar.a());
        }
        S0();
        return false;
    }

    @Override
    public EditorPanel k() {
        return new b(this.f121286h0, this.f121283e0);
    }

    @Override
    public void m1() {
        this.f121287i0.b(this.f121280b0);
    }

    @Override
    public void n1() {
        AbstractC13433d abstractC13433d = this.f121278Z;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    @Override
    public void o1() {
        super.o1();
        String str = this.f121279a0;
        if (str == null || !str.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
            R0();
            this.f121279a0 = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        }
    }
}
