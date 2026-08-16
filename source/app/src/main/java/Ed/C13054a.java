package ed;

import android.content.Context;
import java.util.HashMap;

public class C13054a {

    public class C1587a implements hd.d {

        public final InterfaceC13055b f85494a;

        public C1587a(final InterfaceC13055b val$fastPostListener) {
            this.f85494a = val$fastPostListener;
        }

        @Override
        public void a(String result) {
            this.f85494a.onFinish(result);
        }

        @Override
        public void b(String result) {
            this.f85494a.onFinish(result);
        }
    }

    public class b extends HashMap<String, String> {
    }

    public static void a(String url, String scriptName, Context context, InterfaceC13055b fastPostListener) {
        b(url, scriptName, null, false, context, fastPostListener);
    }

    public static void b(String url, String scriptName, HashMap<String, String> extraParams, boolean requestUserTokens, Context context, InterfaceC13055b fastPostListener) {
        C13056c c13056c = new C13056c(new C1587a(fastPostListener));
        b bVar = new b();
        if (extraParams != null) {
            bVar.putAll(extraParams);
        }
        if (requestUserTokens) {
            bVar.putAll(W7.b.f27306f.f2461d.G(context));
        }
        H8.a aVar = W7.b.f27306f.f2460c;
        c13056c.d(new hd.e(H8.a.a(url, scriptName), bVar, context));
    }

    public static void c(String url, String scriptName, boolean requestUserTokens, Context context, InterfaceC13055b fastPostListener) {
        b(url, scriptName, null, requestUserTokens, context, fastPostListener);
    }
}
