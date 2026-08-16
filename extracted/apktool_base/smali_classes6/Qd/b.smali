.class public final synthetic LQd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/tonyodev/fetch2/model/FetchGroupInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/tonyodev/fetch2/model/FetchGroupInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQd/b;->b:Ljava/util/List;

    iput-object p2, p0, LQd/b;->c:Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LQd/b;->b:Ljava/util/List;

    iget-object v1, p0, LQd/b;->c:Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->a(Ljava/util/List;Lcom/tonyodev/fetch2/model/FetchGroupInfo;)V

    return-void
.end method
