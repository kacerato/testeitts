.class public LXd/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/O;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/O;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/f;

.field public transient e:LSd/a;


# direct methods
.method public constructor <init>(Lee/O;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/g0;->d:Lke/f;

    .line 3
    iput-object v0, p0, LXd/g0;->e:LSd/a;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/g0;->b:Lee/O;

    .line 6
    iput-object p0, p0, LXd/g0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/O;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/g0;->d:Lke/f;

    .line 9
    iput-object v0, p0, LXd/g0;->e:LSd/a;

    .line 10
    iput-object p1, p0, LXd/g0;->b:Lee/O;

    .line 11
    iput-object p2, p0, LXd/g0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1, p2}, Lee/O;->E(J)Z

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1, p2}, Lee/O;->H0(J)Z

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

.method public K7(JBB)B
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1, p2, p3, p4}, Lee/O;->K7(JBB)B

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

.method public M(Lhe/h;)Z
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->M(Lhe/h;)Z

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

.method public M6(Lhe/U;)Z
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->M6(Lhe/U;)Z

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

.method public P(B)Z
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->P(B)Z

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

.method public a0([B)[B
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->a0([B)[B

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

.method public aa(Lhe/U;)Z
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->aa(Lhe/U;)Z

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1}, Lee/O;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(J)B
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1, p2}, Lee/O;->e(J)B

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

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

.method public f7(JB)B
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1, p2, p3}, Lee/O;->f7(JB)B

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->h0([J)[J

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

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

.method public i()B
    .locals 1

    iget-object v0, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1}, Lee/O;->isEmpty()Z

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

.method public iterator()LZd/W;
    .locals 1

    iget-object v0, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->iterator()LZd/W;

    move-result-object v0

    return-object v0
.end method

.method public j()[J
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1}, Lee/O;->j()[J

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

.method public k()LSd/a;
    .locals 4

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->e:LSd/a;

    if-nez v1, :cond_0

    new-instance v1, LXd/e;

    iget-object v2, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v2}, Lee/O;->k()LSd/a;

    move-result-object v2

    iget-object v3, p0, LXd/g0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/e;-><init>(LSd/a;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/g0;->e:LSd/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/g0;->e:LSd/a;

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->d:Lke/f;

    if-nez v1, :cond_0

    new-instance v1, LXd/p0;

    iget-object v2, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v2}, Lee/O;->keySet()Lke/f;

    move-result-object v2

    iget-object v3, p0, LXd/g0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/p0;-><init>(Lke/f;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/g0;->d:Lke/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/g0;->d:Lke/f;

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

    iget-object v0, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->l0(Lhe/b0;)Z

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

.method public mb(JB)Z
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1, p2, p3}, Lee/O;->mb(JB)Z

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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(LUd/a;)V
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->s(LUd/a;)V

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1}, Lee/O;->size()I

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

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

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

.method public u(J)B
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1, p2}, Lee/O;->u(J)B

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

.method public ud(JB)B
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1, p2, p3}, Lee/O;->ud(JB)B

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

.method public values()[B
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1}, Lee/O;->values()[B

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

.method public ya(Lee/O;)V
    .locals 2

    iget-object v0, p0, LXd/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/g0;->b:Lee/O;

    invoke-interface {v1, p1}, Lee/O;->ya(Lee/O;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
