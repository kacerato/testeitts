.class public final synthetic Lcom/tonyodev/fetch2/fetch/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2/FetchGroupListener;

.field public final synthetic c:I

.field public final synthetic d:Lcom/tonyodev/fetch2/Download;

.field public final synthetic e:Lcom/tonyodev/fetch2/FetchGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/FetchGroupListener;ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/K0;->b:Lcom/tonyodev/fetch2/FetchGroupListener;

    iput p2, p0, Lcom/tonyodev/fetch2/fetch/K0;->c:I

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/K0;->d:Lcom/tonyodev/fetch2/Download;

    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/K0;->e:Lcom/tonyodev/fetch2/FetchGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/K0;->b:Lcom/tonyodev/fetch2/FetchGroupListener;

    iget v1, p0, Lcom/tonyodev/fetch2/fetch/K0;->c:I

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/K0;->d:Lcom/tonyodev/fetch2/Download;

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/K0;->e:Lcom/tonyodev/fetch2/FetchGroup;

    invoke-static {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->y(Lcom/tonyodev/fetch2/FetchGroupListener;ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    return-void
.end method
