.class public final synthetic Lcom/tonyodev/fetch2/fetch/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2core/Func;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Func;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/W;->b:Lcom/tonyodev/fetch2core/Func;

    iput-boolean p2, p0, Lcom/tonyodev/fetch2/fetch/W;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/W;->b:Lcom/tonyodev/fetch2core/Func;

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/fetch/W;->c:Z

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$hasActiveDownloads$1$1;->b(Lcom/tonyodev/fetch2core/Func;Z)V

    return-void
.end method
