.class public final Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$broadcastReceiver$1;->this$0:Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$broadcastReceiver$1;->this$0:Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;

    invoke-static {p1, p2, v0}, Lcom/tonyodev/fetch2/util/NotificationUtilsKt;->onDownloadNotificationActionTriggered(Landroid/content/Context;Landroid/content/Intent;Lcom/tonyodev/fetch2/FetchNotificationManager;)V

    return-void
.end method
