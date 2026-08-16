package M5;

import Ic.C2633l;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import java.io.File;

@Deprecated
public class h extends L5.b {

    public class a implements Runnable {

        public class RunnableC0413a implements Runnable {
            public RunnableC0413a() {
            }

            @Override
            public void run() {
                h.this.b();
            }
        }

        public a() {
        }

        public void a(File folder) {
            File[] listFiles = folder.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (file.isDirectory()) {
                        a(file);
                    } else if (C2633l.b(file.getName(), ".javac")) {
                        file.delete();
                    }
                }
            }
        }

        @Override
        public void run() {
            a(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(h.this.f11606b) + "/"));
            N7.c.j0(new RunnableC0413a());
        }
    }

    @Override
    public void k() {
        super.k();
        o("");
        n(Lang.l(Lang.T.CHECKING_JAVA_FILES));
        q();
    }

    public final void q() {
        if (this.f11605a.appVersionCode < 717) {
            O9.b.d(new a());
        } else {
            this.f11612h = false;
            b();
        }
    }
}
