.class public Lw5/c$G0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$G0;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lw5/c$G0;


# direct methods
.method public constructor <init>(Lw5/c$G0;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iput-object p2, p0, Lw5/c$G0$a;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    const-string p1, "."

    const-string p2, " "

    const-string v0, "/"

    invoke-static {}, LN7/c;->Y()V

    :try_start_0
    iget-object v1, p0, Lw5/c$G0$a;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1, v3}, LTc/b;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".java"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iget-object v1, v1, Lw5/c$G0;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iget-object v4, v4, Lw5/c$G0;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iget-object v4, v4, Lw5/c$G0;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ld8/j;->a0(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    const-string v2, "Unknown user"

    sget-object v4, LW7/b;->f:LC8/a;

    iget-object v5, v4, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v2, v4, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->L()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v1, :cond_5

    invoke-static {}, LN7/c;->Y()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "import android.view.*;\nimport android.widget.*;\nimport androidx.constraintlayout.widget.*;\nimport android.webkit.*;\n\n/* @Author "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " */\n@PanelInflateMenu(\"CustomPanels/\")\npublic class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extends ViewPanel {\n\n  public "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() {\n    // Zero-argument constructor is required\n  }\n\n  // Runs whenever the panel is attached to a HUB\n  // You should inflate all the views you would like to attach to the panel within this method.\n  public View onAttach() {\n    super.setTittle(\"Sample panel\");\n    \n     // Root layout\n    LinearLayout rootLayout = new ALinearLayout();\n    rootLayout.setOrientation(LinearLayout.VERTICAL);\n    rootLayout.setBackgroundColor(Color.Android.parseColor(\"#FFFFFF\"));\n    rootLayout.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));\n\n    WebView webView = new AWebView();\n    rootLayout.addView(toView(webView));\n    \n    webView.setWebChromeClient(\n        new WebChromeClient() {\n          public void onProgressChanged(WebView view, int progress) {\n          }\n\n          @Override\npublic boolean onConsoleMessage(ConsoleMessage consoleMessage) {\n            Console.log(\"WebView:\" + consoleMessage.message());\n            return true;\n          }\n\n          @Override\npublic boolean onJsAlert(WebView view, String url, String message, JsResult result) {\n            return false;\n          }\n\n          @Override\npublic boolean onJsConfirm(WebView view, String url, String message, JsResult result) {\n            return false;\n          }\n\n          @Override\npublic boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {\n            return false;\n          }\n        });\n    webView.setWebViewClient(\n        new WebViewClient() {\n          public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {}\n\n          @Override\npublic boolean shouldOverrideUrlLoading(WebView view, String url) {\n            return false;\n          }\n\n          @Override\npublic void onPageFinished(WebView view, String url) {\n            super.onPageFinished(view, url);\n          }\n        });\n\n    WebSettings webSettings = webView.getSettings();\n    webSettings.setUserAgentString(\"Mozilla/5.0 (Linux; U; Android 10.0; en-us; Xoom Build/HRI39) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13\");\n    webSettings.setJavaScriptEnabled(true);\n    webSettings.setDomStorageEnabled(true);\n    webSettings.setDatabaseEnabled(true);\n    webSettings.setCacheMode(WebSettings.LOAD_DEFAULT);\n    webSettings.setMixedContentMode(WebSettings.MIXED_CONTENT_COMPATIBILITY_MODE);\n    webSettings.setLoadWithOverviewMode(true);\n    webSettings.setUseWideViewPort(true);\n    webSettings.setSupportZoom(false);\n   \n    webView.loadUrl(\"https://www.google.com\");\n    return rootLayout;\n  }\n\n  // Run every frame in UI thread doesn\'t matter if panel is visible or not\n  public void updateUI() {}\n\n  // Run every frame in UI thread if panel is visible\n  public void updateUIVisible() {}\n\n  // Run every frame in UI thread if panel is not visible\n  public void minimizedUpdate() {}\n\n  // Runs in the engine low priority task thread.\n  public void lpTaskUpdate() {}\n\n  // Runs whenever the user taps to select the panel from the HUB panel list\n  public void onBindView() {}\n\n  // Runs whenever the user switches to another panel in the HUB\n  public void onUnbindView() {}\n\n  // Runs whenever the panel is removed from the HUB\n  // The views will be discarded, you will inflate it again when it is attached to another HUB\n  public void onDetach() {}\n}\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ld8/j;->j(Ljava/io/File;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iget-object v1, v1, Lw5/c$G0;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ln4/c;

    invoke-direct {v1, p1}, Ln4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LN7/c;->k0(Ln4/f;)V

    const-string p1, "NEW_SAMPLE_PANEL_SCRIPT"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    iget-object p1, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iget-object p1, p1, Lw5/c$G0;->d:Lw5/l;

    if-eqz p1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iget-object v2, v2, Lw5/c$G0;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lw5/l;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iget-object p2, p2, Lw5/c$G0;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lw5/c$G0$a;->c:Lw5/c$G0;

    iget-object p2, p2, Lw5/c$G0;->b:Landroid/content/Context;

    new-instance v0, Lbd/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists or is reserved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Classe java "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " j\u00e1 existe ou \u00e9 reservada, use outro nome"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method
