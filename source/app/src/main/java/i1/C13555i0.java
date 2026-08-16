package i1;

import android.annotation.TargetApi;
import android.webkit.WebView;
import androidx.annotation.GuardedBy;

public final class C13555i0 {

    @GuardedBy("WebViewUtil.class")
    public static Boolean f91307a;

    @TargetApi(19)
    public static void a(WebView webView, String str) {
        boolean booleanValue;
        synchronized (C13555i0.class) {
            if (f91307a == null) {
                try {
                    webView.evaluateJavascript("(function(){})()", null);
                    f91307a = Boolean.TRUE;
                } catch (IllegalStateException unused) {
                    f91307a = Boolean.FALSE;
                }
            }
            booleanValue = f91307a.booleanValue();
        }
        if (booleanValue) {
            webView.evaluateJavascript(str, null);
        } else {
            String valueOf = String.valueOf(str);
            webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
        }
    }
}
