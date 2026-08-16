package i1;

import android.annotation.TargetApi;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public final class H extends WebViewClient {

    public final I f91190a;

    public H(I i10, G g10) {
        this.f91190a = i10;
    }

    @Override
    public final void onLoadResource(WebView webView, String str) {
        O o10;
        if (I.c(this.f91190a, str)) {
            o10 = this.f91190a.f91194c;
            o10.c(str);
        }
    }

    @Override
    public final void onPageFinished(WebView webView, String str) {
        boolean z10;
        z10 = this.f91190a.f91195d;
        if (z10) {
            return;
        }
        Log.d("UserMessagingPlatform", "Wall html loaded.");
        I.e(this.f91190a, true);
    }

    @Override
    public final void onReceivedError(WebView webView, int i10, String str, String str2) {
        O o10;
        o10 = this.f91190a.f91194c;
        o10.d(i10, str, str2);
    }

    @Override
    @TargetApi(24)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        O o10;
        String uri = webResourceRequest.getUrl().toString();
        if (!I.c(this.f91190a, uri)) {
            return false;
        }
        o10 = this.f91190a.f91194c;
        o10.c(uri);
        return true;
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        O o10;
        if (!I.c(this.f91190a, str)) {
            return false;
        }
        o10 = this.f91190a.f91194c;
        o10.c(str);
        return true;
    }
}
