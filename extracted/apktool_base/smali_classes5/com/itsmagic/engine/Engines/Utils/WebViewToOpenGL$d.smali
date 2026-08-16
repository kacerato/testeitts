.class public Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;-><init>(Landroid/content/Context;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Landroid/content/Context;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$width",
            "val$height",
            "val$url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->b:Landroid/content/Context;

    iput p3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->c:I

    iput p4, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->d:I

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/webkit/WebView;->enableSlowWholeDocumentDraw()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->c:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->f(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$a;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (Linux; U; Android 10; en-us; Pixel 4 Build/QD2A.190505.003) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$j;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$j;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)V

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$b;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;)V

    const-string v3, "document.body.innerHTML"

    invoke-virtual {v0, v3, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->k(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
