package q0;

import android.net.Uri;
import java.util.Map;

public final class C15035b extends Thread {

    public final Map f105899b;

    public C15035b(C15034a c15034a, Map map) {
        this.f105899b = map;
    }

    @Override
    public final void run() {
        Map map = this.f105899b;
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : map.o()) {
            buildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        d.a(buildUpon.build().toString());
    }
}
