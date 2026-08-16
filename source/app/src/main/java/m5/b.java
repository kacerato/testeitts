package M5;

import Ic.C2633l;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import java.io.File;

public class b extends L5.b {

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            b.this.q(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(b.this.f11606b)));
            b.this.b();
        }
    }

    @Override
    public void k() {
        super.k();
        o(Lang.l(Lang.T.LOADING_EDITOR));
        n(Lang.l(Lang.T.CHECKING_INVALID_FILES));
        O9.b.d(new a());
    }

    public void q(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    q(file2);
                } else if (C2633l.b(file2.getAbsolutePath(), ".texture") && file2.length() == 0) {
                    file2.delete();
                }
            }
        }
    }
}
