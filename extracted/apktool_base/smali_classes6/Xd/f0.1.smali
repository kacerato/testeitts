.class public LXd/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/N;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/N;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/e;

.field public transient e:LSd/i;


# direct methods
.method public constructor <init>(Lee/N;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/f0;->d:Lke/e;

    .line 3
    iput-object v0, p0, LXd/f0;->e:LSd/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/f0;->b:Lee/N;

    .line 6
    iput-object p0, p0, LXd/f0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/N;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/f0;->d:Lke/e;

    .line 9
    iput-object v0, p0, LXd/f0;->e:LSd/i;

    .line 10
    iput-object p1, p0, LXd/f0;->b:Lee/N;

    .line 11
    iput-object p2, p0, LXd/f0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

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


# virtual methods
.method public E5(Lhe/T;)Z
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->E5(Lhe/T;)Z

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

.method public F(I)Z
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->F(I)Z

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

.method public F0(I)Z
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->F0(I)Z

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

.method public J(Lhe/S;)Z
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->J(Lhe/S;)Z

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

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->L(S)Z

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

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->N(Lhe/t0;)Z

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

.method public Ub(IS)Z
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1, p2}, Lee/N;->Ub(IS)Z

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

.method public clear()V
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1}, Lee/N;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public eb(Lhe/T;)Z
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->eb(Lhe/T;)Z

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

.method public ed(IS)S
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1, p2}, Lee/N;->ed(IS)S

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

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

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

.method public f0([I)[I
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->f0([I)[I

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

.method public get(I)S
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->get(I)S

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

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

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

    iget-object v0, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->i0([S)[S

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

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1}, Lee/N;->isEmpty()Z

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

.method public iterator()LZd/U;
    .locals 1

    iget-object v0, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->iterator()LZd/U;

    move-result-object v0

    return-object v0
.end method

.method public j()[I
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1}, Lee/N;->j()[I

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

.method public k()LSd/i;
    .locals 4

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->e:LSd/i;

    if-nez v1, :cond_0

    new-instance v1, LXd/H0;

    iget-object v2, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v2}, Lee/N;->k()LSd/i;

    move-result-object v2

    iget-object v3, p0, LXd/f0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/H0;-><init>(LSd/i;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/f0;->e:LSd/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/f0;->e:LSd/i;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Lke/e;
    .locals 4

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->d:Lke/e;

    if-nez v1, :cond_0

    new-instance v1, LXd/e0;

    iget-object v2, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v2}, Lee/N;->keySet()Lke/e;

    move-result-object v2

    iget-object v3, p0, LXd/f0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/e0;-><init>(Lke/e;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/f0;->d:Lke/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/f0;->d:Lke/e;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->l()I

    move-result v0

    return v0
.end method

.method public md(ISS)S
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1, p2, p3}, Lee/N;->md(ISS)S

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

.method public p5(IS)S
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1, p2}, Lee/N;->p5(IS)S

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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public qe(Lee/N;)V
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->qe(Lee/N;)V

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

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->r(LUd/h;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(I)S
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1, p1}, Lee/N;->remove(I)S

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

.method public size()I
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1}, Lee/N;->size()I

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

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

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

.method public values()[S
    .locals 2

    iget-object v0, p0, LXd/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/f0;->b:Lee/N;

    invoke-interface {v1}, Lee/N;->values()[S

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
