.class public LXd/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/s;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/s;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/c;

.field public transient e:LSd/e;


# direct methods
.method public constructor <init>(Lee/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/B;->d:Lke/c;

    .line 3
    iput-object v0, p0, LXd/B;->e:LSd/e;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/B;->b:Lee/s;

    .line 6
    iput-object p0, p0, LXd/B;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/s;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/B;->d:Lke/c;

    .line 9
    iput-object v0, p0, LXd/B;->e:LSd/e;

    .line 10
    iput-object p1, p0, LXd/B;->b:Lee/s;

    .line 11
    iput-object p2, p0, LXd/B;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

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
.method public A(D)Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1, p2}, Lee/s;->A(D)Z

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

.method public Fa(DD)Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1, p2, p3, p4}, Lee/s;->Fa(DD)Z

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

.method public I(Lhe/z;)Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->I(Lhe/z;)Z

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

.method public J2(DD)D
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1, p2, p3, p4}, Lee/s;->J2(DD)D

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

.method public Rd(Lee/s;)V
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->Rd(Lee/s;)V

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

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1, p2}, Lee/s;->T(D)Z

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

.method public T9(Lhe/u;)Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->T9(Lhe/u;)Z

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

.method public W([D)[D
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->W([D)[D

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

.method public a(D)D
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1, p2}, Lee/s;->a(D)D

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

.method public b0([D)[D
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->b0([D)[D

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

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1}, Lee/s;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

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

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

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

    iget-object v0, p0, LXd/B;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public increment(D)Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1, p2}, Lee/s;->increment(D)Z

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

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1}, Lee/s;->isEmpty()Z

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

.method public iterator()LZd/v;
    .locals 1

    iget-object v0, p0, LXd/B;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->iterator()LZd/v;

    move-result-object v0

    return-object v0
.end method

.method public j()[D
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1}, Lee/s;->j()[D

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

.method public j9(DD)D
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1, p2, p3, p4}, Lee/s;->j9(DD)D

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

.method public k()LSd/e;
    .locals 4

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->e:LSd/e;

    if-nez v1, :cond_0

    new-instance v1, LXd/A;

    iget-object v2, p0, LXd/B;->b:Lee/s;

    invoke-interface {v2}, Lee/s;->k()LSd/e;

    move-result-object v2

    iget-object v3, p0, LXd/B;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/A;-><init>(LSd/e;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/B;->e:LSd/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/B;->e:LSd/e;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k0(Lhe/z;)Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->k0(Lhe/z;)Z

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

.method public kd(DDD)D
    .locals 8

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lee/s;->kd(DDD)D

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

.method public keySet()Lke/c;
    .locals 4

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->d:Lke/c;

    if-nez v1, :cond_0

    new-instance v1, LXd/H;

    iget-object v2, p0, LXd/B;->b:Lee/s;

    invoke-interface {v2}, Lee/s;->keySet()Lke/c;

    move-result-object v2

    iget-object v3, p0, LXd/B;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/H;-><init>(Lke/c;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/B;->d:Lke/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/B;->d:Lke/c;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LXd/B;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public mc(Lhe/u;)Z
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->mc(Lhe/u;)Z

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

.method public p(LUd/c;)V
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->p(LUd/c;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p0(D)D
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1, p2}, Lee/s;->p0(D)D

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

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1, p1}, Lee/s;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1}, Lee/s;->size()I

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

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

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

.method public values()[D
    .locals 2

    iget-object v0, p0, LXd/B;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/B;->b:Lee/s;

    invoke-interface {v1}, Lee/s;->values()[D

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
