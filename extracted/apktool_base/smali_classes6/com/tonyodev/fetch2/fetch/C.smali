.class public final synthetic Lcom/tonyodev/fetch2/fetch/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2core/Func;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Func;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/C;->b:Lcom/tonyodev/fetch2core/Func;

    iput-wide p2, p0, Lcom/tonyodev/fetch2/fetch/C;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/C;->b:Lcom/tonyodev/fetch2core/Func;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/fetch/C;->c:J

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getContentLengthForRequest$1$1;->d(Lcom/tonyodev/fetch2core/Func;J)V

    return-void
.end method
