.class public LXd/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/x;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/x;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/c;

.field public transient e:LSd/i;


# direct methods
.method public constructor <init>(Lee/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/I;->d:Lke/c;

    .line 3
    iput-object v0, p0, LXd/I;->e:LSd/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/I;->b:Lee/x;

    .line 6
    iput-object p0, p0, LXd/I;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/x;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/I;->d:Lke/c;

    .line 9
    iput-object v0, p0, LXd/I;->e:LSd/i;

    .line 10
    iput-object p1, p0, LXd/I;->b:Lee/x;

    .line 11
    iput-object p2, p0, LXd/I;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1, p2}, Lee/x;->A(D)Z

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

.method public H4(Lee/x;)V
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->H4(Lee/x;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Je(Lhe/A;)Z
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->Je(Lhe/A;)Z

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->L(S)Z

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->N(Lhe/t0;)Z

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

.method public Sa(DS)Z
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1, p2, p3}, Lee/x;->Sa(DS)Z

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->W([D)[D

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

.method public Y2(DS)S
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1, p2, p3}, Lee/x;->Y2(DS)S

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

.method public a(D)S
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1, p2}, Lee/x;->a(D)S

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1}, Lee/x;->clear()V

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

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

    iget-object v0, p0, LXd/I;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->i0([S)[S

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

.method public increment(D)Z
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1, p2}, Lee/x;->increment(D)Z

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1}, Lee/x;->isEmpty()Z

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

.method public iterator()LZd/B;
    .locals 1

    iget-object v0, p0, LXd/I;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->iterator()LZd/B;

    move-result-object v0

    return-object v0
.end method

.method public j()[D
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1}, Lee/x;->j()[D

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->e:LSd/i;

    if-nez v1, :cond_0

    new-instance v1, LXd/H0;

    iget-object v2, p0, LXd/I;->b:Lee/x;

    invoke-interface {v2}, Lee/x;->k()LSd/i;

    move-result-object v2

    iget-object v3, p0, LXd/I;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/H0;-><init>(LSd/i;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/I;->e:LSd/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/I;->e:LSd/i;

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->k0(Lhe/z;)Z

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

.method public keySet()Lke/c;
    .locals 4

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->d:Lke/c;

    if-nez v1, :cond_0

    new-instance v1, LXd/H;

    iget-object v2, p0, LXd/I;->b:Lee/x;

    invoke-interface {v2}, Lee/x;->keySet()Lke/c;

    move-result-object v2

    iget-object v3, p0, LXd/I;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/H;-><init>(Lke/c;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/I;->d:Lke/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/I;->d:Lke/c;

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

    iget-object v0, p0, LXd/I;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public p0(D)S
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1, p2}, Lee/x;->p0(D)S

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

.method public p8(DSS)S
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1, p2, p3, p4}, Lee/x;->p8(DSS)S

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
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->r(LUd/h;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s9(DS)S
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1, p2, p3}, Lee/x;->s9(DS)S

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1}, Lee/x;->size()I

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

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

.method public u9(Lhe/A;)Z
    .locals 2

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1, p1}, Lee/x;->u9(Lhe/A;)Z

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

    iget-object v0, p0, LXd/I;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/I;->b:Lee/x;

    invoke-interface {v1}, Lee/x;->values()[S

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
