.class public Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$a;->a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$a;->a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->g(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$a;->a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->g(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d$a;->a:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;->f:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Z)Z

    return-void
.end method
