package G0;

import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayList;

public abstract class F0 {

    @Nullable
    public Object f7287a;

    public boolean f7288b = false;

    public final AbstractC2564f f7289c;

    public F0(AbstractC2564f abstractC2564f, Object obj) {
        this.f7289c = abstractC2564f;
        this.f7287a = obj;
    }

    public abstract void a(Object obj);

    public abstract void b();

    public final void c() {
        Object obj;
        synchronized (this) {
            try {
                obj = this.f7287a;
                if (this.f7288b) {
                    Log.w("GmsClient", "Callback proxy " + toString() + " being reused. This is not safe.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (obj != null) {
            a(obj);
        }
        synchronized (this) {
            this.f7288b = true;
        }
        e();
    }

    public final void d() {
        synchronized (this) {
            this.f7287a = null;
        }
    }

    public final void e() {
        ArrayList arrayList;
        ArrayList arrayList2;
        d();
        arrayList = this.f7289c.f7393t;
        synchronized (arrayList) {
            arrayList2 = this.f7289c.f7393t;
            arrayList2.remove(this);
        }
    }
}
