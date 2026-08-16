package M5;

import K3.e;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import java.io.File;

@Deprecated
public class j extends L5.b {

    public class a implements Runnable {

        public class C0415a implements e.InterfaceC0348e {
            public C0415a() {
            }

            @Override
            public void a(File file) {
                j jVar = j.this;
                jVar.n(jVar.d(file));
            }
        }

        public a() {
        }

        @Override
        public void run() {
            K3.e.f(com.itsmagic.engine.Core.Components.ProjectController.a.Y(j.this.f11606b) + "/", j.this.f11607c.f8844c, new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(j.this.f11606b) + "/"), false, new C0415a());
            j.this.b();
        }
    }

    public j() {
        this.f11612h = false;
    }

    @Override
    public void k() {
        super.k();
        o(Lang.l(Lang.T.REPLACING_FILES));
        n("");
        if (this.f11607c.f8843b.isEmpty()) {
            this.f11612h = false;
            b();
        } else {
            this.f11612h = true;
            O9.b.d(new a());
        }
    }
}
