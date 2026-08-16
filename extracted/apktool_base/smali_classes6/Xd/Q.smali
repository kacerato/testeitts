.class public LXd/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/D;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/D;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/d;

.field public transient e:LSd/h;


# direct methods
.method public constructor <init>(Lee/D;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/Q;->d:Lke/d;

    .line 3
    iput-object v0, p0, LXd/Q;->e:LSd/h;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/Q;->b:Lee/D;

    .line 6
    iput-object p0, p0, LXd/Q;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/D;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/Q;->d:Lke/d;

    .line 9
    iput-object v0, p0, LXd/Q;->e:LSd/h;

    .line 10
    iput-object p1, p0, LXd/Q;->b:Lee/D;

    .line 11
    iput-object p2, p0, LXd/Q;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

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
.method public G0(F)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->G0(F)Z

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

.method public H(F)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->H(F)Z

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

.method public O5(FJ)J
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1, p2, p3}, Lee/D;->O5(FJ)J

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

.method public O9(FJ)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1, p2, p3}, Lee/D;->O9(FJ)Z

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

.method public R(J)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1, p2}, Lee/D;->R(J)Z

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

.method public c(F)J
    .locals 3

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->c(F)J

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

.method public ce(Lhe/G;)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->ce(Lhe/G;)Z

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

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1}, Lee/D;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d0([F)[F
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->d0([F)[F

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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

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

.method public g0([J)[J
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->g0([J)[J

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

.method public h(LUd/f;)V
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->h(LUd/f;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

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

.method public i()J
    .locals 2

    iget-object v0, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1}, Lee/D;->isEmpty()Z

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

.method public iterator()LZd/I;
    .locals 1

    iget-object v0, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->iterator()LZd/I;

    move-result-object v0

    return-object v0
.end method

.method public j()[F
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1}, Lee/D;->j()[F

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

.method public j0(Lhe/I;)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->j0(Lhe/I;)Z

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

.method public k()LSd/h;
    .locals 4

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->e:LSd/h;

    if-nez v1, :cond_0

    new-instance v1, LXd/i0;

    iget-object v2, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v2}, Lee/D;->k()LSd/h;

    move-result-object v2

    iget-object v3, p0, LXd/Q;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/i0;-><init>(LSd/h;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/Q;->e:LSd/h;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/Q;->e:LSd/h;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Lke/d;
    .locals 4

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->d:Lke/d;

    if-nez v1, :cond_0

    new-instance v1, LXd/T;

    iget-object v2, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v2}, Lee/D;->keySet()Lke/d;

    move-result-object v2

    iget-object v3, p0, LXd/Q;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/T;-><init>(Lke/d;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/Q;->d:Lke/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/Q;->d:Lke/d;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->l()F

    move-result v0

    return v0
.end method

.method public ld(FJJ)J
    .locals 7

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lee/D;->ld(FJJ)J

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
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q0(F)J
    .locals 3

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->q0(F)J

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

.method public re(FJ)J
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1, p2, p3}, Lee/D;->re(FJ)J

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

.method public s7(Lhe/G;)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->s7(Lhe/G;)Z

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

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1}, Lee/D;->size()I

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

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

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

.method public values()[J
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1}, Lee/D;->values()[J

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

.method public w7(Lee/D;)V
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->w7(Lee/D;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public x(Lhe/b0;)Z
    .locals 2

    iget-object v0, p0, LXd/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/Q;->b:Lee/D;

    invoke-interface {v1, p1}, Lee/D;->x(Lhe/b0;)Z

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
