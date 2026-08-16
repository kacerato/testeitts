.class final Lcom/tonyodev/fetch2core/HandlerWrapper$handler$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2core/HandlerWrapper;-><init>(Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/a<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2core/HandlerWrapper;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2core/HandlerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper$handler$1;->this$0:Lcom/tonyodev/fetch2core/HandlerWrapper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Handler;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper$handler$1;->this$0:Lcom/tonyodev/fetch2core/HandlerWrapper;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/HandlerWrapper$handler$1;->invoke()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
