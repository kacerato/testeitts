.class public LXd/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/h0;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/h0;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/g;

.field public transient e:LSd/e;


# direct methods
.method public constructor <init>(Lee/h0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/I0;->d:Lke/g;

    .line 3
    iput-object v0, p0, LXd/I0;->e:LSd/e;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/I0;->b:Lee/h0;

    .line 6
    iput-object p0, p0, LXd/I0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/h0;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/I0;->d:Lke/g;

    .line 9
    iput-object v0, p0, LXd/I0;->e:LSd/e;

    .line 10
    iput-object p1, p0, LXd/I0;->b:Lee/h0;

    .line 11
    iput-object p2, p0, LXd/I0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

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
.method public E3(SD)D
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1, p2, p3}, Lee/h0;->E3(SD)D

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public I(Lhe/z;)Z
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->I(Lhe/z;)Z

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

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->I0(S)Z

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

.method public Nc(Lhe/o0;)Z
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->Nc(Lhe/o0;)Z

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

.method public Q7(Lee/h0;)V
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->Q7(Lee/h0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public T(D)Z
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1, p2}, Lee/h0;->T(D)Z

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

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->Y([S)[S

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

.method public b0([D)[D
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->b0([D)[D

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

.method public clear()V
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1}, Lee/h0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(S)D
    .locals 3

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->d(S)D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

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

.method public g8(SD)Z
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1, p2, p3}, Lee/h0;->g8(SD)Z

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

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

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

.method public i()D
    .locals 2

    iget-object v0, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1}, Lee/h0;->isEmpty()Z

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

.method public iterator()LZd/p0;
    .locals 1

    iget-object v0, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->iterator()LZd/p0;

    move-result-object v0

    return-object v0
.end method

.method public j()[S
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1}, Lee/h0;->j()[S

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

.method public k()LSd/e;
    .locals 4

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->e:LSd/e;

    if-nez v1, :cond_0

    new-instance v1, LXd/A;

    iget-object v2, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v2}, Lee/h0;->k()LSd/e;

    move-result-object v2

    iget-object v3, p0, LXd/I0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/A;-><init>(LSd/e;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/I0;->e:LSd/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/I0;->e:LSd/e;

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

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->d:Lke/g;

    if-nez v1, :cond_0

    new-instance v1, LXd/O0;

    iget-object v2, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v2}, Lee/h0;->keySet()Lke/g;

    move-result-object v2

    iget-object v3, p0, LXd/I0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/O0;-><init>(Lke/g;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/I0;->d:Lke/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/I0;->d:Lke/g;

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

    iget-object v0, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->l()S

    move-result v0

    return v0
.end method

.method public lc(SDD)D
    .locals 7

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lee/h0;->lc(SDD)D

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m8(Lhe/o0;)Z
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->m8(Lhe/o0;)Z

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

.method public ma(SD)D
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1, p2, p3}, Lee/h0;->ma(SD)D

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n0(S)D
    .locals 3

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->n0(S)D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p(LUd/c;)V
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->p(LUd/c;)V

    monitor-exit v0

    return-void

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
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1}, Lee/h0;->size()I

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

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

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

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->v(Lhe/t0;)Z

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

.method public values()[D
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1}, Lee/h0;->values()[D

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

.method public z(S)Z
    .locals 2

    iget-object v0, p0, LXd/I0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I0;->b:Lee/h0;

    invoke-interface {v1, p1}, Lee/h0;->z(S)Z

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
