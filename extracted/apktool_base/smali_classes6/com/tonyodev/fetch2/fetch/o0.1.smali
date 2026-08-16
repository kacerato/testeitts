.class public final synthetic Lcom/tonyodev/fetch2/fetch/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

.field public final synthetic c:Lcom/tonyodev/fetch2/FetchNotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/FetchNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/o0;->b:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/o0;->c:Lcom/tonyodev/fetch2/FetchNotificationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/o0;->b:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/o0;->c:Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->b(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/FetchNotificationManager;)V

    return-void
.end method
