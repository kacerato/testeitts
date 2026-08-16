.class public Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$b;->a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentContent"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$b;->a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$b;->a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->j(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$b;->a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->a(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "currentContent"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$b;->a(Ljava/lang/String;)V

    return-void
.end method
