.class public Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->x(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$h;->c:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$h;->c:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
