package w5;

import Ic.C2633l;
import Ic.C2636o;
import Z6.f;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.AssetManager;
import android.widget.EditText;
import android.widget.Toast;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine.Core.Components.JCompiler.ExportedJavaTXT;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Engine.Animation.AnimationData;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.graph.AnimGraph;
import com.itsmagic.engine.Engines.Engine.ImGUI.Styles.UIStyle;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeGraph;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.CubemapConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSettings;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.VulkanGraph;
import id.C13696a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;
import n.C14331a;
import n4.C14351c;
import nd.InterfaceC14380a;
import q7.C15045a;
import r4.C15147a;
import v5.C15805a;
import w5.j;
import w9.C15975a;
import wb.C15983e;
import y8.C16152a;
import yd.C16181m;

public class c {

    public class A implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class A0 implements y8.b {

        public final Context f126474a;

        public final String f126475b;

        public A0(final Context val$context, final String val$zipName) {
            this.f126474a = val$context;
            this.f126475b = val$zipName;
        }

        @Override
        public void a() {
            try {
                Toast.makeText(this.f126474a, this.f126475b + " failed", 0).show();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void b() {
        }

        @Override
        public void onSuccess() {
        }
    }

    public class B implements DialogInterface.OnClickListener {

        public final EditText f126476b;

        public final Context f126477c;

        public final String f126478d;

        public final l f126479e;

        public B(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126476b = val$input;
            this.f126477c = val$context;
            this.f126478d = val$insideProjectFullPath;
            this.f126479e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126477c) + "/" + this.f126478d + (this.f126476b.getText().toString() + ".json");
                File file = new File(str);
                if (file.exists()) {
                    Toast.makeText(this.f126477c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    this.f126478d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126477c) + "/", "");
                    C2636o.e("{\n  \"Var\": \"value\"\n}", new File(str));
                    C12735c.a("NEW_JSON");
                    l lVar = this.f126479e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class B0 implements y8.b {

        public final Context f126480a;

        public final String f126481b;

        public B0(final Context val$context, final String val$zipName) {
            this.f126480a = val$context;
            this.f126481b = val$zipName;
        }

        @Override
        public void a() {
            try {
                Toast.makeText(this.f126480a, this.f126481b + " failed", 0).show();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void b() {
        }

        @Override
        public void onSuccess() {
        }
    }

    public class C implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class C0 implements DialogInterface.OnClickListener {

        public final EditText f126482b;

        public final String f126483c;

        public final l f126484d;

        public final Context f126485e;

        public C0(final EditText val$input, final String val$inProjectPath, final l val$callbacks, final Context val$context) {
            this.f126482b = val$input;
            this.f126483c = val$inProjectPath;
            this.f126484d = val$callbacks;
            this.f126485e = val$context;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            String str = Tc.b.u(this.f126483c) + "/" + (this.f126482b.getText().toString() + Tc.b.t(this.f126483c));
            if (new File(str).exists()) {
                Toast.makeText(this.f126485e, "Destination file already exists", 0).show();
                return;
            }
            C13696a.a(new File(this.f126483c), new File(str));
            l lVar = this.f126484d;
            if (lVar != null) {
                lVar.c(null);
            }
        }
    }

    public class D implements DialogInterface.OnClickListener {

        public final EditText f126486b;

        public final Context f126487c;

        public final String f126488d;

        public final l f126489e;

        public D(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126486b = val$input;
            this.f126487c = val$context;
            this.f126488d = val$insideProjectFullPath;
            this.f126489e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126487c) + "/" + this.f126488d + (this.f126486b.getText().toString() + ".txt");
                File file = new File(str);
                if (file.exists()) {
                    Toast.makeText(this.f126487c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    this.f126488d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126487c) + "/", "");
                    C2636o.e("Text....", new File(str));
                    C12735c.a("NEW_TXT");
                    l lVar = this.f126489e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class D0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class E implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class E0 implements y8.b {

        public final Context f126490a;

        public final String f126491b;

        public E0(final Context val$context, final String val$pluginName) {
            this.f126490a = val$context;
            this.f126491b = val$pluginName;
        }

        @Override
        public void a() {
            Toast.makeText(this.f126490a, this.f126491b + " Error installing plugin, please restart the app", 0).show();
        }

        @Override
        public void b() {
            Toast.makeText(this.f126490a, this.f126491b + " Instaled, please restart the app", 0).show();
        }

        @Override
        public void onSuccess() {
        }
    }

    public class F implements DialogInterface.OnClickListener {

        public final EditText f126492b;

        public final Context f126493c;

        public final String f126494d;

        public final l f126495e;

        public F(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126492b = val$input;
            this.f126493c = val$context;
            this.f126494d = val$insideProjectFullPath;
            this.f126495e = val$callbacks;
        }

        public String a(String file) {
            AssetManager assets = N7.c.t().getAssets();
            StringBuilder sb2 = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("Editor/Shaders/" + file)));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return sb2.toString();
                    }
                    sb2.append(readLine);
                    sb2.append('\n');
                }
            } catch (FileNotFoundException e10) {
                throw new RuntimeException(e10);
            } catch (IOException e11) {
                e11.printStackTrace();
                return "";
            }
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126493c) + "/" + this.f126494d + (this.f126492b.getText().toString() + ".pvsc"));
                if (file.exists()) {
                    Toast.makeText(this.f126493c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    C2636o.a(a("post_processing_template.txt"), file);
                    C12735c.a("NEW_SHADER");
                    l lVar = this.f126495e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public static class F0 {

        public static final int[] f126496a;

        static {
            int[] iArr = new int[j.m0.values().length];
            f126496a = iArr;
            try {
                iArr[j.m0.Component.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f126496a[j.m0.Class.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f126496a[j.m0.Interface.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class G extends y.k {

        public final C15045a f126497a;

        public final String f126498b;

        public final String f126499c;

        public final Context f126500d;

        public final j.m0 f126501e;

        public final boolean f126502f;

        public final boolean f126503g;

        public final boolean f126504h;

        public final I0 f126505i;

        public G(final C15045a val$loadingBar, final String val$name, final String val$insideProjectFullPath, final Context val$context, final j.m0 val$type, final boolean val$hidePackage, final boolean val$hideImports, final boolean val$hideClass, final I0 val$listener) {
            this.f126497a = val$loadingBar;
            this.f126498b = val$name;
            this.f126499c = val$insideProjectFullPath;
            this.f126500d = val$context;
            this.f126501e = val$type;
            this.f126502f = val$hidePackage;
            this.f126503g = val$hideImports;
            this.f126504h = val$hideClass;
            this.f126505i = val$listener;
        }

        @Override
        public void b(int count) {
            String str;
            String str2;
            String str3;
            String str4;
            this.f126497a.p1();
            N7.c.Y();
            try {
                String str5 = this.f126498b;
                if (str5.contains(" ")) {
                    str5 = str5.replace(" ", "");
                }
                if (str5.contains(".")) {
                    str5 = str5.replace(".", "");
                }
                String Q10 = Tc.b.Q(str5, "");
                String replace = this.f126499c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126500d) + "/", "");
                String str6 = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126500d) + "/" + replace + (Q10 + ".java");
                if (d8.j.a0(Q10, false)) {
                    this.f126505i.onError(new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString());
                    return;
                }
                File file = new File(str6);
                if (file.exists()) {
                    this.f126505i.onError("Script " + Q10 + " already exists");
                    return;
                }
                boolean createNewFile = file.createNewFile();
                String str7 = "Unknown user";
                C8.a aVar = W7.b.f27306f;
                UserController userController = aVar.f2461d;
                if (userController != null && userController.Q()) {
                    str7 = aVar.f2461d.L();
                }
                if (createNewFile) {
                    int i10 = F0.f126496a[this.f126501e.ordinal()];
                    if (i10 == 1) {
                        if (this.f126502f) {
                            str = "";
                        } else {
                            str = "package JAVARuntime;\n\n";
                        }
                        if (!this.f126503g) {
                            str = (((((((((str + "import java.util.*;\n") + "import java.text.*;\n") + "import java.net.*;\n") + "import java.math.*;\n") + "import java.io.*;\n") + "import java.nio.*;\n") + "import java.nio.*;\n") + "import java.util.HashMap;\n") + "import java.util.Map;\n") + "\n";
                        }
                        String str8 = str + "/* @Author " + str7 + " */ \n";
                        if (this.f126504h) {
                            str2 = str8 + "\n/// Run only once\nvoid start() {\n    \n}\n\n/// Repeat every frame\nvoid repeat() {\n    \n}";
                        } else {
                            str2 = str8 + "public class " + Q10 + " extends Component{\n   /// Run only once\n   void start() {\n       \n   }\n   \n   /// Repeat every frame\n   void repeat() {\n       \n   }\n}";
                        }
                    } else if (i10 == 2) {
                        if (this.f126502f) {
                            str3 = "";
                        } else {
                            str3 = "package JAVARuntime;\n\n";
                        }
                        if (!this.f126503g) {
                            str3 = (((((((((str3 + "import java.util.*;\n") + "import java.text.*;\n") + "import java.net.*;\n") + "import java.math.*;\n") + "import java.io.*;\n") + "import java.nio.*;\n") + "import java.nio.*;\n") + "import java.util.HashMap;\n") + "import java.util.Map;\n") + "\n";
                        }
                        str2 = str3 + "/* @Author " + str7 + " */ \npublic class " + Q10 + "{ \n\n   public " + Q10 + "(){\n       // constructor\n   }\n\n   void method(){\n       // method\n   }\n}\n";
                    } else if (i10 != 3) {
                        str2 = "";
                    } else {
                        if (this.f126502f) {
                            str4 = "";
                        } else {
                            str4 = "package JAVARuntime;\n\n";
                        }
                        if (!this.f126503g) {
                            str4 = (((((((((str4 + "import java.util.*;\n") + "import java.text.*;\n") + "import java.net.*;\n") + "import java.math.*;\n") + "import java.io.*;\n") + "import java.nio.*;\n") + "import java.nio.*;\n") + "import java.util.HashMap;\n") + "import java.util.Map;\n") + "\n";
                        }
                        str2 = str4 + "/* @Author " + str7 + " */ \npublic interface " + Q10 + "{ \n   void method();\n}\n";
                    }
                    C2636o.e(str2, new File(str6));
                    d8.j.j(new File(str6));
                    N7.c.k0(new C14351c(str6.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126500d) + "/", "")));
                    C12735c.a("NEW_JAVA_SCRIPT");
                    this.f126505i.b();
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class G0 extends y.k {

        public final C15045a f126506a;

        public final Context f126507b;

        public final String f126508c;

        public final l f126509d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126510b;

            public a(final EditText val$input) {
                this.f126510b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126510b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = G0.this.f126508c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(G0.this.f126507b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(G0.this.f126507b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(G0.this.f126507b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(G0.this.f126507b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        N7.c.Y();
                        C2636o.e("import android.view.*;\nimport android.widget.*;\nimport androidx.constraintlayout.widget.*;\nimport android.webkit.*;\n\n/* @Author " + str2 + " */\n@PanelInflateMenu(\"CustomPanels/\")\npublic class " + Q10 + " extends ViewPanel {\n\n  public " + Q10 + "() {\n    // Zero-argument constructor is required\n  }\n\n  // Runs whenever the panel is attached to a HUB\n  // You should inflate all the views you would like to attach to the panel within this method.\n  public View onAttach() {\n    super.setTittle(\"Sample panel\");\n    \n     // Root layout\n    LinearLayout rootLayout = new ALinearLayout();\n    rootLayout.setOrientation(LinearLayout.VERTICAL);\n    rootLayout.setBackgroundColor(Color.Android.parseColor(\"#FFFFFF\"));\n    rootLayout.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));\n\n    WebView webView = new AWebView();\n    rootLayout.addView(toView(webView));\n    \n    webView.setWebChromeClient(\n        new WebChromeClient() {\n          public void onProgressChanged(WebView view, int progress) {\n          }\n\n          @Override\npublic boolean onConsoleMessage(ConsoleMessage consoleMessage) {\n            Console.log(\"WebView:\" + consoleMessage.message());\n            return true;\n          }\n\n          @Override\npublic boolean onJsAlert(WebView view, String url, String message, JsResult result) {\n            return false;\n          }\n\n          @Override\npublic boolean onJsConfirm(WebView view, String url, String message, JsResult result) {\n            return false;\n          }\n\n          @Override\npublic boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {\n            return false;\n          }\n        });\n    webView.setWebViewClient(\n        new WebViewClient() {\n          public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {}\n\n          @Override\npublic boolean shouldOverrideUrlLoading(WebView view, String url) {\n            return false;\n          }\n\n          @Override\npublic void onPageFinished(WebView view, String url) {\n            super.onPageFinished(view, url);\n          }\n        });\n\n    WebSettings webSettings = webView.getSettings();\n    webSettings.setUserAgentString(\"Mozilla/5.0 (Linux; U; Android 10.0; en-us; Xoom Build/HRI39) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13\");\n    webSettings.setJavaScriptEnabled(true);\n    webSettings.setDomStorageEnabled(true);\n    webSettings.setDatabaseEnabled(true);\n    webSettings.setCacheMode(WebSettings.LOAD_DEFAULT);\n    webSettings.setMixedContentMode(WebSettings.MIXED_CONTENT_COMPATIBILITY_MODE);\n    webSettings.setLoadWithOverviewMode(true);\n    webSettings.setUseWideViewPort(true);\n    webSettings.setSupportZoom(false);\n   \n    webView.loadUrl(\"https://www.google.com\");\n    return rootLayout;\n  }\n\n  // Run every frame in UI thread doesn't matter if panel is visible or not\n  public void updateUI() {}\n\n  // Run every frame in UI thread if panel is visible\n  public void updateUIVisible() {}\n\n  // Run every frame in UI thread if panel is not visible\n  public void minimizedUpdate() {}\n\n  // Runs in the engine low priority task thread.\n  public void lpTaskUpdate() {}\n\n  // Runs whenever the user taps to select the panel from the HUB panel list\n  public void onBindView() {}\n\n  // Runs whenever the user switches to another panel in the HUB\n  public void onUnbindView() {}\n\n  // Runs whenever the panel is removed from the HUB\n  // The views will be discarded, you will inflate it again when it is attached to another HUB\n  public void onDetach() {}\n}\n", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(G0.this.f126507b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = G0.this.f126509d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(G0.this.f126507b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public G0(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126506a = val$loadingBar;
            this.f126507b = val$context;
            this.f126508c = val$insideProjectFullPath;
            this.f126509d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126506a.p1();
            H0 h02 = new H0(this.f126507b);
            h02.f(this.f126507b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126507b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126507b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126507b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class H extends y.k {

        public final C15045a f126513a;

        public final Context f126514b;

        public final String f126515c;

        public final l f126516d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126517b;

            public a(final EditText val$input) {
                this.f126517b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126517b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = H.this.f126515c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(H.this.f126514b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(H.this.f126514b) + "/" + replace + (Q10 + ".java");
                    d8.j jVar = W7.b.f27310j;
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(H.this.f126514b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(H.this.f126514b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        C2636o.e("/* @Author " + str2 + " */ \n\n/// Run only once\nvoid start() {\n    \n}\n\n/// Repeat every frame\nvoid repeat() {\n    \n}", new File(str));
                        d8.j.j(new File(str));
                        N7.c.k0(new C14351c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(H.this.f126514b) + "/", "")));
                        C12735c.a("NEW_JAVA_SCRIPT");
                        l lVar = H.this.f126516d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(H.this.f126514b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public H(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126513a = val$loadingBar;
            this.f126514b = val$context;
            this.f126515c = val$insideProjectFullPath;
            this.f126516d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126513a.p1();
            H0 h02 = new H0(this.f126514b);
            h02.f(this.f126514b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126514b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126514b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126514b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public static class H0 {

        public final Context f126520a;

        public CharSequence f126521b;

        public EditText f126522c;

        public DialogInterface.OnClickListener f126523d;

        public DialogInterface.OnClickListener f126524e;

        public class a implements f.g {

            public class DialogInterfaceC2091a implements DialogInterface {
                public DialogInterfaceC2091a() {
                }

                @Override
                public void cancel() {
                }

                @Override
                public void dismiss() {
                }
            }

            public class b implements DialogInterface {
                public b() {
                }

                @Override
                public void cancel() {
                }

                @Override
                public void dismiss() {
                }
            }

            public a() {
            }

            @Override
            public void c(String text) {
                if (H0.this.f126522c != null) {
                    H0.this.f126522c.setText(text);
                }
                if (H0.this.f126523d != null) {
                    H0.this.f126523d.onClick(new DialogInterfaceC2091a(), -1);
                }
            }

            @Override
            public void onCancel() {
                if (H0.this.f126524e != null) {
                    H0.this.f126524e.onClick(new b(), -2);
                }
            }
        }

        public H0(Context context) {
            this.f126520a = context;
        }

        public H0 d(CharSequence text, DialogInterface.OnClickListener listener) {
            this.f126524e = listener;
            return this;
        }

        public H0 e(CharSequence text, DialogInterface.OnClickListener listener) {
            this.f126523d = listener;
            return this;
        }

        public H0 f(CharSequence title) {
            this.f126521b = title;
            return this;
        }

        public H0 g(EditText input) {
            this.f126522c = input;
            return this;
        }

        public void h() {
            EditText editText = this.f126522c;
            String obj = (editText == null || editText.getText() == null) ? "" : this.f126522c.getText().toString();
            CharSequence charSequence = this.f126521b;
            Z6.f.x1(charSequence != null ? charSequence.toString() : "", obj, new a());
        }
    }

    public class I implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public interface I0 {
        void b();

        void onError(String error);
    }

    public class J implements DialogInterface.OnClickListener {

        public final EditText f126528b;

        public final Context f126529c;

        public final String f126530d;

        public final l f126531e;

        public J(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126528b = val$input;
            this.f126529c = val$context;
            this.f126530d = val$insideProjectFullPath;
            this.f126531e = val$callbacks;
        }

        public String a(String file) {
            AssetManager assets = N7.c.t().getAssets();
            StringBuilder sb2 = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("Editor/Shaders/" + file)));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return sb2.toString();
                    }
                    sb2.append(readLine);
                    sb2.append('\n');
                }
            } catch (FileNotFoundException e10) {
                throw new RuntimeException(e10);
            } catch (IOException e11) {
                e11.printStackTrace();
                return "";
            }
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126529c) + "/" + this.f126530d + (this.f126528b.getText().toString() + ".svsc"));
                if (file.exists()) {
                    Toast.makeText(this.f126529c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    C2636o.a(a("skybox_template.txt"), file);
                    C12735c.a("NEW_SHADER");
                    l lVar = this.f126531e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class K implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class L implements DialogInterface.OnClickListener {

        public final EditText f126532b;

        public final Context f126533c;

        public final String f126534d;

        public final l f126535e;

        public L(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126532b = val$input;
            this.f126533c = val$context;
            this.f126534d = val$insideProjectFullPath;
            this.f126535e = val$callbacks;
        }

        public String a(String file) {
            AssetManager assets = N7.c.t().getAssets();
            StringBuilder sb2 = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("Editor/Shaders/" + file)));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return sb2.toString();
                    }
                    sb2.append(readLine);
                    sb2.append('\n');
                }
            } catch (FileNotFoundException e10) {
                throw new RuntimeException(e10);
            } catch (IOException e11) {
                e11.printStackTrace();
                return "";
            }
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126533c) + "/" + this.f126534d + (this.f126532b.getText().toString() + ".avsc"));
                if (file.exists()) {
                    Toast.makeText(this.f126533c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    C2636o.a(a("ambient_light_template.txt"), file);
                    C12735c.a("NEW_SHADER");
                    l lVar = this.f126535e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class M implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class N implements DialogInterface.OnClickListener {

        public final EditText f126536b;

        public final Context f126537c;

        public final String f126538d;

        public final l f126539e;

        public N(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126536b = val$input;
            this.f126537c = val$context;
            this.f126538d = val$insideProjectFullPath;
            this.f126539e = val$callbacks;
        }

        public String a(String file) {
            AssetManager assets = N7.c.t().getAssets();
            StringBuilder sb2 = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("Editor/Shaders/" + file)));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return sb2.toString();
                    }
                    sb2.append(readLine);
                    sb2.append('\n');
                }
            } catch (FileNotFoundException e10) {
                throw new RuntimeException(e10);
            } catch (IOException e11) {
                e11.printStackTrace();
                return "";
            }
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126537c) + "/" + this.f126538d + (this.f126536b.getText().toString() + ".uipvsc"));
                if (file.exists()) {
                    Toast.makeText(this.f126537c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    C2636o.a(a("post_processing_template.txt"), file);
                    C12735c.a("NEW_SHADER");
                    l lVar = this.f126539e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class O implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class P implements DialogInterface.OnClickListener {

        public final EditText f126540b;

        public final Context f126541c;

        public final String f126542d;

        public final l f126543e;

        public P(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126540b = val$input;
            this.f126541c = val$context;
            this.f126542d = val$insideProjectFullPath;
            this.f126543e = val$callbacks;
        }

        public String a(String file) {
            AssetManager assets = N7.c.t().getAssets();
            StringBuilder sb2 = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("Editor/Shaders/" + file)));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return sb2.toString();
                    }
                    sb2.append(readLine);
                    sb2.append('\n');
                }
            } catch (FileNotFoundException e10) {
                throw new RuntimeException(e10);
            } catch (IOException e11) {
                e11.printStackTrace();
                return "";
            }
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126541c) + "/" + this.f126542d + (this.f126540b.getText().toString() + ".mvsc"));
                if (file.exists()) {
                    Toast.makeText(this.f126541c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    C2636o.a(a("material_template.txt"), file);
                    C12735c.a("NEW_SHADER");
                    l lVar = this.f126543e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class Q implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class R implements DialogInterface.OnClickListener {

        public final EditText f126544b;

        public final Context f126545c;

        public final String f126546d;

        public final String f126547e;

        public final l f126548f;

        public R(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final String val$templateFile, final l val$callbacks) {
            this.f126544b = val$input;
            this.f126545c = val$context;
            this.f126546d = val$insideProjectFullPath;
            this.f126547e = val$templateFile;
            this.f126548f = val$callbacks;
        }

        public String a(String file) {
            AssetManager assets = N7.c.t().getAssets();
            StringBuilder sb2 = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("Editor/Shaders/" + file)));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return sb2.toString();
                    }
                    sb2.append(readLine);
                    sb2.append('\n');
                }
            } catch (FileNotFoundException e10) {
                throw new RuntimeException(e10);
            } catch (IOException e11) {
                e11.printStackTrace();
                return "";
            }
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126545c) + "/" + this.f126546d + (this.f126544b.getText().toString() + ".vfxs"));
                if (file.exists()) {
                    Toast.makeText(this.f126545c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    C2636o.a(a(this.f126547e), file);
                    C12735c.a("NEW_SHADER");
                    l lVar = this.f126548f;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class S extends y.k {

        public final C15045a f126549a;

        public final Context f126550b;

        public final String f126551c;

        public final l f126552d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126553b;

            public a(final EditText val$input) {
                this.f126553b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126553b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = S.this.f126551c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(S.this.f126550b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(S.this.f126550b) + "/" + replace + (Q10 + ".java");
                    d8.j jVar = W7.b.f27310j;
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(S.this.f126550b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(S.this.f126550b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknow user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        C2636o.e("/* @Author " + str2 + " */ \n\npublic interface " + Q10 + "{ \n   void method();\n}\n", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(S.this.f126550b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_JAVA_INTERFACE_SCRIPT");
                        l lVar = S.this.f126552d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(S.this.f126550b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public S(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126549a = val$loadingBar;
            this.f126550b = val$context;
            this.f126551c = val$insideProjectFullPath;
            this.f126552d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126549a.p1();
            H0 h02 = new H0(this.f126550b);
            h02.f(this.f126550b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126550b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126550b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126550b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class T implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class U implements DialogInterface.OnClickListener {

        public final EditText f126556b;

        public final Context f126557c;

        public final String f126558d;

        public final boolean f126559e;

        public final l f126560f;

        public U(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final boolean val$isPostProcessing, final l val$callbacks) {
            this.f126556b = val$input;
            this.f126557c = val$context;
            this.f126558d = val$insideProjectFullPath;
            this.f126559e = val$isPostProcessing;
            this.f126560f = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126556b.getText().toString() + ".vgs";
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126557c) + "/" + this.f126558d + str);
                if (file.exists()) {
                    Toast.makeText(this.f126557c, "File already exists", 0).show();
                    return;
                }
                if (file.createNewFile()) {
                    VulkanGraph vulkanGraph = new VulkanGraph();
                    ShaderGraphData e10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.e();
                    ShaderGraphSettings shaderGraphSettings = e10.settings;
                    boolean z10 = this.f126559e;
                    shaderGraphSettings.isPostProcessing = z10;
                    if (z10) {
                        com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.i(e10);
                    }
                    e10.e();
                    com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.h(e10);
                    e10.q();
                    vulkanGraph.j(e10);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f126558d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126557c) + "/", ""));
                    sb2.append("/");
                    X7.a.d(sb2.toString(), str, vulkanGraph.i(this.f126557c));
                    C12735c.a("NEW_SHADER");
                    l lVar = this.f126560f;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
    }

    public class V implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class W implements DialogInterface.OnClickListener {

        public final EditText f126561b;

        public final Context f126562c;

        public final String f126563d;

        public final l f126564e;

        public W(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126561b = val$input;
            this.f126562c = val$context;
            this.f126563d = val$insideProjectFullPath;
            this.f126564e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126561b.getText().toString() + ".ncg";
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126562c) + "/" + this.f126563d + str);
                if (file.exists()) {
                    Toast.makeText(this.f126562c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    NoCodeGraph noCodeGraph = new NoCodeGraph();
                    NoCodeData c10 = ga.E.c();
                    c10.I();
                    ga.E.e(c10);
                    c10.e1();
                    noCodeGraph.j(c10);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f126563d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126562c) + "/", ""));
                    sb2.append("/");
                    X7.a.d(sb2.toString(), str, noCodeGraph.i(this.f126562c));
                    C12735c.a("NEW_NC_GRAPH");
                    l lVar = this.f126564e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class X implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class Y implements DialogInterface.OnClickListener {

        public final EditText f126565b;

        public final Context f126566c;

        public final String f126567d;

        public final l f126568e;

        public Y(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126565b = val$input;
            this.f126566c = val$context;
            this.f126567d = val$insideProjectFullPath;
            this.f126568e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126565b.getText().toString() + ".anim";
                String o10 = Tc.b.o((com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126566c) + "/" + this.f126567d) + "/");
                File file = new File(o10);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(Tc.b.o(o10 + str));
                if (file2.exists()) {
                    Toast.makeText(this.f126566c, "Animation already exists", 0).show();
                    return;
                }
                if (file2.createNewFile()) {
                    AnimationData animationData = new AnimationData();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f126567d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126566c) + "/", ""));
                    sb2.append("/");
                    String sb3 = sb2.toString();
                    X7.a.d(sb3, str, X7.a.m().toJson(animationData));
                    l lVar = this.f126568e;
                    if (lVar != null) {
                        lVar.c(sb3 + str);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class Z implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class C15911a extends y.k {

        public final C15045a f126569a;

        public final Context f126570b;

        public final String f126571c;

        public final l f126572d;

        public class DialogInterfaceOnClickListenerC2092a implements DialogInterface.OnClickListener {

            public final EditText f126573b;

            public DialogInterfaceOnClickListenerC2092a(final EditText val$input) {
                this.f126573b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126573b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = C15911a.this.f126571c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15911a.this.f126570b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(C15911a.this.f126570b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(C15911a.this.f126570b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(C15911a.this.f126570b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        String str3 = Tc.b.u(str) + "/" + Tc.b.w(str, true).toLowerCase(Locale.ROOT) + "_layout.xml";
                        N7.c.Y();
                        C2636o.e("import android.view.*;\nimport android.widget.*;\nimport androidx.constraintlayout.widget.*;\n\n/* @Author " + str2 + " */\n@PanelInflateMenu(\"CustomPanels/\")\npublic class " + Q10 + " extends ViewPanel {\n\n  public " + Q10 + "() {\n    // Zero-argument constructor is required\n  } \n\n  // Runs whenever the panel is attached to a HUB\n  // You should inflate all the views you would like to attach to the panel within this method.\n  public View onAttach() {\n    super.setTittle(\"Sample panel\");\n    \n    View root = ALayoutInflater.inflate(\"" + str3.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15911a.this.f126570b) + "/", "") + "\");\n    \n    Button button = findViewByID(root, \"button1\");\n    button.setOnClickListener(\n        new View.OnClickListener() {\n          public void onClick(View v) {\n            Toast.showText(\"Button clicked\", Toast.LENGTH_SHORT);\n            Editor.inflateAnchoredFloatingPanelInDP(v, Editor.AnchorSide.Below, new " + Q10 + "(), 100, 80);\n          }\n        });\n\n    return root;\n  }\n\n  // Run every frame in UI thread doesn't matter if panel is visible or not\n  public void updateUI() {}\n\n  // Run every frame in UI thread if panel is visible\n  public void updateUIVisible() {}\n\n  // Run every frame in UI thread if panel is not visible\n  public void minimizedUpdate() {}\n\n  // Runs in the engine low priority task thread.\n  public void lpTaskUpdate() {}\n\n  // Runs whenever the user taps to select the panel from the HUB panel list\n  public void onBindView() {}\n\n  // Runs whenever the user switches to another panel in the HUB\n  public void onUnbindView() {}\n\n  // Runs whenever the panel is removed from the HUB\n  // The views will be discarded, you will inflate it again when it is attached to another HUB\n  public void onDetach() {}\n}\n", new File(str));
                        X7.a.j(str3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<LinearLayout xmlns:android=\"http://schemas.android.com/apk/res/android\"\n    android:layout_width=\"match_parent\"\n    android:layout_height=\"match_parent\"\n    android:orientation=\"vertical\"\n    android:padding=\"16dp\"\n    android:background=\"#f0f0f0\">\n\n    <TextView\n        android:id=\"@+id/textView1\"\n        android:layout_width=\"wrap_content\"\n        android:layout_height=\"wrap_content\"\n        android:text=\"Hello, World!\"\n        android:textColor=\"#ff5733\"\n        android:textSize=\"18sp\"\n        android:gravity=\"center\"\n        android:layout_gravity=\"center\"\n        android:visibility=\"visible\"\n        android:padding=\"8dp\"\n        android:background=\"#ffcc00\"/>\n\n    <Space\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"20dp\"/>\n\n    <Button\n        android:id=\"@+id/button1\"\n        android:layout_width=\"wrap_content\"\n        android:layout_height=\"wrap_content\"\n        android:text=\"Click Me!\"\n        android:textAllCaps=\"true\"\n        android:layout_gravity=\"center\"\n        android:visibility=\"visible\"\n        android:background=\"#8e44ad\"\n        android:textColor=\"#ffffff\"\n        android:padding=\"12dp\"/>\n\n    <Space\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"20dp\"/>\n\n    <CheckBox\n        android:id=\"@+id/checkBox1\"\n        android:layout_width=\"wrap_content\"\n        android:layout_height=\"wrap_content\"\n        android:text=\"Accept Terms\"\n        android:layout_gravity=\"center\"/>\n    <RadioButton\n        android:id=\"@+id/radioButton1\"\n        android:layout_width=\"wrap_content\"\n        android:layout_height=\"wrap_content\"\n        android:text=\"Option 1\"\n        android:layout_gravity=\"center\"/>\n\n    <Space\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"20dp\"/>\n\n    <!-- FrameLayout with another TextView -->\n    <FrameLayout\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"wrap_content\"\n        android:layout_gravity=\"center\">\n        <TextView\n            android:layout_width=\"wrap_content\"\n            android:layout_height=\"wrap_content\"\n            android:text=\"Centered in FrameLayout\"\n            android:gravity=\"center\"\n            android:layout_gravity=\"center\"\n            android:background=\"#2ecc71\"\n            android:textColor=\"#ffffff\"/>\n    </FrameLayout>\n\n    <Space\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"20dp\"/>\n\n    <ScrollView\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"wrap_content\">\n        <LinearLayout\n            android:layout_width=\"match_parent\"\n            android:layout_height=\"match_parent\"\n            android:orientation=\"vertical\">\n\n            <Button\n                android:layout_width=\"match_parent\"\n                android:layout_height=\"wrap_content\"\n                android:text=\"Button in ScrollView\"\n                android:background=\"#1abc9c\"\n                android:textColor=\"#ffffff\"/>\n\n            <Space\n                android:layout_width=\"match_parent\"\n                android:layout_height=\"20dp\"/>\n\n            <Button\n                android:layout_width=\"match_parent\"\n                android:layout_height=\"wrap_content\"\n                android:text=\"Button in ScrollView\"\n                android:background=\"#1abc9c\"\n                android:textColor=\"#ffffff\"/>\n        </LinearLayout>\n    </ScrollView>\n\n</LinearLayout>\n");
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15911a.this.f126570b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = C15911a.this.f126572d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15911a.this.f126570b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15911a(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126569a = val$loadingBar;
            this.f126570b = val$context;
            this.f126571c = val$insideProjectFullPath;
            this.f126572d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126569a.p1();
            H0 h02 = new H0(this.f126570b);
            h02.f(this.f126570b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126570b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126570b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC2092a(editText));
            h02.d(this.f126570b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class DialogInterfaceOnClickListenerC15912a0 implements DialogInterface.OnClickListener {

        public final EditText f126576b;

        public final String f126577c;

        public final Context f126578d;

        public final boolean f126579e;

        public final l f126580f;

        public DialogInterfaceOnClickListenerC15912a0(final EditText val$input, final String val$insideProjectFullPath, final Context val$context, final boolean val$createExample, final l val$callbacks) {
            this.f126576b = val$input;
            this.f126577c = val$insideProjectFullPath;
            this.f126578d = val$context;
            this.f126579e = val$createExample;
            this.f126580f = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String obj = this.f126576b.getText().toString();
                if (obj.contains(" ")) {
                    obj = obj.replace(" ", "");
                }
                if (obj.contains(".")) {
                    obj = obj.replace(".", "");
                }
                String P10 = Tc.b.P(obj);
                String replace = this.f126577c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126578d) + "/", "");
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126578d) + "/" + replace + (P10 + ".java");
                d8.j jVar = W7.b.f27310j;
                if (d8.j.Z(P10)) {
                    Toast.makeText(this.f126578d, new C3867a("Java Class " + P10 + " already exists or is reserved", "Classe java " + P10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                    return;
                }
                File file = new File(str);
                if (file.exists()) {
                    Toast.makeText(this.f126578d, "Java " + P10 + " already exists", 0).show();
                    return;
                }
                if (!file.createNewFile()) {
                    return;
                }
                C2636o.e((this.f126579e ? "package JAVARuntime;\n\n// Useful imports\nimport java.util.*;\nimport java.text.*;\nimport java.net.*;\nimport java.math.*;\nimport java.io.*;\nimport java.nio.*;\nimport android.widget.*;\n\n/**\n * @Author \n*/\npublic class @CLASSNAME@ extends Module {\n\n    // Zero-argument constructor required\n    public @CLASSNAME@() {\n        super(\"@CLASSNAME@\"); // Initialize module with the name\n\n        //// CONFIGURATIONS\n        super.setExecution(new ExecutionAllow(\n                true,  // Allow module execution while game is stopped\n                false  // Allow module execution while game is running\n        ));\n        //super.setCloseWhenDetach(true);       // Closes the module when the user exit.\n        //super.setFocusOnSelectedObject(true); // World objects panel will focus on selected object\n        //super.setRequestSelectedObject(true); // Requires a selected object before opening module\n        //super.setHideEditorTools(true);       // Hide object move/rotate/scale options while in the module\n        //super.setChangeToGameViewWhenPlay(false); // false = Editor does not switch to game view when playing the game\n        //super.setRequestComponentName( \"Component name\" ) // Requires a specific component to be attached on object before opening this module\n\n\n        //// EXTRA CONFIGURATIONS\n        ModuleConfig moduleConfig = new ModuleConfig(); // Creates a new ModuleConfig instance\n\n        //// This creates a button to the Project Files context menu.\n        //// Adding a button for the Texture file format can be opened with this module\n        //// When the user touches the button \"Open with my module\", this module will be called and\n        //// The function \"onOpenFile\" will be called with the texture file\n        //moduleConfig.contextMenus.add(new ContextMenu(FormatDictionaries.TEXTURE, \"Open with my module\"));\n\n        super.setModuleConfigs(moduleConfig); // Set a extra config class in to the module\n\n\n        //// PANEL CONTROLLING\n\n        // DEFAULT PANELS NAME\n        //   WORLD_OBJECTS\n        //   WORLD_SETTINGS\n        //   CREATE_NEW_OBJECT\n        //   PROJECT_FILES\n        //   PROFILER\n        //   OBJECT_PROPERTIES\n        //   CONSOLE\n        //   ANIMATION_EDITOR\n        //   ANIMATION_TIMELINE\n        //   PROJECT_SCRIPTS\n        // !Custom panels are coming soon possible!\n\n        super.addLeftPanel(WORLD_OBJECTS);       // Add a panel to Left panels\n        super.addLeftPanel(PROJECT_FILES);       // Add a panel to Left panels\n        super.addRightPanel(OBJECT_PROPERTIES);  // Add a panel to Right panels\n        super.addBottomPanel(CONSOLE);           // Add a panel to Bottom panels\n    }\n\n    /// Called when the user enter the module\n    public void onStart() {\n        Console.log(\"Victory\");\n\n        //// USEFUL FUNCTIONS\n        //super.detach(); // Force user to exit the module\n        //super.detachAndClose(); // Force user to exit the module, then close it from panel\n        //super.getSelectedObject(); // Returns the selected object  (Editor only)\n        //super.isSelected(); // Returns true when the modules is being used by user  (Editor only)\n        //super.isGameRunning(); // Returns true if the game is running (Editor only)\n        //super.isGameStopped(); // Returns true if the game is stopped (Editor only)\n\n\n        //// ANDROID WIDGETS INFLATION\n        // Android widgets should be inflated inside onStart()\n        // All android widgets are deleted when the user exits the module\n\n        // USABLE WIDGETS\n        // ImageView, LinearLayout, FrameLayout, TextView, Button, ListView, View\n        // Check android documentation about widgets and how to use also\n        // is possible to add event listeners to android widgets\n\n        TextView textView = LayoutInflator.newTextView(); // Creates a new TextView\n        textView.setText(\"@CLASSNAME@ Example text\"); // Set the text\n        super.addView(textView); // Add any widgets to module usable space\n\n\n        //// HOW TO SET A TEXTURE ON A ImageView\n        ImageView imageView = LayoutInflator.newImageView(); // Creates a new ImageView\n        // is necessary to call ITsMagic to do it for you\n        LayoutUtils.setImage(imageView, new PFile(\"TEXTURE ADDRESS\"));\n        super.addView(imageView); // Add any widgets to module usable space\n\n\n        //super.removeView(textView); // Remove any widgets from module space\n        //super.removeView(imageView); // Remove any widgets from module space\n\n\n\n        //// THREAD SYNCHRONIZER\n        // Aways remember, modules are running on Android thread\n        // But the game is running on the engine Thread\n        // So if you want to modify any information from a SpatialObject, or something about the game\n        // Is necessary to call the thread synchronizer to allow you to do it\n\n        super.runOnEngine(new Runnable() {\n            public void run() {\n                /// Execute here everything you want to do on spatial objects, or any game information\n                /// Calling this is expensively, so do has much you can on a single call\n\n                /// Example of what should be called here:\n                /// Object component add/remove\n                /// Object instantiation\n                /// Object child add/remove\n                /// ...\n\n\n                @CLASSNAME@.this.runOnModule(new Runnable() {\n                    public void run() {\n                        //// Sometimes you want to refresh a WIDGET, or any screen information from android\n                        //// And you can not do it inside Engine THREAD, so is necessary to reverse call the thread synchronizer\n                        //// Execute here the module widgets and screen information\n                    }\n                });\n            }\n        });\n\n\n        //// Don't worry if you don't understand everything here now, just keep going\n        //// If you mess with threads, ITsMagic might CRASH/STOP\n        //// Theres no way to prevent you from blocking threads\n    }\n\n    /// Called when the user exits the module\n    void onStop() {\n        Console.log(\"Bye\");\n    }\n\n    /// Called when a file is opened with the module\n    void onOpenFile(PFile pFile) {\n        Console.log(\"Opening file on @CLASSNAME@ \" + pFile.getFilePath());\n    }\n\n    /// Called when an object is selected while using your module\n    void onObjectSelected(SpatialObject object) {\n        if(object != null){\n            Console.log(object.getName() + \" is selected\");\n        } else {\n            Console.log(\"Nothing selected\");\n        }\n    }\n}" : "package JAVARuntime;\n\n// Useful imports\nimport java.util.*;\nimport java.text.*;\nimport java.net.*;\nimport java.math.*;\nimport java.io.*;\nimport java.nio.*;\nimport android.widget.*;\n\n/**\n * @Author \n*/\npublic class @CLASSNAME@ extends Module {\n\n    // Zero-argument constructor required\n    public @CLASSNAME@() {\n        super(\"@CLASSNAME@\"); // Initialize module with the name\n    }\n\n    /// Called when the user enter the module\n    void onStart() {\n        Console.log(\"Victory\");\n    }\n\n    /// Called when the user exits the module\n    void onStop() {\n        Console.log(\"Bye\");\n    }\n\n    /// Called when a file is opened with the module\n    void onOpenFile(PFile pFile) {\n        Console.log(\"Opening file on @CLASSNAME@ \" + pFile.getFilePath());\n    }\n\n    /// Called when an object is selected while using your module\n    void onObjectSelected(SpatialObject object) {\n        \n    }\n}").replaceAll("@CLASSNAME@", P10), new File(str));
                d8.j.j(new File(str));
                N7.c.k0(new C14351c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126578d) + "/", "")));
                l lVar = this.f126580f;
                if (lVar != null) {
                    lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126578d) + "/", ""));
                }
                try {
                    Toast.makeText(this.f126578d, "Please understand, modules still experimental", 1).show();
                } catch (Exception unused) {
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C15913b extends y.k {

        public final C15045a f126581a;

        public final Context f126582b;

        public final String f126583c;

        public final l f126584d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126585b;

            public a(final EditText val$input) {
                this.f126585b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126585b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = C15913b.this.f126583c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15913b.this.f126582b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(C15913b.this.f126582b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(C15913b.this.f126582b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(C15913b.this.f126582b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        N7.c.Y();
                        C2636o.e("/* @Author " + str2 + " */\npublic class " + Q10 + " extends TerminalCLIExtension {\n\n    public " + Q10 + "() {\n       // Zero-argument constructor is required\n    } \n\n    @Override\n    public String getCommand() {\n       return \"command\";\n    }\n\n    @Override\n    public void start(String[] args) {\n       log(\"Command started\");\n    }\n\n    @Override\n    public void run(String command) {\n       log(command + \" called;\");\n       exit();\");\n\n    }\n}", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15913b.this.f126582b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = C15913b.this.f126584d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15913b.this.f126582b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class DialogInterfaceOnClickListenerC2093b implements DialogInterface.OnClickListener {
            public DialogInterfaceOnClickListenerC2093b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15913b(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126581a = val$loadingBar;
            this.f126582b = val$context;
            this.f126583c = val$insideProjectFullPath;
            this.f126584d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126581a.p1();
            H0 h02 = new H0(this.f126582b);
            h02.f(this.f126582b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126582b);
            editText.setInputType(64);
            editText.setText("MyCommand");
            h02.g(editText);
            h02.e(this.f126582b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126582b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC2093b());
            h02.h();
        }
    }

    public class DialogInterfaceOnClickListenerC15914b0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class C2094c extends y.k {

        public final C15045a f126588a;

        public final Context f126589b;

        public final String f126590c;

        public final l f126591d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126592b;

            public a(final EditText val$input) {
                this.f126592b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126592b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = C2094c.this.f126590c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C2094c.this.f126589b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(C2094c.this.f126589b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(C2094c.this.f126589b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(C2094c.this.f126589b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        N7.c.Y();
                        C2636o.e("/* @Author " + str2 + " */\npublic class " + Q10 + " extends TextScriptingExtension {\n\n  private File loadedFile;\n\n  @Override\n  public void replaceScript(File newScript) {\n    loadScript(newScript);\n  }\n\n  @Override\n  public void openScript(File script) {\n    loadScript(script);\n  }\n\n  public void loadScript(File f) {\n    try {\n      loadedFile = f;\n      String text = FileLoader.loadTextFromFile(f);\n      super.setText(text);\n    } catch (Exception e) {\n      Console.log(e);\n    }\n  }\n\n  @Override\n  public boolean hasScript() {\n    return loadedFile != null;\n  }\n\n  @Override\n  public boolean saveScript() {\n    try {\n      String text = super.getText();\n      FileLoader.exportTextToFile(text, loadedFile);\n      return true;\n    } catch (Exception e) {\n      Console.log(e);\n      return false;\n    }\n  }\n\n  @Override\n  public TextScriptingExtension.LineTip getTipForLine(int line) {\n    // show error or alert at line numbers in text editor.\n    return TextScriptingExtension.LineTip.None;\n  }\n\n  @Override\n  public String getTipTextForLine(int line) {\n    // show text when user taps on line number at text editor.\n    return \"\";\n  } \n  \n  @Override\n  public boolean supportFile(File file) {\n        return file.getName().endsWith(\".format\");\n    }\n}", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(C2094c.this.f126589b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = C2094c.this.f126591d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C2094c.this.f126589b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C2094c(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126588a = val$loadingBar;
            this.f126589b = val$context;
            this.f126590c = val$insideProjectFullPath;
            this.f126591d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126588a.p1();
            H0 h02 = new H0(this.f126589b);
            h02.f(this.f126589b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126589b);
            editText.setInputType(64);
            editText.setText("MyEditor");
            h02.g(editText);
            h02.e(this.f126589b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126589b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class DialogInterfaceOnClickListenerC15915c0 implements DialogInterface.OnClickListener {

        public final EditText f126595b;

        public final Context f126596c;

        public final String f126597d;

        public final l f126598e;

        public DialogInterfaceOnClickListenerC15915c0(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126595b = val$input;
            this.f126596c = val$context;
            this.f126597d = val$insideProjectFullPath;
            this.f126598e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126596c) + "/" + this.f126597d + (this.f126595b.getText().toString() + ".tdata"));
                if (file.exists()) {
                    Toast.makeText(this.f126596c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    C15975a.d().o(file);
                    l lVar = this.f126598e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C15916d extends y.k {

        public final C15045a f126599a;

        public final Context f126600b;

        public final String f126601c;

        public final l f126602d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126603b;

            public a(final EditText val$input) {
                this.f126603b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126603b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = C15916d.this.f126601c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15916d.this.f126600b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(C15916d.this.f126600b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(C15916d.this.f126600b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(C15916d.this.f126600b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        N7.c.Y();
                        C2636o.e("import android.view.*;\nimport android.widget.*;\nimport androidx.constraintlayout.widget.*;\n\n/* @Author " + str2 + " */\npublic class " + Q10 + " extends ComponentInspector<Component> {\n\n  // Runs whenever the panel is attached to a HUB\n  // You should inflate all the views you would like to attach to the panel within this method.\n  public View onAttach() {\n    return null;\n  }\n\n  // Run every frame in UI thread if panel is visible\n  public void updateUIVisible() {}\n}\n", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15916d.this.f126600b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = C15916d.this.f126602d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15916d.this.f126600b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15916d(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126599a = val$loadingBar;
            this.f126600b = val$context;
            this.f126601c = val$insideProjectFullPath;
            this.f126602d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126599a.p1();
            H0 h02 = new H0(this.f126600b);
            h02.f(this.f126600b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126600b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126600b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126600b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class C15917d0 extends y.k {

        public final C15045a f126606a;

        public final Context f126607b;

        public final String f126608c;

        public final l f126609d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126610b;

            public a(final EditText val$input) {
                this.f126610b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126610b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = C15917d0.this.f126608c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15917d0.this.f126607b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(C15917d0.this.f126607b) + "/" + replace + (Q10 + ".java");
                    d8.j jVar = W7.b.f27310j;
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(C15917d0.this.f126607b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(C15917d0.this.f126607b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknow user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        C2636o.e("/* @Author " + str2 + " */ \n\npublic class " + Q10 + "{ \n\n   public " + Q10 + "(){\n       // constructor\n   }\n\n   void method(){\n       // method\n   }\n}\n", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15917d0.this.f126607b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_JAVA_CLASS_SCRIPT");
                        l lVar = C15917d0.this.f126609d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15917d0.this.f126607b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15917d0(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126606a = val$loadingBar;
            this.f126607b = val$context;
            this.f126608c = val$insideProjectFullPath;
            this.f126609d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126606a.p1();
            H0 h02 = new H0(this.f126607b);
            h02.f(this.f126607b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126607b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126607b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126607b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class C15918e extends y.k {

        public final C15045a f126613a;

        public final Context f126614b;

        public final String f126615c;

        public final l f126616d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126617b;

            public a(final EditText val$input) {
                this.f126617b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126617b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = C15918e.this.f126615c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15918e.this.f126614b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(C15918e.this.f126614b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(C15918e.this.f126614b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(C15918e.this.f126614b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        N7.c.Y();
                        C2636o.e("import android.view.*;\nimport android.widget.*;\nimport androidx.constraintlayout.widget.*;\n\n/* @Author " + str2 + " */\npublic class " + Q10 + " extends ComponentInspector<Component> {\n\n  // Runs whenever the panel is attached to a HUB\n  // You should inflate all the views you would like to attach to the panel within this method.\n  public View onAttach() {\n\n    // Root layout\n    LinearLayout rootLayout = new ALinearLayout();\n    rootLayout.setOrientation(LinearLayout.VERTICAL);\n    rootLayout.setBackgroundColor(Color.Android.parseColor(\"#FFFFFF\"));\n    rootLayout.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));\n    rootLayout.setPadding(24, 24, 24, 24);\n\n    // \"New\" button\n    Button newButton = new AButton();\n    newButton.setText(\"+ New\");\n    newButton.setAllCaps(false);\n    LinearLayout.LayoutParams buttonParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);\n    buttonParams.gravity = Gravity.START;\n    newButton.setLayoutParams(buttonParams);\n    newButton.setOnClickListener(\n        new View.OnClickListener() {\n          public void onClick(View v) {\n            Toast.showText(\"Button clicked\", Toast.LENGTH_SHORT);\n          }\n        });\n\n    // Center text\n    ATextView centerText = new ATextView();\n    centerText.setText(\"This is a sample layout\");\n    centerText.setTextColor(Color.Android.BLACK);\n    centerText.setTextSize(16);\n    centerText.setGravity(Gravity.CENTER);\n\n    LinearLayout.LayoutParams textParams =\n        new LinearLayout.LayoutParams(\n            ViewGroup.LayoutParams.MATCH_PARENT, 0, 1 // Fill remaining space vertically\n            );\n    centerText.setLayoutParams(textParams);\n\n    // Add views to root layout\n    rootLayout.addView(newButton);\n    rootLayout.addView(centerText);\n\n    return rootLayout;\n  }\n  // Run every frame in UI thread if panel is visible\n  public void updateUIVisible() {}\n}\n", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15918e.this.f126614b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = C15918e.this.f126616d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15918e.this.f126614b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15918e(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126613a = val$loadingBar;
            this.f126614b = val$context;
            this.f126615c = val$insideProjectFullPath;
            this.f126616d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126613a.p1();
            H0 h02 = new H0(this.f126614b);
            h02.f(this.f126614b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126614b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126614b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126614b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class DialogInterfaceOnClickListenerC15919e0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class C15920f extends y.k {

        public final C15045a f126620a;

        public final Context f126621b;

        public final String f126622c;

        public final l f126623d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126624b;

            public a(final EditText val$input) {
                this.f126624b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126624b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = C15920f.this.f126622c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15920f.this.f126621b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(C15920f.this.f126621b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(C15920f.this.f126621b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(C15920f.this.f126621b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        String str3 = Tc.b.u(str) + "/" + Tc.b.w(str, true).toLowerCase(Locale.ROOT) + "_layout.xml";
                        N7.c.Y();
                        C2636o.e("import android.view.*;\nimport android.widget.*;\nimport androidx.constraintlayout.widget.*;\n\n/* @Author " + str2 + " */\npublic class " + Q10 + " extends ComponentInspector<Component> {\n\n  // Runs whenever the panel is attached to a HUB\n  // You should inflate all the views you would like to attach to the panel within this method.\n  public View onAttach() {\n    super.setTittle(\"Sample panel\");\n    \n    View root = ALayoutInflater.inflate(\"" + str3.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15920f.this.f126621b) + "/", "") + "\");\n    \n    Button button = findViewByID(root, \"button1\");\n    button.setOnClickListener(\n        new View.OnClickListener() {\n          public void onClick(View v) {\n            Toast.showText(\"Button clicked\", Toast.LENGTH_SHORT);\n            Editor.inflateAnchoredFloatingPanelInDP(v, Editor.AnchorSide.Below, new " + Q10 + "(), 100, 80);\n          }\n        });\n\n    return root;\n  }\n\n  // Run every frame in UI thread if panel is visible\n  public void updateUIVisible() {}\n}\n", new File(str));
                        X7.a.j(str3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<LinearLayout xmlns:android=\"http://schemas.android.com/apk/res/android\"\n    android:layout_width=\"match_parent\"\n    android:layout_height=\"match_parent\"\n    android:orientation=\"vertical\"\n    android:padding=\"16dp\"\n    android:background=\"#f0f0f0\">\n\n    <TextView\n        android:id=\"@+id/textView1\"\n        android:layout_width=\"wrap_content\"\n        android:layout_height=\"wrap_content\"\n        android:text=\"Hello, World!\"\n        android:textColor=\"#ff5733\"\n        android:textSize=\"18sp\"\n        android:gravity=\"center\"\n        android:layout_gravity=\"center\"\n        android:visibility=\"visible\"\n        android:padding=\"8dp\"\n        android:background=\"#ffcc00\"/>\n\n    <Space\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"20dp\"/>\n\n    <Button\n        android:id=\"@+id/button1\"\n        android:layout_width=\"wrap_content\"\n        android:layout_height=\"wrap_content\"\n        android:text=\"Click Me!\"\n        android:textAllCaps=\"true\"\n        android:layout_gravity=\"center\"\n        android:visibility=\"visible\"\n        android:background=\"#8e44ad\"\n        android:textColor=\"#ffffff\"\n        android:padding=\"12dp\"/>\n\n    <Space\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"20dp\"/>\n\n    <CheckBox\n        android:id=\"@+id/checkBox1\"\n        android:layout_width=\"wrap_content\"\n        android:layout_height=\"wrap_content\"\n        android:text=\"Accept Terms\"\n        android:layout_gravity=\"center\"/>\n    <RadioButton\n        android:id=\"@+id/radioButton1\"\n        android:layout_width=\"wrap_content\"\n        android:layout_height=\"wrap_content\"\n        android:text=\"Option 1\"\n        android:layout_gravity=\"center\"/>\n\n    <Space\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"20dp\"/>\n\n    <!-- FrameLayout with another TextView -->\n    <FrameLayout\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"wrap_content\"\n        android:layout_gravity=\"center\">\n        <TextView\n            android:layout_width=\"wrap_content\"\n            android:layout_height=\"wrap_content\"\n            android:text=\"Centered in FrameLayout\"\n            android:gravity=\"center\"\n            android:layout_gravity=\"center\"\n            android:background=\"#2ecc71\"\n            android:textColor=\"#ffffff\"/>\n    </FrameLayout>\n\n    <Space\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"20dp\"/>\n\n    <ScrollView\n        android:layout_width=\"match_parent\"\n        android:layout_height=\"wrap_content\">\n        <LinearLayout\n            android:layout_width=\"match_parent\"\n            android:layout_height=\"match_parent\"\n            android:orientation=\"vertical\">\n\n            <Button\n                android:layout_width=\"match_parent\"\n                android:layout_height=\"wrap_content\"\n                android:text=\"Button in ScrollView\"\n                android:background=\"#1abc9c\"\n                android:textColor=\"#ffffff\"/>\n\n            <Space\n                android:layout_width=\"match_parent\"\n                android:layout_height=\"20dp\"/>\n\n            <Button\n                android:layout_width=\"match_parent\"\n                android:layout_height=\"wrap_content\"\n                android:text=\"Button in ScrollView\"\n                android:background=\"#1abc9c\"\n                android:textColor=\"#ffffff\"/>\n        </LinearLayout>\n    </ScrollView>\n\n</LinearLayout>\n");
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15920f.this.f126621b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = C15920f.this.f126623d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15920f.this.f126621b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15920f(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126620a = val$loadingBar;
            this.f126621b = val$context;
            this.f126622c = val$insideProjectFullPath;
            this.f126623d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126620a.p1();
            H0 h02 = new H0(this.f126621b);
            h02.f(this.f126621b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126621b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126621b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126621b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class DialogInterfaceOnClickListenerC15921f0 implements DialogInterface.OnClickListener {

        public final EditText f126627b;

        public final Context f126628c;

        public final String f126629d;

        public final l f126630e;

        public DialogInterfaceOnClickListenerC15921f0(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126627b = val$input;
            this.f126628c = val$context;
            this.f126629d = val$insideProjectFullPath;
            this.f126630e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            l lVar;
            N7.c.Y();
            try {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126628c) + "/" + this.f126629d + (this.f126627b.getText().toString() + ".nvmb"));
                if (file.exists()) {
                    Toast.makeText(this.f126628c, "HPOP already exists", 0).show();
                } else if (file.createNewFile() && (lVar = this.f126630e) != null) {
                    lVar.c(null);
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class DialogInterfaceOnClickListenerC15922g implements DialogInterface.OnClickListener {

        public final EditText f126631b;

        public final String f126632c;

        public final Context f126633d;

        public final l f126634e;

        public DialogInterfaceOnClickListenerC15922g(final EditText val$input, final String val$insideProjectFullPath, final Context val$context, final l val$callbacks) {
            this.f126631b = val$input;
            this.f126632c = val$insideProjectFullPath;
            this.f126633d = val$context;
            this.f126634e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String obj = this.f126631b.getText().toString();
                if (obj.contains(" ")) {
                    obj = obj.replace(" ", "");
                }
                if (obj.contains(".")) {
                    obj = obj.replace(".", "");
                }
                String Q10 = Tc.b.Q(obj, "");
                String replace = this.f126632c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126633d) + "/", "");
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126633d) + "/" + replace + (Q10 + ".java");
                if (d8.j.a0(Q10, false)) {
                    Toast.makeText(this.f126633d, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                    return;
                }
                File file = new File(str);
                if (file.exists()) {
                    Toast.makeText(this.f126633d, "Java " + Q10 + " already exists", 0).show();
                    return;
                }
                boolean createNewFile = file.createNewFile();
                String str2 = "Unknown user";
                C8.a aVar = W7.b.f27306f;
                UserController userController = aVar.f2461d;
                if (userController != null && userController.Q()) {
                    str2 = aVar.f2461d.L();
                }
                if (createNewFile) {
                    N7.c.Y();
                    C2636o.e("/* @Author " + str2 + " */\npublic class " + Q10 + " extends FilesPanelFileMenu {\n\n    public " + Q10 + "() {\n        super(\"Custom menus\");\n    }\n    \n    public void onClick(File file, View view) {\n        \n    }    \n    public boolean filterFormat(String format){\n        return true;\n    }}", new File(str));
                    d8.j.j(new File(str));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126633d));
                    sb2.append("/");
                    N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                    l lVar = this.f126634e;
                    if (lVar != null) {
                        lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126633d) + "/", ""));
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class DialogInterfaceOnClickListenerC15923g0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15924h implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15925h0 implements DialogInterface.OnClickListener {

        public final EditText f126635b;

        public final Context f126636c;

        public final String f126637d;

        public final boolean f126638e;

        public final l f126639f;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126640b;

            public final String f126641c;

            public class RunnableC2095a implements Runnable {

                public final int f126643b;

                public RunnableC2095a(final int val$finalScale) {
                    this.f126643b = val$finalScale;
                }

                @Override
                public void run() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(DialogInterfaceOnClickListenerC15925h0.this.f126637d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                    sb2.append(a.this.f126641c);
                    G3.b.G(sb2.toString(), this.f126643b, DialogInterfaceOnClickListenerC15925h0.this.f126638e, 1);
                }
            }

            public a(final EditText val$input, final String val$terrainName) {
                this.f126640b = val$input;
                this.f126641c = val$terrainName;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                int v12 = (int) Nc.b.v1(this.f126640b.getText().toString(), 1024.0f);
                if (v12 < 0) {
                    v12 = -v12;
                }
                if (v12 > 0) {
                    new Thread(new RunnableC2095a(v12)).start();
                } else {
                    Toast.makeText(DialogInterfaceOnClickListenerC15925h0.this.f126636c, "Invalid resolution", 0).show();
                }
                l lVar = DialogInterfaceOnClickListenerC15925h0.this.f126639f;
                if (lVar != null) {
                    lVar.c(null);
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public DialogInterfaceOnClickListenerC15925h0(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final boolean val$grid, final l val$callbacks) {
            this.f126635b = val$input;
            this.f126636c = val$context;
            this.f126637d = val$insideProjectFullPath;
            this.f126638e = val$grid;
            this.f126639f = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            String str = this.f126635b.getText().toString() + ".png";
            if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126636c) + "/" + this.f126637d + str).exists()) {
                Toast.makeText(this.f126636c, "Texture already exists", 0).show();
                return;
            }
            H0 h02 = new H0(this.f126636c);
            h02.f(new C3867a("Resolution", "Resolu\u00e7\u00e3o").toString());
            EditText editText = new EditText(this.f126636c);
            editText.setInputType(4096);
            editText.setText("1024");
            h02.g(editText);
            h02.e(this.f126636c.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText, str));
            h02.d(this.f126636c.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class DialogInterfaceOnClickListenerC15926i implements DialogInterface.OnClickListener {

        public final EditText f126646b;

        public final String f126647c;

        public final Context f126648d;

        public final l f126649e;

        public DialogInterfaceOnClickListenerC15926i(final EditText val$input, final String val$insideProjectFullPath, final Context val$context, final l val$callbacks) {
            this.f126646b = val$input;
            this.f126647c = val$insideProjectFullPath;
            this.f126648d = val$context;
            this.f126649e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String obj = this.f126646b.getText().toString();
                if (obj.contains(" ")) {
                    obj = obj.replace(" ", "");
                }
                if (obj.contains(".")) {
                    obj = obj.replace(".", "");
                }
                String Q10 = Tc.b.Q(obj, "");
                String replace = this.f126647c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126648d) + "/", "");
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126648d) + "/" + replace + (Q10 + ".java");
                if (d8.j.a0(Q10, false)) {
                    Toast.makeText(this.f126648d, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                    return;
                }
                File file = new File(str);
                if (file.exists()) {
                    Toast.makeText(this.f126648d, "Java " + Q10 + " already exists", 0).show();
                    return;
                }
                boolean createNewFile = file.createNewFile();
                String str2 = "Unknown user";
                C8.a aVar = W7.b.f27306f;
                UserController userController = aVar.f2461d;
                if (userController != null && userController.Q()) {
                    str2 = aVar.f2461d.L();
                }
                if (createNewFile) {
                    N7.c.Y();
                    C2636o.e("/* @Author " + str2 + " */\npublic class " + Q10 + " extends FilesPanelCustomIcon {\n\n    // This method is optional, you can choose the other method that defines the image manually.\n    @Override\n    public File getIconForFile(File file) {\n        return null;\n    }\n\n    // This method is optional, you can choose to define the icon manually in the imageview if you want.\n    @Override\n    public boolean applyIcon(File file, ImageView imageView) {\n        AImageView.setImageFile(imageView, null /* icon file */);\n        return true;\n    }\n\n    @Override\n    public boolean supportFile(File file) {\n        return true;\n    }}", new File(str));
                    d8.j.j(new File(str));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126648d));
                    sb2.append("/");
                    N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                    l lVar = this.f126649e;
                    if (lVar != null) {
                        lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126648d) + "/", ""));
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class DialogInterfaceOnClickListenerC15927i0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15928j implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class j0 implements DialogInterface.OnClickListener {

        public final EditText f126650b;

        public final Context f126651c;

        public final String f126652d;

        public final l f126653e;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126654b;

            public final String f126655c;

            public a(final EditText val$input, final String val$terrainName) {
                this.f126654b = val$input;
                this.f126655c = val$terrainName;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                int v12 = (int) Nc.b.v1(this.f126654b.getText().toString(), 1024.0f);
                if (v12 < 0) {
                    v12 = -v12;
                }
                if (v12 > 0) {
                    NoiseData noiseData = new NoiseData();
                    ub.j.z0(noiseData, j0.this.f126652d + this.f126655c);
                    X7.a.a(j0.this.f126652d + this.f126655c, X7.a.m().toJson(noiseData));
                } else {
                    Toast.makeText(j0.this.f126651c, "Invalid resolution", 0).show();
                }
                l lVar = j0.this.f126653e;
                if (lVar != null) {
                    lVar.c(null);
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public j0(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126650b = val$input;
            this.f126651c = val$context;
            this.f126652d = val$insideProjectFullPath;
            this.f126653e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            String str = this.f126650b.getText().toString() + ".nse";
            if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126651c) + "/" + this.f126652d + str).exists()) {
                Toast.makeText(this.f126651c, "Texture already exists", 0).show();
                return;
            }
            H0 h02 = new H0(this.f126651c);
            h02.f(new C3867a("Resolution", "Resolu\u00e7\u00e3o").toString());
            EditText editText = new EditText(this.f126651c);
            editText.setInputType(4096);
            editText.setText("256");
            h02.g(editText);
            h02.e(this.f126651c.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText, str));
            h02.d(this.f126651c.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class DialogInterfaceOnClickListenerC15929k implements DialogInterface.OnClickListener {

        public final EditText f126658b;

        public final Context f126659c;

        public final String f126660d;

        public final Vertex.v f126661e;

        public final l f126662f;

        public DialogInterfaceOnClickListenerC15929k(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final Vertex.v val$primitive, final l val$callbacks) {
            this.f126658b = val$input;
            this.f126659c = val$context;
            this.f126660d = val$insideProjectFullPath;
            this.f126661e = val$primitive;
            this.f126662f = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126659c) + "/" + this.f126660d + (this.f126658b.getText().toString() + ".mesh");
                File file = new File(str);
                if (file.exists()) {
                    Toast.makeText(this.f126659c, "File already exists", 0).show();
                    return;
                }
                if (file.createNewFile()) {
                    try {
                        MeshSerializer.p(MeshSerializer.m(Tc.b.o(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126659c) + "/", ""))), Vertex.C1(this.f126661e), true);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    l lVar = this.f126662f;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
    }

    public class k0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15930l implements DialogInterface.OnClickListener {

        public final EditText f126663b;

        public final String f126664c;

        public final Context f126665d;

        public final l f126666e;

        public DialogInterfaceOnClickListenerC15930l(final EditText val$input, final String val$insideProjectFullPath, final Context val$context, final l val$callbacks) {
            this.f126663b = val$input;
            this.f126664c = val$insideProjectFullPath;
            this.f126665d = val$context;
            this.f126666e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String obj = this.f126663b.getText().toString();
                if (obj.contains(" ")) {
                    obj = obj.replace(" ", "");
                }
                if (obj.contains(".")) {
                    obj = obj.replace(".", "");
                }
                String Q10 = Tc.b.Q(obj, "");
                String replace = this.f126664c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126665d) + "/", "");
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126665d) + "/" + replace + (Q10 + ".java");
                if (d8.j.a0(Q10, false)) {
                    Toast.makeText(this.f126665d, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                    return;
                }
                File file = new File(str);
                if (file.exists()) {
                    Toast.makeText(this.f126665d, "Java " + Q10 + " already exists", 0).show();
                    return;
                }
                boolean createNewFile = file.createNewFile();
                String str2 = "Unknown user";
                C8.a aVar = W7.b.f27306f;
                UserController userController = aVar.f2461d;
                if (userController != null && userController.Q()) {
                    str2 = aVar.f2461d.L();
                }
                if (createNewFile) {
                    N7.c.Y();
                    C2636o.e("/* @Author " + str2 + " */\npublic class " + Q10 + " extends FilesPanelDirectoryMenu {\n\n    public " + Q10 + "() {\n        super(\"Custom menus\");\n    }\n    \n    public void onClick(File file, View view) {\n        \n    }}", new File(str));
                    d8.j.j(new File(str));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126665d));
                    sb2.append("/");
                    N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                    l lVar = this.f126666e;
                    if (lVar != null) {
                        lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126665d) + "/", ""));
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class l0 implements DialogInterface.OnClickListener {

        public final EditText f126667b;

        public final Context f126668c;

        public final String f126669d;

        public final l f126670e;

        public class a implements Runnable {

            public final String f126671b;

            public final C15045a f126672c;

            public class RunnableC2096a implements Runnable {
                public RunnableC2096a() {
                }

                @Override
                public void run() {
                    l lVar = l0.this.f126670e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                    a.this.f126672c.p1();
                }
            }

            public a(final String val$inputText, final C15045a val$loading) {
                this.f126671b = val$inputText;
                this.f126672c = val$loading;
            }

            @Override
            public void run() {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(l0.this.f126669d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(l0.this.f126668c) + "/", ""));
                sb2.append("/");
                C2636o.e("", new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(l0.this.f126668c) + "/" + sb2.toString() + "/" + this.f126671b));
                N7.c.j0(new RunnableC2096a());
            }
        }

        public l0(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126667b = val$input;
            this.f126668c = val$context;
            this.f126669d = val$insideProjectFullPath;
            this.f126670e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126667b.getText().toString() + ".rte";
                if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126668c) + "/" + this.f126669d + str).exists()) {
                    Toast.makeText(this.f126668c, "File already exists", 0).show();
                } else {
                    O9.b.d(new a(str, C15045a.r1()));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class DialogInterfaceOnClickListenerC15931m implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class m0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15932n implements DialogInterface.OnClickListener {

        public final EditText f126675b;

        public final String f126676c;

        public final Context f126677d;

        public final l f126678e;

        public DialogInterfaceOnClickListenerC15932n(final EditText val$input, final String val$insideProjectFullPath, final Context val$context, final l val$callbacks) {
            this.f126675b = val$input;
            this.f126676c = val$insideProjectFullPath;
            this.f126677d = val$context;
            this.f126678e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String obj = this.f126675b.getText().toString();
                if (obj.contains(" ")) {
                    obj = obj.replace(" ", "");
                }
                if (obj.contains(".")) {
                    obj = obj.replace(".", "");
                }
                String Q10 = Tc.b.Q(obj, "");
                String replace = this.f126676c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126677d) + "/", "");
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126677d) + "/" + replace + (Q10 + ".java");
                if (d8.j.a0(Q10, false)) {
                    Toast.makeText(this.f126677d, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                    return;
                }
                File file = new File(str);
                if (file.exists()) {
                    Toast.makeText(this.f126677d, "Java " + Q10 + " already exists", 0).show();
                    return;
                }
                boolean createNewFile = file.createNewFile();
                String str2 = "Unknown user";
                C8.a aVar = W7.b.f27306f;
                UserController userController = aVar.f2461d;
                if (userController != null && userController.Q()) {
                    str2 = aVar.f2461d.L();
                }
                if (createNewFile) {
                    N7.c.Y();
                    C2636o.e("/* @Author " + str2 + " */\npublic class " + Q10 + " extends ObjectsPanelMenu {\n\n    public " + Q10 + "() {\n        super(\"Custom menus\");\n    }\n    \n    public void onClick(SpatialObject object) {\n        \n    }}", new File(str));
                    d8.j.j(new File(str));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126677d));
                    sb2.append("/");
                    N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                    l lVar = this.f126678e;
                    if (lVar != null) {
                        lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126677d) + "/", ""));
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class n0 implements DialogInterface.OnClickListener {

        public final EditText f126679b;

        public final Context f126680c;

        public final String f126681d;

        public final l f126682e;

        public class a implements Runnable {

            public final String f126683b;

            public final C15045a f126684c;

            public class RunnableC2097a implements Runnable {
                public RunnableC2097a() {
                }

                @Override
                public void run() {
                    l lVar = n0.this.f126682e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                    a.this.f126684c.p1();
                }
            }

            public a(final String val$inputText, final C15045a val$loading) {
                this.f126683b = val$inputText;
                this.f126684c = val$loading;
            }

            @Override
            public void run() {
                CubemapConfig a10 = CubemapConfig.a();
                a10.w(n0.this.f126681d);
                a10.v(CubemapConfig.a.PANORAMA);
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(n0.this.f126680c) + "/" + Tc.b.u(n0.this.f126681d) + "/" + this.f126683b);
                C15983e.m(file, a10);
                com.itsmagic.engine.Engines.Engine.Texture.Cubemap.a.a(a10, file);
                N7.c.j0(new RunnableC2097a());
            }
        }

        public n0(final EditText val$input, final Context val$context, final String val$panoramaIPP, final l val$callbacks) {
            this.f126679b = val$input;
            this.f126680c = val$context;
            this.f126681d = val$panoramaIPP;
            this.f126682e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126679b.getText().toString() + ".cbm";
                if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126680c) + "/" + Tc.b.u(this.f126681d) + str).exists()) {
                    Toast.makeText(this.f126680c, "File already exists", 0).show();
                } else {
                    O9.b.d(new a(str, C15045a.r1()));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class DialogInterfaceOnClickListenerC15933o implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class o0 extends y.k {

        public final C15045a f126687a;

        public final Context f126688b;

        public final String f126689c;

        public final l f126690d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126691b;

            public a(final EditText val$input) {
                this.f126691b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126691b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = o0.this.f126689c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(o0.this.f126688b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(o0.this.f126688b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(o0.this.f126688b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(o0.this.f126688b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        N7.c.Y();
                        C2636o.e("import android.view.*;\nimport android.widget.*;\nimport androidx.constraintlayout.widget.*;\n\n/* @Author " + str2 + " */\n@PanelInflateMenu(\"CustomPanels/\")\npublic class " + Q10 + " extends ViewPanel {\n\n  public " + Q10 + "() {\n    // Zero-argument constructor is required\n  } \n\n  // Runs whenever the panel is attached to a HUB\n  // You should inflate all the views you would like to attach to the panel within this method.\n  public View onAttach() {\n    super.setTittle(\"Sample panel\");\n    return null;\n  }\n\n  // Run every frame in UI thread doesn't matter if panel is visible or not\n  public void updateUI() {}\n\n  // Run every frame in UI thread if panel is visible\n  public void updateUIVisible() {}\n\n  // Run every frame in UI thread if panel is not visible\n  public void minimizedUpdate() {}\n\n  // Runs in the engine low priority task thread.\n  public void lpTaskUpdate() {}\n\n  // Runs whenever the user taps to select the panel from the HUB panel list\n  public void onBindView() {}\n\n  // Runs whenever the user switches to another panel in the HUB\n  public void onUnbindView() {}\n\n  // Runs whenever the panel is removed from the HUB\n  // The views will be discarded, you will inflate it again when it is attached to another HUB\n  public void onDetach() {}\n}\n", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(o0.this.f126688b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = o0.this.f126690d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(o0.this.f126688b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public o0(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126687a = val$loadingBar;
            this.f126688b = val$context;
            this.f126689c = val$insideProjectFullPath;
            this.f126690d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126687a.p1();
            H0 h02 = new H0(this.f126688b);
            h02.f(this.f126688b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126688b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126688b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126688b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class C15934p extends y.k {

        public final C15045a f126694a;

        public final Context f126695b;

        public final String f126696c;

        public final l f126697d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126698b;

            public a(final EditText val$input) {
                this.f126698b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126698b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = C15934p.this.f126696c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15934p.this.f126695b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(C15934p.this.f126695b) + "/" + replace + (Q10 + ".lua");
                    d8.j jVar = W7.b.f27310j;
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(C15934p.this.f126695b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(C15934p.this.f126695b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        C2636o.e("-- Author " + str2 + "\npublic speed = 30\n\nfunction doStart() \n\nend \n\nfunction doRepeat()\n    myObject:rotateInSeconds(0,speed,0)\nend", new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15934p.this.f126695b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_LUA_SCRIPT");
                        l lVar = C15934p.this.f126697d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15934p.this.f126695b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15934p(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126694a = val$loadingBar;
            this.f126695b = val$context;
            this.f126696c = val$insideProjectFullPath;
            this.f126697d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126694a.p1();
            H0 h02 = new H0(this.f126695b);
            h02.f(this.f126695b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126695b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126695b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126695b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class p0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class C15935q extends y.k {

        public final C15045a f126701a;

        public final Context f126702b;

        public final String f126703c;

        public final l f126704d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126705b;

            public a(final EditText val$input) {
                this.f126705b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String str = this.f126705b.getText().toString() + ".world";
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15935q.this.f126702b) + "/" + C15935q.this.f126703c + str);
                    if (file.exists()) {
                        Toast.makeText(C15935q.this.f126702b, "World already exists", 0).show();
                    } else if (file.createNewFile()) {
                        World world = new World();
                        world.createExampleWhenOpen = true;
                        world.fileName = str;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(C15935q.this.f126703c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15935q.this.f126702b) + "/", ""));
                        sb2.append("/");
                        world.folder = sb2.toString();
                        X7.a.d(world.folder, world.fileName, X7.a.m().toJson(world));
                        C12735c.a("NEW_WORLD");
                        l lVar = C15935q.this.f126704d;
                        if (lVar != null) {
                            lVar.c(Tc.b.o(world.folder + "/" + world.fileName));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15935q(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126701a = val$loadingBar;
            this.f126702b = val$context;
            this.f126703c = val$insideProjectFullPath;
            this.f126704d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126701a.p1();
            H0 h02 = new H0(this.f126702b);
            h02.f(this.f126702b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_world_name));
            EditText editText = new EditText(this.f126702b);
            editText.setInputType(64);
            editText.setText("World");
            h02.g(editText);
            h02.e(this.f126702b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126702b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class q0 implements C15805a.i {

        public final Context f126708a;

        public final String f126709b;

        public final l f126710c;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126711b;

            public final String f126712c;

            public class RunnableC2098a implements Runnable {

                public final String f126714b;

                public final C15045a f126715c;

                public class RunnableC2099a implements Runnable {
                    public RunnableC2099a() {
                    }

                    @Override
                    public void run() {
                        l lVar = q0.this.f126710c;
                        if (lVar != null) {
                            lVar.c(null);
                        }
                        RunnableC2098a.this.f126715c.p1();
                    }
                }

                public RunnableC2098a(final String val$inputText, final C15045a val$loading) {
                    this.f126714b = val$inputText;
                    this.f126715c = val$loading;
                }

                @Override
                public void run() {
                    CubemapConfig a10 = CubemapConfig.a();
                    a10.w(a.this.f126712c);
                    a10.v(CubemapConfig.a.PANORAMA);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(q0.this.f126709b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(q0.this.f126708a) + "/", ""));
                    sb2.append("/");
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(q0.this.f126708a) + "/" + sb2.toString() + "/" + this.f126714b);
                    C15983e.m(file, a10);
                    com.itsmagic.engine.Engines.Engine.Texture.Cubemap.a.a(a10, file);
                    N7.c.j0(new RunnableC2099a());
                }
            }

            public a(final EditText val$input, final String val$inProjectPath) {
                this.f126711b = val$input;
                this.f126712c = val$inProjectPath;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String str = this.f126711b.getText().toString() + ".cbm";
                    if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(q0.this.f126708a) + "/" + q0.this.f126709b + str).exists()) {
                        Toast.makeText(q0.this.f126708a, "File already exists", 0).show();
                    } else {
                        O9.b.d(new RunnableC2098a(str, C15045a.r1()));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public q0(final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126708a = val$context;
            this.f126709b = val$insideProjectFullPath;
            this.f126710c = val$callbacks;
        }

        @Override
        public void a(File file, String inProjectPath) {
            if (file != null) {
                H0 h02 = new H0(this.f126708a);
                h02.f("New cubemap name");
                EditText editText = new EditText(this.f126708a);
                editText.setInputType(64);
                editText.setText(Tc.b.w(file.getAbsolutePath(), true) + "_cb");
                h02.g(editText);
                h02.e(this.f126708a.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText, inProjectPath));
                h02.d(this.f126708a.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
                h02.h();
            }
        }
    }

    public class C15936r extends y.k {

        public final C15045a f126719a;

        public final Context f126720b;

        public final String f126721c;

        public final l f126722d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126723b;

            public a(final EditText val$input) {
                this.f126723b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String str = this.f126723b.getText().toString() + ".ar";
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15936r.this.f126720b) + "/" + C15936r.this.f126721c + str);
                    if (file.exists()) {
                        Toast.makeText(C15936r.this.f126720b, "File already exists", 0).show();
                    } else if (file.createNewFile()) {
                        World world = new World();
                        world.isArea = true;
                        world.createExampleWhenOpen = true;
                        world.fileName = str;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(C15936r.this.f126721c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15936r.this.f126720b) + "/", ""));
                        sb2.append("/");
                        world.folder = sb2.toString();
                        X7.a.d(world.folder, world.fileName, X7.a.m().toJson(world));
                        C12735c.a("NEW_AREA");
                        l lVar = C15936r.this.f126722d;
                        if (lVar != null) {
                            lVar.c(Tc.b.o(world.folder + "/" + world.fileName));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public C15936r(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126719a = val$loadingBar;
            this.f126720b = val$context;
            this.f126721c = val$insideProjectFullPath;
            this.f126722d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126719a.p1();
            H0 h02 = new H0(this.f126720b);
            h02.f(this.f126720b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_world_name));
            EditText editText = new EditText(this.f126720b);
            editText.setInputType(64);
            editText.setText("Area");
            h02.g(editText);
            h02.e(this.f126720b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126720b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class r0 implements DialogInterface.OnClickListener {

        public final EditText f126726b;

        public final Context f126727c;

        public final String f126728d;

        public final l f126729e;

        public r0(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126726b = val$input;
            this.f126727c = val$context;
            this.f126728d = val$insideProjectFullPath;
            this.f126729e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126726b.getText().toString() + ".cbm";
                if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126727c) + "/" + this.f126728d + str).exists()) {
                    Toast.makeText(this.f126727c, "File already exists", 0).show();
                } else {
                    CubemapConfig a10 = CubemapConfig.a();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f126728d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126727c) + "/", ""));
                    sb2.append("/");
                    C15983e.m(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126727c) + "/" + sb2.toString() + "/" + str), a10);
                    l lVar = this.f126729e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class DialogInterfaceOnClickListenerC15937s implements DialogInterface.OnClickListener {

        public final EditText f126730b;

        public final Context f126731c;

        public final String f126732d;

        public final l f126733e;

        public DialogInterfaceOnClickListenerC15937s(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126730b = val$input;
            this.f126731c = val$context;
            this.f126732d = val$insideProjectFullPath;
            this.f126733e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126731c) + "/" + this.f126732d + (this.f126730b.getText().toString() + "");
            try {
                if (str.endsWith(" ")) {
                    str = str.substring(0, str.length() - 1);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            File file = new File(str);
            if (file.exists()) {
                Toast.makeText(this.f126731c, "Folder already exists", 0).show();
                return;
            }
            if (file.mkdirs()) {
                C12735c.a("NEW_FOLDER");
                l lVar = this.f126733e;
                if (lVar != null) {
                    lVar.c(null);
                }
            }
        }
    }

    public class s0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15938t implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class t0 implements DialogInterface.OnClickListener {

        public final EditText f126734b;

        public final Context f126735c;

        public final String f126736d;

        public final l f126737e;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126738b;

            public final String f126739c;

            public class RunnableC2100a implements Runnable {

                public final int f126741b;

                public final int f126742c;

                public RunnableC2100a(final int val$w, final int val$h) {
                    this.f126741b = val$w;
                    this.f126742c = val$h;
                }

                @Override
                public void run() {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(t0.this.f126736d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                    sb2.append(a.this.f126739c);
                    G3.b.H(sb2.toString(), this.f126741b, this.f126742c);
                }
            }

            public a(final EditText val$input, final String val$terrainName) {
                this.f126738b = val$input;
                this.f126739c = val$terrainName;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                if (!this.f126738b.getText().toString().contains("x")) {
                    Toast.makeText(t0.this.f126735c, "Invalid resolution", 0).show();
                    return;
                }
                String[] split = this.f126738b.getText().toString().split("x");
                String str = split[0];
                String str2 = split[1];
                int v12 = (int) Nc.b.v1(str, 1024.0f);
                int v13 = (int) Nc.b.v1(str2, 1024.0f);
                if (v12 <= 0 || v13 <= 0) {
                    Toast.makeText(t0.this.f126735c, "Invalid resolution", 0).show();
                } else {
                    new Thread(new RunnableC2100a(v12, v13)).start();
                }
                l lVar = t0.this.f126737e;
                if (lVar != null) {
                    lVar.c(null);
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public t0(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126734b = val$input;
            this.f126735c = val$context;
            this.f126736d = val$insideProjectFullPath;
            this.f126737e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            String str = this.f126734b.getText().toString() + ".ivo";
            if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126735c) + "/" + this.f126736d + str).exists()) {
                Toast.makeText(this.f126735c, "Texture already exists", 0).show();
                return;
            }
            H0 h02 = new H0(this.f126735c);
            h02.f(new C3867a("Resolution", "Resolu\u00e7\u00e3o").toString());
            EditText editText = new EditText(this.f126735c);
            editText.setInputType(4096);
            editText.setText("1024x720");
            h02.g(editText);
            h02.e(this.f126735c.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText, str));
            h02.d(this.f126735c.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public class DialogInterfaceOnClickListenerC15939u implements DialogInterface.OnClickListener {

        public final EditText f126745b;

        public final Context f126746c;

        public final String f126747d;

        public final l f126748e;

        public DialogInterfaceOnClickListenerC15939u(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126745b = val$input;
            this.f126746c = val$context;
            this.f126747d = val$insideProjectFullPath;
            this.f126748e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126745b.getText().toString() + ".mat";
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126746c) + "/" + this.f126747d + str);
                if (file.exists()) {
                    Toast.makeText(this.f126746c, "Material already exists", 0).show();
                } else if (file.createNewFile()) {
                    Material material = new Material();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f126747d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126746c) + "/", ""));
                    sb2.append("/");
                    X7.a.d(sb2.toString(), str, material.Z());
                    C12735c.a("NEW_MATERIAL");
                    l lVar = this.f126748e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class u0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15940v implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class v0 implements DialogInterface.OnClickListener {

        public final EditText f126749b;

        public final String f126750c;

        public final Activity f126751d;

        public final boolean f126752e;

        public final l f126753f;

        public class a implements Runnable {

            public final String f126754b;

            public class C2101a implements y8.b {

                public class RunnableC2102a implements Runnable {
                    public RunnableC2102a() {
                    }

                    @Override
                    public void run() {
                        l lVar = v0.this.f126753f;
                        if (lVar != null) {
                            lVar.c(null);
                        }
                    }
                }

                public class b implements Runnable {
                    public b() {
                    }

                    @Override
                    public void run() {
                        l lVar = v0.this.f126753f;
                        if (lVar != null) {
                            lVar.a();
                        }
                    }
                }

                public C2101a() {
                }

                @Override
                public void a() {
                    v0.this.f126751d.runOnUiThread(new b());
                }

                @Override
                public void b() {
                }

                @Override
                public void onSuccess() {
                    v0.this.f126751d.runOnUiThread(new RunnableC2102a());
                }
            }

            public class b implements InterfaceC14380a {

                public class C2103a implements Tc.a {

                    public final StringBuilder f126760a;

                    public C2103a(final StringBuilder val$docTxt) {
                        this.f126760a = val$docTxt;
                    }

                    @Override
                    public String a(String str) {
                        this.f126760a.append(str);
                        return null;
                    }
                }

                public b() {
                }

                @Override
                public boolean a(File file) {
                    if (file.isDirectory() || C2633l.b(".class", file.getAbsolutePath()) || C2633l.b(".vglsl", file.getAbsolutePath()) || C2633l.b(".fglsl", file.getAbsolutePath()) || C2633l.b(".dex", file.getAbsolutePath())) {
                        return true;
                    }
                    if (C2633l.b(".javac", file.getAbsolutePath()) || !C2633l.b(".java", file.getAbsolutePath())) {
                        return false;
                    }
                    String z10 = X7.a.z(file.getAbsolutePath(), v0.this.f126751d);
                    if (d8.k.j(z10)) {
                        return false;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    Tc.b.T(z10, new Tc.c("//<JAVA-DOC>", "//>JAVA-DOC<", new C2103a(sb2)));
                    X7.a.j(file.getAbsolutePath(), X7.a.m().toJson(new ExportedJavaTXT(sb2.toString())));
                    return true;
                }
            }

            public a(final String val$zipName) {
                this.f126754b = val$zipName;
            }

            @Override
            public void run() {
                String str = v0.this.f126750c + "/";
                com.itsmagic.engine.Core.Components.ProjectController.a.S(v0.this.f126751d);
                String str2 = com.itsmagic.engine.Core.Components.ProjectController.a.S(v0.this.f126751d) + "/Libs";
                File file = new File(str2 + "/" + this.f126754b);
                if (file.exists()) {
                    file.delete();
                }
                nd.e.g(str, str2 + "/", this.f126754b, v0.this.f126752e, new C2101a(), v0.this.f126751d, new b());
            }
        }

        public v0(final EditText val$input, final String val$insideProjectFullPath, final Activity val$context, final boolean val$searchDependency, final l val$callbacks) {
            this.f126749b = val$input;
            this.f126750c = val$insideProjectFullPath;
            this.f126751d = val$context;
            this.f126752e = val$searchDependency;
            this.f126753f = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            new Thread(new a(this.f126749b.getText().toString() + ".itjar")).start();
        }
    }

    public class DialogInterfaceOnClickListenerC15941w implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class w0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15942x implements DialogInterface.OnClickListener {

        public final EditText f126762b;

        public final Context f126763c;

        public final String f126764d;

        public final l f126765e;

        public DialogInterfaceOnClickListenerC15942x(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126762b = val$input;
            this.f126763c = val$context;
            this.f126764d = val$insideProjectFullPath;
            this.f126765e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126762b.getText().toString() + ".angr";
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126763c) + "/" + this.f126764d + str);
                if (file.exists()) {
                    Toast.makeText(this.f126763c, "Material already exists", 0).show();
                } else if (file.createNewFile()) {
                    AnimGraph animGraph = new AnimGraph();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f126764d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126763c) + "/", ""));
                    sb2.append("/");
                    X7.a.d(sb2.toString(), str, animGraph.c());
                    C12735c.a("NEW_ANIM_GRAPH");
                    l lVar = this.f126765e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class x0 implements DialogInterface.OnClickListener {

        public final EditText f126766b;

        public final String f126767c;

        public final String f126768d;

        public final Activity f126769e;

        public final l f126770f;

        public final boolean f126771g;

        public class a implements Runnable {

            public final String f126772b;

            public class RunnableC2104a implements Runnable {
                public RunnableC2104a() {
                }

                @Override
                public void run() {
                    l lVar = x0.this.f126770f;
                    if (lVar != null) {
                        lVar.a();
                    }
                }
            }

            public class b implements Runnable {
                public b() {
                }

                @Override
                public void run() {
                    l lVar = x0.this.f126770f;
                    if (lVar != null) {
                        lVar.a();
                    }
                }
            }

            public class RunnableC2105c implements Runnable {

                public final boolean f126776b;

                public RunnableC2105c(final boolean val$zipped) {
                    this.f126776b = val$zipped;
                }

                @Override
                public void run() {
                    l lVar = x0.this.f126770f;
                    if (lVar != null) {
                        if (this.f126776b) {
                            lVar.c(null);
                        } else {
                            lVar.a();
                        }
                    }
                }
            }

            public a(final String val$zipNameFinal) {
                this.f126772b = val$zipNameFinal;
            }

            @Override
            public void run() {
                File[] listFiles;
                String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(x0.this.f126769e) + "/" + (x0.this.f126768d + "/");
                if (str.contains("//")) {
                    str = str.replace("//", "/");
                }
                if (str.endsWith("/")) {
                    str = str.substring(0, str.length() - 1);
                }
                File file = new File(str);
                if (!file.exists() || !file.isDirectory()) {
                    x0.this.f126769e.runOnUiThread(new RunnableC2104a());
                    return;
                }
                if (!x0.this.f126771g && ((listFiles = file.listFiles()) == null || listFiles.length == 0)) {
                    x0.this.f126769e.runOnUiThread(new b());
                    return;
                }
                File parentFile = file.getParentFile();
                if (parentFile == null) {
                    parentFile = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(x0.this.f126769e));
                }
                File file2 = new File(parentFile, this.f126772b);
                if (file2.exists()) {
                    file2.delete();
                }
                x0.this.f126769e.runOnUiThread(new RunnableC2105c(nd.e.c(file, file2, x0.this.f126771g)));
            }
        }

        public x0(final EditText val$input, final String val$defaultNameFinal, final String val$insideProjectFullPath, final Activity val$context, final l val$callbacks, final boolean val$includeSourceFolder) {
            this.f126766b = val$input;
            this.f126767c = val$defaultNameFinal;
            this.f126768d = val$insideProjectFullPath;
            this.f126769e = val$context;
            this.f126770f = val$callbacks;
            this.f126771g = val$includeSourceFolder;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            String obj = this.f126766b.getText().toString();
            if (obj == null) {
                obj = "";
            }
            String trim = obj.trim();
            if (trim.isEmpty()) {
                trim = this.f126767c;
            }
            if (!trim.toLowerCase(Locale.US).endsWith(".zip")) {
                trim = trim + ".zip";
            }
            new Thread(new a(trim)).start();
        }
    }

    public class DialogInterfaceOnClickListenerC15943y implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class y0 implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            dialog.cancel();
        }
    }

    public class DialogInterfaceOnClickListenerC15944z implements DialogInterface.OnClickListener {

        public final EditText f126778b;

        public final Context f126779c;

        public final String f126780d;

        public final l f126781e;

        public DialogInterfaceOnClickListenerC15944z(final EditText val$input, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126778b = val$input;
            this.f126779c = val$context;
            this.f126780d = val$insideProjectFullPath;
            this.f126781e = val$callbacks;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            N7.c.Y();
            try {
                String str = this.f126778b.getText().toString() + ".usy";
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126779c) + "/" + this.f126780d + str);
                if (file.exists()) {
                    Toast.makeText(this.f126779c, "File already exists", 0).show();
                } else if (file.createNewFile()) {
                    UIStyle uIStyle = new UIStyle();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f126780d.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126779c) + "/", ""));
                    sb2.append("/");
                    X7.a.d(sb2.toString(), str, uIStyle.E0());
                    C12735c.a("NEW_UI_STYILE_GRAPH");
                    l lVar = this.f126781e;
                    if (lVar != null) {
                        lVar.c(null);
                    }
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public class z0 extends y.k {

        public final C15045a f126782a;

        public final Context f126783b;

        public final String f126784c;

        public final l f126785d;

        public class a implements DialogInterface.OnClickListener {

            public final EditText f126786b;

            public a(final EditText val$input) {
                this.f126786b = val$input;
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                try {
                    String obj = this.f126786b.getText().toString();
                    if (obj.contains(" ")) {
                        obj = obj.replace(" ", "");
                    }
                    if (obj.contains(".")) {
                        obj = obj.replace(".", "");
                    }
                    String Q10 = Tc.b.Q(obj, "");
                    String replace = z0.this.f126784c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(z0.this.f126783b) + "/", "");
                    String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(z0.this.f126783b) + "/" + replace + (Q10 + ".java");
                    if (d8.j.a0(Q10, false)) {
                        Toast.makeText(z0.this.f126783b, new C3867a("Java Class " + Q10 + " already exists or is reserved", "Classe java " + Q10 + " j\u00e1 existe ou \u00e9 reservada, use outro nome").toString(), 1).show();
                        return;
                    }
                    File file = new File(str);
                    if (file.exists()) {
                        Toast.makeText(z0.this.f126783b, "Java " + Q10 + " already exists", 0).show();
                        return;
                    }
                    boolean createNewFile = file.createNewFile();
                    String str2 = "Unknown user";
                    C8.a aVar = W7.b.f27306f;
                    UserController userController = aVar.f2461d;
                    if (userController != null && userController.Q()) {
                        str2 = aVar.f2461d.L();
                    }
                    if (createNewFile) {
                        N7.c.Y();
                        C2636o.e("import android.view.*;\nimport android.widget.*;\nimport androidx.constraintlayout.widget.*;\n\n/* @Author " + str2 + " */\n@PanelInflateMenu(\"CustomPanels/\")\npublic class " + Q10 + " extends ViewPanel {\n\n  public " + Q10 + "() {\n    // Zero-argument constructor is required\n  } \n\n  // Runs whenever the panel is attached to a HUB\n  // You should inflate all the views you would like to attach to the panel within this method.\n  public View onAttach() {\n    super.setTittle(\"Sample panel\");\n\n    // Root layout\n    LinearLayout rootLayout = new ALinearLayout();\n    rootLayout.setOrientation(LinearLayout.VERTICAL);\n    rootLayout.setBackgroundColor(Color.Android.parseColor(\"#FFFFFF\"));\n    rootLayout.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));\n    rootLayout.setPadding(24, 24, 24, 24);\n\n    // \"New\" button\n    Button newButton = new AButton();\n    newButton.setText(\"+ New\");\n    newButton.setAllCaps(false);\n    LinearLayout.LayoutParams buttonParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);\n    buttonParams.gravity = Gravity.START;\n    newButton.setLayoutParams(buttonParams);\n    newButton.setOnClickListener(\n        new View.OnClickListener() {\n          public void onClick(View v) {\n            Toast.showText(\"Button clicked\", Toast.LENGTH_SHORT);\n            Editor.inflateAnchoredFloatingPanelInDP(v, Editor.AnchorSide.Below, new " + Q10 + "(), 100, 80);\n          }\n        });\n\n    // Center text\n    ATextView centerText = new ATextView();\n    centerText.setText(\"This is a sample layout\");\n    centerText.setTextColor(Color.Android.BLACK);\n    centerText.setTextSize(16);\n    centerText.setGravity(Gravity.CENTER);\n\n    LinearLayout.LayoutParams textParams =\n        new LinearLayout.LayoutParams(\n            ViewGroup.LayoutParams.MATCH_PARENT, 0, 1 // Fill remaining space vertically\n            );\n    centerText.setLayoutParams(textParams);\n\n    // Add views to root layout\n    rootLayout.addView(newButton);\n    rootLayout.addView(centerText);\n\n    return rootLayout;\n  }\n\n  // Run every frame in UI thread doesn't matter if panel is visible or not\n  public void updateUI() {}\n\n  // Run every frame in UI thread if panel is visible\n  public void updateUIVisible() {}\n\n  // Run every frame in UI thread if panel is not visible\n  public void minimizedUpdate() {}\n\n  // Runs in the engine low priority task thread.\n  public void lpTaskUpdate() {}\n\n  // Runs whenever the user taps to select the panel from the HUB panel list\n  public void onBindView() {}\n\n  // Runs whenever the user switches to another panel in the HUB\n  public void onUnbindView() {}\n\n  // Runs whenever the panel is removed from the HUB\n  // The views will be discarded, you will inflate it again when it is attached to another HUB\n  public void onDetach() {}\n}\n", new File(str));
                        d8.j.j(new File(str));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(z0.this.f126783b));
                        sb2.append("/");
                        N7.c.k0(new C14351c(str.replace(sb2.toString(), "")));
                        C12735c.a("NEW_SAMPLE_PANEL_SCRIPT");
                        l lVar = z0.this.f126785d;
                        if (lVar != null) {
                            lVar.c(str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(z0.this.f126783b) + "/", ""));
                        }
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements DialogInterface.OnClickListener {
            public b() {
            }

            @Override
            public void onClick(DialogInterface dialog, int which) {
                N7.c.Y();
                dialog.cancel();
            }
        }

        public z0(final C15045a val$loadingBar, final Context val$context, final String val$insideProjectFullPath, final l val$callbacks) {
            this.f126782a = val$loadingBar;
            this.f126783b = val$context;
            this.f126784c = val$insideProjectFullPath;
            this.f126785d = val$callbacks;
        }

        @Override
        public void b(int count) {
            this.f126782a.p1();
            H0 h02 = new H0(this.f126783b);
            h02.f(this.f126783b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_java));
            EditText editText = new EditText(this.f126783b);
            editText.setInputType(64);
            editText.setText("MyScript");
            h02.g(editText);
            h02.e(this.f126783b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new a(editText));
            h02.d(this.f126783b.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new b());
            h02.h();
        }
    }

    public static void A(Context context, String insideProjectFullPath, String name, j.m0 type, boolean hidePackage, boolean hideImports, boolean hideClass, I0 listener) {
        y.e(false, C2633l.d(".java"), new G(C15045a.r1(), name, insideProjectFullPath, context, type, hidePackage, hideImports, hideClass, listener));
    }

    public static void B(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new H(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void C(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new C15934p(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void D(Context context, String insideProjectFullPath, boolean createExample, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_ms_module));
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("MyModule");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15912a0(editText, insideProjectFullPath, context, createExample, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15914b0());
            h02.h();
        }
    }

    public static void E(Context context, String insideProjectFullPath, l callbacks) {
        H0 h02 = new H0(context);
        h02.f(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_file_name));
        EditText editText = new EditText(context);
        editText.setInputType(64);
        editText.setText("CustomObjectMenu");
        h02.g(editText);
        h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15932n(editText, insideProjectFullPath, context, callbacks));
        h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15933o());
        h02.h();
    }

    public static void F(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new C15918e(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void G(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new z0(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void H(Context context, String insideProjectFullPath, Vertex.v primitive, String defaultText, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New vertex name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText(defaultText);
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15929k(editText, context, insideProjectFullPath, primitive, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15940v());
            h02.h();
        }
    }

    public static void I(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new G0(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void J(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, ".world", new C15935q(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void K(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new C15920f(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void L(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new C15911a(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void M(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New NoCode Graph name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Graph");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new W(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new X());
            h02.h();
        }
    }

    public static void N(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(new C3867a("Name the new noise", "Nome do novo noise").toString());
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Noise");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new j0(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new k0());
            h02.h();
        }
    }

    public static void O(Context context, String insideProjectFullPath, l callbacks) {
        if (C14331a.c()) {
            Z6.k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            return;
        }
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New post processing name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("MyEffect");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new F(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new I());
            h02.h();
        }
    }

    public static void P(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New render texture name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Render texture");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new l0(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new m0());
            h02.h();
        }
    }

    public static void Q(Context context, String insideProjectFullPath, l callbacks) {
        if (C14331a.c()) {
            Z6.k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            return;
        }
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New skybox shader name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("MySky");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new J(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new K());
            h02.h();
        }
    }

    public static void R(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(new C3867a("Name the new TerrainData", "Nome do novo TerrainData").toString());
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Terrain1");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15915c0(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15919e0());
            h02.h();
        }
    }

    public static void S(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New text name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("File");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new D(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new E());
            h02.h();
        }
    }

    public static void T(Context context, String insideProjectFullPath, l callbacks, boolean grid) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(new C3867a("Name the new PNG Texture", "Nome da nova Textura PNG").toString());
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText(SerializableShaderEntry.f81152f);
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15925h0(editText, context, insideProjectFullPath, grid, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15927i0());
            h02.h();
        }
    }

    public static void U(Context context, String insideProjectFullPath, l callbacks) {
        if (C14331a.c()) {
            Z6.k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            return;
        }
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New post processing name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("MyEffect");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new N(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new O());
            h02.h();
        }
    }

    public static void V(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New style name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Style");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15944z(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new A());
            h02.h();
        }
    }

    public static void W(Context context, String insideProjectFullPath, l callbacks, String templateFile, String defaultName, String templateTitle) {
        if (C14331a.c()) {
            Z6.k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            return;
        }
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New VFX shader name (" + templateTitle + ")");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText(defaultName);
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new R(editText, context, insideProjectFullPath, templateFile, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new T());
            h02.h();
        }
    }

    public static void X(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(new C3867a("Name the new output file", "Nome do novo arquivo de saida de video").toString());
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("VideoOutput");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new t0(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new u0());
            h02.h();
        }
    }

    public static void Y(Context context, String insideProjectFullPath, boolean isPostProcessing, l callbacks) {
        if (C14331a.c()) {
            Z6.k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            return;
        }
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New Vulkan Graph name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Graph");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new U(editText, context, insideProjectFullPath, isPostProcessing, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new V());
            h02.h();
        }
    }

    public static void Z(Activity context, String insideProjectFullPath, boolean includeSourceFolder, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(Lang.l(includeSourceFolder ? Lang.T.ZIP_FOLDER : Lang.T.ZIP_FILES));
            String replace = (insideProjectFullPath == null ? "" : insideProjectFullPath).replace(C16181m.f130232i, "/");
            while (replace.endsWith("/")) {
                replace = replace.substring(0, replace.length() - 1);
            }
            String x10 = Tc.b.x(replace);
            if (x10 == null || x10.trim().isEmpty()) {
                x10 = "archive";
            }
            String str = x10;
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText(str);
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new x0(editText, str, insideProjectFullPath, context, callbacks, includeSourceFolder));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new y0());
            h02.h();
        }
    }

    public static void a(Activity context, String insideProjectFullPath, boolean searchDependency, l callbacks) {
        if (context != null) {
            d8.j jVar = W7.b.f27310j;
            if (!d8.j.f84393B) {
                Toast.makeText(context, "Please install Java runtime libraries", 0).show();
                return;
            }
            if (!d8.j.f84416s.isEmpty()) {
                Toast.makeText(context, "Please fix all script erros before creating a ITJar", 0).show();
                return;
            }
            H0 h02 = new H0(context);
            h02.f("Create a itjar file");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText(Tc.b.x(insideProjectFullPath));
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new v0(editText, insideProjectFullPath, context, searchDependency, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new w0());
            h02.h();
        }
    }

    public static void a0(Context context, String pluginFile, String pluginName) {
        if (context == null) {
            return;
        }
        C16152a.c(new File(pluginFile), new File(W7.b.f27306f.f2458a.l(context) + "/" + pluginName), new E0(context, pluginName));
    }

    public static void b(Context context, String insideProjectFullPath, l callbacks) {
        if (C14331a.c()) {
            Z6.k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            return;
        }
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New ambient light shader name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("MyAmbient");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new L(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new M());
            h02.h();
        }
    }

    public static void c(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New graph name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("AnimGraph");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15942x(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15943y());
            h02.h();
        }
    }

    public static void d(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_animation_name));
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Animation");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new Y(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new Z());
            h02.h();
        }
    }

    public static void e(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            C15805a.x1(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", new q0(context, insideProjectFullPath, callbacks));
        }
    }

    public static void f(Context context, String panoramaIPP, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New cubemap name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText(Tc.b.w(panoramaIPP, true) + "_cb");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new n0(editText, context, panoramaIPP, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new p0());
            h02.h();
        }
    }

    public static void g(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New cubemap name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Cubemap");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new r0(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new s0());
            h02.h();
        }
    }

    public static void h(Context context, String inProjectPath, l callbacks) {
        H0 h02 = new H0(context);
        h02.f(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_file_name));
        EditText editText = new EditText(context);
        editText.setInputType(64);
        editText.setText(Tc.b.w(inProjectPath, true) + " copy");
        h02.g(editText);
        h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new C0(editText, inProjectPath, callbacks, context));
        h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new D0());
        h02.h();
    }

    public static void i(Context context, String insideProjectFullPath, boolean searchDependency, l callbacks) {
        File[] listFiles;
        if (context != null) {
            String i10 = W7.b.f27306f.f2458a.i(context);
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + insideProjectFullPath;
            if (str.contains("//")) {
                str = str.replace("//", "/");
            }
            File file = new File(str);
            if (file.exists() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (!file2.isDirectory()) {
                        String str2 = Tc.b.x(file2.getAbsolutePath()) + ".itsmpack";
                        File file3 = new File(i10 + "/" + str2);
                        if (file3.exists()) {
                            file3.delete();
                        }
                        nd.e.f(file2.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(context), ""), i10 + "/", str2, searchDependency, new B0(context, str2), context);
                    }
                }
            }
            if (callbacks != null) {
                callbacks.c(null);
            }
        }
    }

    public static void j(Context context, String insideProjectFullPath, boolean searchDependency, l callbacks) {
        File[] listFiles;
        if (context != null) {
            String i10 = W7.b.f27306f.f2458a.i(context);
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + insideProjectFullPath;
            if (str.contains("//")) {
                str = str.replace("//", "/");
            }
            File file = new File(str);
            if (file.exists() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        String str2 = Tc.b.x(file2.getAbsolutePath()) + ".itsmpack";
                        File file3 = new File(i10 + "/" + str2);
                        if (file3.exists()) {
                            file3.delete();
                        }
                        nd.e.f(file2.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(context), ""), i10 + "/", str2, searchDependency, new A0(context, str2), context);
                    }
                }
            }
            if (callbacks != null) {
                callbacks.c(null);
            }
        }
    }

    public static void k(Activity context, String insideProjectFullPath, l callbacks) {
    }

    public static void l(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New json name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("File");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new B(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new C());
            h02.h();
        }
    }

    public static void m(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New material name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Material");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15939u(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15941w());
            h02.h();
        }
    }

    public static void n(Context context, String insideProjectFullPath, l callbacks) {
        if (C14331a.c()) {
            Z6.k.w1("https://itsmagic.com.br/index.html", null, C15147a.e.Below, 300.0f, 450.0f);
            return;
        }
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f("New shader name");
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("MyShader");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new P(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new Q());
            h02.h();
        }
    }

    public static void o(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(new C3867a("Name the new navmesh file", "Nome do novo navmesh bake").toString());
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("NavMesh");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15921f0(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15923g0());
            h02.h();
        }
    }

    public static void p(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, ".ar", new C15936r(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void q(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new C15913b(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void r(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new C2094c(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void s(Context context, String insideProjectFullPath, l callbacks) {
        H0 h02 = new H0(context);
        h02.f(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_file_name));
        EditText editText = new EditText(context);
        editText.setInputType(64);
        editText.setText("CustomDirectoryMenu");
        h02.g(editText);
        h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15930l(editText, insideProjectFullPath, context, callbacks));
        h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15931m());
        h02.h();
    }

    public static void t(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new C15916d(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void u(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new o0(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void v(Context context, String insideProjectFullPath, l callbacks) {
        H0 h02 = new H0(context);
        h02.f(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_file_name));
        EditText editText = new EditText(context);
        editText.setInputType(64);
        editText.setText("CustomFileIcon");
        h02.g(editText);
        h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15926i(editText, insideProjectFullPath, context, callbacks));
        h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15928j());
        h02.h();
    }

    public static void w(Context context, String insideProjectFullPath, l callbacks) {
        H0 h02 = new H0(context);
        h02.f(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_file_name));
        EditText editText = new EditText(context);
        editText.setInputType(64);
        editText.setText("CustomFileMenu");
        h02.g(editText);
        h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15922g(editText, insideProjectFullPath, context, callbacks));
        h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15924h());
        h02.h();
    }

    public static void x(Context context, String insideProjectFullPath, l callbacks) {
        if (context != null) {
            H0 h02 = new H0(context);
            h02.f(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_pfilelongclick_new_folder_name));
            EditText editText = new EditText(context);
            editText.setInputType(64);
            editText.setText("Folder");
            h02.g(editText);
            h02.e(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_ok), new DialogInterfaceOnClickListenerC15937s(editText, context, insideProjectFullPath, callbacks));
            h02.d(context.getResources().getString(com.itsmagic.engine2.R.string.activity_editor_cancel), new DialogInterfaceOnClickListenerC15938t());
            h02.h();
        }
    }

    public static void y(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new C15917d0(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }

    public static void z(Context context, String insideProjectFullPath, l callbacks) {
        y.e(false, C2633l.d(".java"), new S(C15045a.r1(), context, insideProjectFullPath, callbacks));
    }
}
