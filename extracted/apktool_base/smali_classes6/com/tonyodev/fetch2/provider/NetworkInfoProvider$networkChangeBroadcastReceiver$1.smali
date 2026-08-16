.class public final Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkChangeBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkChangeBroadcastReceiver$1;->this$0:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkChangeBroadcastReceiver$1;->this$0:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-static {p1}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->access$notifyNetworkChangeListeners(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    return-void
.end method
