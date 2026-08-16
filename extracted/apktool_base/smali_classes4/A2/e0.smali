.class public abstract LA2/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation runtime LI2/f;
    value = "Call forGraph or forTree, passing a lambda or a Graph with the desired edges (built with GraphBuilder)"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/e0$f;,
        LA2/e0$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final a:LA2/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/d0<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/d0<",
            "TN;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/d0;

    iput-object p1, p0, LA2/e0;->a:LA2/d0;

    return-void
.end method

.method public synthetic constructor <init>(LA2/d0;LA2/e0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LA2/e0;-><init>(LA2/d0;)V

    return-void
.end method

.method public static g(LA2/d0;)LA2/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/d0<",
            "TN;>;)",
            "LA2/e0<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/e0$a;

    invoke-direct {v0, p0, p0}, LA2/e0$a;-><init>(LA2/d0;LA2/d0;)V

    return-object v0
.end method

.method public static h(LA2/d0;)LA2/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/d0<",
            "TN;>;)",
            "LA2/e0<",
            "TN;>;"
        }
    .end annotation

    instance-of v0, p0, LA2/k;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LA2/k;

    invoke-interface {v0}, LA2/k;->c()Z

    move-result v0

    const-string v1, "Undirected graphs can never be trees."

    invoke-static {v0, v1}, Lw2/H;->e(ZLjava/lang/Object;)V

    :cond_0
    instance-of v0, p0, LA2/T;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, LA2/T;

    invoke-interface {v0}, LA2/T;->c()Z

    move-result v0

    const-string v1, "Undirected networks can never be trees."

    invoke-static {v0, v1}, Lw2/H;->e(ZLjava/lang/Object;)V

    :cond_1
    new-instance v0, LA2/e0$b;

    invoke-direct {v0, p0, p0}, LA2/e0$b;-><init>(LA2/d0;LA2/d0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LA2/e0;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/r1;

    move-result-object p1

    new-instance v0, LA2/e0$c;

    invoke-direct {v0, p0, p1}, LA2/e0$c;-><init>(LA2/e0;Lcom/google/common/collect/r1;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/r1;->A(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    invoke-virtual {p0, p1}, LA2/e0;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LA2/e0;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/r1;

    move-result-object p1

    new-instance v0, LA2/e0$e;

    invoke-direct {v0, p0, p1}, LA2/e0$e;-><init>(LA2/e0;Lcom/google/common/collect/r1;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/r1;->A(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    invoke-virtual {p0, p1}, LA2/e0;->c(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LA2/e0;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/r1;

    move-result-object p1

    new-instance v0, LA2/e0$d;

    invoke-direct {v0, p0, p1}, LA2/e0$d;-><init>(LA2/e0;Lcom/google/common/collect/r1;)V

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/r1;->A(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    invoke-virtual {p0, p1}, LA2/e0;->e(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public abstract i()LA2/e0$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/e0$g<",
            "TN;>;"
        }
    .end annotation
.end method

.method public final j(Ljava/lang/Iterable;)Lcom/google/common/collect/r1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/collect/r1<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/r1;->r(Ljava/lang/Iterable;)Lcom/google/common/collect/r1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, LA2/e0;->a:LA2/d0;

    invoke-interface {v2, v1}, LA2/d0;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    goto :goto_0

    :cond_0
    return-object p1
.end method
