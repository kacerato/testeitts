.class public LXd/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/W;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/W;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/f;

.field public transient e:LSd/i;


# direct methods
.method public constructor <init>(Lee/W;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/q0;->d:Lke/f;

    .line 3
    iput-object v0, p0, LXd/q0;->e:LSd/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/q0;->b:Lee/W;

    .line 6
    iput-object p0, p0, LXd/q0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/W;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/q0;->d:Lke/f;

    .line 9
    iput-object v0, p0, LXd/q0;->e:LSd/i;

    .line 10
    iput-object p1, p0, LXd/q0;->b:Lee/W;

    .line 11
    iput-object p2, p0, LXd/q0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

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
.method public E(J)Z
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1, p2}, Lee/W;->E(J)Z

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

.method public E9(Lhe/c0;)Z
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->E9(Lhe/c0;)Z

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

.method public H0(J)Z
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1, p2}, Lee/W;->H0(J)Z

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

.method public I6(Lhe/c0;)Z
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->I6(Lhe/c0;)Z

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

.method public Kc(JS)S
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1, p2, p3}, Lee/W;->Kc(JS)S

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->L(S)Z

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

.method public Md(JSS)S
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1, p2, p3, p4}, Lee/W;->Md(JSS)S

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->N(Lhe/t0;)Z

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

.method public S9(Lee/W;)V
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->S9(Lee/W;)V

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1}, Lee/W;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(J)S
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1, p2}, Lee/W;->e(J)S

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

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

.method public h0([J)[J
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->h0([J)[J

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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

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

    iget-object v0, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->i0([S)[S

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1}, Lee/W;->isEmpty()Z

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

.method public iterator()LZd/e0;
    .locals 1

    iget-object v0, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->iterator()LZd/e0;

    move-result-object v0

    return-object v0
.end method

.method public j()[J
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1}, Lee/W;->j()[J

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->e:LSd/i;

    if-nez v1, :cond_0

    new-instance v1, LXd/H0;

    iget-object v2, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v2}, Lee/W;->k()LSd/i;

    move-result-object v2

    iget-object v3, p0, LXd/q0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/H0;-><init>(LSd/i;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/q0;->e:LSd/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/q0;->e:LSd/i;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Lke/f;
    .locals 4

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->d:Lke/f;

    if-nez v1, :cond_0

    new-instance v1, LXd/p0;

    iget-object v2, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v2}, Lee/W;->keySet()Lke/f;

    move-result-object v2

    iget-object v3, p0, LXd/q0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/p0;-><init>(Lke/f;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/q0;->d:Lke/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/q0;->d:Lke/f;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->l0(Lhe/b0;)Z

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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1}, Lee/W;->r(LUd/h;)V

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1}, Lee/W;->size()I

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

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

.method public u(J)S
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1, p2}, Lee/W;->u(J)S

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

.method public u7(JS)S
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1, p2, p3}, Lee/W;->u7(JS)S

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

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1}, Lee/W;->values()[S

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

.method public vb(JS)Z
    .locals 2

    iget-object v0, p0, LXd/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/q0;->b:Lee/W;

    invoke-interface {v1, p1, p2, p3}, Lee/W;->vb(JS)Z

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
