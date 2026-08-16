package i1;

import android.app.Application;
import android.content.Context;
import androidx.annotation.GuardedBy;

public abstract class q0 {

    @GuardedBy("AppComponent.class")
    public static q0 f91345a;

    public static q0 a(Context context) {
        q0 q0Var;
        synchronized (q0.class) {
            try {
                if (f91345a == null) {
                    C13552h c13552h = new C13552h(null);
                    c13552h.b((Application) context.getApplicationContext());
                    f91345a = c13552h.a();
                }
                q0Var = f91345a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return q0Var;
    }

    public abstract w0 b();

    public abstract C c();
}
