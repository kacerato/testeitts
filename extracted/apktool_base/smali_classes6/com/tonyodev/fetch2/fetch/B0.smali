.class public final synthetic Lcom/tonyodev/fetch2/fetch/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2/FetchListener;

.field public final synthetic c:Lcom/tonyodev/fetch2/Download;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/B0;->b:Lcom/tonyodev/fetch2/FetchListener;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/B0;->c:Lcom/tonyodev/fetch2/Download;

    iput-wide p3, p0, Lcom/tonyodev/fetch2/fetch/B0;->d:J

    iput-wide p5, p0, Lcom/tonyodev/fetch2/fetch/B0;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/B0;->b:Lcom/tonyodev/fetch2/FetchListener;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/B0;->c:Lcom/tonyodev/fetch2/Download;

    iget-wide v2, p0, Lcom/tonyodev/fetch2/fetch/B0;->d:J

    iget-wide v4, p0, Lcom/tonyodev/fetch2/fetch/B0;->e:J

    invoke-static/range {v0 .. v5}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->i(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;JJ)V

    return-void
.end method
