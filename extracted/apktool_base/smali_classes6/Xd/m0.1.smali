.class public LXd/m0;
.super LXd/i0;
.source "SourceFile"

# interfaces
.implements Lbe/h;


# static fields
.field public static final f:J = -0x6b9c101c7cbbef84L


# instance fields
.field public final e:Lbe/h;


# direct methods
.method public constructor <init>(Lbe/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LXd/i0;-><init>(LSd/h;)V

    .line 2
    iput-object p1, p0, LXd/m0;->e:Lbe/h;

    return-void
.end method

.method public constructor <init>(Lbe/h;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LXd/i0;-><init>(LSd/h;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, LXd/m0;->e:Lbe/h;

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LXd/m0;->e:Lbe/h;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LXd/D0;

    invoke-direct {v1, v0}, LXd/D0;-><init>(Lbe/h;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public B0(I)J
    .locals 3

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1}, Lbe/h;->B0(I)J

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

.method public C6(IJ)I
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3}, Lbe/h;->C6(IJ)I

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

.method public D4(J)I
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->D4(J)I

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

.method public Ha([JII)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3}, Lbe/h;->Ha([JII)V

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

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1}, Lbe/h;->J0(Ljava/util/Random;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public N7(IJ)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3}, Lbe/h;->N7(IJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Pe(I[J)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->Pe(I[J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public S3(J)I
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->S3(J)I

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

.method public T8(IJ)J
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3}, Lbe/h;->T8(IJ)J

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

.method public V8(JII)I
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/h;->V8(JII)I

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

.method public Wa([JII)[J
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3}, Lbe/h;->Wa([JII)[J

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

.method public Yc(I[JII)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/h;->Yc(I[JII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b6(IJ)I
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3}, Lbe/h;->b6(IJ)I

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

.method public b7(Lhe/b0;)Lbe/h;
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1}, Lbe/h;->b7(Lhe/b0;)Lbe/h;

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

.method public c3(J)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->c3(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c5(Lhe/b0;)Lbe/h;
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1}, Lbe/h;->c5(Lhe/b0;)Lbe/h;

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

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

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

.method public gd(I[J)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->gd(I[J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(I)J
    .locals 3

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1}, Lbe/h;->get(I)J

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

.method public h(LUd/f;)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1}, Lbe/h;->h(LUd/f;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h3([J)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1}, Lbe/h;->h3([J)V

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

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

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

.method public i6(I[JII)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/h;->i6(I[JII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k6(J)I
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->k6(J)I

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

.method public max()J
    .locals 3

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1}, Lbe/h;->max()J

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

.method public min()J
    .locals 3

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1}, Lbe/h;->min()J

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

.method public o()J
    .locals 3

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1}, Lbe/h;->o()J

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

.method public o5(IJ)J
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3}, Lbe/h;->o5(IJ)J

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

.method public r6(IIJ)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/h;->r6(IIJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sort()V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1}, Lbe/h;->sort()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Lbe/h;
    .locals 3

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, LXd/m0;

    iget-object v2, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v2, p1, p2}, Lbe/h;->subList(II)Lbe/h;

    move-result-object p1

    iget-object p2, p0, LXd/i0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p2}, LXd/m0;-><init>(Lbe/h;Ljava/lang/Object;)V

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

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->t0(II)V

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

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1}, Lbe/h;->u0()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public u5(Lhe/b0;)Z
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1}, Lbe/h;->u5(Lhe/b0;)Z

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

.method public v8([JIII)[J
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lbe/h;->v8([JIII)[J

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

.method public w0(II)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->w0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public y0(II)V
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->y0(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public z0(II)[J
    .locals 2

    iget-object v0, p0, LXd/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/m0;->e:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->z0(II)[J

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
