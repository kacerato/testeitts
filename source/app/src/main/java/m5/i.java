package M5;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import org.openjdk.tools.doclint.DocLint;

public class i extends L5.b {

    public boolean f14561i = false;

    public class a implements W7.e {

        public class RunnableC0414a implements Runnable {

            public final String f14563b;

            public RunnableC0414a(final String val$error) {
                this.f14563b = val$error;
            }

            @Override
            public void run() {
                Z6.i.y1("Ops!", this.f14563b);
            }
        }

        public a() {
        }

        @Override
        public void b(String msg) {
            i.this.n(msg);
        }

        @Override
        public void onError(String error) {
            N7.c.j0(new RunnableC0414a(error));
            i.this.o("Ops!");
            i.this.n(error);
            i.this.b();
        }

        @Override
        public void onFinish() {
            i.this.o("");
            i.this.b();
            i iVar = i.this;
            com.itsmagic.engine.Core.Components.ProjectController.a.o0(iVar.f11606b, iVar.c());
        }
    }

    @Override
    public void a() {
        super.a();
        if (!com.itsmagic.engine.Engines.Engine.World.a.z()) {
            int v10 = com.itsmagic.engine.Engines.Engine.World.a.v();
            if (v10 > 0) {
                String t10 = com.itsmagic.engine.Engines.Engine.World.a.t();
                if (t10 == null || t10.isEmpty()) {
                    n("");
                } else {
                    n(t10);
                    String[] split = t10.split(DocLint.SEPARATOR);
                    if (split.length >= 3) {
                        String str = split[0];
                        str.substring(1, str.length() - 1);
                        String str2 = split[1];
                        str2.substring(1, str2.length() - 1);
                        if (split.length >= 4) {
                            String str3 = split[2];
                            String substring = str3.substring(1, str3.length() - 1);
                            String str4 = split[3];
                            String v11 = Tc.b.v(str4.substring(1, str4.length() - 1));
                            n(substring + " " + (Tc.b.Y(Tc.b.O(v11), 12) + Tc.b.t(v11)) + " " + ((int) (com.itsmagic.engine.Engines.Engine.World.a.x() * 100.0f)) + ve.j.f121589a);
                        } else {
                            String str5 = split[2];
                            n(str5.substring(1, str5.length() - 1) + " " + ((int) (com.itsmagic.engine.Engines.Engine.World.a.x() * 100.0f)) + ve.j.f121589a);
                        }
                    } else {
                        n(t10);
                    }
                }
                int s10 = com.itsmagic.engine.Engines.Engine.World.a.s();
                o(v10 + "/" + s10 + " - " + ((int) ((v10 / s10) * 100.0f)) + ve.j.f121589a);
                this.f14561i = true;
            }
        } else if (this.f14561i) {
            o("");
            b();
        }
        m(com.itsmagic.engine.Engines.Engine.World.a.u());
    }

    @Override
    public void k() {
        super.k();
        com.itsmagic.engine.Core.Components.ProjectController.a.l0("");
        o("");
        n(Lang.l(Lang.T.LOADING_WORLD));
        W7.b.p(this.f11606b, new a());
    }
}
