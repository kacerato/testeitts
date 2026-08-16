.class public Lcom/google/common/util/concurrent/F0;
.super Lcom/google/common/util/concurrent/F$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/F0$a;,
        Lcom/google/common/util/concurrent/F0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/F$a<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# instance fields
.field public volatile j:Lcom/google/common/util/concurrent/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/W<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/l<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/F$a;-><init>()V

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/F0$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/F0$a;-><init>(Lcom/google/common/util/concurrent/F0;Lcom/google/common/util/concurrent/l;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/F0;->j:Lcom/google/common/util/concurrent/W;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/F$a;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/F0$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/F0$b;-><init>(Lcom/google/common/util/concurrent/F0;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/F0;->j:Lcom/google/common/util/concurrent/W;

    return-void
.end method

.method public static O(Lcom/google/common/util/concurrent/l;)Lcom/google/common/util/concurrent/F0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/l<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/F0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/F0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/F0;-><init>(Lcom/google/common/util/concurrent/l;)V

    return-object v0
.end method

.method public static P(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/F0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/common/util/concurrent/F0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/F0;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/F0;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static Q(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/F0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/F0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/F0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/F0;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public n()V
    .locals 1

    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->n()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/F0;->j:Lcom/google/common/util/concurrent/W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/W;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/F0;->j:Lcom/google/common/util/concurrent/W;

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/F0;->j:Lcom/google/common/util/concurrent/W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/W;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/F0;->j:Lcom/google/common/util/concurrent/W;

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/F0;->j:Lcom/google/common/util/concurrent/W;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
