.class public Lcom/google/common/cache/k$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/c<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public final b:Lcom/google/common/cache/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/cache/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/d<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/cache/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/cache/k;-><init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lcom/google/common/cache/k$o;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/cache/k;Lcom/google/common/cache/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/cache/k$o;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->r(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/cache/k$p;

    iget-object v1, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-direct {v0, v1}, Lcom/google/common/cache/k$p;-><init>(Lcom/google/common/cache/k;)V

    return-object v0
.end method

.method public b0(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->e()V

    return-void
.end method

.method public j0()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->clear()V

    return-void
.end method

.method public k()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    return-object v0
.end method

.method public m(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    new-instance v1, Lcom/google/common/cache/k$o$a;

    invoke-direct {v1, p0, p2}, Lcom/google/common/cache/k$o$a;-><init>(Lcom/google/common/cache/k$o;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/cache/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->x(Ljava/lang/Iterable;)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/f;
    .locals 5

    new-instance v0, Lcom/google/common/cache/a$a;

    invoke-direct {v0}, Lcom/google/common/cache/a$a;-><init>()V

    iget-object v1, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/a$b;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/a$a;->g(Lcom/google/common/cache/a$b;)V

    iget-object v1, p0, Lcom/google/common/cache/k$o;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->d:[Lcom/google/common/cache/k$r;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-virtual {v0, v4}, Lcom/google/common/cache/a$a;->g(Lcom/google/common/cache/a$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/cache/a$a;->f()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method
