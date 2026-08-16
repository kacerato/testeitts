package i1;

import android.os.Handler;
import android.webkit.WebView;
import androidx.annotation.UiThread;

@UiThread
public final class I extends WebView {

    public final Handler f91193b;

    public final O f91194c;

    public boolean f91195d;

    public I(K k10, Handler handler, O o10) {
        super(k10);
        this.f91195d = false;
        this.f91193b = handler;
        this.f91194c = o10;
    }

    public static boolean c(I i10, String str) {
        return str != null && str.startsWith("consent://");
    }

    public static boolean e(I i10, boolean z10) {
        i10.f91195d = true;
        return true;
    }

    public final void b(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(str.length() + 3 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append("(");
        sb2.append(str2);
        sb2.append(");");
        final String sb3 = sb2.toString();
        this.f91193b.post(new Runnable() {
            @Override
            public final void run() {
                C13555i0.a(I.this, sb3);
            }
        });
    }
}
