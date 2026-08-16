.class public LXd/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/m0;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/m0;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/g;

.field public transient e:LSd/i;


# direct methods
.method public constructor <init>(Lee/m0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/P0;->d:Lke/g;

    .line 3
    iput-object v0, p0, LXd/P0;->e:LSd/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/P0;->b:Lee/m0;

    .line 6
    iput-object p0, p0, LXd/P0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/m0;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/P0;->d:Lke/g;

    .line 9
    iput-object v0, p0, LXd/P0;->e:LSd/i;

    .line 10
    iput-object p1, p0, LXd/P0;->b:Lee/m0;

    .line 11
    iput-object p2, p0, LXd/P0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A5(SSS)S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1, p2, p3}, Lee/m0;->A5(SSS)S

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Da(SS)S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1, p2}, Lee/m0;->Da(SS)S

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public I0(S)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->I0(S)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public L(S)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->L(S)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public N(Lhe/t0;)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->N(Lhe/t0;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public N6(Lhe/u0;)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->N6(Lhe/u0;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public W3(SS)S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1, p2}, Lee/m0;->W3(SS)S

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Y([S)[S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->Y([S)[S

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

.method public Z9(Lhe/u0;)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->Z9(Lhe/u0;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1}, Lee/m0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(S)S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->d(S)S

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v0}, Lee/m0;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->i0([S)[S

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

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1}, Lee/m0;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()LZd/v0;
    .locals 1

    iget-object v0, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v0}, Lee/m0;->iterator()LZd/v0;

    move-result-object v0

    return-object v0
.end method

.method public j()[S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1}, Lee/m0;->j()[S

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j8(SS)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1, p2}, Lee/m0;->j8(SS)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k()LSd/i;
    .locals 4

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->e:LSd/i;

    if-nez v1, :cond_0

    new-instance v1, LXd/H0;

    iget-object v2, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v2}, Lee/m0;->k()LSd/i;

    move-result-object v2

    iget-object v3, p0, LXd/P0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/H0;-><init>(LSd/i;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/P0;->e:LSd/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/P0;->e:LSd/i;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Lke/g;
    .locals 4

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->d:Lke/g;

    if-nez v1, :cond_0

    new-instance v1, LXd/O0;

    iget-object v2, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v2}, Lee/m0;->keySet()Lke/g;

    move-result-object v2

    iget-object v3, p0, LXd/P0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/O0;-><init>(Lke/g;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/P0;->d:Lke/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/P0;->d:Lke/g;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v0}, Lee/m0;->l()S

    move-result v0

    return v0
.end method

.method public n0(S)S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->n0(S)S

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Short;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r(LUd/h;)V
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->r(LUd/h;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1}, Lee/m0;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public v(Lhe/t0;)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->v(Lhe/t0;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public values()[S
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1}, Lee/m0;->values()[S

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public x4(Lee/m0;)V
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->x4(Lee/m0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public z(S)Z
    .locals 2

    iget-object v0, p0, LXd/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/P0;->b:Lee/m0;

    invoke-interface {v1, p1}, Lee/m0;->z(S)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
