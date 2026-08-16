.class public LXd/E;
.super LXd/A;
.source "SourceFile"

# interfaces
.implements Lbe/c;


# static fields
.field public static final f:J = -0x6b9c101c7cbbef84L


# instance fields
.field public final e:Lbe/c;


# direct methods
.method public constructor <init>(Lbe/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LXd/A;-><init>(LSd/e;)V

    .line 2
    iput-object p1, p0, LXd/E;->e:Lbe/c;

    return-void
.end method

.method public constructor <init>(Lbe/c;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LXd/A;-><init>(LSd/e;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, LXd/E;->e:Lbe/c;

    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LXd/E;->e:Lbe/c;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LXd/A0;

    invoke-direct {v1, v0}, LXd/A0;-><init>(Lbe/c;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public B0(I)D
    .locals 3

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1}, Lbe/c;->B0(I)D

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

.method public Bc(I[DII)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/c;->Bc(I[DII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public F7(IID)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/c;->F7(IID)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public G8(ID)D
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3}, Lbe/c;->G8(ID)D

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

.method public Ie(I[D)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->Ie(I[D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public J0(Ljava/util/Random;)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1}, Lbe/c;->J0(Ljava/util/Random;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public P2(D)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->P2(D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a6(Lhe/z;)Lbe/c;
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1}, Lbe/c;->a6(Lhe/z;)Lbe/c;

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

.method public ad(I[D)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->ad(I[D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e4(D)I
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->e4(D)I

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

.method public e6(ID)I
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3}, Lbe/c;->e6(ID)I

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

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

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

.method public g5(ID)D
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3}, Lbe/c;->g5(ID)D

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

.method public g6(D)I
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->g6(D)I

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

.method public get(I)D
    .locals 3

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1}, Lbe/c;->get(I)D

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

.method public ha([DIII)[D
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/c;->ha([DIII)[D

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

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

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

.method public i3([DII)[D
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3}, Lbe/c;->i3([DII)[D

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

.method public i7(Lhe/z;)Z
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1}, Lbe/c;->i7(Lhe/z;)Z

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

.method public i8(ID)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3}, Lbe/c;->i8(ID)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public max()D
    .locals 3

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1}, Lbe/c;->max()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public min()D
    .locals 3

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1}, Lbe/c;->min()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n3([D)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1}, Lbe/c;->n3([D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o()D
    .locals 3

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1}, Lbe/c;->o()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p(LUd/c;)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1}, Lbe/c;->p(LUd/c;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q3([DII)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3}, Lbe/c;->q3([DII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q7(I[DII)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/c;->q7(I[DII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q8(Lhe/z;)Lbe/c;
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1}, Lbe/c;->q8(Lhe/z;)Lbe/c;

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

.method public sort()V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1}, Lbe/c;->sort()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Lbe/c;
    .locals 3

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, LXd/E;

    iget-object v2, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v2, p1, p2}, Lbe/c;->subList(II)Lbe/c;

    move-result-object p1

    iget-object p2, p0, LXd/A;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p2}, LXd/E;-><init>(Lbe/c;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t0(II)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->t0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u0()V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1}, Lbe/c;->u0()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uc(DII)I
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/c;->uc(DII)I

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

.method public w0(II)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->w0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w3(D)I
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->w3(D)I

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

.method public x6(ID)I
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2, p3}, Lbe/c;->x6(ID)I

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

.method public y0(II)V
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->y0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public z0(II)[D
    .locals 2

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->z0(II)[D

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
