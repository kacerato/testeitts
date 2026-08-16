package F3;

import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import d8.j;

public class b {

    public static final int f6490b = -1;

    public static final int f6491c = 1;

    public static final int f6492d = 2;

    public static final int f6493e = 3;

    public static final int f6494f = 4;

    public static final int f6495g = 5;

    public JavaMetaInfo f6496a;

    public b(JavaMetaInfo jmi) {
        this.f6496a = jmi;
    }

    public int a() {
        if (this.f6496a.f72517g) {
            return 5;
        }
        if (!j.W()) {
            if (this.f6496a.k()) {
                return -1;
            }
            return this.f6496a.f72516f ? 3 : 2;
        }
        if (j.f84416s.contains(this.f6496a)) {
            return this.f6496a.f72518h ? 1 : 2;
        }
        if (this.f6496a.k()) {
            return -1;
        }
        return this.f6496a.f72516f ? 3 : 4;
    }
}
