.class public LXd/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/j0;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/j0;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/g;

.field public transient e:LSd/g;


# direct methods
.method public constructor <init>(Lee/j0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/K0;->d:Lke/g;

    .line 3
    iput-object v0, p0, LXd/K0;->e:LSd/g;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/K0;->b:Lee/j0;

    .line 6
    iput-object p0, p0, LXd/K0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/j0;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/K0;->d:Lke/g;

    .line 9
    iput-object v0, p0, LXd/K0;->e:LSd/g;

    .line 10
    iput-object p1, p0, LXd/K0;->b:Lee/j0;

    .line 11
    iput-object p2, p0, LXd/K0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

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
.method public A3(SI)I
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1, p2}, Lee/j0;->A3(SI)I

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

.method public De(Lhe/q0;)Z
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->De(Lhe/q0;)Z

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

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->I0(S)Z

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

.method public Q(I)Z
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->Q(I)Z

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

.method public Ta(Lee/j0;)V
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->Ta(Lee/j0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Y([S)[S
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->Y([S)[S

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

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1}, Lee/j0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(S)I
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->d(S)I

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

.method public d8(SI)Z
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1, p2}, Lee/j0;->d8(SI)Z

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

.method public e0([I)[I
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->e0([I)[I

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

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

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

.method public f(LUd/e;)V
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->f(LUd/e;)V

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

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

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

.method public i()I
    .locals 1

    iget-object v0, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1}, Lee/j0;->isEmpty()Z

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

.method public iterator()LZd/r0;
    .locals 1

    iget-object v0, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->iterator()LZd/r0;

    move-result-object v0

    return-object v0
.end method

.method public j()[S
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1}, Lee/j0;->j()[S

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

.method public k()LSd/g;
    .locals 4

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->e:LSd/g;

    if-nez v1, :cond_0

    new-instance v1, LXd/X;

    iget-object v2, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v2}, Lee/j0;->k()LSd/g;

    move-result-object v2

    iget-object v3, p0, LXd/K0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/X;-><init>(LSd/g;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/K0;->e:LSd/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/K0;->e:LSd/g;

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

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->d:Lke/g;

    if-nez v1, :cond_0

    new-instance v1, LXd/O0;

    iget-object v2, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v2}, Lee/j0;->keySet()Lke/g;

    move-result-object v2

    iget-object v3, p0, LXd/K0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/O0;-><init>(Lke/g;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/K0;->d:Lke/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/K0;->d:Lke/g;

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

    iget-object v0, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->l()S

    move-result v0

    return v0
.end method

.method public m0(Lhe/S;)Z
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->m0(Lhe/S;)Z

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

.method public n0(S)I
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->n0(S)I

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

.method public o9(SII)I
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1, p2, p3}, Lee/j0;->o9(SII)I

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1}, Lee/j0;->size()I

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

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

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

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->v(Lhe/t0;)Z

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

.method public va(SI)I
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1, p2}, Lee/j0;->va(SI)I

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

.method public values()[I
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1}, Lee/j0;->values()[I

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

.method public w8(Lhe/q0;)Z
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->w8(Lhe/q0;)Z

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

.method public z(S)Z
    .locals 2

    iget-object v0, p0, LXd/K0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/K0;->b:Lee/j0;

    invoke-interface {v1, p1}, Lee/j0;->z(S)Z

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
