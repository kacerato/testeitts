package K5;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import mc.C14212f;

public class b extends J5.b {

    public int f10825f = 0;

    public int f10826g = 0;

    public class a implements C14212f.c {
        public a() {
        }

        @Override
        public void a(int total) {
            b.this.f10825f = total;
        }

        @Override
        public void b() {
            b bVar = b.this;
            bVar.f10826g++;
            bVar.k(b.this.f10826g + "/" + b.this.f10825f);
        }
    }

    public interface InterfaceC0354b {
        void a(int t10);

        void b(int p10, int t10);

        void finished();
    }

    @Override
    public void a() {
        super.a();
        if (C14212f.d(new a())) {
            return;
        }
        b();
    }

    @Override
    public void g() {
        super.g();
        j(Lang.l(Lang.T.COMPILING_SHADERS));
        k("...");
    }
}
