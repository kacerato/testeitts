package u8;

import Z6.g;
import Z6.i;
import android.app.Activity;
import android.content.Context;
import android.provider.Telephony;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.PendingCompilation;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import ed.C13056c;
import ed.f;
import ed.j;
import hd.C13442a;
import hd.e;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
import w8.C15974a;
import yd.C16179k;

@Deprecated
public class c {

    public static List<C15974a> f118683d = new LinkedList();

    public static C15974a f118684e;

    public PendingCompilation f118685a;

    public final Object f118686b = new Object();

    public C15580b f118687c;

    public class a implements g.c {

        public final Activity f118688a;

        public final BuildConfigs f118689b;

        public class C2040a implements hd.d {

            public final g f118691a;

            public class C2041a implements hd.d {
                public C2041a() {
                }

                @Override
                public void a(String result) {
                    C2040a.this.f118691a.R0();
                    i.y1("Ops!", "Ops! keystore upload failed " + result);
                }

                @Override
                public void b(String result) {
                    C2040a.this.f118691a.R0();
                    a aVar = a.this;
                    c.this.a(aVar.f118689b.worldZero);
                }
            }

            public C2040a(final g val$popup) {
                this.f118691a = val$popup;
            }

            @Override
            public void a(String result) {
                if (f.a(result, a.this.f118688a, new Z6.d()) != 1) {
                    JSONObject h10 = hd.c.h(result);
                    String g10 = hd.c.g(h10, Telephony.TextBasedSmsColumns.ERROR_CODE);
                    String g11 = hd.c.g(h10, "error_message");
                    if (g10.equals("0x0005")) {
                        i.y1("Ops!", "Invalid credentials");
                        return;
                    }
                    if (g10.equals("0x0002")) {
                        i.y1("Sorry", "Seems like you have not enough coins");
                        return;
                    }
                    if (g10.equals("0x0004")) {
                        i.y1("Sorry", "Wait the pending compilation to finish");
                    } else if (g10.equals("0x0007")) {
                        i.y1("Sorry", new C3867a("Unsupported app version, please update", "Seu app n\u00e3o \u00e9 suportado, por favor atualize").toString());
                    } else {
                        i.y1("Sorry", g11);
                    }
                }
            }

            @Override
            public void b(String result) {
                String g10 = hd.c.g(hd.c.h(result), "apktoken");
                a aVar = a.this;
                PendingCompilation pendingCompilation = c.this.f118685a;
                pendingCompilation.status = 1;
                pendingCompilation.apkToken = g10;
                BuildConfigs buildConfigs = aVar.f118689b;
                if (buildConfigs.buildType != 2 || buildConfigs.keyStorePath == null) {
                    this.f118691a.R0();
                    a aVar2 = a.this;
                    c.this.a(aVar2.f118689b.worldZero);
                    return;
                }
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(a.this.f118688a) + "/" + a.this.f118689b.keyStorePath);
                if (!file.exists()) {
                    this.f118691a.R0();
                    a aVar3 = a.this;
                    c.this.a(aVar3.f118689b.worldZero);
                    return;
                }
                new j(new C2041a()).execute(new C13442a(file.getAbsolutePath(), H8.a.a(H8.a.f8301d, "uploadKS.php"), new String[]{"apktoken=" + c.this.f118685a.apkToken}, null));
            }
        }

        public class b extends HashMap<String, String> {

            public final String f118694b;

            public final String f118695c;

            public b(final String val$finalRi, final String val$finalAdmob) {
                this.f118694b = val$finalRi;
                this.f118695c = val$finalAdmob;
                put("pn", "com." + a.this.f118689b.companyName.toLowerCase() + "." + a.this.f118689b.appNameP.toLowerCase());
                put("an", a.this.f118689b.appName);
                put("vc", a.this.f118689b.versionCode);
                put(C16179k.f130220f, a.this.f118689b.versionName);
                put("lpn", a.this.f118689b.f71678b);
                put("ri", val$finalRi);
                put(C16179k.f130221g, a.this.f118689b.b().toString());
                put("bt", "" + a.this.f118689b.buildType);
                put("ksp", a.this.f118689b.keystorePassowrd);
                put("ksa", a.this.f118689b.keystoreAlias);
                put("ksap", a.this.f118689b.keystoreAliasPassword);
                put("adt", val$finalAdmob);
            }
        }

