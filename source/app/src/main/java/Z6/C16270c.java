package z6;

import Ic.C2630i;
import Ic.C2633l;
import Z6.c;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import d8.j;
import id.C13696a;
import java.io.File;
import jd.C13823b;
import n4.C14351c;
import q7.C15045a;
import r4.C15147a;
import w5.l;
import y6.InterfaceC16149b;
import y6.c;
import y6.f;
import z8.C16273a;

public class C16270c implements F6.d {

    public Context f130729a;

    public View f130730b;

    public LayoutInflater f130731c;

    public ConstraintLayout f130732d;

    public f f130733e;

    public class a extends AbstractViewOnClickListenerC12733a {

        public final Context f130734b;

        public class RunnableC2250a implements Runnable {
            public RunnableC2250a() {
            }

            @Override
            public void run() {
            }
        }

        public a(final Context val$context) {
            this.f130734b = val$context;
        }

        @Override
        public void click(View v10) {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f130734b) + "/Files/Scripts/");
            if (!file.exists()) {
                file.mkdirs();
            }
            com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.b.h(v10, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f130734b) + "/Files/Scripts/", new RunnableC2250a());
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public final Context f130737b;

        public class a implements l {
            public a() {
            }

            @Override
            public void a() {
                Toast.makeText(b.this.f130737b, "Ops! something went wrong.", 0).show();
            }

            @Override
            public void c(String inProjectPath) {
                N7.c.D().B0(new C14351c(inProjectPath));
            }
        }

        public b(final Context val$context) {
            this.f130737b = val$context;
        }

        @Override
        public void click(View v10) {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f130737b) + "/Files/Scripts/");
            if (!file.exists()) {
                file.mkdirs();
            }
            w5.c.C(this.f130737b, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f130737b) + "/Files/Scripts/", new a());
        }
    }

    public class C2251c extends AbstractViewOnClickListenerC12733a {

        public final Context f130740b;

        public class a implements c.i {

            public final View f130742a;

            public class RunnableC2252a implements Runnable {

                public final C15045a f130744b;

                public class C2253a implements C13696a.d {
                    public C2253a() {
                    }

                    @Override
                    public void b() {
                        j.v0();
                        RunnableC2252a.this.f130744b.p1();
                    }
                }

                public RunnableC2252a(final C15045a val$loading) {
                    this.f130744b = val$loading;
                }

                @Override
                public void run() {
                    C16273a.c(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(C2251c.this.f130740b) + "/JAVARuntime/").getAbsolutePath(), null);
                    a.this.c(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(C2251c.this.f130740b) + "/"));
                    C13696a.n(new C2253a());
                }
            }

            public a(final View val$v) {
                this.f130742a = val$v;
            }

            @Override
            public void a(c.g dialog) {
                dialog.dismiss();
                new Thread(new RunnableC2252a(C15045a.t1(this.f130742a, C15147a.e.Below))).start();
            }

            @Override
            public void b(c.g dialog) {
                dialog.dismiss();
            }

            public void c(File folder) {
                File[] listFiles = folder.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        if (file.isDirectory()) {
                            c(file);
                        } else if (C2633l.b(file.getName(), ".javac")) {
                            file.delete();
                        } else if (C2633l.b(file.getName(), ".java") && file.getName().startsWith("_I")) {
                            file.delete();
                        }
                    }
                }
            }
        }

        public C2251c(final Context val$context) {
            this.f130740b = val$context;
        }

        @Override
        public void click(View v10) {
            Z6.c.w1(v10, C15147a.e.Below, Lang.l(Lang.T.ATTENTION), Lang.l(Lang.T.REINSTALL_ALL_JAVA_LIBRARIES), new a(v10));
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            C2630i.n("https://itsmagic.com.br/documentation/docs/English/Java/Objects/SpatialObject");
        }
    }

    public final void a(View view, Context context) {
        view.findViewById(R.id.f131510java).setOnClickListener(new a(context));
        view.findViewById(R.id.lua).setOnClickListener(new b(context));
        ((Button) view.findViewById(R.id.button4)).setOnClickListener(new C2251c(context));
        ((Button) view.findViewById(R.id.doc)).setOnClickListener(new d());
    }

    @Override
    public F6.d duplicate() {
        return new C16270c();
    }

    @Override
    public String getOpenFile() {
        return null;
    }

    @Override
    public boolean hasScript() {
        return false;
    }

    @Override
    public void hideView() {
        this.f130730b.setVisibility(8);
    }

    @Override
    public void inflateView(ConstraintLayout modulesContent, AsyncLayoutInflater asyncLayoutInflater, Context context, InterfaceC16149b inflateListener) {
        this.f130732d = modulesContent;
        View inflate = this.f130731c.inflate(R.layout.codeview_welcome, (ViewGroup) null);
        modulesContent.addView(inflate);
        inflate.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        this.f130730b = inflate;
        a(inflate, context);
        inflateListener.a(this.f130730b);
    }

    @Override
    public boolean matchState(c.l state) {
        return state == c.l.Welcome;
    }

    @Override
    public void onClose(Context context) {
        this.f130732d.removeAllViews();
    }

    @Override
    public void onStart(Context context, LayoutInflater layoutInflater, f upperCommunication, EditorPanel editorPanel) {
        this.f130729a = context;
        this.f130733e = upperCommunication;
        this.f130731c = layoutInflater;
    }

    @Override
    public void openScript(C13823b script, Context context) {
    }

    @Override
    public void replaceScript(C13823b newScript, Context context) {
    }

    @Override
    public boolean saveScript(Context context) {
        return false;
    }

    @Override
    public void showView() {
        this.f130730b.setVisibility(0);
    }

    @Override
    public boolean supportFile(C13823b file) {
        return false;
    }
}
