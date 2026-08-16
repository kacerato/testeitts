.class public final Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;


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

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getHandlerWrapper$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v0

    new-instance v1, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-direct {v1, v2}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;-><init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    return-void
.end method
