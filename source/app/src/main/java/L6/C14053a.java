package l6;

import com.itsmagic.engine.Activities.Editor.Utils.y;
import j6.d;
import java.io.File;

public class C14053a extends d {

    public String f96167c;

    public class C1867a implements y.j {
        public C1867a() {
        }

        @Override
        public void a(File file) {
            if (file != null) {
                C14053a.this.h(new j6.b(file));
            }
        }

        @Override
        public void onFinish() {
        }
    }

    public C14053a(String title) {
        this.f96167c = title;
    }

    @Override
    public String f() {
        return this.f96167c;
    }

    @Override
    public void k() {
        y.k(true, ".go", new C1867a());
    }

    public C14053a(int icon, String title) {
        super(icon);
        this.f96167c = title;
    }
}
