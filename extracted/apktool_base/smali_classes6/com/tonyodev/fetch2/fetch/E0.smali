.class public final synthetic Lcom/tonyodev/fetch2/fetch/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2/FetchListener;

.field public final synthetic c:Lcom/tonyodev/fetch2/Download;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/E0;->b:Lcom/tonyodev/fetch2/FetchListener;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/E0;->c:Lcom/tonyodev/fetch2/Download;

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/E0;->d:Ljava/util/List;

    iput p4, p0, Lcom/tonyodev/fetch2/fetch/E0;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/E0;->b:Lcom/tonyodev/fetch2/FetchListener;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/E0;->c:Lcom/tonyodev/fetch2/Download;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/E0;->d:Ljava/util/List;

    iget v3, p0, Lcom/tonyodev/fetch2/fetch/E0;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->C(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    return-void
.end method
