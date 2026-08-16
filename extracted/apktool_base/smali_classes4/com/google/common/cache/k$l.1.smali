.class public final Lcom/google/common/cache/k$l;
.super Lcom/google/common/cache/k$p;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/j;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$p<",
        "TK;TV;>;",
        "Lcom/google/common/cache/j<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final q:J = 0x1L


# instance fields
.field public transient p:Lcom/google/common/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/cache/k$p;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method

.method private p0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$l;->p:Lcom/google/common/cache/j;

    return-object v0
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

    iget-object v0, p0, Lcom/google/common/cache/k$l;->p:Lcom/google/common/cache/j;

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->V(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$l;->p:Lcom/google/common/cache/j;

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

    iget-object v0, p0, Lcom/google/common/cache/k$l;->p:Lcom/google/common/cache/j;

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

    iget-object v0, p0, Lcom/google/common/cache/k$l;->p:Lcom/google/common/cache/j;

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

    iget-object v0, p0, Lcom/google/common/cache/k$l;->p:Lcom/google/common/cache/j;

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o0(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$p;->q0()Lcom/google/common/cache/d;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/cache/k$p;->m:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p1, v0}, Lcom/google/common/cache/d;->b(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$l;->p:Lcom/google/common/cache/j;

    return-void
.end method
