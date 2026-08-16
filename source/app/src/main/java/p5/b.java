package p5;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.PasswordEditText.PasswordEditText;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.io.File;
import jd.C13823b;
import q7.C15045a;
import r4.C15147a;
import s5.C15233a;
import w3.f;

public class b extends EditorPanel {

    public static final String f103466e0 = "ExportAdvanced";

    public BuildConfigs f103467X;

    public EditText f103468Y;

    public EditText f103469Z;

    public EditText f103470a0;

    public PasswordEditText f103471b0;

    public PasswordEditText f103472c0;

    public PasswordEditText f103473d0;

    public class a implements TextView.OnEditorActionListener {
        public a() {
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if ((actionId != 3 && actionId != 6 && (event == null || event.getAction() != 0 || event.getKeyCode() != 66)) || (event != null && event.isShiftPressed())) {
                return false;
            }
            try {
                b bVar = b.this;
                bVar.f103467X.keystorePassowrd = bVar.f103471b0.getText();
                b bVar2 = b.this;
                bVar2.f103467X.keystoreAlias = bVar2.f103472c0.getText();
                b bVar3 = b.this;
                bVar3.f103467X.keystoreAliasPassword = bVar3.f103473d0.getText();
                b.this.z1();
            } catch (Exception unused) {
            }
            return false;
        }
    }

