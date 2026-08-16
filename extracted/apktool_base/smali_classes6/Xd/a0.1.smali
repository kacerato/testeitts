.class public LXd/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/K;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/K;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/e;

.field public transient e:LSd/g;


# direct methods
.method public constructor <init>(Lee/K;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/a0;->d:Lke/e;

    .line 3
    iput-object v0, p0, LXd/a0;->e:LSd/g;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/a0;->b:Lee/K;

    .line 6
    iput-object p0, p0, LXd/a0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/K;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/a0;->d:Lke/e;

    .line 9
    iput-object v0, p0, LXd/a0;->e:LSd/g;

    .line 10
    iput-object p1, p0, LXd/a0;->b:Lee/K;

    .line 11
    iput-object p2, p0, LXd/a0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

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
.method public F(I)Z
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->F(I)Z

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->F0(I)Z

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->J(Lhe/S;)Z

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

.method public Ob(II)Z
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1, p2}, Lee/K;->Ob(II)Z

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->Q(I)Z

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

.method public V6(Lee/K;)V
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->V6(Lee/K;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public be(Lhe/O;)Z
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->be(Lhe/O;)Z

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1}, Lee/K;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e0([I)[I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->e0([I)[I

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->f(LUd/e;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f0([I)[I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->f0([I)[I

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

.method public f5(II)I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1, p2}, Lee/K;->f5(II)I

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

.method public get(I)I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->get(I)I

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

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

    iget-object v0, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1}, Lee/K;->isEmpty()Z

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

.method public iterator()LZd/P;
    .locals 1

    iget-object v0, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->iterator()LZd/P;

    move-result-object v0

    return-object v0
.end method

.method public j()[I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1}, Lee/K;->j()[I

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

.method public jd(II)I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1, p2}, Lee/K;->jd(II)I

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

.method public k()LSd/g;
    .locals 4

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->e:LSd/g;

    if-nez v1, :cond_0

    new-instance v1, LXd/X;

    iget-object v2, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v2}, Lee/K;->k()LSd/g;

    move-result-object v2

    iget-object v3, p0, LXd/a0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/X;-><init>(LSd/g;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/a0;->e:LSd/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/a0;->e:LSd/g;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k8(Lhe/O;)Z
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->k8(Lhe/O;)Z

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

.method public keySet()Lke/e;
    .locals 4

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->d:Lke/e;

    if-nez v1, :cond_0

    new-instance v1, LXd/e0;

    iget-object v2, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v2}, Lee/K;->keySet()Lke/e;

    move-result-object v2

    iget-object v3, p0, LXd/a0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/e0;-><init>(Lke/e;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/a0;->d:Lke/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/a0;->d:Lke/e;

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

    iget-object v0, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->l()I

    move-result v0

    return v0
.end method

.method public m0(Lhe/S;)Z
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->m0(Lhe/S;)Z

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(I)I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1}, Lee/K;->remove(I)I

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1}, Lee/K;->size()I

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

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

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

.method public values()[I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1}, Lee/K;->values()[I

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

.method public xb(III)I
    .locals 2

    iget-object v0, p0, LXd/a0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/a0;->b:Lee/K;

    invoke-interface {v1, p1, p2, p3}, Lee/K;->xb(III)I

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
