package M5;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;

public class e extends L5.b {

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            I5.d.f8866e0.set(false);
        }
    }

    public e() {
        this.f11612h = false;
    }

    @Override
    public void k() {
        super.k();
        o(Lang.l(Lang.T.DONE));
        n("");
        m(1.0f);
        b();
        N7.c.l(2.0f, new a());
    }
}
