.class public Lsd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lsd/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lqd/i<",
            "*>;",
            "Lsd/e<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lqd/z;",
            "Lsd/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lsd/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lsd/b;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lsd/b;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsd/b;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Lqd/j;)V
    .locals 2

    new-instance v0, Lsd/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lsd/e;-><init>(Lqd/j;Lqd/i;Lqd/A;)V

    iget-object v1, p0, Lsd/b;->c:Ljava/util/Map;

    invoke-interface {p1}, Lqd/j;->R()Lqd/z;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lsd/b;->d:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lqd/j;Lqd/i;Lqd/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/j;",
            "Lqd/i<",
            "TT;>;",
            "Lqd/A;",
            ")V"
        }
    .end annotation

    new-instance v0, Lsd/e;

    invoke-direct {v0, p1, p2, p3}, Lsd/e;-><init>(Lqd/j;Lqd/i;Lqd/A;)V

    iget-object p3, p0, Lsd/b;->b:Ljava/util/Map;

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lsd/b;->c:Ljava/util/Map;

    invoke-interface {p1}, Lqd/j;->R()Lqd/z;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lsd/b;->d:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lqd/M;Lqd/A;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/M<",
            "TT;>;",
            "Lqd/A;",
            ")V"
        }
    .end annotation

    new-instance v0, Lsd/h;

    invoke-direct {v0, p1, p2}, Lsd/h;-><init>(Lqd/M;Lqd/A;)V

    iget-object p2, p0, Lsd/b;->d:Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lqd/M;->b()[Lqd/z;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lsd/b;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lqd/i;)Lqd/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/i<",
            "TT;>;)",
            "Lqd/A;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsd/b;->g(Lqd/i;)Lsd/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lsd/a;->e()Lqd/A;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public e(Lqd/i;)Lqd/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/i<",
            "TT;>;)",
            "Lqd/j;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsd/b;->g(Lqd/i;)Lsd/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsd/e;->f()Lqd/j;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The event handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not processing events."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Lqd/z;)Lsd/a;
    .locals 1

    iget-object v0, p0, Lsd/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsd/a;

    return-object p1
.end method

.method public final g(Lqd/i;)Lsd/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/i<",
            "TT;>;)",
            "Lsd/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsd/e;

    return-object p1
.end method

.method public h()[Lqd/z;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lsd/b;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsd/a;

    invoke-interface {v2}, Lsd/a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lsd/a;->c()[Lqd/z;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lqd/z;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqd/z;

    return-object v0
.end method

.method public i(Lqd/i;)Lqd/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/i<",
            "TT;>;)",
            "Lqd/z;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsd/b;->e(Lqd/i;)Lqd/j;

    move-result-object p1

    invoke-interface {p1}, Lqd/j;->R()Lqd/z;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lsd/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsd/b;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public varargs j([Lqd/z;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lsd/b;->f(Lqd/z;)Lsd/a;

    move-result-object v2

    invoke-interface {v2}, Lsd/a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