    public class ViewOnFocusChangeListenerC1934b implements View.OnFocusChangeListener {
        public ViewOnFocusChangeListenerC1934b() {
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            try {
                b bVar = b.this;
                bVar.f103467X.keystorePassowrd = bVar.f103471b0.getText();
                b bVar2 = b.this;
                bVar2.f103467X.keystoreAlias = bVar2.f103472c0.getText();
                b bVar3 = b.this;
                bVar3.f103467X.keystoreAliasPassword = bVar3.f103473d0.getText();
                b.this.z1();
            } catch (Exception unused) {
            }
        }
    }

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable s10) {
            try {
                b bVar = b.this;
                bVar.f103467X.keystorePassowrd = bVar.f103471b0.getText();
                b bVar2 = b.this;
                bVar2.f103467X.keystoreAlias = bVar2.f103472c0.getText();
                b bVar3 = b.this;
                bVar3.f103467X.keystoreAliasPassword = bVar3.f103473d0.getText();
                b.this.z1();
            } catch (Exception unused) {
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
        }
    }

    public class d implements TextView.OnEditorActionListener {
        public d() {
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if ((actionId != 3 && actionId != 6 && (event == null || event.getAction() != 0 || event.getKeyCode() != 66)) || (event != null && event.isShiftPressed())) {
                return false;
            }
            try {
                b bVar = b.this;
                bVar.f103467X.companyName = bVar.f103469Z.getText().toString().toLowerCase();
                b bVar2 = b.this;
                bVar2.f103467X.appNameP = bVar2.f103470a0.getText().toString().toLowerCase();
                b bVar3 = b.this;
                bVar3.f103467X.appName = bVar3.f103468Y.getText().toString();
                b.this.z1();
            } catch (Exception unused) {
            }
            return false;
        }
    }

    public class e implements View.OnFocusChangeListener {
        public e() {
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            try {
                b bVar = b.this;
                bVar.f103467X.companyName = bVar.f103469Z.getText().toString().toLowerCase();
                b bVar2 = b.this;
                bVar2.f103467X.appNameP = bVar2.f103470a0.getText().toString().toLowerCase();
                b bVar3 = b.this;
                bVar3.f103467X.appName = bVar3.f103468Y.getText().toString();
                b.this.z1();
            } catch (Exception unused) {
            }
        }
    }

    public class f implements TextWatcher {
        public f() {
        }

        @Override
        public void afterTextChanged(Editable s10) {
            try {
                b bVar = b.this;
                bVar.f103467X.companyName = bVar.f103469Z.getText().toString().toLowerCase();
                b bVar2 = b.this;
                bVar2.f103467X.appNameP = bVar2.f103470a0.getText().toString().toLowerCase();
                b bVar3 = b.this;
                bVar3.f103467X.appName = bVar3.f103468Y.getText().toString();
                b.this.z1();
            } catch (Exception unused) {
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
        }
    }

    public class g implements TextView.OnEditorActionListener {

        public final EditText f103480b;

        public final EditText f103481c;

        public g(final EditText val$versionName, final EditText val$versionCode) {
            this.f103480b = val$versionName;
            this.f103481c = val$versionCode;
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if ((actionId != 3 && actionId != 6 && (event == null || event.getAction() != 0 || event.getKeyCode() != 66)) || (event != null && event.isShiftPressed())) {
                return false;
            }
            try {
                b.this.f103467X.versionName = this.f103480b.getText().toString();
                b.this.f103467X.versionCode = this.f103481c.getText().toString();
                b.this.z1();
            } catch (Exception unused) {
            }
            return false;
        }
    }

    public class h implements View.OnFocusChangeListener {

        public final EditText f103483a;

        public final EditText f103484b;

        public h(final EditText val$versionName, final EditText val$versionCode) {
            this.f103483a = val$versionName;
            this.f103484b = val$versionCode;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            try {
                b.this.f103467X.versionName = this.f103483a.getText().toString();
                b.this.f103467X.versionCode = this.f103484b.getText().toString();
                b.this.z1();
            } catch (Exception unused) {
            }
        }
    }

    public class i implements TextWatcher {

        public final EditText f103486b;

        public final EditText f103487c;

        public i(final EditText val$versionName, final EditText val$versionCode) {
            this.f103486b = val$versionName;
            this.f103487c = val$versionCode;
        }

        @Override
        public void afterTextChanged(Editable s10) {
            try {
                b.this.f103467X.versionName = this.f103486b.getText().toString();
                b.this.f103467X.versionCode = this.f103487c.getText().toString();
                b.this.z1();
            } catch (Exception unused) {
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
        }
    }

    public class j extends AbstractViewOnClickListenerC12733a {
        public j() {
        }

        @Override
        public void click(View v10) {
            b.this.R0();
        }
    }

    public class k extends AbstractViewOnClickListenerC12733a {

        public final ImageView f103490b;

        public class a implements f.c {
            public a() {
            }

            @Override
            public void onCancel() {
            }

            @Override
            public void onError(String error) {
                N7.c.v0("failed to import image:" + error);
            }

            @Override
            public void onSuccess(String fileName, File imageFile) {
                if (W7.b.f27306f.f2461d.T()) {
                    C15233a.c(imageFile, com.itsmagic.engine.Core.Components.ProjectController.a.S(b.this.M()) + "/_EDITOR/APP/Settings/Icon/512x.png", k.this.f103490b);
                }
            }
        }

        public k(final ImageView val$icon) {
            this.f103490b = val$icon;
        }

        @Override
        public void click(View v10) {
            w3.f.e(new a());
        }
    }

    public class l extends AbstractViewOnClickListenerC12733a {

        public final TextView f103493b;

        public class a implements Yc.g {
            public a() {
            }

            @Override
            public void b(C13823b pfile) {
                if (b.this.M() == null || pfile == null) {
                    return;
                }
                String f10 = pfile.f();
                if (f10 == null) {
                    b.this.f103467X.worldZero = "";
                } else if (f10.equals("")) {
                    b.this.f103467X.worldZero = "";
                } else {
                    l.this.f103493b.setText(f10);
                    b.this.f103467X.worldZero = f10;
                }
                b.this.z1();
            }
        }

        public l(final TextView val$worldText) {
            this.f103493b = val$worldText;
        }

        @Override
        public void click(View v10) {
            Yc.c.a(".world", new a());
        }
    }

    public class m extends AbstractViewOnClickListenerC12733a {

        public final TextView f103496b;

        public final LinearLayout f103497c;

        public class a extends SteppedArrayList<C12908b> {

            public class C1935a implements dd.d {
                public C1935a() {
                }

                @Override
                public void onSelected(View v10) {
                    m mVar = m.this;
                    b.this.f103467X.buildType = 0;
                    mVar.f103496b.setText("APK");
                    m.this.f103497c.setVisibility(8);
                    b.this.z1();
                }
            }

            public class C1936b implements dd.d {
                public C1936b() {
                }

                @Override
                public void onSelected(View v10) {
                    m mVar = m.this;
                    b.this.f103467X.buildType = 1;
                    mVar.f103496b.setText("AAB");
                    m.this.f103497c.setVisibility(8);
                    b.this.z1();
                }
            }

            public class c implements dd.d {
                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    m mVar = m.this;
                    b.this.f103467X.buildType = 2;
                    mVar.f103496b.setText("AAB Signed");
                    m.this.f103497c.setVisibility(0);
                    b.this.z1();
                }
            }

            public a() {
                add(new C12908b("APK", new C1935a()));
                add(new C12908b("AAB", new C1936b()));
                add(new C12908b("AAB Signed", new c()));
            }
        }

        public m(final TextView val$formatText, final LinearLayout val$exportToPlayStore) {
            this.f103496b = val$formatText;
            this.f103497c = val$exportToPlayStore;
        }

        @Override
        public void click(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new a());
        }
    }

    public class n extends AbstractViewOnClickListenerC12733a {

        public final TextView f103503b;

        public class a extends SteppedArrayList<C12908b> {

            public class C1937a implements dd.d {
                public C1937a() {
                }

                @Override
                public void onSelected(View v10) {
                    b.this.f103467X.b().e(true);
                    b.this.f103467X.b().f(false);
                    n.this.f103503b.setText("Landscape");
                    b.this.z1();
                }
            }

            public class C1938b implements dd.d {
                public C1938b() {
                }

                @Override
                public void onSelected(View v10) {
                    b.this.f103467X.b().f(true);
                    b.this.f103467X.b().e(false);
                    n.this.f103503b.setText("Portrait");
                    b.this.z1();
                }
            }

            public class c implements dd.d {
                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    b.this.f103467X.b().f(true);
                    b.this.f103467X.b().e(true);
                    n.this.f103503b.setText("Both");
                    b.this.z1();
                }
            }

            public a() {
                add(new C12908b("Landscape", new C1937a()));
                add(new C12908b("Portrait", new C1938b()));
                add(new C12908b("Both", new c()));
            }
        }

        public n(final TextView val$orientationText) {
            this.f103503b = val$orientationText;
        }

        @Override
        public void click(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new a());
        }
    }

    public class o extends AbstractViewOnClickListenerC12733a {

        public class a implements C15045a.d {

            public class C1939a implements q.i.K {

                public final C15045a f103511a;

                public class C1940a implements q.i.J {
                    public C1940a() {
                    }

                    @Override
                    public void a(String message) {
                        N7.c.v0("Error:" + message);
                        C1939a.this.f103511a.p1();
                    }

                    @Override
                    public void b() {
                        V5.a.p1();
                        C1939a.this.f103511a.p1();
                    }

                    @Override
                    public void c() {
                        N7.c.v0("Ops limit reached:2 exportation's per week");
                        C1939a.this.f103511a.p1();
                    }

                    @Override
                    public void d() {
                        W7.b.f27307g.c(N7.c.o(), b.this.f103467X);
                        b.this.R0();
                        C1939a.this.f103511a.p1();
                    }
                }

                public C1939a(final C15045a val$loadingBar) {
                    this.f103511a = val$loadingBar;
                }

                @Override
                public void a(String message) {
                    N7.c.v0("Error:" + message);
                    this.f103511a.p1();
                }

                @Override
                public void b() {
                    V5.a.p1();
                    this.f103511a.p1();
                }

                @Override
                public void c() {
                    N7.c.v0(new C3867a("You are already exporting a project. Wait for completion", "Voc\u00ea j\u00e1 est\u00e1 exportando um projeto. Aguarde a finaliza\u00e7\u00e3o").toString());
                    this.f103511a.p1();
                }

                @Override
                public void d() {
                    q.i.i(new C1940a());
                }
            }

            public a() {
            }

            @Override
            public void a(C15045a loadingBar) {
                try {
                    q.i.j(new C1939a(loadingBar));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    loadingBar.p1();
                }
            }
        }

        public o() {
        }

        @Override
        public void click(View v10) {
            String str = b.this.f103467X.worldZero;
            if (str == null || str.isEmpty()) {
                N7.c.v0("Please select the world zero");
            } else if (b.this.C1(true) && b.this.D1()) {
                b.this.f103467X.f71678b = com.itsmagic.engine.Core.Components.ProjectController.a.T();
                C15045a.u1(true, new a());
            }
        }
    }

    public class p extends AbstractViewOnClickListenerC12733a {
        public p() {
        }

        @Override
        public void click(View v10) {
        }
    }

    public class q extends AbstractViewOnClickListenerC12733a {
        public q() {
        }

        @Override
        public void click(View v10) {
        }
    }

    public class r extends AbstractViewOnClickListenerC12733a {

        public final TextView f103516b;

        public class a implements Yc.g {
            public a() {
            }

            @Override
            public void b(C13823b pfile) {
                if (b.this.M() == null || pfile == null) {
                    return;
                }
                String f10 = pfile.f();
                if (f10 == null) {
                    b.this.f103467X.keyStorePath = "";
                } else if (f10.equals("")) {
                    b.this.f103467X.keyStorePath = "";
                } else {
                    r.this.f103516b.setText(f10);
                    b.this.f103467X.keyStorePath = f10;
                }
                b.this.z1();
            }
        }

        public r(final TextView val$pathText) {
            this.f103516b = val$pathText;
        }

        @Override
        public void click(View v10) {
            Yc.c.a(".jks", new a());
        }
    }

    public b(boolean exportAabSigned) {
        super(null, "ExportAdvancedPanel");
        BuildConfigs c10 = BuildConfigs.c(M());
        this.f103467X = c10;
        if (c10 == null) {
            this.f103467X = new BuildConfigs();
        }
        if (exportAabSigned) {
            this.f103467X.buildType = 2;
        }
    }

    public static FloatingPanelArea A1(boolean exportAabSigned) {
        FloatingPanelArea n10 = C15147a.n(new b(exportAabSigned), 0.0f, 0.0f, 1.0f, 1.0f);
        n10.T();
        n10.N1(false);
        return n10;
    }

    public final void B1(View v10) {
        TextView textView = (TextView) v10.findViewById(R.id.tittle);
        TextView textView2 = (TextView) v10.findViewById(R.id.icon_tittle);
        TextView textView3 = (TextView) v10.findViewById(R.id.launcher_tittle);
        TextView textView4 = (TextView) v10.findViewById(R.id.company_tittle);
        TextView textView5 = (TextView) v10.findViewById(R.id.app_tittle);
        TextView textView6 = (TextView) v10.findViewById(R.id.version_tittle);
        TextView textView7 = (TextView) v10.findViewById(R.id.version_code_tittle);
        TextView textView8 = (TextView) v10.findViewById(R.id.version_name_tittle);
        TextView textView9 = (TextView) v10.findViewById(R.id.format_tittle);
        TextView textView10 = (TextView) v10.findViewById(R.id.orientation_tittle);
        TextView textView11 = (TextView) v10.findViewById(R.id.select_world_tittle);
        textView.setText(Lang.l(Lang.T.EXPORT_ADVANCED_TITTLE));
        textView2.setText(Lang.l(Lang.T.EXPORT_ADVANCED_ICON_TITTLE));
        textView3.setText(Lang.l(Lang.T.EXPORT_ADVANCED_LAUNCHER_TITTLE));
        textView4.setText(Lang.l(Lang.T.EXPORT_ADVANCED_COMPANY_TITTLE));
        textView5.setText(Lang.l(Lang.T.EXPORT_ADVANCED_APP_TITTLE));
        textView6.setText(Lang.l(Lang.T.EXPORT_ADVANCED_VERSION_TITTLE));
        textView7.setText(Lang.l(Lang.T.EXPORT_ADVANCED_VERSION_CODE_TITTLE));
        textView8.setText(Lang.l(Lang.T.EXPORT_ADVANCED_VERSION_NAME_TITTLE));
        textView9.setText(Lang.l(Lang.T.EXPORT_ADVANCED_FORMAT_TITTLE));
        textView10.setText(Lang.l(Lang.T.EXPORT_ADVANCED_ORIENTATION_TITTLE));
        textView11.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE2_SELECT_WORLD));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.export_project_advanced_mode, (ViewGroup) null);
        B1(inflate);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.export_to_playstore);
        inflate.findViewById(R.id.exit).setOnClickListener(new j());
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon);
        C15233a.d(M(), imageView);
        imageView.setOnClickListener(new k(imageView));
        y1(inflate);
        E1(inflate);
        TextView textView = (TextView) inflate.findViewById(R.id.world_text);
        textView.setText(this.f103467X.worldZero);
        inflate.findViewById(R.id.choose_world).setOnClickListener(new l(textView));
        F1(inflate);
        View findViewById = inflate.findViewById(R.id.format_button);
        TextView textView2 = (TextView) inflate.findViewById(R.id.format_text);
        int i10 = this.f103467X.buildType;
        if (i10 == 0) {
            textView2.setText("APK");
        } else if (i10 == 1) {
            textView2.setText("AAB");
        } else if (i10 == 2) {
            textView2.setText("AAB Signed");
            linearLayout.setVisibility(0);
        }
        findViewById.setOnClickListener(new m(textView2, linearLayout));
        View findViewById2 = inflate.findViewById(R.id.orientation_button);
        TextView textView3 = (TextView) inflate.findViewById(R.id.orientation_text);
        if (this.f103467X.b().d() && this.f103467X.b().c()) {
            textView3.setText("Both");
        } else if (this.f103467X.b().c()) {
            textView3.setText("Landscape");
        } else if (this.f103467X.b().d()) {
            textView3.setText("Portrait");
        }
        findViewById2.setOnClickListener(new n(textView3));
        Button button = (Button) inflate.findViewById(R.id.export);
        button.setText(Lang.l(Lang.T.EXPORT_ADVANCED_EXPORT_BUTTON));
        o oVar = new o();
        if (!UserController.Z(M())) {
            button.setOnClickListener(new q());
        } else if (W7.b.f27306f.f2461d.T()) {
            button.setOnClickListener(oVar);
        } else {
            button.setOnClickListener(new p());
        }
        return inflate;
    }

    public final boolean C1(boolean validateKeyStore) {
        int i10 = this.f103467X.buildType;
        if (i10 != 2) {
            return i10 == 1 || i10 == 0;
        }
        if (!validateKeyStore) {
            return true;
        }
        StringBuilder sb2 = new StringBuilder();
        com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()));
        sb2.append("/");
        sb2.append(this.f103467X.keyStorePath);
        if (!new File(sb2.toString()).exists()) {
            N7.c.v0("Please configure the keystore file");
            return false;
        }
        String str = this.f103467X.keystorePassowrd;
        if (str == null || str.isEmpty()) {
            this.f103471b0.setError("Please configure");
            return false;
        }
        String str2 = this.f103467X.keystoreAlias;
        if (str2 == null || str2.isEmpty()) {
            this.f103472c0.setError("Please configure");
            return false;
        }
        String str3 = this.f103467X.keystoreAliasPassword;
        if (str3 != null && !str3.isEmpty()) {
            return true;
        }
        this.f103473d0.setError("Please configure");
        return false;
    }

    public final boolean D1() {
        return C15233a.j(this.f103467X.companyName, "package company name", this.f103469Z) && C15233a.j(this.f103467X.appNameP, "package app name", this.f103470a0) && C15233a.i(this.f103467X.appName, "launcher name", this.f103468Y);
    }

    public final void E1(View v10) {
        EditText editText = (EditText) v10.findViewById(R.id.code_edit);
        EditText editText2 = (EditText) v10.findViewById(R.id.code_name_edit);
        editText.setText(this.f103467X.versionCode);
        editText2.setText(this.f103467X.versionName);
        g gVar = new g(editText2, editText);
        h hVar = new h(editText2, editText);
        i iVar = new i(editText2, editText);
        editText.setOnEditorActionListener(gVar);
        editText.setOnFocusChangeListener(hVar);
        editText.addTextChangedListener(iVar);
        editText2.setOnEditorActionListener(gVar);
        editText2.setOnFocusChangeListener(hVar);
        editText2.addTextChangedListener(iVar);
    }

    public final void F1(View v10) {
        LinearLayout linearLayout = (LinearLayout) v10.findViewById(R.id.select_path);
        TextView textView = (TextView) v10.findViewById(R.id.path_text);
        textView.setText(this.f103467X.keyStorePath);
        linearLayout.setOnClickListener(new r(textView));
        PasswordEditText passwordEditText = (PasswordEditText) v10.findViewById(R.id.keystore_edit);
        this.f103471b0 = passwordEditText;
        passwordEditText.setText(this.f103467X.keystorePassowrd);
        PasswordEditText passwordEditText2 = (PasswordEditText) v10.findViewById(R.id.alias_edit);
        this.f103472c0 = passwordEditText2;
        passwordEditText2.setText(this.f103467X.keystoreAlias);
        PasswordEditText passwordEditText3 = (PasswordEditText) v10.findViewById(R.id.alias_pass_edit);
        this.f103473d0 = passwordEditText3;
        passwordEditText3.setText(this.f103467X.keystoreAliasPassword);
        a aVar = new a();
        ViewOnFocusChangeListenerC1934b viewOnFocusChangeListenerC1934b = new ViewOnFocusChangeListenerC1934b();
        c cVar = new c();
        this.f103471b0.setOnFocusChangeListener(viewOnFocusChangeListenerC1934b);
        this.f103471b0.setOnEditorActionListener(aVar);
        this.f103471b0.a(cVar);
        this.f103472c0.setOnFocusChangeListener(viewOnFocusChangeListenerC1934b);
        this.f103472c0.setOnEditorActionListener(aVar);
        this.f103472c0.a(cVar);
        this.f103473d0.setOnFocusChangeListener(viewOnFocusChangeListenerC1934b);
        this.f103473d0.setOnEditorActionListener(aVar);
        this.f103473d0.a(cVar);
    }

    @Override
    public EditorPanel k() {
        return super.k();
    }

    public final void y1(View v10) {
        EditText editText = (EditText) v10.findViewById(R.id.launcher_edit);
        this.f103468Y = editText;
        editText.setText(this.f103467X.appName);
        EditText editText2 = (EditText) v10.findViewById(R.id.company_edit);
        this.f103469Z = editText2;
        editText2.setText(this.f103467X.companyName);
        EditText editText3 = (EditText) v10.findViewById(R.id.app_edit);
        this.f103470a0 = editText3;
        editText3.setText(this.f103467X.appNameP);
        d dVar = new d();
        e eVar = new e();
        f fVar = new f();
        this.f103468Y.setOnEditorActionListener(dVar);
        this.f103468Y.setOnFocusChangeListener(eVar);
        this.f103468Y.addTextChangedListener(fVar);
        this.f103469Z.setOnEditorActionListener(dVar);
        this.f103469Z.setOnFocusChangeListener(eVar);
        this.f103469Z.addTextChangedListener(fVar);
        this.f103470a0.setOnEditorActionListener(dVar);
        this.f103470a0.setOnFocusChangeListener(eVar);
        this.f103470a0.addTextChangedListener(fVar);
    }

    public final void z1() {
        if (W7.b.f27306f.f2461d.T()) {
            BuildConfigs.d(this.f103467X, M());
        }
    }
}
