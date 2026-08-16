.class public final synthetic Lcom/tonyodev/fetch2/fetch/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2core/Func;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Func;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/j0;->b:Lcom/tonyodev/fetch2core/Func;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/j0;->b:Lcom/tonyodev/fetch2core/Func;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$unfreeze$1$1;->d(Lcom/tonyodev/fetch2core/Func;)V

    return-void
.end method
