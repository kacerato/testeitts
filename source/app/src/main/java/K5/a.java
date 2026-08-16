package K5;

import Ob.a;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ImGUI.Backend.ImguiBackend;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Dictionary.ShaderTemplates;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;
import mc.C14212f;
import mc.k;
import t3.C15377a;

public class a extends J5.b {

    public static boolean f10819h = false;

    public int f10820f;

    public final AtomicInteger f10821g = new AtomicInteger();

    public class RunnableC0352a implements Runnable {
        public RunnableC0352a() {
        }

        @Override
        public void run() {
            k.d(N7.c.t(), new File(ec.b.d()));
            ImguiBackend.preloadShaderCache();
            a.this.b();
        }
    }

    public class b implements Runnable {

        public class C0353a implements C14212f.c {
            public C0353a() {
            }

            @Override
            public void a(int t10) {
                a.n(a.this, t10);
                a.this.k(a.this.f10821g.get() + "/" + t10);
            }

            @Override
            public void b() {
                a.this.f10821g.incrementAndGet();
                a.this.k(a.this.f10821g.get() + "/" + a.this.f10820f);
            }
        }

        public b() {
        }

        @Override
        public void run() {
            O9.a<ShaderTemplates.a> g10 = a.b.f16600a.g();
            a.n(a.this, g10.size());
            File file = new File(W7.b.f27306f.f2458a.f() + "/vulkan/");
            C14212f.c(file, new C0353a());
            ec.b.n(file);
            for (int i10 = 0; i10 < g10.size(); i10++) {
                ShaderTemplates.a aVar = g10.get(i10);
                aVar.f81111c.C(aVar.f81112d);
                a.this.f10821g.incrementAndGet();
                a.this.k(a.this.f10821g.get() + "/" + a.this.f10820f);
            }
            ec.b.b();
            a.this.b();
        }
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f10819h = false;
        }
    }

    public static int n(a aVar, int i10) {
        int i11 = aVar.f10820f + i10;
        aVar.f10820f = i11;
        return i11;
    }

    @Override
    public void g() {
        super.g();
        j(Lang.l(Lang.T.CACHING_MATERIALS));
        k("...");
        if (f10819h) {
            O9.b.d(new b());
        } else {
            O9.b.d(new RunnableC0352a());
        }
    }
}
