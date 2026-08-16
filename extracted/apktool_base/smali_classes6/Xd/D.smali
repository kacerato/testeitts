.class public LXd/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/u;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lee/u;

.field public final c:Ljava/lang/Object;

.field public transient d:Lke/c;

.field public transient e:LSd/g;


# direct methods
.method public constructor <init>(Lee/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LXd/D;->d:Lke/c;

    .line 3
    iput-object v0, p0, LXd/D;->e:LSd/g;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, LXd/D;->b:Lee/u;

    .line 6
    iput-object p0, p0, LXd/D;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lee/u;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LXd/D;->d:Lke/c;

    .line 9
    iput-object v0, p0, LXd/D;->e:LSd/g;

    .line 10
    iput-object p1, p0, LXd/D;->b:Lee/u;

    .line 11
    iput-object p2, p0, LXd/D;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1, p2}, Lee/u;->A(D)Z

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

.method public N2(DI)I
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1, p2, p3}, Lee/u;->N2(DI)I

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

.method public N4(DII)I
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1, p2, p3, p4}, Lee/u;->N4(DII)I

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

.method public Pa(DI)Z
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1, p2, p3}, Lee/u;->Pa(DI)Z

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->Q(I)Z

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

.method public S5(Lhe/w;)Z
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->S5(Lhe/w;)Z

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->W([D)[D

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

.method public W5(Lhe/w;)Z
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->W5(Lhe/w;)Z

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

.method public a(D)I
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1, p2}, Lee/u;->a(D)I

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1}, Lee/u;->clear()V

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->e0([I)[I

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

.method public e9(DI)I
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1, p2, p3}, Lee/u;->e9(DI)I

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->f(LUd/e;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g3(Lee/u;)V
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->g3(Lee/u;)V

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

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

    iget-object v0, p0, LXd/D;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->i()I

    move-result v0

    return v0
.end method

.method public increment(D)Z
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1, p2}, Lee/u;->increment(D)Z

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1}, Lee/u;->isEmpty()Z

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

.method public iterator()LZd/x;
    .locals 1

    iget-object v0, p0, LXd/D;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->iterator()LZd/x;

    move-result-object v0

    return-object v0
.end method

.method public j()[D
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1}, Lee/u;->j()[D

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->e:LSd/g;

    if-nez v1, :cond_0

    new-instance v1, LXd/X;

    iget-object v2, p0, LXd/D;->b:Lee/u;

    invoke-interface {v2}, Lee/u;->k()LSd/g;

    move-result-object v2

    iget-object v3, p0, LXd/D;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/X;-><init>(LSd/g;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/D;->e:LSd/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/D;->e:LSd/g;

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->k0(Lhe/z;)Z

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->d:Lke/c;

    if-nez v1, :cond_0

    new-instance v1, LXd/H;

    iget-object v2, p0, LXd/D;->b:Lee/u;

    invoke-interface {v2}, Lee/u;->keySet()Lke/c;

    move-result-object v2

    iget-object v3, p0, LXd/D;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, LXd/H;-><init>(Lke/c;Ljava/lang/Object;)V

    iput-object v1, p0, LXd/D;->d:Lke/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXd/D;->d:Lke/c;

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

    iget-object v0, p0, LXd/D;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public m0(Lhe/S;)Z
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->m0(Lhe/S;)Z

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

.method public p0(D)I
    .locals 2

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1, p2}, Lee/u;->p0(D)I

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1, p1}, Lee/u;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1}, Lee/u;->size()I

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

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

    iget-object v0, p0, LXd/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXd/D;->b:Lee/u;

    invoke-interface {v1}, Lee/u;->values()[I

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
