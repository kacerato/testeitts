.class public abstract Lcom/google/common/util/concurrent/j;
.super Lcom/google/common/util/concurrent/k;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/k<",
        "TOutputT;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final q:Ljava/util/logging/Logger;


# instance fields
.field public n:Lcom/google/common/collect/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c1<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "+TInputT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final o:Z

.field public final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/j;->q:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/c1;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/k;-><init>(I)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/c1;

    iput-object p1, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    iput-boolean p2, p0, Lcom/google/common/util/concurrent/j;->o:Z

    iput-boolean p3, p0, Lcom/google/common/util/concurrent/j;->p:Z

    return-void
.end method

.method public static synthetic N(Lcom/google/common/util/concurrent/j;Lcom/google/common/collect/c1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/j;->Y(Lcom/google/common/collect/c1;)V

    return-void
.end method

.method public static synthetic O(Lcom/google/common/util/concurrent/j;Lcom/google/common/util/concurrent/Z;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/j;->X(Lcom/google/common/util/concurrent/Z;I)V

    return-void
.end method

.method public static P(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static Z(Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    const-string v0, "Input Future failed with Error"

    goto :goto_0

    :cond_0
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_0
    sget-object v1, Lcom/google/common/util/concurrent/j;->q:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final J(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$i;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/j;->P(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public abstract Q(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method public final S(ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/google/common/util/concurrent/Q;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/j;->Q(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/j;->V(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/j;->V(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final T(Lcom/google/common/collect/c1;)V
    .locals 3
    .param p1    # Lcom/google/common/collect/c1;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/k;->L()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lw2/H;->h0(ZLjava/lang/Object;)V

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/j;->a0(Lcom/google/common/collect/c1;)V

    :cond_1
    return-void
.end method

.method public abstract U()V
.end method

.method public final V(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/j;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->D(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/k;->M()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/j;->P(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/common/util/concurrent/j;->Z(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/common/util/concurrent/j;->Z(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final W()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/j;->U()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/j;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/Z;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/google/common/util/concurrent/h;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/common/util/concurrent/h;-><init>(Lcom/google/common/util/concurrent/j;Lcom/google/common/util/concurrent/Z;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/j;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/google/common/util/concurrent/i;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/i;-><init>(Lcom/google/common/util/concurrent/j;Lcom/google/common/collect/c1;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/Z;

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final synthetic X(Lcom/google/common/util/concurrent/Z;I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$i;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/google/common/util/concurrent/j;->S(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/j;->T(Lcom/google/common/collect/c1;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/j;->T(Lcom/google/common/collect/c1;)V

    throw p1
.end method

.method public final synthetic Y(Lcom/google/common/collect/c1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/j;->T(Lcom/google/common/collect/c1;)V

    return-void
.end method

.method public final a0(Lcom/google/common/collect/c1;)V
    .locals 3
    .param p1    # Lcom/google/common/collect/c1;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c1<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/j;->S(ILjava/util/concurrent/Future;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/k;->K()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/j;->U()V

    sget-object p1, Lcom/google/common/util/concurrent/j$a;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/j$a;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/j;->b0(Lcom/google/common/util/concurrent/j$a;)V

    return-void
.end method

.method public b0(Lcom/google/common/util/concurrent/j$a;)V
    .locals 0
    .annotation build LI2/g;
    .end annotation

    .annotation build LI2/r;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    return-void
.end method

.method public final n()V
    .locals 3

    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->n()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    sget-object v1, Lcom/google/common/util/concurrent/j$a;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/j$a;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/j;->b0(Lcom/google/common/util/concurrent/j$a;)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$i;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->F()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/j;->n:Lcom/google/common/collect/c1;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
