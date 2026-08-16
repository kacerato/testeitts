.class public final Lcom/google/common/util/concurrent/g$a;
.super Lcom/google/common/util/concurrent/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/g<",
        "TI;TO;",
        "Lcom/google/common/util/concurrent/m<",
        "-TI;+TO;>;",
        "Lcom/google/common/util/concurrent/Z<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Z<",
            "+TI;>;",
            "Lcom/google/common/util/concurrent/m<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/g;-><init>(Lcom/google/common/util/concurrent/Z;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/google/common/util/concurrent/m;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/g$a;->T(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/Z;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/g$a;->U(Lcom/google/common/util/concurrent/Z;)V

    return-void
.end method

.method public T(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "-TI;+TO;>;TI;)",
            "Lcom/google/common/util/concurrent/Z<",
            "+TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/google/common/util/concurrent/m;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p2, v0, p1}, Lw2/H;->V(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public U(Lcom/google/common/util/concurrent/Z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Z<",
            "+TO;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->E(Lcom/google/common/util/concurrent/Z;)Z

    return-void
.end method
