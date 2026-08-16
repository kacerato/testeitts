.class public final Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkCallback$1;->this$0:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkCallback$1;->this$0:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-static {p1}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->access$notifyNetworkChangeListeners(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkCallback$1;->this$0:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-static {p1}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->access$notifyNetworkChangeListeners(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    return-void
.end method
