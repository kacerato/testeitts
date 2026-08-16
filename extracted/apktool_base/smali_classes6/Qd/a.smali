.class public final synthetic LQd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/tonyodev/fetch2/model/FetchGroupInfo;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/tonyodev/fetch2core/Reason;

.field public final synthetic e:Lcom/tonyodev/fetch2/Download;


# direct methods
.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQd/a;->b:Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    iput-object p2, p0, LQd/a;->c:Ljava/util/List;

    iput-object p3, p0, LQd/a;->d:Lcom/tonyodev/fetch2core/Reason;

    iput-object p4, p0, LQd/a;->e:Lcom/tonyodev/fetch2/Download;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LQd/a;->b:Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    iget-object v1, p0, LQd/a;->c:Ljava/util/List;

    iget-object v2, p0, LQd/a;->d:Lcom/tonyodev/fetch2core/Reason;

    iget-object v3, p0, LQd/a;->e:Lcom/tonyodev/fetch2/Download;

    invoke-static {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->b(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method
