.class public final Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$priorityBackoffResetReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;-><init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;ILandroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2/PrioritySort;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$priorityBackoffResetReceiver$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5976896d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.tonyodev.fetch2.action.QUEUE_BACKOFF_RESET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$priorityBackoffResetReceiver$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getStopped$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$priorityBackoffResetReceiver$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getPaused$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$priorityBackoffResetReceiver$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getNamespace$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.tonyodev.fetch2.extra.NAMESPACE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$priorityBackoffResetReceiver$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->resetBackOffTime()V

    :cond_1
    :goto_0
    return-void
.end method
