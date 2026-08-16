.class public Lcom/google/common/collect/R2$e;
.super Lcom/google/common/collect/R2$k;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/w;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/R2$k<",
        "TK;TV;>;",
        "Lcom/google/common/collect/w<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/d;
.end annotation


# static fields
.field public static final k:J


# instance fields
.field public transient i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient j:Lcom/google/common/collect/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lq3/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/w;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/R2$k;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 3
    iput-object p3, p0, Lcom/google/common/collect/R2$e;->j:Lcom/google/common/collect/w;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;Lcom/google/common/collect/R2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/R2$e;-><init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;)V

    return-void
.end method


# virtual methods
.method public A8()Lcom/google/common/collect/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R2$p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/R2$e;->j:Lcom/google/common/collect/w;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/common/collect/R2$e;

    invoke-virtual {p0}, Lcom/google/common/collect/R2$e;->n()Lcom/google/common/collect/w;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/w;->A8()Lcom/google/common/collect/w;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/R2$p;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p0}, Lcom/google/common/collect/R2$e;-><init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;)V

    iput-object v1, p0, Lcom/google/common/collect/R2$e;->j:Lcom/google/common/collect/w;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/R2$e;->j:Lcom/google/common/collect/w;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public U6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/R2$p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/R2$e;->n()Lcom/google/common/collect/w;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/w;->U6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic i()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/R2$e;->n()Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/R2$e;->n()Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/common/collect/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/R2$k;->m()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/R2$e;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/R2$p;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/R2$e;->i:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/R2$e;->n()Lcom/google/common/collect/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/w;->values()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/R2$p;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/R2;->u(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/R2$e;->i:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/R2$e;->i:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
