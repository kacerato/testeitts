.class public final synthetic Lcom/tonyodev/fetch2/fetch/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2core/Func;

.field public final synthetic c:Lnf/Z;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/l;->b:Lcom/tonyodev/fetch2core/Func;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/l;->c:Lnf/Z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/l;->b:Lcom/tonyodev/fetch2core/Func;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/l;->c:Lnf/Z;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->b(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V

    return-void
.end method
