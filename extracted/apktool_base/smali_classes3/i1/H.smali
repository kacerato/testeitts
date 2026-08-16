.class public final Li1/H;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Li1/I;


# direct methods
.method public synthetic constructor <init>(Li1/I;Li1/G;)V
    .locals 0

    iput-object p1, p0, Li1/H;->a:Li1/I;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Li1/H;->a:Li1/I;

    invoke-static {p1, p2}, Li1/I;->c(Li1/I;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Li1/H;->a:Li1/I;

    invoke-static {p1}, Li1/I;->a(Li1/I;)Li1/O;

    move-result-object p1

    invoke-virtual {p1, p2}, Li1/O;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Li1/H;->a:Li1/I;

    invoke-static {p1}, Li1/I;->d(Li1/I;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "UserMessagingPlatform"

    const-string p2, "Wall html loaded."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Li1/H;->a:Li1/I;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Li1/I;->e(Li1/I;Z)Z

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Li1/H;->a:Li1/I;

    invoke-static {p1}, Li1/I;->a(Li1/I;)Li1/O;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Li1/O;->d(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Li1/H;->a:Li1/I;

    .line 2
    invoke-static {p2, p1}, Li1/I;->c(Li1/I;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Li1/H;->a:Li1/I;

    invoke-static {p2}, Li1/I;->a(Li1/I;)Li1/O;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Li1/O;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Li1/H;->a:Li1/I;

    .line 4
    invoke-static {p1, p2}, Li1/I;->c(Li1/I;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Li1/H;->a:Li1/I;

    invoke-static {p1}, Li1/I;->a(Li1/I;)Li1/O;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Li1/O;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
