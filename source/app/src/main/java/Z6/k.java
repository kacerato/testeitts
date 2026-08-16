package Z6;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class k extends EditorPanel {

    public static final String f31042b0 = "FloatingWebViewPopup";

    public final String f31043X;

    public FloatingPanelArea f31044Y;

    public WebView f31045Z;

    public ProgressBar f31046a0;

    public class a extends AbstractViewOnClickListenerC12733a {
        public a() {
        }

        @Override
        public void click(View view) {
            k.this.R0();
        }
    }

    public class b extends WebViewClient {
        public b() {
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            k.this.v1(false);
        }

        @Override
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            super.onPageStarted(view, url, favicon);
            k.this.v1(true);
        }

        @Override
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            k.this.v1(false);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            return false;
        }

        @Override
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            k.this.v1(false);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            return false;
        }
    }

    public class c implements Runnable {

        public final WebView f31049b;

        public c(final WebView val$currentWebView) {
            this.f31049b = val$currentWebView;
        }

        @Override
        public void run() {
            try {
                this.f31049b.stopLoading();
                this.f31049b.loadUrl("about:blank");
                this.f31049b.clearHistory();
                this.f31049b.clearCache(true);
                ViewGroup viewGroup = this.f31049b.getParent() instanceof ViewGroup ? (ViewGroup) this.f31049b.getParent() : null;
                if (viewGroup != null) {
                    viewGroup.removeView(this.f31049b);
                }
                this.f31049b.setWebViewClient(null);
                this.f31049b.destroy();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public k(String url) {
        super(null, "ITsMagic Engine 2.0");
        this.f31043X = u1(url);
        super.e1(false);
    }

    public static boolean t1(View view, MotionEvent motionEvent) {
        return true;
    }

    public static String u1(String url) {
        if (url == null) {
            throw new IllegalArgumentException("url can't be null");
        }
        String trim = url.trim();
        if (trim.isEmpty()) {
            throw new IllegalArgumentException("url can't be empty");
        }
        return trim;
    }

    public static FloatingPanelArea w1(String url, View anchor, C15147a.e anchorSide, float wDp, float hDp) {
        k kVar = new k(url);
        int round = Math.round(wDp);
        int round2 = Math.round(hDp);
        float I10 = Nc.b.I(N7.c.g(round));
        float I11 = Nc.b.I(N7.c.f(round2));
        FloatingPanelArea m10 = (anchor == null || anchorSide == null) ? C15147a.m(kVar, I10, I11) : C15147a.g(anchor, kVar, anchorSide, I10, I11);
        m10.T();
        m10.f1();
        m10.F1(false);
        m10.E1(true);
        m10.N1(false);
        m10.I1(round, round2, FloatingPanelArea.i.Fixed);
        m10.N0(true, true, true, false);
        kVar.f31044Y = m10;
        return m10;
    }

    @Override
    @SuppressLint({"InflateParams"})
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.floating_webview_popup_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean t12;
                t12 = k.t1(view, motionEvent);
                return t12;
            }
        });
        TextView textView = (TextView) inflate.findViewById(R.id.title);
        if (textView != null) {
            textView.setText("ITsMagic Engine 2.0");
        }
        View findViewById = inflate.findViewById(R.id.close);
        if (findViewById != null) {
            findViewById.setOnClickListener(new a());
        }
        this.f31046a0 = (ProgressBar) inflate.findViewById(R.id.loading);
        WebView webView = (WebView) inflate.findViewById(R.id.web_view);
        this.f31045Z = webView;
        if (webView != null) {
            r1(webView);
            v1(true);
            this.f31045Z.loadUrl(this.f31043X);
        }
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        s1();
        this.f31044Y = null;
    }

    @Override
    public EditorPanel k() {
        return new k(this.f31043X);
    }

    public final void r1(WebView webView) {
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setCacheMode(-1);
        settings.setMediaPlaybackRequiresUserGesture(false);
        webView.setBackgroundColor(0);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setWebViewClient(new b());
    }

    public final void s1() {
        WebView webView = this.f31045Z;
        this.f31045Z = null;
        if (webView == null) {
            return;
        }
        N7.c.j0(new c(webView));
    }

    public final void v1(boolean visible) {
        ProgressBar progressBar = this.f31046a0;
        if (progressBar != null) {
            progressBar.setVisibility(visible ? 0 : 8);
        }
    }
}