        public a(final Activity val$context, final BuildConfigs val$buildConfigs) {
            this.f118688a = val$context;
            this.f118689b = val$buildConfigs;
        }

        @Override
        public void a(g popup, FloatingPanelArea area) {
            if (UserController.Z(this.f118688a)) {
                C13056c c13056c = new C13056c(new C2040a(popup));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f118688a));
                sb2.append("/_EDITOR/APP/Settings/Icon/512x.png");
                b bVar = new b(new File(sb2.toString()).exists() ? "1" : "0", "");
                bVar.putAll(W7.b.f27306f.f2461d.G(this.f118688a));
                c13056c.d(new e(H8.a.a(H8.a.f8301d, "request.php"), bVar, this.f118688a));
            }
        }
    }

    public class b implements hd.d {

        public final PendingCompilation f118697a;

        public final d f118698b;

        public final Context f118699c;

        public b(final PendingCompilation val$pendingCompilation, final d val$serviceListener, final Context val$context) {
            this.f118697a = val$pendingCompilation;
            this.f118698b = val$serviceListener;
            this.f118699c = val$context;
        }

        @Override
        public void a(String result) {
            System.out.println("PackageBuilder upload error:" + result);
            hd.c.g(hd.c.h(result), Telephony.TextBasedSmsColumns.ERROR_CODE);
            d dVar = this.f118698b;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override
        public void b(String result) {
            c.this.f(this.f118697a, this.f118698b, this.f118699c);
        }
    }

    public class C2042c implements hd.d {

        public final d f118701a;

        public C2042c(final d val$serviceListener) {
            this.f118701a = val$serviceListener;
        }

        @Override
        public void a(String result) {
            if (hd.c.g(hd.c.h(result), Telephony.TextBasedSmsColumns.ERROR_CODE).equals("0x0005")) {
                d dVar = this.f118701a;
                if (dVar != null) {
                    dVar.onSuccess();
                    return;
                }
                return;
            }
            d dVar2 = this.f118701a;
            if (dVar2 != null) {
                dVar2.a();
            }
        }

        @Override
        public void b(String result) {
            d dVar = this.f118701a;
            if (dVar != null) {
                dVar.onSuccess();
            }
        }
    }

    public static void d(String packid) {
        for (C15974a c15974a : f118683d) {
            if (packid.equals(c15974a.f127337a)) {
                f118684e = c15974a;
                return;
            }
        }
        f118684e = null;
    }

    public void a(String worldZero) {
        synchronized (this.f118686b) {
            this.f118687c = new C15580b(worldZero);
        }
    }

    public void b(Context context) {
        if (this.f118685a == null) {
            this.f118685a = new PendingCompilation();
        }
        if (this.f118685a.status == 2) {
            synchronized (this.f118686b) {
                this.f118687c = new C15580b(this.f118685a.worldZero);
            }
        }
    }

    public void c(Activity context, BuildConfigs bc2) {
        if (bc2 == null) {
            throw new NullPointerException("Build configs can't be null");
        }
        g.s1("Building project", new a(context, bc2.a()));
    }

    public void e(PendingCompilation pendingCompilation, d serviceListener, Context context) {
        new j(new b(pendingCompilation, serviceListener, context)).execute(new C13442a(W7.b.f27306f.f2458a.b(context) + "/Builder/assets.zip", H8.a.a(H8.a.f8301d, "uploadAssets.php"), new String[]{"apktoken=" + pendingCompilation.apkToken}, serviceListener));
    }

    public void f(PendingCompilation pendingCompilation, d serviceListener, Context context) {
        if (!new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/_EDITOR/APP/Settings/Icon/512x.png").exists()) {
            if (serviceListener != null) {
                serviceListener.onSuccess();
                return;
            }
            return;
        }
        new j(new C2042c(serviceListener)).execute(new C13442a(com.itsmagic.engine.Core.Components.ProjectController.a.Z(pendingCompilation.localProjectName, context) + "/_EDITOR/APP/Settings/Icon/512x.png", H8.a.a(H8.a.f8301d, "uploadIcon.php"), new String[]{"apktoken=" + pendingCompilation.apkToken}, serviceListener));
    }
}
