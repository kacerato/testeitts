.class final Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;->onNetworkChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/a<",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;->invoke()V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getStopped$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getPaused$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getNetworkInfoProvider$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->access$getBackOffTime$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1;->this$0:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->resetBackOffTime()V

    :cond_0
    return-void
.end method
