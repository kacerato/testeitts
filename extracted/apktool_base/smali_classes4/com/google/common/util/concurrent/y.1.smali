.class public final Lcom/google/common/util/concurrent/y;
.super Lcom/google/common/util/concurrent/j;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/y$b;,
        Lcom/google/common/util/concurrent/y$a;,
        Lcom/google/common/util/concurrent/y$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/j<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# instance fields
.field public r:Lcom/google/common/util/concurrent/y$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/y<",
            "TV;>.c<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c1;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/l<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/j;-><init>(Lcom/google/common/collect/c1;ZZ)V

    .line 2
    new-instance p1, Lcom/google/common/util/concurrent/y$a;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/common/util/concurrent/y$a;-><init>(Lcom/google/common/util/concurrent/y;Lcom/google/common/util/concurrent/l;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/y;->r:Lcom/google/common/util/concurrent/y$c;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/j;->W()V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/c1;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/j;-><init>(Lcom/google/common/collect/c1;ZZ)V

    .line 5
    new-instance p1, Lcom/google/common/util/concurrent/y$b;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/common/util/concurrent/y$b;-><init>(Lcom/google/common/util/concurrent/y;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/y;->r:Lcom/google/common/util/concurrent/y$c;

    .line 6
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/j;->W()V

    return-void
.end method

.method public static synthetic c0(Lcom/google/common/util/concurrent/y;Lcom/google/common/util/concurrent/y$c;)Lcom/google/common/util/concurrent/y$c;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/y;->r:Lcom/google/common/util/concurrent/y$c;

    return-object p1
.end method


# virtual methods
.method public Q(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    return-void
.end method

.method public U()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/y;->r:Lcom/google/common/util/concurrent/y$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/y$c;->i()V

    :cond_0
    return-void
.end method

.method public b0(Lcom/google/common/util/concurrent/j$a;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/j;->b0(Lcom/google/common/util/concurrent/j$a;)V

    sget-object v0, Lcom/google/common/util/concurrent/j$a;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/j$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/util/concurrent/y;->r:Lcom/google/common/util/concurrent/y$c;

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/y;->r:Lcom/google/common/util/concurrent/y$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/W;->c()V

    :cond_0
    return-void
.end method
