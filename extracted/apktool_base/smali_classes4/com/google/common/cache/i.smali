.class public abstract Lcom/google/common/cache/i;
.super Lcom/google/common/cache/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/j;


# annotations
.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/h<",
        "TK;TV;>;",
        "Lcom/google/common/cache/j<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/cache/h;-><init>()V

    return-void
.end method


# virtual methods
.method public V(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/i;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->V(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/i;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/i;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->f0(Ljava/lang/Object;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/i;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/i;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/i;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Lcom/google/common/cache/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/i;->o0()Lcom/google/common/cache/j;

    move-result-object v0

    return-object v0
.end method

.method public abstract o0()Lcom/google/common/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/j<",
            "TK;TV;>;"
        }
    .end annotation
.end method
