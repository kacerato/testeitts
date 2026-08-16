package u2;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import i1.q0;

public final class C15571f {

    public interface a {
        void b(@RecentlyNonNull C15570e c15570e);
    }

    public interface b {
        void a(@RecentlyNonNull InterfaceC15567b interfaceC15567b);
    }

    @RecentlyNonNull
    public static InterfaceC15568c a(@RecentlyNonNull Context context) {
        return q0.a(context).b();
    }

    public static void b(@RecentlyNonNull Context context, @RecentlyNonNull b bVar, @RecentlyNonNull a aVar) {
        q0.a(context).c().a(bVar, aVar);
    }
}
