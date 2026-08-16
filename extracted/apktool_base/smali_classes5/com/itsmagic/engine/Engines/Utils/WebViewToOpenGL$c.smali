.class public Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$c;->b:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$c;->b:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
