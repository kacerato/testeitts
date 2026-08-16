package r5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine2.R;
import q5.C15043a;
import q7.C15045a;

public class g extends C15043a {

    public class a extends AbstractViewOnClickListenerC12733a {

        public class C1986a implements C15045a.d {

            public class C1987a implements q.i.K {

                public final C15045a f108661a;

                public class C1988a implements q.i.J {
                    public C1988a() {
                    }

                    @Override
                    public void a(String message) {
                        N7.c.v0("Error:" + message);
                        C1987a.this.f108661a.p1();
                    }

                    @Override
                    public void b() {
                        V5.a.p1();
                        C1987a.this.f108661a.p1();
                    }

                    @Override
                    public void c() {
                        N7.c.v0("Ops limit reached:2 exportation's per week");
                        C1987a.this.f108661a.p1();
                    }

                    @Override
                    public void d() {
                        W7.b.f27307g.c(N7.c.o(), g.this.f105921e);
                        g.this.f();
                        C1987a.this.f108661a.p1();
                    }
                }

                public C1987a(final C15045a val$loadingBar) {
                    this.f108661a = val$loadingBar;
                }

                @Override
                public void a(String message) {
                    N7.c.v0("Error:" + message);
                    this.f108661a.p1();
                }

                @Override
                public void b() {
                    V5.a.p1();
                    this.f108661a.p1();
                }

                @Override
                public void c() {
                    N7.c.v0(new C3867a("You are already exporting a project. Wait for completion", "Voc\u00ea j\u00e1 est\u00e1 exportando um projeto. Aguarde a finaliza\u00e7\u00e3o").toString());
                    this.f108661a.p1();
                }

                @Override
                public void d() {
                    q.i.i(new C1988a());
                }
            }

            public C1986a() {
            }

            @Override
            public void a(C15045a loadingBar) {
                BuildConfigs buildConfigs = g.this.f105921e;
                buildConfigs.buildType = 0;
                buildConfigs.f71678b = com.itsmagic.engine.Core.Components.ProjectController.a.T();
                try {
                    int x12 = Nc.b.x1(g.this.f105921e.versionCode, 1) + 1;
                    g.this.f105921e.b().e(true);
                    g.this.f105921e.b().f(false);
                    g.this.f105921e.versionCode = String.valueOf(x12);
                    g.this.f105921e.versionName = String.valueOf(x12 / 100.0f);
                    g gVar = g.this;
                    BuildConfigs.d(gVar.f105921e, gVar.f105918b);
                    q.i.j(new C1987a(loadingBar));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    loadingBar.p1();
                }
            }
        }

        public a() {
        }

        @Override
        public void click(View v10) {
            C15045a.u1(true, new C1986a());
        }
    }

    @Override
    public View b() {
        View inflate = this.f105917a.inflate(R.layout.export_project_stage4, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        Button button = (Button) inflate.findViewById(R.id.export);
        textView.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE4_TITTLE));
        button.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE4_EXPORT));
        button.setOnClickListener(new a());
        return inflate;
    }
}
