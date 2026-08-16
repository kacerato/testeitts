package M5;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import java.io.File;

public class a extends L5.b {

    public class RunnableC0408a implements Runnable {
        public RunnableC0408a() {
        }

        @Override
        public void run() {
            a.this.r(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(a.this.f11606b)));
            a.this.b();
        }
    }

    @Override
    public void k() {
        super.k();
        I5.d.f8866e0.set(true);
        o(Lang.l(Lang.T.BUILDING_TABLES));
        n("");
        O9.b.d(new RunnableC0408a());
    }

    public final void r(File folder) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                String d10 = d(file);
                if (!file.isDirectory()) {
                    n(d10);
                    this.f11607c.c(d10, file);
                } else if (!d10.startsWith("JAVARuntime") && !d10.startsWith("_EDITOR")) {
                    r(file);
                }
            }
        }
    }
}
