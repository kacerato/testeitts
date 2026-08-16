.class public final synthetic Lcom/tonyodev/fetch2/fetch/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2/fetch/FetchImpl;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/k;->b:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iput-boolean p2, p0, Lcom/tonyodev/fetch2/fetch/k;->c:Z

    iput-boolean p3, p0, Lcom/tonyodev/fetch2/fetch/k;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/k;->b:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/fetch/k;->c:Z

    iget-boolean v2, p0, Lcom/tonyodev/fetch2/fetch/k;->d:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->h(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V

    return-void
.end method
